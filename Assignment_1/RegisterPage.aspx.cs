using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_1
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Mainview.ActiveViewIndex = 0;
        }
        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
        protected void passwordLengthIsValid_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtPassword.Text.Length >= 6 && txtPassword.Text.Length <= 12)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
        /*protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("LoginPage.aspx");
            }
        }*/
        protected void mandotoryFieldIsValid_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtAddress.Text == "" || txtConfirmPassword.Text == "" || txtEmail.Text == "" || txtFirstName.Text == "" || txtLastName.Text == "" || txtPassword.Text == "")
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
        protected void termsIsValid_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (cbTerms.Checked == false)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton1.CssClass = "Clicked";
            close.CssClass = "Initial";
            Mainview.ActiveViewIndex = 1;
        }

        protected void close_Click(object sender, EventArgs e)
        {
            LinkButton1.CssClass = "Initial";
            close.CssClass = "Clicked";
            Mainview.ActiveViewIndex = 0;
        }
    }
}