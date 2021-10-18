using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DisscussionForumNet
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loginError"] != null)
            {
                error.Text = Session["loginError"].ToString();
                error.Visible = true;
                error.Width = 1000;
            }
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            DisscussionForumDb db = new DisscussionForumDb();

            Users user = db.UsersData.FirstOrDefault(ur => ur.Email == email.Text && ur.Password == password.Text);
            if (user == null)
            {
                error.Text = "Invalid Login Attempt";
                error.Visible = true;
                Session["loginError"] = "";
                error.Width = 1000;
            }
            else
            {
                Session["currentUser"] = user;
                Session["loginError"] = null;
                error.Visible = false;
                Response.Redirect("Main.aspx");
            }
        }
    }
    }
