using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using DevExpress.Web;

namespace RexGlobe.Customers
{
    public partial class PickUpRequest : System.Web.UI.Page
    {
        RexGlobeEntities _context = new RexGlobeEntities();
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
            string query = "CreatePickUp";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = Name.Value;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email.Value;
            cmd.Parameters.Add("@PickUpDate", SqlDbType.DateTime).Value = PickUpDate.Value;
            cmd.Parameters.Add("@ContactNumber", SqlDbType.VarChar).Value = ContactNumber.Value;
            cmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = Address.Value;
            cmd.Parameters.Add("@StateID", SqlDbType.VarChar).Value = StateID.Value;
            cmd.Parameters.Add("@Commodity", SqlDbType.VarChar).Value = Commodity.Value;
            cmd.Parameters.Add("@Weight", SqlDbType.VarChar).Value = Weight.Value;
            cmd.Parameters.Add("@NearestServiceLocation", SqlDbType.VarChar).Value = NearestServiceLocation.Value;
            cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = username;

            var returnParam = cmd.Parameters.Add("@PickUpID", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            var result = returnParam.Value.ToString();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('PickUp Request was Successful. Your PickUp ID is " + result + ".')", true);
            Response.Redirect("~/Billing/MakePayments.aspx");
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