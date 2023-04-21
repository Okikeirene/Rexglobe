using DevExpress.Web;
using RexLubs;
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
    public partial class LubricantRequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["LoggedInUser"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void ASPxButtonSubmit_Click(object sender, EventArgs e)
        {

            UserAccount _user = (UserAccount)Session["LoggedInUser"];

            //int _roleId = Convert.ToInt32(_user.RoleId);
            string username = _user.UserName.ToString();
            string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;

            SqlConnection con = new SqlConnection(RexGlobeCS);

            con.Open();
            string query = "CreateLubricantBooking";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@BusinessName", SqlDbType.VarChar).Value = BusinessName.SelectedItem.ToString();
            cmd.Parameters.Add("@PhoneNumber", SqlDbType.VarChar).Value = PhoneNumber.Value; 
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email.Value;
            cmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = Address.Value;
            cmd.Parameters.Add("@State", SqlDbType.VarChar).Value = State.SelectedItem.ToString();
            cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = Country.SelectedItem.ToString();
            cmd.Parameters.Add("@SalesRepresentative", SqlDbType.VarChar).Value = SalesRepresentative.Value;
            cmd.Parameters.Add("@ContactPerson", SqlDbType.VarChar).Value = ContactPerson.Value;
            cmd.Parameters.Add("@ContactPersonEmail", SqlDbType.VarChar).Value = ContactPersonEmail.Value;
            cmd.Parameters.Add("@ContactPersonPhoneNumber", SqlDbType.VarChar).Value = ContactPersonPhoneNumber.Value;
            cmd.Parameters.Add("@ProductName", SqlDbType.VarChar).Value = ProductName.SelectedItem.ToString();
            cmd.Parameters.Add("@ProductType", SqlDbType.VarChar).Value = ProductType.SelectedItem.ToString();
            cmd.Parameters.Add("@ProductQuantity", SqlDbType.Int).Value = ProductQuantity.Value;
            cmd.Parameters.Add("@UnitPrice", SqlDbType.Decimal).Value = UnitPrice.Value;
            cmd.Parameters.Add("@Total_Amount", SqlDbType.Decimal).Value = Total_Amount.Value;
            cmd.Parameters.Add("@PaymentTerms", SqlDbType.VarChar).Value = PaymentTerms.SelectedItem.ToString();
            cmd.Parameters.Add("@TrasactionType", SqlDbType.VarChar).Value = TrasactionType.SelectedItem.ToString();
            cmd.Parameters.Add("@WarehouseManagerName", SqlDbType.VarChar).Value = WarehouseManagerName.Value;
            cmd.Parameters.Add("@WarehouseManagerEmail", SqlDbType.VarChar).Value = WarehouseManagerEmail.Value;
            cmd.Parameters.Add("@WarehouseLocation", SqlDbType.VarChar).Value = WarehouseLocation.Value;
            cmd.Parameters.Add("@PickUpPersonName", SqlDbType.VarChar).Value = PickUpPersonName.Value;
            cmd.Parameters.Add("@PickUpPersonPhone", SqlDbType.VarChar).Value = PickUpPersonPhone.Value;
            cmd.Parameters.Add("@ExpectedDeliveryDate", SqlDbType.DateTime).Value = ExpectedDeliveryDate.Value; // Convert.ToDateTime(ExpectedDeliveryDate.Value);
            cmd.Parameters.Add("@CreatedBy", SqlDbType.VarChar).Value = username.ToString();

            var returnParam = cmd.Parameters.Add("@BookingID", SqlDbType.Int);
            var returnParam2 = cmd.Parameters.Add("@ManagerEmail", SqlDbType.VarChar, 50);
            returnParam.Direction = ParameterDirection.Output;
            returnParam2.Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();

            var result = returnParam.Value.ToString();
            string ManagerEmail = returnParam2.Value.ToString();
            string Email1 = Email.Value.ToString();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Lubricant Request Booking was Successful. Your Request ID is " + result + ".')", true);
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
                string msgBody = string.Format(body, result, ProductName, ProductType, ProductQuantity, UnitPrice, Total_Amount, PaymentTerms, TrasactionType, WarehouseManagerName, WarehouseLocation);
                MailMessage msg = new MailMessage(new MailAddress(ConfigurationManager.AppSettings["UserName"], "RexGlobe Support"), new MailAddress(ManagerEmail));
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
                string smtpAddress = "mail.rexlubs.com";
                int portNumber = 465;
                bool enableSSL = true;
                string emailFrom = "customercare@rexlubs.com";
                string password = "customer@2023";
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

            ASPxFormLayout1.ForEach(ClearItem);
            ClearItems();

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

        private void ClearItems()
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
            ProductName.Value = string.Empty;
            ProductType.Value = string.Empty;
            ProductQuantity.Value = string.Empty;
            UnitPrice.Value = string.Empty;
            Total_Amount.Value = string.Empty;
            PaymentTerms.Value = string.Empty;
            TrasactionType.Value = string.Empty;
            WarehouseManagerName.Value = string.Empty;
            WarehouseManagerEmail.Value = string.Empty;
            WarehouseLocation.Value = string.Empty;
            PickUpPersonName.Value = string.Empty;
            PickUpPersonPhone.Value = string.Empty;
            ExpectedDeliveryDate.Value = string.Empty;
        }

        protected void esmdsRegisteredCompanies_Selecting(object sender, EntityDataSourceSelectingEventArgs e)
        {

        }
    }
}