using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DisscussionForumNet
{
    public partial class SignUp : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitClick(object sender, EventArgs e)
        {
            DisscussionForumDb db = new DisscussionForumDb();
            Users alred = db.UsersData.FirstOrDefault(u => u.Email == Email.Text);
            if (alred != null)
            {
                error.Text = "User Already Exist...Try With Different Email Id..";

                error.Visible = true;

                error.Width = 1000;
                return;
            }
            alred = db.UsersData.FirstOrDefault(u => u.Handle == Handle.Text);
            if (alred != null)
            {
                error.Text = "Handle is already Used, Choose Different....";
                error.Visible = true;

                error.Width = 1000;
                return;
            }
            Users user = new Users();
            user.Name = Name.Text;
            user.Email = Email.Text;
            user.Handle = Handle.Text;
            user.Password = Password.Text;
            if (ProfilePic.HasFile)
            {
                string strFolder = Server.MapPath("./Uploads/");
                string path = "~/Uploads/";
                string strFileName = ProfilePic.PostedFile.FileName;
                string strFilePath, actualPath;
                strFileName = Path.GetFileName(strFileName);
                if (!Directory.Exists(strFolder))
                {
                    Directory.CreateDirectory(strFolder);
                }
                strFilePath = strFolder + strFileName;
                actualPath = path + strFileName;
                ProfilePic.PostedFile.SaveAs(strFilePath);
                user.ProfilePicture = actualPath;
            }
            else
            {
                user.ProfilePicture = "~/Uploads/defaultProfile.png";
            }
            db.UsersData.Add(user);
            db.SaveChanges();
            Response.Redirect("Login.aspx");
        }
    }
}