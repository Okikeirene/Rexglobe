using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using DevExpress.Web;
using RexLubs;

namespace RexLubs.Staff
{
    public partial class InBoundDispatch : System.Web.UI.Page
    {
        RexLubsEntities _context = new RexLubsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void ASPxGridLookup1_ValueChanged(object sender, EventArgs e)
        {

        }

    }
}