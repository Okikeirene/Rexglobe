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

namespace RexGlobe.Staff
{
    public partial class Trucks : System.Web.UI.Page
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
            int Vehicle_Provider = Convert.ToInt32(VehicleProvider.SelectedIndex);
            int Transportation_Type = Convert.ToInt32(TransportationType.SelectedIndex);
            string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;

            SqlConnection con = new SqlConnection(RexGlobeCS);

            con.Open();
            string query = "CreateVehicle";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@VehicleProvider", SqlDbType.Int).Value = Vehicle_Provider;
            cmd.Parameters.Add("@WorkServiceLocation", SqlDbType.VarChar).Value = WorkServiceLocation.Value;
            cmd.Parameters.Add("@VehicleNumber", SqlDbType.VarChar).Value = VehicleNumber.Value;
            cmd.Parameters.Add("@DriverName", SqlDbType.VarChar).Value = DriverName.Value;
            cmd.Parameters.Add("@DriverPhoneNumber", SqlDbType.VarChar).Value = DriverPhoneNumber.Value;
            cmd.Parameters.Add("@TransportationType", SqlDbType.Int).Value = Transportation_Type;
            cmd.Parameters.Add("@VehicleDetails", SqlDbType.VarChar).Value = VehicleDetails.Value;
            cmd.Parameters.Add("@PermitofStates", SqlDbType.VarChar).Value = PermitofStates.Value;
            cmd.Parameters.Add("@PermitExpiryDate", SqlDbType.DateTime).Value = PermitExpiryDate.Value;
            cmd.Parameters.Add("@CreatedBy", SqlDbType.VarChar).Value = username;

            var returnParam = cmd.Parameters.Add("@VehicleID", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.Output;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            var result = returnParam.Value.ToString();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Vehicle Registration was Successful. Your Truck ID is " + result + ".')", true);
            //Response.Redirect("~/Staff/ManageTrucks.aspx");
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