using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DisscussionForumNet
{
    public partial class UpdateProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["currentUser"] == null)
            {
                Session["loginError"] = "You are not logged in!";
                Response.Redirect("Login.aspx");
            }
                
            if (IsPostBack)
            {
                Users usr = Session["currentUser"] as Users;
                DisscussionForumDb db = new DisscussionForumDb();
                Users myusr = db.UsersData.First(u => u.Id == usr.Id);
                myusr.Name = Name.Text;
                myusr.Password = Password.Text;
                Response.Write(Name.Text);
                db.SaveChanges();
                Session["currentUser"] = myusr;
                Response.Redirect("Main.aspx");
            }
            else
            {
                Users usr = Session["currentUser"] as Users;
                    Name.Text = usr.Name;
                    Email.Text = usr.Email;
                    Handle.Text = usr.Handle;
            }
        }


    }
}