using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RexLubs;
using System.Web.Security;

namespace RexLubs
{
    public partial class Login : System.Web.UI.Page
    {
        RexLubsEntities context = new RexLubsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "~/ForgotPassword.aspx";
        }

        private void ValidateUser()
        {
            string _username = txtUserName.Value;
            string _password = txtPassword.Value;

       

         if (context.UserAccounts.Any(u => u.UserName == _username))
            {
                var _user = context.UserAccounts.Where(u => u.UserName == _username).Single();

                if (_user.IsActive == false)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your account is not active. Please contact the System Administrator')", true);
                    return;
                }

                if (_user.PasswordHash != GeneratePasswordHash(_password, _username))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your password is incorrect.')", true);
                    return;
                }

                if (_user.RoleId == 1) //Super Admin
                {
                    Session["Role"] = "Super Admin";
                    Session["LoggedInUser"] = _user;
                    Session["UserName"] = _user.UserName;
                    Session["PhoneNumber"] = _user.PhoneNumber;
                    Session["Email"] = _user.Email;
                    Session["FirstName"] = _user.FirstName;
                    Session["LastName"] = _user.LastName;
                    Response.Redirect("~/SuperAdmin/Home.aspx");
                }
                if (_user.RoleId == 2) //HeadOfOperations
                {
                    Session["Role"] = "HeadOfOperations";
                    Session["LoggedInUser"] = _user;
                    Session["UserName"] = _user.UserName;
                    Session["PhoneNumber"] = _user.PhoneNumber;
                    Session["Email"] = _user.Email;
                    Session["FirstName"] = _user.FirstName;
                    Session["LastName"] = _user.LastName;
                    Response.Redirect("~/HeadOfOperations/Home.aspx");
                }
                if (_user.RoleId == 3) //Customer
                {
                    Session["Role"] = "Customer";
                    Session["LoggedInUser"] = _user;
                    Session["UserName"] = _user.UserName;
                    Session["PhoneNumber"] = _user.PhoneNumber;
                    Session["Email"] = _user.Email;
                    Session["FirstName"] = _user.FirstName;
                    Session["LastName"] = _user.LastName;
                    Response.Redirect("~/Customers/Home.aspx");
                }

                if (_user.RoleId == 4) // HeadOfFinance
                {
                    Session["Role"] = "HeadOfFinance";
                    Session["LoggedInUser"] = _user;
                    Session["UserName"] = _user.UserName;
                    Session["PhoneNumber"] = _user.PhoneNumber;
                    Session["Email"] = _user.Email;
                    Session["FirstName"] = _user.FirstName;
                    Session["LastName"] = _user.LastName;
                    Response.Redirect("~/HeadOfFinance/Home.aspx");
                }
                if (_user.RoleId == 5) //Legal
                {
                    Session["Role"] = "Legal";
                    Session["LoggedInUser"] = _user;
                    Session["UserName"] = _user.UserName;
                    Session["PhoneNumber"] = _user.PhoneNumber;
                    Session["Email"] = _user.Email;
                    Session["FirstName"] = _user.FirstName;
                    Session["LastName"] = _user.LastName;
                    Response.Redirect("~/Legal/Home.aspx");
                }

                if (_user.RoleId == 6) //Staff
                {
                    Session["Role"] = "Staff";
                    Session["LoggedInUser"] = _user;
                    Session["UserName"] = _user.UserName;
                    Session["PhoneNumber"] = _user.PhoneNumber;
                    Session["Email"] = _user.Email;
                    Session["FirstName"] = _user.FirstName;
                    Session["LastName"] = _user.LastName;
                    Response.Redirect("~/Staff/Home.aspx");
                }

                if (_user.RoleId == 7) //WareHouseAdmin
                {
                    Session["Role"] = "WareHouseEngineer";
                    Session["LoggedInUser"] = _user;
                    Session["UserName"] = _user.UserName;
                    Session["PhoneNumber"] = _user.PhoneNumber;
                    Session["Email"] = _user.Email;
                    Session["FirstName"] = _user.FirstName;
                    Session["LastName"] = _user.LastName;
                    Response.Redirect("~/WareHouse/Home.aspx");
                }


                if (_user.RoleId == 8) //Users
                {
                    Session["Role"] = "Users";
                    Session["LoggedInUser"] = _user;
                    Session["UserName"] = _user.UserName;
                    Session["PhoneNumber"] = _user.PhoneNumber;
                    Session["Email"] = _user.Email;
                    Session["FirstName"] = _user.FirstName;
                    Session["LastName"] = _user.LastName;
                    Response.Redirect("~/Users/Home.aspx");
                }


            }

            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('This user does not exist.')", true);
            }
        }

        protected void ASPxButtonLogin_Click(object sender, EventArgs e)
        {
            ValidateUser();
        }

        private string GeneratePasswordHash(string _password, string _salt)
        {
            string _SaltAndPassword = string.Concat(_password, _salt);

            string _hashedpwd = FormsAuthentication.HashPasswordForStoringInConfigFile(_SaltAndPassword, "SHA1");

            return _hashedpwd;
        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            Response.Redirect("Register.aspx");
        }
    }
}