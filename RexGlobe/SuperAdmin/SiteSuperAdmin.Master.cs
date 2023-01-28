using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RexGlobe.SuperAdmin
{
    public partial class SiteSuperAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedInUser"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            if (!IsPostBack)
            {
                lblLoggedInUser.Text = Session["UserName"].ToString();
                lblUserRole.Text = Session["Role"].ToString() + " " + "Account";
            }

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}