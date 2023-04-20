using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RexLubs
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void UpdatePassword_Click(object sender, EventArgs e)
        {
            string _username = Username.Value;
            string _password = txtPassword.Value;
            string _email = Email.Text;
            string _phonenumber = PhoneNumber.Value;


            string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;

            SqlConnection con = new SqlConnection(RexGlobeCS);

            con.Open();
            string query = "UpdatePassword";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = Username.Value;
            cmd.Parameters.Add("@PasswordHash", SqlDbType.VarChar).Value = GeneratePasswordHash(_password, _username);
            cmd.Parameters.Add("@Salt", SqlDbType.VarChar).Value = GenerateSalt(_password);
            cmd.Parameters.Add("@PhoneNumber", SqlDbType.VarChar).Value = PhoneNumber.Value;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email.Text;

            var returnParam = cmd.Parameters.Add("@REXID", SqlDbType.VarChar, 50);
            returnParam.Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            var result = returnParam.Value.ToString();

            if (result == "False")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password Update Failed !!!. Please check your Phone Number or Email it is incorrect.')", true);
            }
            else
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password Update was Successful.')", true);
                Response.Redirect("~/LoginMain.aspx");
        }

        protected void Refresh_Click(object sender, EventArgs e)
        {
            this.Username.Value = string.Empty;
            this.txtPassword.Value = string.Empty;
            this.Email.Text = string.Empty;
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
            byte[] dataToEncrypt = ByteConverter.GetBytes(txtPassword.Value);
            byte[] encryptedData;

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
                //decryptedData = RSADecrypt(encryptedData, RSA.ExportParameters(true), false);

                ////Display the decrypted plaintext to the console. 
                //Console.WriteLine("Decrypted plaintext: {0}", ByteConverter.GetString(decryptedData));

                return Salt_;
            }
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

        
    }
}