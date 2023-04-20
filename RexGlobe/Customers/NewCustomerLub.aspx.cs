using DevExpress.Web;
using RexGlobe;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;
using System.Text;
using System.Net.Mail;
using System.Net;

namespace RexLubs.Customers
{
    public partial class NewCustomerLub : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ASPxButtonSubmit_Click(object sender, EventArgs e)
        {

            UserAccount _user = (UserAccount)Session["LoggedInUser"];

            //int _roleId = Convert.ToInt32(_user.RoleId);
            string username = _user.UserName.ToString();
            string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;

            SqlConnection con = new SqlConnection(RexGlobeCS);

            con.Open();
            string query = "CreateCustomerProfile";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@BusinessName", SqlDbType.VarChar).Value = BusinessName.Value;
            cmd.Parameters.Add("@PhoneNumber", SqlDbType.VarChar).Value = PhoneNumber.Value;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email.Value;
            cmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = Address.Value;
            cmd.Parameters.Add("@State", SqlDbType.VarChar).Value = State.SelectedItem.ToString();
            cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = Country.SelectedItem.ToString();
            cmd.Parameters.Add("@SalesRepresentative", SqlDbType.VarChar).Value = SalesRepresentative.Value;
            cmd.Parameters.Add("@ContactPerson", SqlDbType.VarChar).Value = ContactPerson.Value;
            cmd.Parameters.Add("@ContactPersonEmail", SqlDbType.VarChar).Value = ContactPersonEmail.Value;
            cmd.Parameters.Add("@ContactPersonPhoneNumber", SqlDbType.VarChar).Value = ContactPersonPhoneNumber.Value;
            cmd.Parameters.Add("@ContactPersonGender", SqlDbType.VarChar).Value = ContactPersonGender.SelectedItem.ToString();
            cmd.Parameters.Add("@TIN_Number", SqlDbType.VarChar).Value = TIN_Number.Value;
            cmd.Parameters.Add("@DateOfIncorporation", SqlDbType.DateTime).Value = DateOfIncorporation.Value;
            cmd.Parameters.Add("@TypeOfBusiness", SqlDbType.VarChar).Value = TypeOfBusiness.SelectedItem.ToString();
            cmd.Parameters.Add("@NextOfKinName", SqlDbType.VarChar).Value = NextOfKinName.Value;
            cmd.Parameters.Add("@NextOfKinPhone", SqlDbType.VarChar).Value = NextOfKinPhone.Value;
            cmd.Parameters.Add("@PaymentTerms", SqlDbType.VarChar).Value = PaymentTerms.SelectedItem.ToString();
            cmd.Parameters.Add("@TrasactionType", SqlDbType.VarChar).Value = TrasactionType.SelectedItem.ToString();
            cmd.Parameters.Add("@DateOfBirth", SqlDbType.DateTime).Value = DateOfBirth.Value; // Convert.ToDateTime(ExpectedDeliveryDate.Value);
            cmd.Parameters.Add("@CreatedBy", SqlDbType.VarChar).Value = username.ToString();

            var returnParam = cmd.Parameters.Add("@BookingID", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();

            var result = returnParam.Value.ToString();
            string Email1 = Email.Value.ToString();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Create New Customer Request was Successful. Your Request ID is " + result + ".')", true);
            //Response.Redirect("~/Customers/ManageCustomers.aspx");

            try
            {
                string body;
                //Read template file from the Util folder
                using (var sr = new StreamReader(System.Web.HttpContext.Current.Server.MapPath("~/Util/NewProductRequest.html")))
                {
                    body = sr.ReadToEnd();
                }
                string APPURL = ConfigurationManager.AppSettings["APPURL"];
                string msgBody = string.Format(body, result, BusinessName, TIN_Number, DateOfIncorporation, SalesRepresentative, ContactPerson, PaymentTerms, TrasactionType);
                MailMessage msg = new MailMessage(new MailAddress(ConfigurationManager.AppSettings["UserName"], "RexGlobe Support"), new MailAddress(Email1));
                msg.Subject = "RexGlobe Portal - New Product Request from : " + username + "";
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
                string password = "RexGlobe@2023";
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

            if (FileUpload1.HasFile)
            {
                //string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;

                SqlConnection con1 = new SqlConnection(RexGlobeCS);
                SqlCommand com = new SqlCommand();
                com.Connection = con1;
                com.Parameters.Add("@Name", SqlDbType.VarChar).Value = FileName1.Text;
                com.Parameters.Add("@Description", SqlDbType.VarChar).Value = FileDescription1.Text;
                SqlParameter p3 = new SqlParameter("@Filecontent", SqlDbType.VarBinary);
                p3.Value = ConvertImage(FileUpload1);
                com.Parameters.Add(p3);
                com.CommandText = "DECLARE @UNIQUEX UNIQUEIDENTIFIER,  @REGID INT; SELECT top 1 @REGID = ID  FROM [RexGlobe].[dbo].[Customers] order by ID desc;SET @UNIQUEX = NEWID(); Insert into [RexGlobe].[dbo].[CustomerFiles] ([FileId],[RequestId],[FileName],[FileDescription],[FileType],[FileContent]) VALUES (@UNIQUEX,@REGID,'" + FileName1.Text + "',' " + FileDescription1.Text + "','png',@Filecontent)";
                con1.Open();
                //insert the file into database
                com.ExecuteNonQuery();
                con1.Close();
            }
            if (FileUpload2.HasFile)
            {
                //string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;

                SqlConnection con2 = new SqlConnection(RexGlobeCS);
                SqlCommand com = new SqlCommand();
                com.Connection = con2;
                com.Parameters.Add("@Name", SqlDbType.VarChar).Value = FileName2.Text;
                com.Parameters.Add("@Description", SqlDbType.VarChar).Value = FileDescription2.Text;
                SqlParameter p3 = new SqlParameter("@Filecontent", SqlDbType.VarBinary);
                p3.Value = ConvertImage(FileUpload2);
                com.Parameters.Add(p3);
                com.CommandText = "DECLARE @UNIQUEX UNIQUEIDENTIFIER,  @REGID INT; SELECT top 1 @REGID = ID  FROM [RexGlobe].[dbo].[Customers] order by ID desc;SET @UNIQUEX = NEWID();Insert into [RexGlobe].[dbo].[CustomerFiles] ([FileId],[RequestId],[FileName],[FileDescription],[FileType],[FileContent]) VALUES (@UNIQUEX,@REGID,'" + FileName2.Text + "', '" + FileDescription2.Text + "','png',@Filecontent)";
                con2.Open();
                //insert the file into database
                com.ExecuteNonQuery();
                con2.Close();
            }
            if (FileUpload3.HasFile)
            {
                //string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;

                SqlConnection con3 = new SqlConnection(RexGlobeCS);
                SqlCommand com = new SqlCommand();
                com.Connection = con3;
                com.Parameters.Add("@Name", SqlDbType.VarChar).Value = FileName3.Text;
                com.Parameters.Add("@Description", SqlDbType.VarChar).Value = FileDescription3.Text;
                SqlParameter p3 = new SqlParameter("@Filecontent", SqlDbType.VarBinary);
                p3.Value = ConvertImage(FileUpload2);
                com.Parameters.Add(p3);
                com.CommandText = "DECLARE @UNIQUEX UNIQUEIDENTIFIER,  @REGID INT; SELECT top 1 @REGID = ID  FROM [RexGlobe].[dbo].[Customers] order by Id desc;SET @UNIQUEX = NEWID();Insert into [RexGlobe].[dbo].[CustomerFiles] ([FileId],[RequestId],[FileName],[FileDescription],[FileType],[FileContent]) VALUES (@UNIQUEX,@REGID,'" + FileName3.Text + "', '" + FileDescription3.Text + "','png',@Filecontent)";
                con3.Open();
                //insert the file into database
                com.ExecuteNonQuery();
                con3.Close();
            }

            ASPxFormLayout1.ForEach(ClearItem);
            ClearItem();
        }

        private byte[] ConvertImage(FileUpload file)
        {

            byte[] bytes = null;

            try
            {


                HttpPostedFile postedFile = file.PostedFile;

                int imageLength = postedFile.ContentLength;
                string imageType = postedFile.ContentType;

                string filename = Path.GetFileName(postedFile.FileName);
                string fileExtension = Path.GetExtension(filename);
                int filesize = postedFile.ContentLength;
                Session["filename"] = filename;
                Session["fileExtension"] = fileExtension;
                Session["filesize"] = filesize;
                Session["imageLength"] = imageLength;
                Session["imageType"] = imageType;

                Stream stream = postedFile.InputStream;
                BinaryReader binaryreader = new BinaryReader(stream);

                bytes = binaryreader.ReadBytes((int)stream.Length);
                return bytes;
            }

            catch (Exception ex)
            {
                return null;
            }

        }


        private void ClearItem(LayoutItemBase obj)
        {
            var layoutItem = Items as LayoutItem;
            if (layoutItem != null)
            {
                var editBase = layoutItem.GetNestedControl() as ASPxEditBase;
                if (editBase != null)
                {
                    editBase.Value = string.Empty;
                }
            }
        }


        protected void ASPxFormLayout1_DataBound(object sender, EventArgs e)
        {
            ASPxFormLayout1.ForEach(ClearItem);
        }

        private void ClearItem()
        {
            BusinessName.Value = string.Empty;
            PhoneNumber.Value = string.Empty;
            Email.Value = string.Empty;
            Address.Value = string.Empty;
            State.Value = string.Empty;
            Country.Value = string.Empty;
            SalesRepresentative.Value = string.Empty;
            ContactPerson.Value = string.Empty;
            ContactPersonEmail.Value = string.Empty;
            ContactPersonPhoneNumber.Value = string.Empty;
            ContactPersonGender.Value = string.Empty;
            TIN_Number.Value = string.Empty;
            DateOfIncorporation.Value = string.Empty;
            TypeOfBusiness.Value = string.Empty;
            PaymentTerms.Value = string.Empty;
            TrasactionType.Value = string.Empty;
            NextOfKinName.Value = string.Empty;
            NextOfKinPhone.Value = string.Empty;
            DateOfBirth.Value = string.Empty;
        }
    }
}