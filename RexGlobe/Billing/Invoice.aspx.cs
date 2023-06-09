﻿using DevExpress.Web;
using DevExpress.Web.Data;
using DevExpress.XtraReports.UI;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RexLubs.Billing
{
    public partial class Invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ASPxButtonSubmit_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Billing/Print.aspx");
            string _ID = Session["ID"].ToString();

            string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(RexGlobeCS))
            {
                SqlCommand cmd = new SqlCommand("  SELECT P.[PaymentReference],P.[CustomerID],P.[BusinessName],P.[ProductName], P.[UnitPrice],P.[ProductQuantity],P.[Amount] " +
                    ", P.[PaymentDate], P.[PaymentYear], P.[PaymentTerms], P.[TrasactionType], P.[payment_currency], P.[payment_channel], " +
                    " C.[TIN_Number], C.[DateOfBirth], C.[Email], C.[PhoneNumber], C.[Address], C.[State], C.[Country], C.[SalesRepresentative], " +
                    " C.[DateofIncorporation], C.[TypeOfBusiness], C.[NextOfKinName], C.[NextOfKinPhone], C.[ContactPerson], C.[ContactPersonEmail] " +
                    " , C.[ContactPersonGender], C.[ContactPersonPhoneNumber], C.[CreatedBy], C.[CreatedDate], R.[ExpectedDeliveryDate], " +
                     " R.[ProductNameByPiece], R.[ProductTypeP], R.[UnitPriceByPiece], R.[ProductQuantityP], R.[UnitPriceByPiece] * R.[ProductQuantityP] as TotalPiece, R.[ProductNameByCarton] " +
                    " , R.[ProductTypeC], R.[UnitPriceByCarton], R.[ProductQuantityC], R.[UnitPriceByCarton] * R.[ProductQuantityC] as TotalCarton, R.[Total_Amount], 0.075 * R.[Total_Amount] as VAT, R.[Total_Amount] + (0.075 * R.[Total_Amount]) as GrandTotal " +
                    " FROM[RexGlobe].[dbo].[Payments] P " +
                    " INNER JOIN[RexGlobe].[dbo].[Customers] C on C.ID = P.CustomerID " +
                    " INNER JOIN[RexGlobe].[dbo].[ProductRequest] R on R.ID = P.RequestID" +
                    "WHERE R.ID = @ID)", con);
                cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = _ID;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.ExecuteNonQuery();
                DataSet ds1 = new DataSet();
                da.Fill(ds1);

                //XtraReport report = new XtraReport();
                //this.ASPxWebDocumentViewer1.Visible = true;
                //report.DataSource = ds1;

                //XtraReport1 report = GetReport();
                //string selectedIDs = HiddenField1.Value.Trim(new char[] { ',' });

                //report.FilterString = string.Format("PaymentReference in ({0})", selectedIDs);
                //report.CreateDocument();
                //ReportViewer1.Report = report;

                con.Close();
            }

            }
        //protected void Page_Load(object sender, EventArgs e)
        //{

        //}

        protected void ASPxbtnGenerate_Click(object sender, EventArgs e)
        {
            //int[] SelectedRowHandles = ASPxGridView1.GetSelectedRows();

            //string B = gridView1.GetRowCellValue(SelectedRowHandles[0], gridView1.Columns[0]);
            string _ID = Session["ID"].ToString();

            string RexGlobeCS = ConfigurationManager.ConnectionStrings["RexGlobeDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(RexGlobeCS))
            {
                SqlCommand cmd = new SqlCommand("  select Customers.ID, Customers.BusinessName," +
                                       "Customers.TIN_Number, Customers.DateOfBirth, " +
                                       "Customers.Email, Customers.PhoneNumber, " +
                                       "Customers.Address, Customers.State, " +
                                       "Customers.Country, Customers.SalesRepresentative, " +
                                       "Customers.PaymentTerms, Customers.TrasactionType, " +
                                       "Customers.DateofIncorporation, " +
                                       "Customers.TypeOfBusiness, Customers.NextOfKinName, " +
                                       "Customers.NextOfKinPhone, Customers.ContactPerson, " +
                                       "Customers.ContactPersonEmail, " +
                                       "Customers.ContactPersonGender, " +
                                       "Customers.ContactPersonPhoneNumber, " +
                                       "Customers.CreatedBy, Customers.CreatedDate, " +
                                       "ProductRequest.ID as ProductRequest_ID, " +
                                       "ProductRequest.CustomerID, " +
                                       "ProductRequest.BusinessName as ProductRequest_BusinessName, " +
                                       "ProductRequest.Email as ProductRequest_Email, " +
                                       "ProductRequest.PhoneNumber as ProductRequest_PhoneNumber, " +
                                       "ProductRequest.Address as ProductRequest_Address, " +
                                       "ProductRequest.State as ProductRequest_State, " +
                                       "ProductRequest.Country as ProductRequest_Country, " +
                                       "ProductRequest.SalesRepresentative as ProductRequest_SalesRepresentative, " +
                                       "ProductRequest.ContactPerson as ProductRequest_ContactPerson, " +
                                       "ProductRequest.ContactPersonEmail as ProductRequest_ContactPersonEmail, " +
                                       "ProductRequest.ContactPersonPhoneNumber as ProductRequest_ContactPersonPhoneNumber, " +
                                       "ProductRequest.ProductName, ProductRequest.ProductType, " +
                                       "ProductRequest.UnitPrice, " +
                                       "ProductRequest.ProductQuantity, " +
                                       "ProductRequest.Total_Amount, " +
                                       "ProductRequest.PaymentTerms as ProductRequest_PaymentTerms, " +
                                       "ProductRequest.TrasactionType as ProductRequest_TrasactionType, " +
                                       "ProductRequest.WarehouseManagerName, " +
                                       "ProductRequest.WarehouseManagerEmail, " +
                                       "ProductRequest.WarehouseLocation, " +
                                       "ProductRequest.PickUpPersonName, " +
                                       "ProductRequest.PickUpPersonPhone, " +
                                       "ProductRequest.Status, " +
                                       "ProductRequest.ExpectedDeliveryDate, " +
                                       "ProductRequest.CreatedBy as ProductRequest_CreatedBy, " +
                                       "ProductRequest.CreatedDate as ProductRequest_CreatedDate " +
                                  " from (dbo.Customers Customers  " +
                                 " inner join dbo.ProductRequest ProductRequest " +
                                     "  on(ProductRequest.BusinessName = Customers.BusinessName)) " +
                                "WHERE ProductRequest.ID = @ID))", con);

                con.Open();
                cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = _ID;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.ExecuteNonQuery();
                DataSet ds1 = new DataSet();
                da.Fill(ds1);

                XtraReport report = new XtraReport();
                this.ASPxWebDocumentViewer1.Visible = true;
                report.DataSource = ds1;

                con.Close();
            }

        }
        protected void ASPxgvPayments_StartRowEditing(object sender, ASPxStartRowEditingEventArgs e)
        {
            this.Session["ID"] = e.EditingKeyValue.ToString();
        }

        //protected void sqldsPayments_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        //{
        //    //RexGlobeEntities context = new RexGlobeEntities();
        //    //string _username = Session["UserName"].ToString();

        //    //var _user = context.UserAccounts.Where(u => u.UserName == _username).Single();


        //    //Session["UserName"] = _user.UserName;
        //    //e.Cancel = ASPxGridView1.FilterExpression == string.Empty;

        //}

        //protected void ASPxgvPayments_CustomUnboundColumnData(object sender, ASPxGridViewColumnDataEventArgs e)
        //{
        //    if (e.Column.FieldName == "ID")
        //    {
        //        e.Value = e.ListSourceRowIndex + 1;
        //    }
        //}
    }
}