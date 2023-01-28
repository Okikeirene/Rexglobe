using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RexGlobe.Staff
{
    public partial class CreatePassword : System.Web.UI.Page
    {
        RexGlobeEntities context = new RexGlobeEntities();
        string NewName = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            NewName = Request.QueryString["B"];
            Username.Value = NewName;
        }
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            string _username = Username.Value;
            string _password = Password.Value;
            string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;
            SqlConnection con = new SqlConnection(RexGlobeCS);
            con.Open();
            String query = "CreatePassword";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.Add("@Username", SqlDbType.VarChar).Value = Username.Value;
            cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = GeneratePasswordHash(_password, _username);

            var returnParam = cmd.Parameters.Add("@Result ", SqlDbType.VarChar, 50);
            returnParam.Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            var result = returnParam.Value.ToString();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password was Successfully Updated.')", true);
        }

        private string GeneratePasswordHash(string _password, string _salt)
        {
            string _SaltAndPassword = string.Concat(_password, _salt);
            string _hashedpwd = FormsAuthentication.HashPasswordForStoringInConfigFile(_SaltAndPassword, "SHA1");

            return _hashedpwd;
        }


        protected void Refresh_Click(object sender, EventArgs e)
        {
            this.Username.Value = string.Empty;
            this.Password.Value = string.Empty;
        }
    }
}