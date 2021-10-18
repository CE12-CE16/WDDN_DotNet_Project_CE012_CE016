using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DisscussionForumNet
{
    public partial class QuestionDetails : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["currentUser"] == null)
            {
                Session["loginError"] = "You are not logged in!";
                Response.Redirect("Login.aspx");
            }
            DisscussionForumDb db = new DisscussionForumDb();
            int QuestionId = Convert.ToInt32(Request.QueryString["Id"]);
            QuestionUserData quData = new QuestionUserData();
            quData = db.QuestionUserDatas.FirstOrDefault(u => u.QuestionId == QuestionId);
            Users ow = db.UsersData.FirstOrDefault(us => us.Id == quData.CreaterUserId);
            Owner.Text = "Posted by "+ow.Name;
            Questions currentQuestion = db.QuestionsData.FirstOrDefault(q => q.QId == QuestionId);
            if (currentQuestion.ImagePath == null)
            {
                ErrorImage.Visible = false;
            }
            else
            {
                ErrorImage.ImageUrl = currentQuestion.ImagePath;
            }
            Title.Text = currentQuestion.QTitle;
            Description.Text = currentQuestion.QDescr;
                List<CommentQuestion> commentIds = db.CommentQuestionData.Where(q => q.QuestionId == QuestionId).ToList();
                List<Comment> AllComments = new List<Comment>();
                foreach (CommentQuestion cq in commentIds)
                {
                    Comment cmt = db.CommentData.FirstOrDefault(cm => cm.CommentId == cq.CommentId);
                    AllComments.Add(cmt);
                }
                comments.DataSource = AllComments;
                comments.DataBind();
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }
        protected void AddComment_BtnShow(object sender,EventArgs e)
        {
            comment.Visible = true;
            AddCommentClick.Visible = true;
        }
        protected void AddComment_Btn(object sender, EventArgs e)
        {
            if (comment.Text != "")
            {
                DisscussionForumDb db = new DisscussionForumDb();
                int QuestionId = Convert.ToInt32(Request.QueryString["Id"]);
                Comment cmt = new Comment();
                cmt.CommentDescr = comment.Text;
                cmt.CommentedTime = DateTime.Now;
                Users usr = Session["currentUser"] as Users;
                Users cu = db.UsersData.FirstOrDefault(u => u.Id == usr.Id);
                cmt.CommentUserDatas = cu;
                CommentQuestion cq = new CommentQuestion();
                cq.Question = db.QuestionsData.FirstOrDefault(c => c.QId == QuestionId);
                db.CommentData.Add(cmt);
                cq.CommentData = db.CommentData.FirstOrDefault(c => c.CommentId == cmt.CommentId);
                db.CommentQuestionData.Add(cq);
                db.SaveChanges();
                Response.Redirect("QuestionDetails.aspx?Id=" + QuestionId);
            }
            comment.Visible = false;
            AddCommentClick.Visible = false;
        }
    }
}