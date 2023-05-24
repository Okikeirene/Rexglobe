using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using DevExpress.DataAccess.ConnectionParameters;

namespace RexLubs
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ASPxDashboardViewer1_ConfigureDataConnection(object sender, DevExpress.DashboardWeb.ConfigureDataConnectionWebEventArgs e)
        {
            string conString2 = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;
            SqlConnectionStringBuilder con2 = new SqlConnectionStringBuilder(conString2);

            if (e.ConnectionName == "connection")
            {

                CustomStringConnectionParameters customParameters = e.ConnectionParameters as CustomStringConnectionParameters;
                if (customParameters != null)
                {
                    customParameters.ConnectionString = conString2;
                }
            }

        }

        protected void ASPxDashboardViewer2_ConfigureDataConnection(object sender, DevExpress.DashboardWeb.ConfigureDataConnectionWebEventArgs e)
        {
            string conString2 = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;
            SqlConnectionStringBuilder con2 = new SqlConnectionStringBuilder(conString2);

            if (e.ConnectionName == "connection")
            {

                CustomStringConnectionParameters customParameters = e.ConnectionParameters as CustomStringConnectionParameters;
                if (customParameters != null)
                {
                    customParameters.ConnectionString = conString2;
                }
            }

        }
    }
}