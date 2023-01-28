using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RexGlobe
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        RexGlobeEntities context = new RexGlobeEntities();
        string Salt_;

        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "~/Register.aspx";
        }

        protected void Send_Click(object sender, EventArgs e)
        {
            string _email = Email.Text;
            string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;

            SqlConnection con = new SqlConnection(RexGlobeCS);

            con.Open();
            string query = "PasswordReset";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email.Text;

            var returnParam = cmd.Parameters.Add("@Result", SqlDbType.VarChar, 50);
            var _FirstName = cmd.Parameters.Add("@FirstName", SqlDbType.VarChar, 50);
            var _LastName = cmd.Parameters.Add("@LastName", SqlDbType.VarChar, 50);
            var _Salt = cmd.Parameters.Add("@Salt", SqlDbType.VarChar, 50);

            returnParam.Direction = ParameterDirection.Output;
            _FirstName.Direction = ParameterDirection.Output;
            _LastName.Direction = ParameterDirection.Output;
            _Salt.Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();

            var result = returnParam.Value.ToString();
            var FirstName = _FirstName.Value.ToString();
            var LastName = _LastName.Value.ToString();
            var Salt = _Salt.Value.ToString();
            var email = Email.Text.ToString();
            Salt_ = _Salt.Value.ToString();

            if (result == "Password has been successfully retrieved")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your Password has been sent to your email. Kindly check your mail box and login again!!!')", true);
                //Response.Redirect("~/Login.aspx");

                //try
                //{
                    string body;
                    //Read template file from the Util folder
                    using (var sr = new StreamReader(System.Web.HttpContext.Current.Server.MapPath("~/Util/CreatePassword.html")))
                    {
                        body = sr.ReadToEnd();
                    }
                    string APPURL = ConfigurationManager.AppSettings["APPURL"];
                    string msgBody = string.Format(body, result, _FirstName, LastName, Salt, APPURL);
                    MailMessage msg = new MailMessage(new MailAddress(ConfigurationManager.AppSettings["UserName"], "RexGlobe Administrator"), new MailAddress(email));
                    msg.Subject = "RexGlobe Management System - Password Reset Request : " + FirstName + "" + LastName;
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
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email Successfully sent.')", true);
                //}
                //catch (Exception ex)
                //{
                //    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email for Personal Creation was not Successfully sent.')", true);
                //}
                con.Close();
                
                ClearItem();
            }
            else

                Response.Redirect("~/Register.aspx");



        }

        private void ClearItem()
        {
            Email.Text = string.Empty;
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

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
           
        }

        private string DecrytedSalt(string _password)
        {
            //string Salt_;

            //Create a UnicodeEncoder to convert between byte array and string.
            UnicodeEncoding ByteConverter = new UnicodeEncoding();

            //Create byte arrays to hold original, encrypted, and decrypted data.
            byte[] dataToDecrypt = ByteConverter.GetBytes(Salt_);
            byte[] encryptedData;
            byte[] decryptedData;

            //Create a new instance of RSACryptoServiceProvider to generate
            //public and private key data.
            using (RSACryptoServiceProvider RSA = new RSACryptoServiceProvider())
            {

                //Pass the data to DECRYPT, the private key information 
                //(using RSACryptoServiceProvider.ExportParameters(true),
                //and a boolean flag specifying no OAEP padding.
                decryptedData = RSADecrypt(dataToDecrypt, RSA.ExportParameters(true), false);

                // Merge all bytes into a string of bytes  
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < decryptedData.Length; i++)
                {
                    builder.Append(decryptedData[i].ToString("x2"));
                }

                Salt_ = builder.ToString();
                

                //Display the decrypted plaintext to the console. 
                Console.WriteLine("Decrypted plaintext: {0}", ByteConverter.GetString(decryptedData));

                return Salt_;
            }
        }
    }
}