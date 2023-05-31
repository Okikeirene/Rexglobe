using DevExpress.XtraReports.UI;

namespace RexLubs.Billing
{
    internal class XtraReport1 : XtraReport
    {
        private DetailBand Detail;
        private XRTable detailTable;
        private XRTableRow detailTableRow;
        private XRTableCell productName;
        private XRTableCell quantity;
        private XRTableCell unitPrice;
        private XRTableCell lineTotal;
        private TopMarginBand TopMargin;
        private BottomMarginBand BottomMargin;
        private XRTable vendorContactsTable;
        private XRTableRow vendorContactsRow;
        private XRTableCell vendorWebsite;
        private XRTableCell vendorEmail;
        private XRTableCell vendorPhone;
        private XRLabel thankYouLabel;
        private XRLabel heartLabel;
        private GroupHeaderBand GroupHeader2;
        private XRTable invoiceInfoTable;
        private XRTableRow invoiceDateRow;
        private XRTableCell invoiceDateCaption;
        private XRTableCell invoiceDate;
        private XRTableRow invoiceNumberRow;
        private XRTableCell invoiceNumberCaption;
        private XRTableCell invoiceNumber;
        private XRTable customerTable;
        private XRTableRow customerNameRow;
        private XRTableCell customerName;
        private XRTable vendorTable;
        private XRTableRow vendorNameRow;
        private XRTableCell vendorName;
        private XRTableRow vendorAddressRow;
        private XRTableCell vendorAddress;
        private XRTableRow vendorCityRow;
        private XRTableCell vendorCity;
        private XRTableRow vendorCountryRow;
        private XRTableCell vendorCountry;
        private XRPictureBox vendorLogo;
        private XRLabel invoiceLabel;
        private GroupFooterBand GroupFooter2;
        private XRTable summariesTable;
        private XRTableRow totalCaptionRow;
        private XRTableCell invoiceDueDateCaption;
        private XRTableCell totalCaption;
        private XRTableRow totalRow;
        private XRTableCell invoiceDueDate;
        private XRTableCell total;
        private GroupFooterBand GroupFooter1;
        private XRTable subtotalTable;
        private XRTableRow subtotalRow;
        private XRTableCell subtotalCaption;
        private XRTableCell subtotal;
        private XRTableRow discountRow;
        private XRTableCell discountCaption;
        private XRTableCell discount;
        private XRTableRow taxRow;
        private XRTableCell taxCaption;
        private XRTableCell tax;
        private GroupHeaderBand GroupHeader1;
        private XRTable headerTable;
        private XRTableRow headerTableRow;
        private XRTableCell productNameCaption;
        private XRTableCell quantityCaption;
        private XRTableCell unitPriceCaption;
        private XRTableCell lineTotalCaptionCell;
        private DevExpress.DataAccess.Sql.SqlDataSource sqlDataSource1;
        private XRControlStyle baseControlStyle;
        private CalculatedField LineTotalCalcField;
        private CalculatedField SubtotalCalcField;
        private CalculatedField DiscountTotalCalcField;
        private CalculatedField TaxTotalCalcField;
        private CalculatedField TotalCalcField;
        private DevExpress.XtraReports.Parameters.Parameter DiscountParameter;
        private DevExpress.XtraReports.Parameters.Parameter TaxParameter;
        private XRPictureBox xrPictureBox1;

        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;
        private XRTable xrTable1;
        private XRTableRow xrTableRow1;
        private XRTableCell xrTableCell1;
        private XRTableCell xrTableCell2;
        private XRTableCell xrTableCell3;
        private XRTableCell xrTableCell4;
        private int catID;

        public XtraReport1()
        {
            InitializeComponent();
            //
            // TODO: Add constructor logic here
            //
        }

        public XtraReport1(int catID)
        {
            this.catID = catID;
        }

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(XtraReport1));
            DevExpress.DataAccess.Sql.CustomSqlQuery customSqlQuery1 = new DevExpress.DataAccess.Sql.CustomSqlQuery();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.detailTable = new DevExpress.XtraReports.UI.XRTable();
            this.detailTableRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.productName = new DevExpress.XtraReports.UI.XRTableCell();
            this.quantity = new DevExpress.XtraReports.UI.XRTableCell();
            this.unitPrice = new DevExpress.XtraReports.UI.XRTableCell();
            this.lineTotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.TopMargin = new DevExpress.XtraReports.UI.TopMarginBand();
            this.BottomMargin = new DevExpress.XtraReports.UI.BottomMarginBand();
            this.heartLabel = new DevExpress.XtraReports.UI.XRLabel();
            this.vendorContactsTable = new DevExpress.XtraReports.UI.XRTable();
            this.vendorContactsRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.vendorWebsite = new DevExpress.XtraReports.UI.XRTableCell();
            this.vendorEmail = new DevExpress.XtraReports.UI.XRTableCell();
            this.vendorPhone = new DevExpress.XtraReports.UI.XRTableCell();
            this.thankYouLabel = new DevExpress.XtraReports.UI.XRLabel();
            this.GroupHeader2 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.vendorLogo = new DevExpress.XtraReports.UI.XRPictureBox();
            this.invoiceInfoTable = new DevExpress.XtraReports.UI.XRTable();
            this.invoiceDateRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.invoiceDateCaption = new DevExpress.XtraReports.UI.XRTableCell();
            this.invoiceDate = new DevExpress.XtraReports.UI.XRTableCell();
            this.invoiceNumberRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.invoiceNumberCaption = new DevExpress.XtraReports.UI.XRTableCell();
            this.invoiceNumber = new DevExpress.XtraReports.UI.XRTableCell();
            this.customerTable = new DevExpress.XtraReports.UI.XRTable();
            this.customerNameRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.customerName = new DevExpress.XtraReports.UI.XRTableCell();
            this.vendorTable = new DevExpress.XtraReports.UI.XRTable();
            this.vendorNameRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.vendorName = new DevExpress.XtraReports.UI.XRTableCell();
            this.vendorAddressRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.vendorAddress = new DevExpress.XtraReports.UI.XRTableCell();
            this.vendorCityRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.vendorCity = new DevExpress.XtraReports.UI.XRTableCell();
            this.vendorCountryRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.vendorCountry = new DevExpress.XtraReports.UI.XRTableCell();
            this.invoiceLabel = new DevExpress.XtraReports.UI.XRLabel();
            this.GroupFooter2 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.xrPictureBox1 = new DevExpress.XtraReports.UI.XRPictureBox();
            this.summariesTable = new DevExpress.XtraReports.UI.XRTable();
            this.totalCaptionRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.invoiceDueDateCaption = new DevExpress.XtraReports.UI.XRTableCell();
            this.totalCaption = new DevExpress.XtraReports.UI.XRTableCell();
            this.totalRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.invoiceDueDate = new DevExpress.XtraReports.UI.XRTableCell();
            this.total = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupFooter1 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.subtotalTable = new DevExpress.XtraReports.UI.XRTable();
            this.subtotalRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.subtotalCaption = new DevExpress.XtraReports.UI.XRTableCell();
            this.subtotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.discountRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.discountCaption = new DevExpress.XtraReports.UI.XRTableCell();
            this.discount = new DevExpress.XtraReports.UI.XRTableCell();
            this.taxRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.taxCaption = new DevExpress.XtraReports.UI.XRTableCell();
            this.tax = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.headerTable = new DevExpress.XtraReports.UI.XRTable();
            this.headerTableRow = new DevExpress.XtraReports.UI.XRTableRow();
            this.productNameCaption = new DevExpress.XtraReports.UI.XRTableCell();
            this.quantityCaption = new DevExpress.XtraReports.UI.XRTableCell();
            this.unitPriceCaption = new DevExpress.XtraReports.UI.XRTableCell();
            this.lineTotalCaptionCell = new DevExpress.XtraReports.UI.XRTableCell();
            this.sqlDataSource1 = new DevExpress.DataAccess.Sql.SqlDataSource(this.components);
            this.baseControlStyle = new DevExpress.XtraReports.UI.XRControlStyle();
            this.LineTotalCalcField = new DevExpress.XtraReports.UI.CalculatedField();
            this.SubtotalCalcField = new DevExpress.XtraReports.UI.CalculatedField();
            this.DiscountTotalCalcField = new DevExpress.XtraReports.UI.CalculatedField();
            this.TaxTotalCalcField = new DevExpress.XtraReports.UI.CalculatedField();
            this.TotalCalcField = new DevExpress.XtraReports.UI.CalculatedField();
            this.DiscountParameter = new DevExpress.XtraReports.Parameters.Parameter();
            this.TaxParameter = new DevExpress.XtraReports.Parameters.Parameter();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.detailTable)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.vendorContactsTable)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.invoiceInfoTable)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerTable)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.vendorTable)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.summariesTable)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.subtotalTable)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTable)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) 
            | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1,
            this.detailTable});
            this.Detail.HeightF = 99.16666F;
            this.Detail.KeepTogether = true;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.StyleName = "baseControlStyle";
            this.Detail.StylePriority.UseBorders = false;
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTable1
            // 
            this.xrTable1.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold);
            this.xrTable1.LocationFloat = new DevExpress.Utils.PointFloat(0F, 54.16666F);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 5, 0, 100F);
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
            this.xrTable1.SizeF = new System.Drawing.SizeF(650F, 35F);
            this.xrTable1.StylePriority.UseFont = false;
            this.xrTable1.StylePriority.UsePadding = false;
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell1,
            this.xrTableCell2,
            this.xrTableCell3,
            this.xrTableCell4});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Weight = 12.343333333333334D;
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[ProductNameByCarton]")});
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.StylePriority.UsePadding = false;
            this.xrTableCell1.Weight = 1.2791103986779131D;
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[ProductQuantityC]")});
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.StylePriority.UsePadding = false;
            this.xrTableCell2.StylePriority.UseTextAlignment = false;
            this.xrTableCell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.xrTableCell2.Weight = 0.20794141038459232D;
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[UnitPriceByCarton]")});
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.StylePriority.UsePadding = false;
            this.xrTableCell3.StylePriority.UseTextAlignment = false;
            this.xrTableCell3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.xrTableCell3.TextFormatString = "{0:N0.00}";
            this.xrTableCell3.Weight = 0.43550145953603214D;
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[TotalCarton]")});
            this.xrTableCell4.ForeColor = System.Drawing.Color.Black;
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.StylePriority.UseFont = false;
            this.xrTableCell4.StylePriority.UseForeColor = false;
            this.xrTableCell4.StylePriority.UsePadding = false;
            this.xrTableCell4.StylePriority.UseTextAlignment = false;
            this.xrTableCell4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.xrTableCell4.TextFormatString = "{0:N0.00}";
            this.xrTableCell4.Weight = 0.54191906534549128D;
            // 
            // detailTable
            // 
            this.detailTable.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold);
            this.detailTable.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.detailTable.Name = "detailTable";
            this.detailTable.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 5, 0, 100F);
            this.detailTable.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.detailTableRow});
            this.detailTable.SizeF = new System.Drawing.SizeF(650F, 35F);
            this.detailTable.StylePriority.UseFont = false;
            this.detailTable.StylePriority.UsePadding = false;
            // 
            // detailTableRow
            // 
            this.detailTableRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.productName,
            this.quantity,
            this.unitPrice,
            this.lineTotal});
            this.detailTableRow.Name = "detailTableRow";
            this.detailTableRow.Weight = 12.343333333333334D;
            // 
            // productName
            // 
            this.productName.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[ProductNameByPiece]")});
            this.productName.Name = "productName";
            this.productName.StylePriority.UsePadding = false;
            this.productName.Weight = 1.2791103986779131D;
            // 
            // quantity
            // 
            this.quantity.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[ProductQuantityP]")});
            this.quantity.Name = "quantity";
            this.quantity.StylePriority.UsePadding = false;
            this.quantity.StylePriority.UseTextAlignment = false;
            this.quantity.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.quantity.Weight = 0.20794141038459232D;
            // 
            // unitPrice
            // 
            this.unitPrice.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[UnitPriceByPiece]")});
            this.unitPrice.Name = "unitPrice";
            this.unitPrice.StylePriority.UsePadding = false;
            this.unitPrice.StylePriority.UseTextAlignment = false;
            this.unitPrice.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.unitPrice.TextFormatString = "{0:N0.00}";
            this.unitPrice.Weight = 0.43550145953603214D;
            // 
            // lineTotal
            // 
            this.lineTotal.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[TotalPiece]")});
            this.lineTotal.ForeColor = System.Drawing.Color.Black;
            this.lineTotal.Name = "lineTotal";
            this.lineTotal.StylePriority.UseFont = false;
            this.lineTotal.StylePriority.UseForeColor = false;
            this.lineTotal.StylePriority.UsePadding = false;
            this.lineTotal.StylePriority.UseTextAlignment = false;
            this.lineTotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.lineTotal.TextFormatString = "{0:N0.00}";
            this.lineTotal.Weight = 0.54191906534549128D;
            // 
            // TopMargin
            // 
            this.TopMargin.HeightF = 112F;
            this.TopMargin.Name = "TopMargin";
            this.TopMargin.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.TopMargin.StylePriority.UseBackColor = false;
            this.TopMargin.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // BottomMargin
            // 
            this.BottomMargin.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.heartLabel,
            this.vendorContactsTable,
            this.thankYouLabel});
            this.BottomMargin.Name = "BottomMargin";
            this.BottomMargin.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.BottomMargin.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // heartLabel
            // 
            this.heartLabel.CanGrow = false;
            this.heartLabel.Font = new System.Drawing.Font("Segoe UI", 24F);
            this.heartLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(253)))), ((int)(((byte)(102)))), ((int)(((byte)(78)))));
            this.heartLabel.LocationFloat = new DevExpress.Utils.PointFloat(10F, 0F);
            this.heartLabel.Name = "heartLabel";
            this.heartLabel.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.heartLabel.SizeF = new System.Drawing.SizeF(132.0428F, 40F);
            this.heartLabel.StylePriority.UseFont = false;
            this.heartLabel.StylePriority.UseForeColor = false;
            this.heartLabel.StylePriority.UseTextAlignment = false;
            this.heartLabel.Text = "Caution!";
            this.heartLabel.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // vendorContactsTable
            // 
            this.vendorContactsTable.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(213)))), ((int)(((byte)(211)))), ((int)(((byte)(205)))));
            this.vendorContactsTable.Font = new System.Drawing.Font("Segoe UI", 7.75F);
            this.vendorContactsTable.LocationFloat = new DevExpress.Utils.PointFloat(251.0009F, 10F);
            this.vendorContactsTable.Name = "vendorContactsTable";
            this.vendorContactsTable.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.vendorContactsRow});
            this.vendorContactsTable.SizeF = new System.Drawing.SizeF(388.9991F, 15F);
            this.vendorContactsTable.StylePriority.UseBorderColor = false;
            this.vendorContactsTable.StylePriority.UseFont = false;
            // 
            // vendorContactsRow
            // 
            this.vendorContactsRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.vendorWebsite,
            this.vendorEmail,
            this.vendorPhone});
            this.vendorContactsRow.Name = "vendorContactsRow";
            this.vendorContactsRow.Weight = 1D;
            // 
            // vendorWebsite
            // 
            this.vendorWebsite.CanGrow = false;
            this.vendorWebsite.CanShrink = true;
            this.vendorWebsite.Name = "vendorWebsite";
            this.vendorWebsite.StylePriority.UseTextAlignment = false;
            this.vendorWebsite.Text = "Contact Person";
            this.vendorWebsite.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.vendorWebsite.Weight = 1D;
            // 
            // vendorEmail
            // 
            this.vendorEmail.CanGrow = false;
            this.vendorEmail.CanShrink = true;
            this.vendorEmail.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[ContactPerson]")});
            this.vendorEmail.Name = "vendorEmail";
            this.vendorEmail.StylePriority.UseBorders = false;
            this.vendorEmail.StylePriority.UseTextAlignment = false;
            this.vendorEmail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.vendorEmail.Weight = 1D;
            // 
            // vendorPhone
            // 
            this.vendorPhone.CanGrow = false;
            this.vendorPhone.CanShrink = true;
            this.vendorPhone.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[ContactPersonPhoneNumber]")});
            this.vendorPhone.Name = "vendorPhone";
            this.vendorPhone.StylePriority.UseBorders = false;
            this.vendorPhone.StylePriority.UseTextAlignment = false;
            this.vendorPhone.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.vendorPhone.Weight = 1D;
            // 
            // thankYouLabel
            // 
            this.thankYouLabel.CanGrow = false;
            this.thankYouLabel.Font = new System.Drawing.Font("Segoe UI", 14F);
            this.thankYouLabel.LocationFloat = new DevExpress.Utils.PointFloat(10F, 52.5F);
            this.thankYouLabel.Name = "thankYouLabel";
            this.thankYouLabel.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.thankYouLabel.SizeF = new System.Drawing.SizeF(584.5833F, 23.33333F);
            this.thankYouLabel.StylePriority.UseFont = false;
            this.thankYouLabel.StylePriority.UseTextAlignment = false;
            this.thankYouLabel.Text = "Rexlubs will never ask you to share your code with anybody";
            this.thankYouLabel.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // GroupHeader2
            // 
            this.GroupHeader2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.vendorLogo,
            this.invoiceInfoTable,
            this.customerTable,
            this.vendorTable,
            this.invoiceLabel});
            this.GroupHeader2.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("InvoiceNumber", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader2.GroupUnion = DevExpress.XtraReports.UI.GroupUnion.WithFirstDetail;
            this.GroupHeader2.HeightF = 230F;
            this.GroupHeader2.Level = 1;
            this.GroupHeader2.Name = "GroupHeader2";
            this.GroupHeader2.StyleName = "baseControlStyle";
            this.GroupHeader2.StylePriority.UseBackColor = false;
            // 
            // vendorLogo
            // 
            this.vendorLogo.Image = ((System.Drawing.Image)(resources.GetObject("vendorLogo.Image")));
            this.vendorLogo.ImageAlignment = DevExpress.XtraPrinting.ImageAlignment.TopCenter;
            this.vendorLogo.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.vendorLogo.Name = "vendorLogo";
            this.vendorLogo.SizeF = new System.Drawing.SizeF(173.8331F, 90F);
            this.vendorLogo.Sizing = DevExpress.XtraPrinting.ImageSizeMode.Squeeze;
            this.vendorLogo.StylePriority.UseBorders = false;
            this.vendorLogo.StylePriority.UsePadding = false;
            // 
            // invoiceInfoTable
            // 
            this.invoiceInfoTable.LocationFloat = new DevExpress.Utils.PointFloat(0F, 129.1666F);
            this.invoiceInfoTable.Name = "invoiceInfoTable";
            this.invoiceInfoTable.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.invoiceDateRow,
            this.invoiceNumberRow});
            this.invoiceInfoTable.SizeF = new System.Drawing.SizeF(315.0421F, 50F);
            // 
            // invoiceDateRow
            // 
            this.invoiceDateRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.invoiceDateCaption,
            this.invoiceDate});
            this.invoiceDateRow.Name = "invoiceDateRow";
            this.invoiceDateRow.Weight = 1D;
            // 
            // invoiceDateCaption
            // 
            this.invoiceDateCaption.CanShrink = true;
            this.invoiceDateCaption.Name = "invoiceDateCaption";
            this.invoiceDateCaption.StylePriority.UseFont = false;
            this.invoiceDateCaption.StylePriority.UsePadding = false;
            this.invoiceDateCaption.StylePriority.UseTextAlignment = false;
            this.invoiceDateCaption.Text = "Date Issued:";
            this.invoiceDateCaption.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.invoiceDateCaption.Weight = 0.49655929171275132D;
            // 
            // invoiceDate
            // 
            this.invoiceDate.CanShrink = true;
            this.invoiceDate.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[CreatedDate]")});
            this.invoiceDate.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold);
            this.invoiceDate.Name = "invoiceDate";
            this.invoiceDate.StylePriority.UseFont = false;
            this.invoiceDate.TextFormatString = "{0:d MMMM yyyy}";
            this.invoiceDate.Weight = 1.3680312174875988D;
            // 
            // invoiceNumberRow
            // 
            this.invoiceNumberRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.invoiceNumberCaption,
            this.invoiceNumber});
            this.invoiceNumberRow.Name = "invoiceNumberRow";
            this.invoiceNumberRow.Weight = 1D;
            // 
            // invoiceNumberCaption
            // 
            this.invoiceNumberCaption.CanShrink = true;
            this.invoiceNumberCaption.Name = "invoiceNumberCaption";
            this.invoiceNumberCaption.StylePriority.UseFont = false;
            this.invoiceNumberCaption.StylePriority.UsePadding = false;
            this.invoiceNumberCaption.StylePriority.UseTextAlignment = false;
            this.invoiceNumberCaption.Text = "Invoice No:";
            this.invoiceNumberCaption.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.invoiceNumberCaption.Weight = 0.49655929171275132D;
            // 
            // invoiceNumber
            // 
            this.invoiceNumber.CanShrink = true;
            this.invoiceNumber.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[PaymentReference]")});
            this.invoiceNumber.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold);
            this.invoiceNumber.Name = "invoiceNumber";
            this.invoiceNumber.StylePriority.UseFont = false;
            this.invoiceNumber.Weight = 1.3680312174875988D;
            // 
            // customerTable
            // 
            this.customerTable.LocationFloat = new DevExpress.Utils.PointFloat(0F, 89.99999F);
            this.customerTable.Name = "customerTable";
            this.customerTable.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.customerNameRow});
            this.customerTable.SizeF = new System.Drawing.SizeF(201.0514F, 25F);
            // 
            // customerNameRow
            // 
            this.customerNameRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.customerName});
            this.customerNameRow.Name = "customerNameRow";
            this.customerNameRow.Weight = 1D;
            // 
            // customerName
            // 
            this.customerName.CanShrink = true;
            this.customerName.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[ProductRequest_ContactPerson]")});
            this.customerName.Font = new System.Drawing.Font("Segoe UI", 14F);
            this.customerName.Name = "customerName";
            this.customerName.StylePriority.UseFont = false;
            this.customerName.StylePriority.UsePadding = false;
            this.customerName.Weight = 1.1915477284685581D;
            // 
            // vendorTable
            // 
            this.vendorTable.LocationFloat = new DevExpress.Utils.PointFloat(350F, 89.99999F);
            this.vendorTable.Name = "vendorTable";
            this.vendorTable.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.vendorNameRow,
            this.vendorAddressRow,
            this.vendorCityRow,
            this.vendorCountryRow});
            this.vendorTable.SizeF = new System.Drawing.SizeF(300F, 100F);
            this.vendorTable.StylePriority.UseTextAlignment = false;
            this.vendorTable.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            // 
            // vendorNameRow
            // 
            this.vendorNameRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.vendorName});
            this.vendorNameRow.Name = "vendorNameRow";
            this.vendorNameRow.Weight = 1D;
            // 
            // vendorName
            // 
            this.vendorName.CanShrink = true;
            this.vendorName.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[BusinessName]")});
            this.vendorName.Name = "vendorName";
            this.vendorName.StylePriority.UseFont = false;
            this.vendorName.StylePriority.UsePadding = false;
            this.vendorName.StylePriority.UseTextAlignment = false;
            this.vendorName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.vendorName.Weight = 1D;
            // 
            // vendorAddressRow
            // 
            this.vendorAddressRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.vendorAddress});
            this.vendorAddressRow.Name = "vendorAddressRow";
            this.vendorAddressRow.Weight = 1D;
            // 
            // vendorAddress
            // 
            this.vendorAddress.CanShrink = true;
            this.vendorAddress.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[Address]")});
            this.vendorAddress.Name = "vendorAddress";
            this.vendorAddress.StylePriority.UseFont = false;
            this.vendorAddress.StylePriority.UseTextAlignment = false;
            this.vendorAddress.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.vendorAddress.Weight = 1D;
            // 
            // vendorCityRow
            // 
            this.vendorCityRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.vendorCity});
            this.vendorCityRow.Name = "vendorCityRow";
            this.vendorCityRow.Weight = 1D;
            // 
            // vendorCity
            // 
            this.vendorCity.CanShrink = true;
            this.vendorCity.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[State]")});
            this.vendorCity.Name = "vendorCity";
            this.vendorCity.StylePriority.UseFont = false;
            this.vendorCity.StylePriority.UseTextAlignment = false;
            this.vendorCity.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.vendorCity.Weight = 1D;
            // 
            // vendorCountryRow
            // 
            this.vendorCountryRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.vendorCountry});
            this.vendorCountryRow.Name = "vendorCountryRow";
            this.vendorCountryRow.Weight = 1D;
            // 
            // vendorCountry
            // 
            this.vendorCountry.CanShrink = true;
            this.vendorCountry.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[Country]")});
            this.vendorCountry.Name = "vendorCountry";
            this.vendorCountry.StylePriority.UseFont = false;
            this.vendorCountry.StylePriority.UseTextAlignment = false;
            this.vendorCountry.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.vendorCountry.Weight = 1D;
            // 
            // invoiceLabel
            // 
            this.invoiceLabel.Font = new System.Drawing.Font("Segoe UI", 26.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.invoiceLabel.ForeColor = System.Drawing.Color.Blue;
            this.invoiceLabel.LocationFloat = new DevExpress.Utils.PointFloat(239.3342F, 0F);
            this.invoiceLabel.Name = "invoiceLabel";
            this.invoiceLabel.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.invoiceLabel.SizeF = new System.Drawing.SizeF(185F, 50F);
            this.invoiceLabel.StylePriority.UseFont = false;
            this.invoiceLabel.StylePriority.UseForeColor = false;
            this.invoiceLabel.Text = "INVOICE";
            // 
            // GroupFooter2
            // 
            this.GroupFooter2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPictureBox1,
            this.summariesTable});
            this.GroupFooter2.GroupUnion = DevExpress.XtraReports.UI.GroupFooterUnion.WithLastDetail;
            this.GroupFooter2.HeightF = 330.0001F;
            this.GroupFooter2.KeepTogether = true;
            this.GroupFooter2.Level = 1;
            this.GroupFooter2.Name = "GroupFooter2";
            this.GroupFooter2.PageBreak = DevExpress.XtraReports.UI.PageBreak.AfterBandExceptLastEntry;
            this.GroupFooter2.PrintAtBottom = true;
            this.GroupFooter2.StyleName = "baseControlStyle";
            // 
            // xrPictureBox1
            // 
            this.xrPictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("xrPictureBox1.Image")));
            this.xrPictureBox1.ImageAlignment = DevExpress.XtraPrinting.ImageAlignment.TopLeft;
            this.xrPictureBox1.LocationFloat = new DevExpress.Utils.PointFloat(109.0519F, 113.3333F);
            this.xrPictureBox1.Name = "xrPictureBox1";
            this.xrPictureBox1.SizeF = new System.Drawing.SizeF(164.4995F, 151.6667F);
            this.xrPictureBox1.Sizing = DevExpress.XtraPrinting.ImageSizeMode.Squeeze;
            this.xrPictureBox1.StylePriority.UseBorders = false;
            this.xrPictureBox1.StylePriority.UsePadding = false;
            // 
            // summariesTable
            // 
            this.summariesTable.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(203)))), ((int)(((byte)(201)))), ((int)(((byte)(194)))));
            this.summariesTable.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.summariesTable.ForeColor = System.Drawing.Color.Blue;
            this.summariesTable.LocationFloat = new DevExpress.Utils.PointFloat(0F, 9.99998F);
            this.summariesTable.Name = "summariesTable";
            this.summariesTable.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.totalCaptionRow,
            this.totalRow});
            this.summariesTable.SizeF = new System.Drawing.SizeF(650.0001F, 81.66669F);
            this.summariesTable.StylePriority.UseBorderColor = false;
            this.summariesTable.StylePriority.UseBorders = false;
            this.summariesTable.StylePriority.UseForeColor = false;
            // 
            // totalCaptionRow
            // 
            this.totalCaptionRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.invoiceDueDateCaption,
            this.totalCaption});
            this.totalCaptionRow.Name = "totalCaptionRow";
            this.totalCaptionRow.Weight = 1.897562344587552D;
            // 
            // invoiceDueDateCaption
            // 
            this.invoiceDueDateCaption.Font = new System.Drawing.Font("Segoe UI", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.invoiceDueDateCaption.Name = "invoiceDueDateCaption";
            this.invoiceDueDateCaption.StylePriority.UseFont = false;
            this.invoiceDueDateCaption.StylePriority.UseForeColor = false;
            this.invoiceDueDateCaption.StylePriority.UseTextAlignment = false;
            this.invoiceDueDateCaption.Text = "DUE BY";
            this.invoiceDueDateCaption.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.invoiceDueDateCaption.Weight = 1.4499949651285395D;
            // 
            // totalCaption
            // 
            this.totalCaption.Font = new System.Drawing.Font("Segoe UI", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.totalCaption.Name = "totalCaption";
            this.totalCaption.StylePriority.UseFont = false;
            this.totalCaption.StylePriority.UseForeColor = false;
            this.totalCaption.StylePriority.UseTextAlignment = false;
            this.totalCaption.Text = "TOTAL DUE";
            this.totalCaption.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.totalCaption.TextFormatString = "{0:$0.00}";
            this.totalCaption.Weight = 0.86395575723338147D;
            // 
            // totalRow
            // 
            this.totalRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.invoiceDueDate,
            this.total});
            this.totalRow.Name = "totalRow";
            this.totalRow.Weight = 3.6000000584920282D;
            // 
            // invoiceDueDate
            // 
            this.invoiceDueDate.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[ExpectedDeliveryDate]")});
            this.invoiceDueDate.Font = new System.Drawing.Font("Segoe UI", 26F);
            this.invoiceDueDate.ForeColor = System.Drawing.Color.Black;
            this.invoiceDueDate.Name = "invoiceDueDate";
            this.invoiceDueDate.StylePriority.UseFont = false;
            this.invoiceDueDate.StylePriority.UseForeColor = false;
            this.invoiceDueDate.StylePriority.UseTextAlignment = false;
            this.invoiceDueDate.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.invoiceDueDate.TextFormatString = "{0:d MMMM, yyyy}";
            this.invoiceDueDate.Weight = 1.4499949651285395D;
            // 
            // total
            // 
            this.total.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[GrandTotal]")});
            this.total.Font = new System.Drawing.Font("Segoe UI", 26F, System.Drawing.FontStyle.Bold);
            this.total.ForeColor = System.Drawing.Color.DarkRed;
            this.total.Name = "total";
            this.total.StylePriority.UseFont = false;
            this.total.StylePriority.UseForeColor = false;
            this.total.StylePriority.UseTextAlignment = false;
            this.total.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.total.TextFormatString = "{0:N0.00}";
            this.total.Weight = 0.86395575723338147D;
            // 
            // GroupFooter1
            // 
            this.GroupFooter1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.subtotalTable});
            this.GroupFooter1.HeightF = 125F;
            this.GroupFooter1.Name = "GroupFooter1";
            this.GroupFooter1.StyleName = "baseControlStyle";
            // 
            // subtotalTable
            // 
            this.subtotalTable.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(203)))), ((int)(((byte)(201)))), ((int)(((byte)(194)))));
            this.subtotalTable.Font = new System.Drawing.Font("Segoe UI", 8F);
            this.subtotalTable.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(90)))), ((int)(((byte)(86)))), ((int)(((byte)(85)))));
            this.subtotalTable.LocationFloat = new DevExpress.Utils.PointFloat(0F, 10.00001F);
            this.subtotalTable.Name = "subtotalTable";
            this.subtotalTable.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 5, 0, 100F);
            this.subtotalTable.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.subtotalRow,
            this.discountRow,
            this.taxRow});
            this.subtotalTable.SizeF = new System.Drawing.SizeF(650F, 115F);
            this.subtotalTable.StylePriority.UseBorderColor = false;
            this.subtotalTable.StylePriority.UseFont = false;
            this.subtotalTable.StylePriority.UseForeColor = false;
            this.subtotalTable.StylePriority.UsePadding = false;
            // 
            // subtotalRow
            // 
            this.subtotalRow.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.subtotalRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.subtotalCaption,
            this.subtotal});
            this.subtotalRow.Name = "subtotalRow";
            this.subtotalRow.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 15, 0, 100F);
            this.subtotalRow.StylePriority.UseBorders = false;
            this.subtotalRow.StylePriority.UsePadding = false;
            this.subtotalRow.Weight = 14.490000130277691D;
            // 
            // subtotalCaption
            // 
            this.subtotalCaption.Font = new System.Drawing.Font("Segoe UI", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.subtotalCaption.Name = "subtotalCaption";
            this.subtotalCaption.StylePriority.UseBorders = false;
            this.subtotalCaption.StylePriority.UseFont = false;
            this.subtotalCaption.StylePriority.UsePadding = false;
            this.subtotalCaption.StylePriority.UseTextAlignment = false;
            this.subtotalCaption.Text = "SUBTOTAL";
            this.subtotalCaption.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.subtotalCaption.Weight = 5.1515302807623709D;
            // 
            // subtotal
            // 
            this.subtotal.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[Total_Amount]")});
            this.subtotal.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold);
            this.subtotal.ForeColor = System.Drawing.Color.Black;
            this.subtotal.Name = "subtotal";
            this.subtotal.StylePriority.UseBorders = false;
            this.subtotal.StylePriority.UseFont = false;
            this.subtotal.StylePriority.UseForeColor = false;
            this.subtotal.StylePriority.UsePadding = false;
            this.subtotal.StylePriority.UseTextAlignment = false;
            this.subtotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.subtotal.TextFormatString = "{0:N0.00}";
            this.subtotal.Weight = 1.5402675600259681D;
            // 
            // discountRow
            // 
            this.discountRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.discountCaption,
            this.discount});
            this.discountRow.Name = "discountRow";
            this.discountRow.Weight = 11.270000549027415D;
            // 
            // discountCaption
            // 
            this.discountCaption.Font = new System.Drawing.Font("Segoe UI", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.discountCaption.Name = "discountCaption";
            this.discountCaption.StylePriority.UseBorders = false;
            this.discountCaption.StylePriority.UseFont = false;
            this.discountCaption.StylePriority.UseTextAlignment = false;
            this.discountCaption.Text = "DISCOUNT ([0]%)";
            this.discountCaption.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.discountCaption.Weight = 5.1515302807623709D;
            // 
            // discount
            // 
            this.discount.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[DiscountTotalCalcField]")});
            this.discount.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold);
            this.discount.ForeColor = System.Drawing.Color.Black;
            this.discount.Name = "discount";
            this.discount.StylePriority.UseBorders = false;
            this.discount.StylePriority.UseFont = false;
            this.discount.StylePriority.UseForeColor = false;
            this.discount.StylePriority.UseTextAlignment = false;
            this.discount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.discount.TextFormatString = "{0:N0.00}";
            this.discount.Weight = 1.5402675600259681D;
            // 
            // taxRow
            // 
            this.taxRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.taxCaption,
            this.tax});
            this.taxRow.Name = "taxRow";
            this.taxRow.Weight = 11.269999320694897D;
            // 
            // taxCaption
            // 
            this.taxCaption.Font = new System.Drawing.Font("Segoe UI", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.taxCaption.Name = "taxCaption";
            this.taxCaption.StylePriority.UseFont = false;
            this.taxCaption.StylePriority.UseTextAlignment = false;
            this.taxCaption.Text = "TAX ([0.075]%)";
            this.taxCaption.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.taxCaption.Weight = 5.1515302807623709D;
            // 
            // tax
            // 
            this.tax.ExpressionBindings.AddRange(new DevExpress.XtraReports.UI.ExpressionBinding[] {
            new DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[VAT]")});
            this.tax.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold);
            this.tax.ForeColor = System.Drawing.Color.Black;
            this.tax.Name = "tax";
            this.tax.StylePriority.UseFont = false;
            this.tax.StylePriority.UseForeColor = false;
            this.tax.StylePriority.UseTextAlignment = false;
            this.tax.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.tax.TextFormatString = "{0:N0.00}";
            this.tax.Weight = 1.5402675600259681D;
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.headerTable});
            this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("ProductRequest_ID", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader1.HeightF = 50F;
            this.GroupHeader1.Name = "GroupHeader1";
            this.GroupHeader1.RepeatEveryPage = true;
            this.GroupHeader1.StyleName = "baseControlStyle";
            // 
            // headerTable
            // 
            this.headerTable.BorderColor = System.Drawing.Color.Black;
            this.headerTable.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) 
            | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.headerTable.Font = new System.Drawing.Font("Segoe UI", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.headerTable.ForeColor = System.Drawing.Color.Blue;
            this.headerTable.LocationFloat = new DevExpress.Utils.PointFloat(0F, 0F);
            this.headerTable.Name = "headerTable";
            this.headerTable.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 5, 0, 100F);
            this.headerTable.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.headerTableRow});
            this.headerTable.SizeF = new System.Drawing.SizeF(650F, 32F);
            this.headerTable.StylePriority.UseBorderColor = false;
            this.headerTable.StylePriority.UseBorders = false;
            this.headerTable.StylePriority.UseFont = false;
            this.headerTable.StylePriority.UseForeColor = false;
            this.headerTable.StylePriority.UsePadding = false;
            // 
            // headerTableRow
            // 
            this.headerTableRow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.productNameCaption,
            this.quantityCaption,
            this.unitPriceCaption,
            this.lineTotalCaptionCell});
            this.headerTableRow.Name = "headerTableRow";
            this.headerTableRow.Weight = 11.5D;
            // 
            // productNameCaption
            // 
            this.productNameCaption.Font = new System.Drawing.Font("Segoe UI", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.productNameCaption.Name = "productNameCaption";
            this.productNameCaption.StylePriority.UseFont = false;
            this.productNameCaption.StylePriority.UsePadding = false;
            this.productNameCaption.Text = "DESCRIPTION";
            this.productNameCaption.Weight = 1.2611252269900464D;
            // 
            // quantityCaption
            // 
            this.quantityCaption.Font = new System.Drawing.Font("Segoe UI", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.quantityCaption.Name = "quantityCaption";
            this.quantityCaption.StylePriority.UseFont = false;
            this.quantityCaption.StylePriority.UseTextAlignment = false;
            this.quantityCaption.Text = "QTY";
            this.quantityCaption.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.quantityCaption.Weight = 0.20495475959705467D;
            // 
            // unitPriceCaption
            // 
            this.unitPriceCaption.Font = new System.Drawing.Font("Segoe UI", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.unitPriceCaption.Name = "unitPriceCaption";
            this.unitPriceCaption.StylePriority.UseFont = false;
            this.unitPriceCaption.StylePriority.UseTextAlignment = false;
            this.unitPriceCaption.Text = "PRICE";
            this.unitPriceCaption.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.unitPriceCaption.Weight = 0.429381446953317D;
            // 
            // lineTotalCaptionCell
            // 
            this.lineTotalCaptionCell.Font = new System.Drawing.Font("Segoe UI", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lineTotalCaptionCell.Name = "lineTotalCaptionCell";
            this.lineTotalCaptionCell.StylePriority.UseFont = false;
            this.lineTotalCaptionCell.StylePriority.UseTextAlignment = false;
            this.lineTotalCaptionCell.Text = "TOTAL";
            this.lineTotalCaptionCell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            this.lineTotalCaptionCell.Weight = 0.53455211842257433D;
            // 
            // sqlDataSource1
            // 
            this.sqlDataSource1.ConnectionName = "RexGlobeDB";
            this.sqlDataSource1.Name = "sqlDataSource1";
            customSqlQuery1.Name = "Customers_1";
            customSqlQuery1.Sql = null;
            this.sqlDataSource1.Queries.AddRange(new DevExpress.DataAccess.Sql.SqlQuery[] {
            customSqlQuery1});
            // 
            // baseControlStyle
            // 
            this.baseControlStyle.Font = new System.Drawing.Font("Segoe UI", 9.75F);
            this.baseControlStyle.Name = "baseControlStyle";
            this.baseControlStyle.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            // 
            // LineTotalCalcField
            // 
            this.LineTotalCalcField.DataMember = "Customers_1";
            this.LineTotalCalcField.DisplayName = "LineTotal";
            this.LineTotalCalcField.Expression = "[UnitPrice] * [ProductQuantity]";
            this.LineTotalCalcField.FieldType = DevExpress.XtraReports.UI.FieldType.Decimal;
            this.LineTotalCalcField.Name = "LineTotalCalcField";
            // 
            // SubtotalCalcField
            // 
            this.SubtotalCalcField.DataMember = "Customers_1";
            this.SubtotalCalcField.DisplayName = "Subtotal";
            this.SubtotalCalcField.Expression = "[][^.[ProductRequest_ID] == [ProductRequest_ID]].Sum([LineTotalCalcField])";
            this.SubtotalCalcField.FieldType = DevExpress.XtraReports.UI.FieldType.Decimal;
            this.SubtotalCalcField.Name = "SubtotalCalcField";
            // 
            // DiscountTotalCalcField
            // 
            this.DiscountTotalCalcField.DataMember = "Customers_1";
            this.DiscountTotalCalcField.DisplayName = "DiscountTotal";
            this.DiscountTotalCalcField.Expression = "[SubtotalCalcField] * [Parameters.DiscountParameter] / 100";
            this.DiscountTotalCalcField.FieldType = DevExpress.XtraReports.UI.FieldType.Decimal;
            this.DiscountTotalCalcField.Name = "DiscountTotalCalcField";
            // 
            // TaxTotalCalcField
            // 
            this.TaxTotalCalcField.DataMember = "Customers_1";
            this.TaxTotalCalcField.DisplayName = "TaxTotal";
            this.TaxTotalCalcField.Expression = "([SubtotalCalcField] - [DiscountTotalCalcField]) * [Parameters.TaxParameter] / 10" +
    "0";
            this.TaxTotalCalcField.FieldType = DevExpress.XtraReports.UI.FieldType.Decimal;
            this.TaxTotalCalcField.Name = "TaxTotalCalcField";
            // 
            // TotalCalcField
            // 
            this.TotalCalcField.DataMember = "Customers_1";
            this.TotalCalcField.DisplayName = "Total";
            this.TotalCalcField.Expression = "[SubtotalCalcField] - [DiscountTotalCalcField] + [TaxTotalCalcField]";
            this.TotalCalcField.FieldType = DevExpress.XtraReports.UI.FieldType.Decimal;
            this.TotalCalcField.Name = "TotalCalcField";
            // 
            // DiscountParameter
            // 
            this.DiscountParameter.Name = "DiscountParameter";
            this.DiscountParameter.Type = typeof(decimal);
            this.DiscountParameter.ValueInfo = "0";
            this.DiscountParameter.Visible = false;
            // 
            // TaxParameter
            // 
            this.TaxParameter.Name = "TaxParameter";
            this.TaxParameter.Type = typeof(decimal);
            this.TaxParameter.ValueInfo = "7.5";
            this.TaxParameter.Visible = false;
            // 
            // XtraReport1
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.TopMargin,
            this.BottomMargin,
            this.GroupHeader2,
            this.GroupFooter2,
            this.GroupFooter1,
            this.GroupHeader1});
            this.CalculatedFields.AddRange(new DevExpress.XtraReports.UI.CalculatedField[] {
            this.LineTotalCalcField,
            this.SubtotalCalcField,
            this.DiscountTotalCalcField,
            this.TaxTotalCalcField,
            this.TotalCalcField});
            this.ComponentStorage.AddRange(new System.ComponentModel.IComponent[] {
            this.sqlDataSource1});
            this.DataMember = "Customers_1";
            this.DataSource = this.sqlDataSource1;
            this.Margins = new System.Drawing.Printing.Margins(100, 100, 112, 100);
            this.Parameters.AddRange(new DevExpress.XtraReports.Parameters.Parameter[] {
            this.DiscountParameter,
            this.TaxParameter});
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.baseControlStyle});
            this.Version = "18.1";
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.detailTable)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.vendorContactsTable)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.invoiceInfoTable)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerTable)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.vendorTable)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.summariesTable)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.subtotalTable)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTable)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }
        //private void XtraReport1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{
        //    DataMember = "Payments";
        //    DetailReport.DataMember = "Payments.CategoriesProducts";

        //    xrLabel2.DataBindings.Add("Text", null, "Categories.CategoryName");
        //    xrLabel3.DataBindings.Add("Text", null, "Categories.Description");
        //    xrPictureBox1.DataBindings.Add("Image", null, "Ctegories.Picture");

        //    xrLabel4.DataBindings.Add("Text", null, "Categories.CategoriesProducts.ProductName");
        //    xrLabel5.DataBindings.Add("Text", null, "Categories.CategoriesProducts.UnitPrice");
        //}
        #endregion
    }
}