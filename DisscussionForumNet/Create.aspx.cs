using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DisscussionForumNet
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["currentUser"] == null)
            {
                Session["loginError"] = "You are not logged in!";
                Response.Redirect("Login.aspx");
            }
        }

        protected void createQuery_Click(object sender, EventArgs e)
        {
            Questions q = new Questions();

            q.QTitle = title.Text;
            q.QDescr = Descr.Text;
            string strFolder = Server.MapPath("./Uploads/");
            string path = "~/Uploads/";
            if (FileUpload1.HasFile)
            {
                string strFileName = FileUpload1.PostedFile.FileName;
                string strFilePath, actualPath;
                strFileName = Path.GetFileName(strFileName);
                if (!Directory.Exists(strFolder))
                {
                    Directory.CreateDirectory(strFolder);
                }
                strFilePath = strFolder + strFileName;
                actualPath = path + strFileName;
                FileUpload1.PostedFile.SaveAs(strFilePath);
                q.ImagePath = actualPath;
            }
            DisscussionForumDb db = new DisscussionForumDb();
            db.QuestionsData.Add(q);
            QuestionUserData QueUserData = new QuestionUserData();
            QueUserData.Question = q;
            if ((Session["currentUser"] as Users) == null)
            {
                Response.Redirect("Login.aspx");
            }
            Users usr = Session["currentUser"] as Users;
            Users cu = db.UsersData.FirstOrDefault(u => u.Id == usr.Id);
            QueUserData.CreaterUsser = cu;
            db.QuestionUserDatas.Add(QueUserData);
            db.SaveChanges();
            Response.Redirect("Main.aspx");
        }
    }
}