using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.IO;
using System.Data;

namespace Assignment_1
{

    public partial class LoginPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //Session["username"] = "admin@isp.net";
            //Session["password"] = "admin";
            Session["username"] = null;
            Session["password"] = null;
        }
        protected void login_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session["username"] = txtUsername.Text;
                Session["password"] = txtPassword.Text;
                Response.Redirect("HomePage.aspx");
            }
        }
        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }
        protected void validateUsernamePassword_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //if (txtUsername.Text == (string)Session["username"] && txtPassword.Text == (string)Session["password"])
            if ((txtUsername.Text == "admin@isp.net" && txtPassword.Text == "admin")||(txtUsername.Text == "test" && txtPassword.Text == "test"))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }




        //-----------------------------------
    }
}