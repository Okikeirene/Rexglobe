using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.XtraReports.Parameters;
using DevExpress.XtraReports.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using DevExpress.Web;
using RexLubs;
using DevExpress.Export;
using DevExpress.XtraPrinting;

namespace RexLubs
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //Session["DDLClient"] = DDLClient_.SelectedItem.ToString();
                //Session["ASPxState"] = ASPxState.SelectedItem.ToString();
                Session["aspxDate_From"] = aspxDate_From.ToString();
                Session["ASPxDateTo"] = ASPxDateTo.ToString();


                if (Session["Incidentdata"] != null)
                {
                    IncidentGridView.DataSource = Session["Incidentdata"];
                    IncidentGridView.DataBind();
                }

               
            }
            if (!IsPostBack)
            {
                //if (Session["DDLClient"] != null)
                //{
                //    DDLClient.SelectedValue = Session["DDLClient"].ToString();
                //}

                if (Session["aspxDate_From"] != null)
                {
                    aspxDate_From.Text = Session["aspxDate_From"].ToString();
                }
                if (Session["ASPxDateTo"] != null)
                {
                    ASPxDateTo.Text = Session["ASPxDateTo"].ToString();
                }
                
            }

            string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;
            //using (SqlConnection con = new SqlConnection(SIMSCS))
            //{
            //    SqlCommand cmd = new SqlCommand("SELECT [ID],[Name] FROM [SIMS].[dbo].[Client]", con);
            //    con.Open();
            //    DDLClient.DataSource = cmd.ExecuteReader();
            //    DDLClient.DataTextField = "name";
            //    DDLClient.DataValueField = "name";
            //    DDLClient.DataBind();
            //    con.Close();
            //}
          
        }

     

        protected void IncidentButton_Click(object sender, EventArgs e)
        {
            int DDLClient = Convert.ToInt32(DDLClient_.Value);
            //if (DDLClient == 15)
            //{
                string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(RexGlobeCS))
            {
                SqlCommand cmd = new SqlCommand("SELECT [ID],[Name],[Email],[PickUpDate],[ContactNumber],[Address],[StateID],[Commodity],[Weight]," +
                                                "[NearestServiceLocation],[Status],[ApprovePickUprequest],[RejectPickUpRequest],[CreateDate],[CreatedBy] " +
                                                " FROM[RexGlobe].[dbo].[PickUpRequest]" +
                                                " where [PickUpDate] between  @Date_From and @Date_To and [State].StateID = @ASPxState and Customer.RequestID = @DDLClient ", con);
                con.Open();
                cmd.Parameters.Add("@Date_From", SqlDbType.DateTime).Value = Convert.ToDateTime(aspxDate_From.Value);
                cmd.Parameters.Add("@Date_To", SqlDbType.DateTime).Value = Convert.ToDateTime(ASPxDateTo.Value);
                cmd.Parameters.Add("@DDLClient", SqlDbType.Int).Value = DDLClient_.Value;
                cmd.Parameters.Add("@ASPxState", SqlDbType.Int).Value = ASPxState.Value;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.ExecuteNonQuery();
                DataSet ds1 = new DataSet();
                da.Fill(ds1);

                Session["Incidentdata"] = ds1;
                IncidentGridView.DataSourceID = null;
                IncidentGridView.DataSource = ds1;
                IncidentGridView.DataBind();

                con.Close();
            }


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
        


        


        protected void ToolbarExport_ItemClick(object source, RexLubs.ExportItemClickEventArgs e)
        {
            switch (e.ExportType)
            {
                case ExportFormat.Pdf:
                    gridExport.WritePdfToResponse();
                    break;
                case ExportFormat.Xls:
                    gridExport.WriteXlsToResponse(new XlsExportOptionsEx { ExportType = ExportType.WYSIWYG });
                    break;
                case ExportFormat.Xlsx:
                    gridExport.WriteXlsxToResponse(new XlsxExportOptionsEx { ExportType = ExportType.WYSIWYG });
                    break;
                case ExportFormat.Rtf:
                    gridExport.WriteRtfToResponse();
                    break;
                case ExportFormat.Csv:
                    gridExport.WriteCsvToResponse(new CsvExportOptionsEx() { ExportType = ExportType.WYSIWYG });
                    break;
            }
        }

        
    }
}