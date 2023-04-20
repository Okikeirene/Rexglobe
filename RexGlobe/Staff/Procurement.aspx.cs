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

namespace RexLubs.Staff
{
    public partial class Procurement : System.Web.UI.Page
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
            string query = "CreateProcurement";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@RequestPerson", SqlDbType.VarChar).Value = RequestPerson.Value;
            cmd.Parameters.Add("@Procurement_Type", SqlDbType.VarChar).Value = Procurement_Type.Value;
            cmd.Parameters.Add("@Description", SqlDbType.VarChar).Value = Description.Value;
            cmd.Parameters.Add("@Quantity", SqlDbType.Int).Value = Quantity.Value;
            cmd.Parameters.Add("@Amount", SqlDbType.Decimal).Value = Amount.Value;
            cmd.Parameters.Add("@BudgetName", SqlDbType.VarChar).Value = BudgetName.Value; 
            cmd.Parameters.Add("@Department", SqlDbType.VarChar).Value = Department.Value;
            cmd.Parameters.Add("@FinancialMonth", SqlDbType.VarChar).Value = FinancialMonth.Value;
            cmd.Parameters.Add("@FinancialYear", SqlDbType.VarChar).Value = FinancialYear.Value;
            cmd.Parameters.Add("@LocationName", SqlDbType.VarChar).Value = LocationName.Value;

            var ProcurementID = cmd.Parameters.Add("@ProcurementID", SqlDbType.Int);
            var Compliance = cmd.Parameters.Add("@Compliance", SqlDbType.VarChar, 50);
            var HeadOfOperations = cmd.Parameters.Add("@HeadOfOperations", SqlDbType.VarChar, 50);
            var HeadOfFinance = cmd.Parameters.Add("@HeadOfFinance", SqlDbType.VarChar, 50);
            var ManagingDirector = cmd.Parameters.Add("@ManagingDirector", SqlDbType.VarChar, 50);
            var AvailableBudget = cmd.Parameters.Add("@AvailableBudget", SqlDbType.Decimal);
            ProcurementID.Direction = ParameterDirection.Output;
            Compliance.Direction = ParameterDirection.Output;
            HeadOfOperations.Direction = ParameterDirection.Output;
            HeadOfFinance.Direction = ParameterDirection.Output;
            ManagingDirector.Direction = ParameterDirection.Output;
            AvailableBudget.Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();

            var ProcurementID1 = ProcurementID.Value.ToString();
            var Compliance1 = Compliance.Value.ToString();
            var HeadOfOperations1 = HeadOfOperations.Value.ToString();
            var HeadOfFinance1 = HeadOfFinance.Value.ToString();
            var ManagingDirector1 = ManagingDirector.Value.ToString();
            var AvailableBudget1 = AvailableBudget.Value.ToString();

            string GroupEmail = Compliance1 + ";" + HeadOfOperations1 + ";" + HeadOfFinance1 + ";" + ManagingDirector1;

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Procurement Submission was Successful. Your Procurement ID is " + ProcurementID1 + ".')", true);
            //Response.Redirect("~/Customers/ManageCustomers.aspx");

            try
            {
                string body;
                //Read template file from the Util folder
                using (var sr = new StreamReader(System.Web.HttpContext.Current.Server.MapPath("~/Util/Procurement.html")))
                {
                    body = sr.ReadToEnd();
                }
                string APPURL = ConfigurationManager.AppSettings["APPURL"];
                string msgBody = string.Format(body, ProcurementID1, RequestPerson, Procurement_Type, Description, Quantity, Amount , AvailableBudget1, BudgetName, Department, FinancialMonth, FinancialYear, LocationName);
                MailMessage msg = new MailMessage(new MailAddress(ConfigurationManager.AppSettings["UserName"], "RexGlobe Support"), new MailAddress(GroupEmail));
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

            ASPxFormLayout1.ForEach(ClearItem);
            ClearItem();

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
            RequestPerson.Value = string.Empty;
            Procurement_Type.Value = string.Empty;
            Description.Value = string.Empty;
            Quantity.Value = string.Empty;
            Amount.Value = string.Empty;
            BudgetName.Value = string.Empty;
            Department.Value = string.Empty;
            FinancialMonth.Value = string.Empty;
            FinancialYear.Value = string.Empty;
            LocationName.Value = string.Empty;
        }

    }
}