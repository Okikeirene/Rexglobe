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
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Net.Mail;
using RexGlobe;
using System.Net;

namespace RexLubs
{
    public partial class Register : System.Web.UI.Page
    {
        RexLubsEntities context = new RexLubsEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;
                //using (SqlConnection con = new SqlConnection(RexGlobeCS))                
                //{
                //    SqlCommand cmd = new SqlCommand("select ID, Name FROM [RexGlobe].[dbo].[Country]", con);
                //    con.Open();
                //    DDLCountry.DataSource = cmd.ExecuteReader();
                //    DDLCountry.DataTextField = "Name";
                //    DDLCountry.DataValueField = "id";
                //    DDLCountry.DataBind();
                //    con.Close();
                //}

                using (SqlConnection con = new SqlConnection(RexGlobeCS))
                {
                    SqlCommand cmd = new SqlCommand("Select StateID, name FROM [RexGlobe].[dbo].[States] ", con);
                    con.Open();
                    DDLState.DataSource = cmd.ExecuteReader();
                    DDLState.DataTextField = "name";
                    DDLState.DataValueField = "StateID";
                    DDLState.DataBind();
                    con.Close();
                }
            }
        }

        protected void Refresh_Click(object sender, EventArgs e)
        {
            this.Username.Value = string.Empty;
            this.txtPassword.Text = string.Empty;
            this.FirstName.Value = string.Empty;
            this.MiddleName.Value = string.Empty;
            this.LastName.Value = string.Empty;
            this.PhoneNumber.Value = string.Empty;
            this.Email.Value = string.Empty;
        }

        private string GeneratePasswordHash(string _password, string _salt)
        {
            string _SaltAndPassword = string.Concat(_password, _salt);
            string _hashedpwd = FormsAuthentication.HashPasswordForStoringInConfigFile(_SaltAndPassword, "SHA1");

            return _hashedpwd;
        }

        private string GenerateSalt(string _password)
        {
            string Salt_;

            //Create a UnicodeEncoder to convert between byte array and string.
            UnicodeEncoding ByteConverter = new UnicodeEncoding();

            //Create byte arrays to hold original, encrypted, and decrypted data.
            byte[] dataToEncrypt = ByteConverter.GetBytes(txtPassword.Text);
            byte[] encryptedData;
            byte[] decryptedData;

            //Create a new instance of RSACryptoServiceProvider to generate
            //public and private key data.
            using (RSACryptoServiceProvider RSA = new RSACryptoServiceProvider())
            {

                //Pass the data to ENCRYPT, the public key information 
                //(using RSACryptoServiceProvider.ExportParameters(false),
                //and a boolean flag specifying no OAEP padding.
                encryptedData = RSAEncrypt(dataToEncrypt, RSA.ExportParameters(false), false);

                // Merge all bytes into a string of bytes  
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < encryptedData.Length; i++)
                {
                    builder.Append(encryptedData[i].ToString("x2"));
                }

                Salt_ = builder.ToString();

                //Pass the data to DECRYPT, the private key information 
                //(using RSACryptoServiceProvider.ExportParameters(true),
                //and a boolean flag specifying no OAEP padding.
                decryptedData = RSADecrypt(encryptedData, RSA.ExportParameters(true), false);

                //Display the decrypted plaintext to the console. 
                Console.WriteLine("Decrypted plaintext: {0}", ByteConverter.GetString(decryptedData));

                return Salt_;
            }
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
          
            string _username = Username.Value;
            string _password = txtPassword.Text;
            string _email = Email.Value;
            string _phonenumber = PhoneNumber.Value;


            string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;
            
            SqlConnection con = new SqlConnection(RexGlobeCS);
            
            con.Open();
            string query = "CreateCustomer";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = Username.Value;
            cmd.Parameters.Add("@PasswordHash", SqlDbType.VarChar).Value = GeneratePasswordHash(_password, _username);
            cmd.Parameters.Add("@Salt", SqlDbType.VarChar).Value = GenerateSalt(_password); 
            cmd.Parameters.Add("@CompanyName", SqlDbType.VarChar).Value = CompanyName.Value;
            cmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = FirstName.Value;
            cmd.Parameters.Add("@MiddleName", SqlDbType.VarChar).Value = MiddleName.Value;
            cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = LastName.Value;
            cmd.Parameters.Add("@PhoneNumber", SqlDbType.VarChar).Value = PhoneNumber.Value;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email.Value;
            cmd.Parameters.Add("@StateID", SqlDbType.VarChar).Value = DDLState.SelectedValue; 
            cmd.Parameters.Add("@CountryID", SqlDbType.VarChar).Value = Country.Value;

            var returnParam = cmd.Parameters.Add("@REXID", SqlDbType.VarChar, 50); 
            returnParam.Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            var result = returnParam.Value.ToString();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registration was Successful.')", true);
            Response.Redirect("~/Login.aspx");
            
       
            try
            {
                string body;
                //Read template file from the Util folder
                using (var sr = new StreamReader(System.Web.HttpContext.Current.Server.MapPath("~/Util/CreatePassword.html")))
                {
                    body = sr.ReadToEnd();
                }
                string APPURL = ConfigurationManager.AppSettings["APPURL"];
                string msgBody = string.Format(body, result, _username, _username, APPURL);
                MailMessage msg = new MailMessage(new MailAddress(ConfigurationManager.AppSettings["UserName"], "RexGlobe Administrator"), new MailAddress(_email));
                msg.Subject = "RexGlobe Management System - User Registration Creation : " + _username + "";
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
            //if (dt.Rows.Count > 0)
            //{
            //    Response.Redirect("Login.aspx");
            //}
            //else
            //{
            //    Literal1.Text = "Registion was not successful";
            //}
        }

        private void ClearItem()
        {
            Username.Value = string.Empty;
            FirstName.Value = string.Empty;
            MiddleName.Value = string.Empty;
            LastName.Value = string.Empty;
            PhoneNumber.Value = string.Empty;
            Email.Value = string.Empty;
            //user_id.Value = string.Empty;
        }

        public static byte[] RSAEncrypt(byte[] DataToEncrypt, RSAParameters RSAKeyInfo, bool DoOAEPPadding)
        {
            try
            {
                byte[] encryptedData;
                //Create a new instance of RSACryptoServiceProvider.
                using (RSACryptoServiceProvider RSA = new RSACryptoServiceProvider())
                {

                    //Import the RSA Key information. This only needs
                    //toinclude the public key information.
                    RSA.ImportParameters(RSAKeyInfo);

                    //Encrypt the passed byte array and specify OAEP padding.  
                    //OAEP padding is only available on Microsoft Windows XP or
                    //later.  
                    encryptedData = RSA.Encrypt(DataToEncrypt, DoOAEPPadding);
                }
                return encryptedData;
            }
            //Catch and display a CryptographicException  
            //to the console.
            catch (CryptographicException e)
            {
                Console.WriteLine(e.Message);

                return null;
            }
        }

        public static byte[] RSADecrypt(byte[] DataToDecrypt, RSAParameters RSAKeyInfo, bool DoOAEPPadding)
        {
            try
            {
                byte[] decryptedData;
                //Create a new instance of RSACryptoServiceProvider.
                using (RSACryptoServiceProvider RSA = new RSACryptoServiceProvider())
                {
                    //Import the RSA Key information. This needs
                    //to include the private key information.
                    RSA.ImportParameters(RSAKeyInfo);

                    //Decrypt the passed byte array and specify OAEP padding.  
                    //OAEP padding is only available on Microsoft Windows XP or
                    //later.  
                    decryptedData = RSA.Decrypt(DataToDecrypt, DoOAEPPadding);
                }
                return decryptedData;
            }
            //Catch and display a CryptographicException  
            //to the console.
            catch (CryptographicException e)
            {
                Console.WriteLine(e.ToString());

                return null;
            }
        }
    

   }
}