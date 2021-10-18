using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DisscussionForumNet
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisscussionForumDb db = new DisscussionForumDb();
            if (Session["currentUser"] == null)
            {
                Session["loginError"] = "You are not logged in!";
                Response.Redirect("Login.aspx");
            }
            if (SearchText.Text != "")
            {
                List<Questions> searchques = (from p in db.QuestionsData
                                              where p.QTitle.ToLower().Contains(SearchText.Text) || p.QDescr.ToLower().Contains(SearchText.Text)
                                              select p).ToList();
                if (searchques.Count == 0)
                {
                    notFound.Text = "No Result Found";
                    questions.DataSource = null;
                    questions.DataBind();
                    notFound.Visible = true;
                }
                else
                {
                    questions.DataSource = searchques;
                    questions.DataBind();
                    notFound.Visible = false;
                }
            }
            else
            {
                Users user = Session["currentUser"] as Users;
                Handle.Text = user.Handle;
                Name.Text = user.Name;
                Email.Text = user.Email;
                ProfilePic.ImageUrl = user.ProfilePicture;
                List<QuestionUserData> QIds = db.QuestionUserDatas.Where(q => q.CreaterUserId == user.Id).ToList();
                List<Questions> QuestionList = new List<Questions>();
                foreach (QuestionUserData qu in QIds)
                {
                    Questions que = db.QuestionsData.FirstOrDefault(q => q.QId == qu.QuestionId);
                    QuestionList.Add(que);
                }
                questions.DataSource = QuestionList;
                questions.DataBind();
                notFound.Visible = false;
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }

    }
}