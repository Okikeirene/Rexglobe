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
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;
using System.Net.Http;
//using Flutterwave.Net;
//using Flutterwave.Net.Utilities;

namespace RexLubs.Staff
{
    public partial class LubricantRequests : System.Web.UI.Page
    {
        decimal TotalAmount = 0;
        string Product_Name = "";
        string Product_Type = "";
        int Product_Quantity = 0;
        decimal Unit_Price = 0;
        decimal Price_In_Carton = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedInUser"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void ASPxButtonSubmit_Click(object sender, EventArgs e)
        {
            

            if (UnitPrice.Value == null && Units_Price_In_Carton.Value == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please Enter your perferred Product for Booking.')", true);
            }

            if (UnitPrice.Value != null && Units_Price_In_Carton.Value == null)
            {

                TotalAmount = (Int32.Parse((UnitPrice.Value).ToString())) * Int32.Parse((ProductQuantity.Value.ToString()));
                Product_Name = ProductName.SelectedItem.ToString();
                Product_Type = ProductType.SelectedItem.ToString();
                Product_Quantity = Int32.Parse((ProductQuantity.Value).ToString());
                Unit_Price = Int32.Parse((UnitPrice.Value).ToString());
            }

            if (UnitPrice.Value == null && Units_Price_In_Carton.Value != null)
            {

                TotalAmount = (Int32.Parse((Units_Price_In_Carton.Value).ToString())) * Int32.Parse((ProductQuantity2.Value.ToString()));
      
                Product_Name = ProductName2.SelectedItem.ToString();
                Product_Type = ProductType2.SelectedItem.ToString();
                Product_Quantity = Int32.Parse((ProductQuantity2.Value).ToString());
                Unit_Price = Int32.Parse((Units_Price_In_Carton.Value).ToString());
            }

            if (UnitPrice.Value != null && Units_Price_In_Carton.Value != null)
            {
                decimal Unit_PricePlus = (Int32.Parse((UnitPrice.Value).ToString())) * Int32.Parse((ProductQuantity.Value.ToString()));
                Price_In_Carton =  (Int32.Parse((Units_Price_In_Carton.Value).ToString())) * Int32.Parse((ProductQuantity2.Value.ToString()));
                TotalAmount = Unit_PricePlus + Price_In_Carton;
                Product_Name =  ProductName.SelectedItem.ToString() + " Qty: " + Int32.Parse((ProductQuantity.Value).ToString())+  " and " + ProductName2.SelectedItem.ToString() + " Qty: " + Int32.Parse((ProductQuantity2.Value).ToString()) ;
                Product_Type = ProductType.SelectedItem.ToString() + " and " + ProductType2.SelectedItem.ToString();
                Product_Quantity = Int32.Parse((ProductQuantity2.Value).ToString())  + Int32.Parse((ProductQuantity2.Value).ToString());
                Unit_Price = 0;
            }

            //Total_Amount.Value = TotalAmount.ToString();
            

            UserAccount _user = (UserAccount)Session["LoggedInUser"];

            //int _roleId = Convert.ToInt32(_user.RoleId);
            string username = _user.UserName.ToString();
            string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;

            SqlConnection con = new SqlConnection(RexGlobeCS);

            con.Open();
            string query = "CreateLubricantBooking";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@BusinessName", SqlDbType.VarChar).Value = BusinessName.SelectedItem.ToString();
            cmd.Parameters.Add("@State", SqlDbType.VarChar).Value = State.SelectedItem.ToString();
            cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = Country.SelectedItem.ToString();
            cmd.Parameters.Add("@SalesRepresentative", SqlDbType.VarChar).Value = SalesRepresentative.Value;
            cmd.Parameters.Add("@ContactPerson", SqlDbType.VarChar).Value = ContactPerson.Value;
            cmd.Parameters.Add("@ContactPersonEmail", SqlDbType.VarChar).Value = ContactPersonEmail.Value;
            cmd.Parameters.Add("@ContactPersonPhoneNumber", SqlDbType.VarChar).Value = ContactPersonPhoneNumber.Value;
            cmd.Parameters.Add("@GeneralProduct_Name", SqlDbType.VarChar).Value = Product_Name;
            cmd.Parameters.Add("@GeneralProduct_Type", SqlDbType.VarChar).Value = Product_Type;
            cmd.Parameters.Add("@GeneralUnit_Price", SqlDbType.Decimal).Value = Unit_Price;
            cmd.Parameters.Add("@ProductNameByPiece", SqlDbType.VarChar).Value = ProductName.Value;
            cmd.Parameters.Add("@ProductTypeP", SqlDbType.VarChar).Value = ProductType.Value;
            cmd.Parameters.Add("@UnitPriceByPiece", SqlDbType.Decimal).Value = UnitPrice.Value;
            cmd.Parameters.Add("@ProductQuantityP", SqlDbType.Int).Value = ProductQuantity.Value;
            cmd.Parameters.Add("@ProductNameByCarton", SqlDbType.VarChar).Value = ProductName2.Value;
            cmd.Parameters.Add("@ProductTypeC", SqlDbType.VarChar).Value = ProductType2.Value;
            cmd.Parameters.Add("@UnitPriceByCarton", SqlDbType.Decimal).Value = Units_Price_In_Carton.Value;
            cmd.Parameters.Add("@ProductQuantityC", SqlDbType.Int).Value = ProductQuantity2.Value;
            cmd.Parameters.Add("@ProductDescription", SqlDbType.VarChar).Value = ProductDescription.SelectedItem.ToString();
            cmd.Parameters.Add("@Total_Amount", SqlDbType.Decimal).Value = TotalAmount;

            cmd.Parameters.Add("@PaymentTerms", SqlDbType.VarChar).Value = PaymentTerms.SelectedItem.ToString();
            cmd.Parameters.Add("@TrasactionType", SqlDbType.VarChar).Value = TrasactionType.SelectedItem.ToString();
            cmd.Parameters.Add("@WarehouseLocation", SqlDbType.VarChar).Value = WarehouseLocation.Value;
            cmd.Parameters.Add("@ExpectedDeliveryDate", SqlDbType.DateTime).Value = ExpectedDeliveryDate.Value; 
            cmd.Parameters.Add("@CreatedBy", SqlDbType.VarChar).Value = username.ToString();
            cmd.Parameters.Add("@Region", SqlDbType.VarChar).Value = ASPxComboBoxRegion.SelectedItem.ToString();

            var returnParam = cmd.Parameters.Add("@BookingID", SqlDbType.Int);
            var returnParam2 = cmd.Parameters.Add("@ManagerEmail", SqlDbType.VarChar, 50);
            var returnParam3 = cmd.Parameters.Add("@GrandTotal", SqlDbType.Decimal);
            returnParam.Direction = ParameterDirection.Output;
            returnParam2.Direction = ParameterDirection.Output;
            returnParam3.Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();

            var result = returnParam.Value.ToString();
            string ManagerEmail = returnParam2.Value.ToString();
            string Email1 = ContactPersonEmail.Value.ToString();
            decimal GrandTotal = decimal.Parse(returnParam3.Value.ToString());

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
                string msgBody = string.Format(body, result, Product_Name, Product_Type, Product_Quantity, Unit_Price, TotalAmount, PaymentTerms, TrasactionType, WarehouseLocation);
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

            
            FlutterWavePayment(GrandTotal, Email1, ContactPersonPhoneNumber.Value.ToString(), ContactPerson.Value.ToString());
            SMSMessage();
            ASPxFormLayout1.ForEach(ClearItem);
            ClearItems();

        }

        //protected void ASPxComboBoxLga_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
        //{
        //    if (string.IsNullOrEmpty(e.Parameter)) return;

        //    esmdsProductDescription.WhereParameters[0].DefaultValue = e.Parameter;
        //    ProductName.DataBind();
        //}

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

        private void SMSMessage()
        {
            string body;
            //Read template file from the Util folder
            using (var sr = new StreamReader(System.Web.HttpContext.Current.Server.MapPath("~/Util/NewProductRequest.html")))
            {
                body = sr.ReadToEnd();
            }
            System.Uri address = new System.Uri("http://tinyurl.com/api-create.php?url=" + body);
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('URL'"+ address + ")", true);
            System.Net.WebClient client = new System.Net.WebClient();
            string tinyUrl = client.DownloadString(address);
            //Console.WriteLine(tinyUrl);

            /*-----------Tiny Url ---------------------------*/

            var accountSid = "ACa74b02abc022c25d83c8b95166d5dd5b";
            var authToken = "8c78773fad367e4924ea81a94f0bb67c";
            TwilioClient.Init(accountSid, authToken);


           var messageOptions = new CreateMessageOptions(
            new PhoneNumber(ContactPerson.Value.ToString()));
            messageOptions.From = new PhoneNumber("+12707976398");
            messageOptions.Body = "This is to confirm your product request for " + Product_Name + " Quantity :" + Product_Quantity + "; Total Amount:" + TotalAmount + " From RexLubs URL" + address;

            var message = MessageResource.Create(messageOptions);
            Console.WriteLine(message.Body);

            //string accountSid = Environment.GetEnvironmentVariable("ACa74b02abc022c25d83c8b95166d5dd5b");
            //string authToken = Environment.GetEnvironmentVariable("8c78773fad367e4924ea81a94f0bb67c");

            //TwilioClient.Init(accountSid, authToken);

            //var message = MessageResource.Create(
            //    body: "This is to confirm your product request for "+ ProductType.SelectedItem.ToString()+ " br/ Quantity :"+ ProductQuantity.Value+ ";br/ Total Amount:"+ Total_Amount.Value+" From RexLubs URL"+ address,
            //    from: new Twilio.Types.PhoneNumber("+12707976398"),
            //    to: new Twilio.Types.PhoneNumber((ContactPersonPhoneNumber.Value).ToString())
            //);
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('SMS Success'" + message.Body + ")", true);
        }

        protected void ASPxFormLayout1_DataBound(object sender, EventArgs e)
        {
            ASPxFormLayout1.ForEach(ClearItem);
        }

        private void ClearItems()
        {
            BusinessName.Value = string.Empty;
            State.Value = string.Empty;
            Country.Value = string.Empty;
            SalesRepresentative.Value = string.Empty;
            ContactPerson.Value = string.Empty;
            ContactPersonEmail.Value = string.Empty;
            ProductName.Value = string.Empty;
            ProductType.Value = string.Empty;
            ProductQuantity.Value = string.Empty;
            UnitPrice.Value = string.Empty;
            //Total_Amount.Value = string.Empty;
            PaymentTerms.Value = string.Empty;
            TrasactionType.Value = string.Empty;
            WarehouseLocation.Value = string.Empty;
            ExpectedDeliveryDate.Value = string.Empty;
        }

        private async void FlutterWavePayment(decimal GrandTotal, string email, string phonenumber, string name)
        {
            // Flutterwave API endpoint
            string url = "https://api.flutterwave.com/v3/payments";

            // Your Flutterwave API key
            string apiKey = "FLWPUBK_TEST-0129a7cb725322c8933d931990ad3bbe-X";

            // Payment details
            decimal amount = GrandTotal;
            string currency = "NGN";
            string redirectUrl = "~/Billing.MakePayments.aspx";

            // Create the request payload
            var payload = new
            {
                tx_ref = Guid.NewGuid().ToString(),
                amount,
                currency,
                redirect_url = redirectUrl,
                payment_options = "card",
                customer = new
                {
                    email = "irenemmam@gmail.com",
                    phonenumber = "08060312032",
                    name = "Irene Mmam"
                }
            };

            // Serialize the payload
            var jsonPayload = Newtonsoft.Json.JsonConvert.SerializeObject(payload);
            var content = new StringContent(jsonPayload, Encoding.UTF8, "application/json");

            using (var httpClient = new HttpClient())
            {
                // Set the authorization header
                httpClient.DefaultRequestHeaders.Add("Authorization", $"Bearer {apiKey}");

                // Make the POST request to Flutterwave API
                var response = await httpClient.PostAsync(url, content);

                // Read the response
                var responseContent = await response.Content.ReadAsStringAsync();

                // Handle the response
                if (response.IsSuccessStatusCode)
                {
                    // Payment initiation successful
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Payment initiated successfully.')", true);
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('responseContent')", true);
                }
                else
                {
                    // Payment initiation failed
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Payment initiation failed.')", true);
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('responseContent')", true);
                }
            }
        }

        //private async void FlutterWave(decimal GrandTotal, string email, string phonenumber, string name)
        //{// Set your Flutterwave API keys
        //    var publicKey = "YOUR_PUBLIC_KEY";
        //    var secretKey = "YOUR_SECRET_KEY";

        //    // Initialize the Flutterwave API client
        //    var flutterwaveApi = new FlutterwaveApi(publicKey, secretKey);

        //    // Create a payment request
        //    var paymentRequest = new PaymentRequest
        //    {
        //        Amount = 1000, // Amount in the smallest currency unit (e.g., kobo)
        //        Currency = "NGN",
        //        Email = "customer@example.com",
        //        TXRef = "YOUR_TRANSACTION_REFERENCE",
        //        RedirectUrl = "https://yourwebsite.com/redirect",
        //        Customizations = new Customizations
        //        {
        //            Title = "Your Payment Title",
        //            Description = "Your Payment Description",
        //            Logo = "https://yourwebsite.com/logo.png"
        //        }
        //    };

        //    // Generate a payment link
        //    var paymentLink = flutterwaveApi.GeneratePaymentLink(paymentRequest);

        //    // Open the payment link in a browser or redirect the user to the link
        //    System.Diagnostics.Process.Start(paymentLink);
        //}

    }
}