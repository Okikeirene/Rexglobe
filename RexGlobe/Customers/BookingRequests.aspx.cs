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

namespace RexGlobe.Customers
{
    public partial class BookingRequests : System.Web.UI.Page
    {
        RexGlobeEntities context = new RexGlobeEntities();
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
            string query = "CreateBooking";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@SenderName", SqlDbType.VarChar).Value = SenderName.Value;
            cmd.Parameters.Add("@SenderEmail", SqlDbType.VarChar).Value = SenderEmail.Value;
            cmd.Parameters.Add("@OriginServiceLocation", SqlDbType.VarChar).Value = OriginServiceLocation.SelectedItem.ToString();
            cmd.Parameters.Add("@ReceiverName", SqlDbType.VarChar).Value = ReceiverName.Value;
            cmd.Parameters.Add("@ReceiverEmail", SqlDbType.VarChar).Value = ReceiverEmail.Value;
            cmd.Parameters.Add("@ReceiverDestination", SqlDbType.VarChar).Value = ReceiverDestination.Value;
            cmd.Parameters.Add("@ReceiverPinCode", SqlDbType.VarChar).Value = ReceiverPinCode.Value;
            cmd.Parameters.Add("@ReceiverRegion", SqlDbType.VarChar).Value = ReceiverRegion.SelectedItem.ToString();
            cmd.Parameters.Add("@ReceiverCity", SqlDbType.VarChar).Value = ReceiverCity.SelectedItem.ToString();
            cmd.Parameters.Add("@ServiceLocation", SqlDbType.VarChar).Value = ServiceLocation.Value;
            cmd.Parameters.Add("@Commodity", SqlDbType.VarChar).Value = Commodity.SelectedItem.ToString();
            cmd.Parameters.Add("@Weight", SqlDbType.Decimal).Value = Weight.Value;
            cmd.Parameters.Add("@TotalWeight", SqlDbType.Decimal).Value = TotalWeight.Value;
            cmd.Parameters.Add("@RatePerKG", SqlDbType.Decimal).Value = RatePerKG.Value;
            cmd.Parameters.Add("@ExpectedDeliveryDate", SqlDbType.DateTime).Value = ExpectedDeliveryDate.Value;
            cmd.Parameters.Add("@ServiceTax", SqlDbType.Decimal).Value = ServiceTax.Value;
            cmd.Parameters.Add("@Freight", SqlDbType.VarChar).Value = Freight.Value; 
            cmd.Parameters.Add("@CreatedBy", SqlDbType.VarChar).Value = username.ToString();

            var returnParam = cmd.Parameters.Add("@BookingID", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            var result = returnParam.Value.ToString();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Booking was Successful. Your Booking ID is "+ result +".')", true);
            //Response.Redirect("~/Customers/ManageCustomers.aspx");
            ASPxFormLayout1.ForEach(ClearItem);
        }

        private void ClearItem(LayoutItemBase item)
        {
            var layoutItem = item as LayoutItem;
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
    }
}