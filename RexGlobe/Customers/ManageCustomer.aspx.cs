using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Net.Mail;
using System.Net;
using DevExpress.Web;


namespace RexLubs.Customers
{
    public partial class ManageCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //UserAccount _user = (UserAccount)Session["LoggedInUser"];

            ////int _roleId = Convert.ToInt32(_user.RoleId);
            //string username = _user.UserName.ToString();
            //string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;
            //using (SqlConnection con = new SqlConnection(RexGlobeCS))
            //{
            //    SqlCommand cmd = new SqlCommand("SELECT * FROM [Customers] wHere CreatedBy =" + username , con);
            //    con.Open();
            //    ASPxGridView1.DataSource = cmd.ExecuteReader();
            //    SqlCustomers.DataBind();
            //    con.Close();
            //}
        }
    }
}