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

namespace RexGlobe.Staff
{
    public partial class CreatePersonnel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //user_id.Value = Session["UserName"].ToString(); 

            string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(RexGlobeCS))
            {
                SqlCommand cmd = new SqlCommand("select [RoleID],[RoleName] FROM [RexGlobe].[dbo].[Roles]", con);
                con.Open();
                DDLRole.DataSource = cmd.ExecuteReader();
                DDLRole.DataTextField = "RoleName";
                DDLRole.DataValueField = "RoleID";
                DDLRole.DataBind();
                con.Close();
            }
            using (SqlConnection con = new SqlConnection(RexGlobeCS))
            {
                SqlCommand cmd = new SqlCommand("SELECT [ID],[Name] FROM [RexGlobe].[dbo].[Personnel_Type]", con);
                con.Open();
                personnel_type.DataSource = cmd.ExecuteReader();
                personnel_type.DataTextField = "Name";
                personnel_type.DataValueField = "Name";
                personnel_type.DataBind();
                con.Close();
            }
            using (SqlConnection con = new SqlConnection(RexGlobeCS))
            {
                SqlCommand cmd = new SqlCommand("SELECT [ID],[Name] FROM [RexGlobe].[dbo].[Gender]", con);
                con.Open();
                Gender.DataSource = cmd.ExecuteReader();
                Gender.DataTextField = "Name";
                Gender.DataValueField = "Name";
                Gender.DataBind();
                con.Close();
            }
        }
        protected void CreatePersonal_Click(object sender, EventArgs e)
        {
            string userd = Session["UserName"].ToString();
            string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;
            SqlConnection con = new SqlConnection(RexGlobeCS);
            con.Open();
            String query = "CreatePersonnel";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.Add("@Username", SqlDbType.VarChar).Value = Username.Value;
            cmd.Parameters.Add("@DDLRole", SqlDbType.VarChar).Value = DDLRole.SelectedValue;
            cmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = FirstName.Value;
            cmd.Parameters.Add("@MiddleName", SqlDbType.VarChar).Value = MiddleName.Value;
            cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = LastName.Value;
            cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = Gender.SelectedValue;
            cmd.Parameters.Add("@Designation", SqlDbType.VarChar).Value = Designation.Value;
            cmd.Parameters.Add("@personnel_type", SqlDbType.VarChar).Value = personnel_type.SelectedValue;
            cmd.Parameters.Add("@PhoneNumber", SqlDbType.VarChar).Value = PhoneNumber.Value;
            cmd.Parameters.Add("@Email1", SqlDbType.VarChar).Value = Email1.Value;
            cmd.Parameters.Add("@user_id", SqlDbType.VarChar).Value = userd;

            var returnParam = cmd.Parameters.Add("@Personal_ID ", SqlDbType.VarChar, 50);
            returnParam.Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();

            var result = returnParam.Value.ToString();
            string UserName = Username.Value.ToString();
            string Email = Email1.Value.ToString();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Personal was Successfully created.')", true);

            try
            {
                string body;
                //Read template file from the Util folder
                using (var sr = new StreamReader(System.Web.HttpContext.Current.Server.MapPath("~/Util/CreatePassword.html")))
                {
                    body = sr.ReadToEnd();
                }
                string APPURL = ConfigurationManager.AppSettings["APPURL"];
                string msgBody = string.Format(body, result, UserName, UserName, APPURL);
                MailMessage msg = new MailMessage(new MailAddress(ConfigurationManager.AppSettings["UserName"], "RExGlobe Support"), new MailAddress(Email));
                msg.Subject = "RexGlobe Portal - Personal Creation : " + UserName + "";
                msg.Body = msgBody;
                msg.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSsl"]);
                System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
                NetworkCred.UserName = ConfigurationManager.AppSettings["UserName"]; //reading from web.config  
                NetworkCred.Password = ConfigurationManager.AppSettings["Password"]; //reading from web.config  
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = int.Parse(ConfigurationManager.AppSettings["Port"]); //reading from web.config  
                smtp.Send(msg);
                string smtpAddress = "smtp.gmail.com";
                int portNumber = 587;
                bool enableSSL = true;
                string emailFrom = "RexGlobeNG@gmail.com";
                string password = "RexGlobe@2020";
                using (SmtpClient smtp2 = new SmtpClient(smtpAddress, portNumber))
                {
                    smtp2.Credentials = new NetworkCredential(emailFrom, password);
                    smtp2.EnableSsl = enableSSL;
                    smtp2.Send(msg);
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email for Personal Creation was not Successfully sent.')", true);
            }
            con.Close();

            ClearItem();
        }
        private void ClearItem()
        {
            Username.Value = string.Empty;
            FirstName.Value = string.Empty;
            MiddleName.Value = string.Empty;
            LastName.Value = string.Empty;
            Designation.Value = string.Empty;
            PhoneNumber.Value = string.Empty;
            Email1.Value = string.Empty;
            //user_id.Value = string.Empty;
        }
        protected void Refresh_Click(object sender, EventArgs e)
        {
            this.Username.Value = string.Empty;
            this.FirstName.Value = string.Empty;
            this.MiddleName.Value = string.Empty;
            this.LastName.Value = string.Empty;
            this.Gender.SelectedValue = string.Empty;
            this.Designation.Value = string.Empty;
            this.personnel_type.SelectedValue = string.Empty;
            this.PhoneNumber.Value = string.Empty;
            this.Email1.Value = string.Empty;
        }
    }
}