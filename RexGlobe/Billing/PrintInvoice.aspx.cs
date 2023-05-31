using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using DevExpress.Xpf.Printing;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using DevExpress.Web.Data;
using DevExpress.Web;
using RexLubs.Billing;

namespace RexLubs.Billing
{
    public partial class PrintInvoice : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;
            //using (SqlConnection con = new SqlConnection(RexGlobeCS))
            //{
            //    SqlCommand cmd = new SqlCommand(" SELECT P.[PaymentReference],P.[CustomerID],P.[BusinessName],P.[ProductName], P.[UnitPrice],P.[ProductQuantity],P.[Amount] " +
            //        ", P.[PaymentDate], P.[PaymentYear], P.[PaymentTerms], P.[TrasactionType], P.[payment_currency], P.[payment_channel], " +
            //        " C.[TIN_Number], C.[DateOfBirth], C.[Email], C.[PhoneNumber], C.[Address], C.[State], C.[Country], C.[SalesRepresentative], " +
            //        " C.[DateofIncorporation], C.[TypeOfBusiness], C.[NextOfKinName], C.[NextOfKinPhone], C.[ContactPerson], C.[ContactPersonEmail] " +
            //        " , C.[ContactPersonGender], C.[ContactPersonPhoneNumber], C.[CreatedBy], C.[CreatedDate], R.[ExpectedDeliveryDate], " +
            //         " R.[ProductNameByPiece], R.[ProductTypeP], R.[UnitPriceByPiece], R.[ProductQuantityP], R.[UnitPriceByPiece] * R.[ProductQuantityP] as TotalPiece, R.[ProductNameByCarton] " +
            //        " , R.[ProductTypeC], R.[UnitPriceByCarton], R.[ProductQuantityC], R.[UnitPriceByCarton] * R.[ProductQuantityC] as TotalCarton, R.[Total_Amount], 0.075 * R.[Total_Amount] as VAT, R.[Total_Amount] + (0.075 * R.[Total_Amount]) as GrandTotal " +
            //        " FROM[RexGlobe].[dbo].[Payments] P " +
            //        " INNER JOIN[RexGlobe].[dbo].[Customers] C on C.ID = P.CustomerID " +
            //        " INNER JOIN[RexGlobe].[dbo].[ProductRequest] R on R.ID = P.RequestID", con);
            //    con.Open();
            //    SqlDataAdapter da = new SqlDataAdapter(cmd);
            //    cmd.ExecuteNonQuery();
            //    DataSet ds1 = new DataSet();
            //    da.Fill(ds1);

            //    XtraReport1 report = GetReport();
            //    string selectedIDs = HiddenField1.Value.Trim(new char[] { ',' });

            //    report.FilterString = string.Format("PaymentReference in ({0})", selectedIDs);
            //    report.CreateDocument();
            //    ReportViewer1.Report = report;
            //    report.DataSource = ds1;

            //    Session["report"] = report;
            //    con.Close();
            //}

        }

        //private DataSet GetData()
        //{
        //    throw new NotImplementedException();
        //}

        protected void ReportViewer1_Unload(object sender, EventArgs e)
        {
            ReportViewer1.Report = null;
        }

       
        private XtraReport1 GetReport()
        {
            if ((XtraReport1)Session["report"] == null)
            {
                
                string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;
                using (SqlConnection con = new SqlConnection(RexGlobeCS))
                {
                    SqlCommand cmd = new SqlCommand(" SELECT P.[PaymentReference],P.[CustomerID],P.[BusinessName],P.[ProductName], P.[UnitPrice],P.[ProductQuantity],P.[Amount] " +
                        ", P.[PaymentDate], P.[PaymentYear], P.[PaymentTerms], P.[TrasactionType], P.[payment_currency], P.[payment_channel], " +
                        " C.[TIN_Number], C.[DateOfBirth], C.[Email], C.[PhoneNumber], C.[Address], C.[State], C.[Country], C.[SalesRepresentative], " +
                        " C.[DateofIncorporation], C.[TypeOfBusiness], C.[NextOfKinName], C.[NextOfKinPhone], C.[ContactPerson], C.[ContactPersonEmail] " +
                        " , C.[ContactPersonGender], C.[ContactPersonPhoneNumber], C.[CreatedBy], C.[CreatedDate], R.[ExpectedDeliveryDate], " +
                         " R.[ProductNameByPiece], R.[ProductTypeP], R.[UnitPriceByPiece], R.[ProductQuantityP], R.[UnitPriceByPiece] * R.[ProductQuantityP] as TotalPiece, R.[ProductNameByCarton] " +
                        " , R.[ProductTypeC], R.[UnitPriceByCarton], R.[ProductQuantityC], R.[UnitPriceByCarton] * R.[ProductQuantityC] as TotalCarton, R.[Total_Amount], 0.075 * R.[Total_Amount] as VAT, R.[Total_Amount] + (0.075 * R.[Total_Amount]) as GrandTotal " +
                        " FROM[RexGlobe].[dbo].[Payments] P " +
                        " INNER JOIN[RexGlobe].[dbo].[Customers] C on C.ID = P.CustomerID " +
                        " INNER JOIN[RexGlobe].[dbo].[ProductRequest] R on R.ID = P.RequestID", con);
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    cmd.ExecuteNonQuery();
                    DataSet ds1 = new DataSet();
                    da.Fill(ds1);

                    XtraReport1 report = GetReport();
                    ReportViewer1.Report = report;
                    report.DataSource = da;

                    Session["report"] = report;
                    con.Close();
                }

            }

            return (XtraReport1)Session["report"];
        }

        //protected nwndDataSet GetData()
        //{
        //    if ((nwndDataSet)Session["dataset"] == null)
        //    {
        //        nwndDataSet ds = new nwndDataSet();
        //        CategoriesTableAdapter cta = new CategoriesTableAdapter();
        //        ProductsTableAdapter pta = new ProductsTableAdapter();

        //        cta.Fill(ds.Categories);
        //        pta.Fill(ds.Products);

        //        Session["dataset"] = ds;
        //    }

        //    return (nwndDataSet)Session["dataset"];
        //}

    }
        }