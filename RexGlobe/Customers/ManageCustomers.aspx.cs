using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RexGlobe.Customers
{
    public partial class ManageCustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //TabPage AssessmentInfoTabPage = (ASPxGridView1.FindEditFormTemplateControl("PageControl") as ASPxPageControl).TabPages[0];

            //ASPxGridView GridViewAttachment_ = AssessmentInfoTabPage.FindControl("GridViewAttachment") as ASPxGridView;
            //if (!IsPostBack)
            //{
            //    GridViewAttachment_.StartEdit(0);
            //}
        }

        protected void ASPxGridView1_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            UserAccount _user = (UserAccount)Session["LoggedInUser"];
            string username = _user.UserName.ToString();

            try
            {
                TabPage AssessmentInfoTabPage = (ASPxGridView1.FindEditFormTemplateControl("PageControl") as ASPxPageControl).TabPages[0];

                ASPxFormLayout ASPxFormLayout1 = AssessmentInfoTabPage.FindControl("ASPxFormLayout1") as ASPxFormLayout;
                ASPxFormLayout ASPxFormLayout2 = AssessmentInfoTabPage.FindControl("ASPxFormLayout2") as ASPxFormLayout;
                ASPxFormLayout ASPxFormLayout3 = AssessmentInfoTabPage.FindControl("ASPxFormLayout3") as ASPxFormLayout;
                ASPxFormLayout ASPxFormLayout4 = AssessmentInfoTabPage.FindControl("ASPxFormLayout4") as ASPxFormLayout;
                ASPxFormLayout ASPxFormLayout5 = AssessmentInfoTabPage.FindControl("ASPxFormLayout4") as ASPxFormLayout;

                ASPxTextBox CompanyName = ASPxFormLayout1.FindNestedControlByFieldName("CompanyName") as ASPxTextBox;
                ASPxTextBox REXID = ASPxFormLayout1.FindNestedControlByFieldName("REXID") as ASPxTextBox;
                ASPxTextBox TIN = ASPxFormLayout1.FindNestedControlByFieldName("TIN") as ASPxTextBox;
                ASPxTextBox Firstname = ASPxFormLayout1.FindNestedControlByFieldName("Firstname") as ASPxTextBox;
                ASPxTextBox LastName = ASPxFormLayout1.FindNestedControlByFieldName("LastName") as ASPxTextBox;
                ASPxTextBox Designation = ASPxFormLayout1.FindNestedControlByFieldName("Designation") as ASPxTextBox;
                ASPxDateEdit DateOfIncorporation = ASPxFormLayout1.FindNestedControlByFieldName("DateOfIncorporation") as ASPxDateEdit;
                ASPxDateEdit DateOfCommencement = ASPxFormLayout1.FindNestedControlByFieldName("DateOfCommencement") as ASPxDateEdit;
                ASPxDateEdit ContractDate = ASPxFormLayout1.FindNestedControlByFieldName("ContractDate") as ASPxDateEdit;
                ASPxTextBox AssignedTo = ASPxFormLayout1.FindNestedControlByFieldName("AssignedTo") as ASPxTextBox;
                ASPxComboBox BusinessLineID = ASPxFormLayout1.FindNestedControlByFieldName("BusinessLineID") as ASPxComboBox;
                ASPxTextBox BVN = ASPxFormLayout1.FindNestedControlByFieldName("BVN") as ASPxTextBox;
                ASPxTextBox StateId = ASPxFormLayout1.FindNestedControlByFieldName("StateId") as ASPxTextBox;
                ASPxTextBox LgaId = ASPxFormLayout1.FindNestedControlByFieldName("LgaId") as ASPxTextBox;

                ASPxTextBox Address = ASPxFormLayout2.FindNestedControlByFieldName("Address") as ASPxTextBox;
                ASPxTextBox Email = ASPxFormLayout2.FindNestedControlByFieldName("Email") as ASPxTextBox;
                ASPxTextBox Phone1 = ASPxFormLayout2.FindNestedControlByFieldName("Phone1") as ASPxTextBox;
                ASPxTextBox Phone2 = ASPxFormLayout2.FindNestedControlByFieldName("Phone2") as ASPxTextBox;                
                ASPxTextBox CreditLine = ASPxFormLayout2.FindNestedControlByFieldName("CreditLine") as ASPxTextBox;
                ASPxTextBox Shareholding = ASPxFormLayout2.FindNestedControlByFieldName("Shareholding") as ASPxTextBox;
                ASPxTextBox StaffStrength = ASPxFormLayout2.FindNestedControlByFieldName("StaffStrength") as ASPxTextBox;

                ASPxMemo TankFarm = ASPxFormLayout5.FindNestedControlByFieldName("TankFarm") as ASPxMemo;
                ASPxMemo Vessels = ASPxFormLayout5.FindNestedControlByFieldName("Vessels") as ASPxMemo;
                ASPxMemo Trucks = ASPxFormLayout5.FindNestedControlByFieldName("Trucks") as ASPxMemo;
                ASPxMemo FillingStations = ASPxFormLayout5.FindNestedControlByFieldName("FillingStations") as ASPxMemo;
                ASPxTextBox Banks = ASPxFormLayout5.FindNestedControlByFieldName("Banks") as ASPxTextBox;
                ASPxComboBox AuditedAccounts = ASPxFormLayout5.FindNestedControlByFieldName("AuditedAccounts") as ASPxComboBox;
                ASPxTextBox CompanyAuditors = ASPxFormLayout5.FindNestedControlByFieldName("CompanyAuditors") as ASPxTextBox;
                ASPxComboBox AttachedAuditedAccounts = ASPxFormLayout5.FindNestedControlByFieldName("AttachedAuditedAccounts") as ASPxComboBox;
                ASPxTextBox CompanyTurnover = ASPxFormLayout5.FindNestedControlByFieldName("CompanyTurnover") as ASPxTextBox;
                ASPxTextBox SecurityDeposit = ASPxFormLayout5.FindNestedControlByFieldName("SecurityDeposit") as ASPxTextBox;
                ASPxTextBox Amount = ASPxFormLayout5.FindNestedControlByFieldName("Amount") as ASPxTextBox;
                ASPxComboBox PaymentType = ASPxFormLayout5.FindNestedControlByFieldName("PaymentType") as ASPxComboBox;
                ASPxTextBox CashLocation = ASPxFormLayout5.FindNestedControlByFieldName("CashLocation") as ASPxTextBox;
                ASPxComboBox CashOwner = ASPxFormLayout5.FindNestedControlByFieldName("CashOwner") as ASPxComboBox;

                ASPxComboBox Walkin = ASPxFormLayout4.FindNestedControlByFieldName("Walkin") as ASPxComboBox;
                ASPxTextBox MarketedByWhom = ASPxFormLayout4.FindNestedControlByFieldName("MarketedByWhom") as ASPxTextBox;
                ASPxTextBox IntroducedByWhom = ASPxFormLayout4.FindNestedControlByFieldName("IntroducedByWhom") as ASPxTextBox;
                ASPxTextBox SuppliersList = ASPxFormLayout4.FindNestedControlByFieldName("SuppliersList") as ASPxTextBox;
                ASPxTextBox TopFiveclients = ASPxFormLayout4.FindNestedControlByFieldName("TopFiveclients") as ASPxTextBox;
                ASPxTextBox RemitMoneyForSanctionedCountry = ASPxFormLayout4.FindNestedControlByFieldName("RemitMoneyForSanctionedCountry") as ASPxTextBox;
                ASPxTextBox PerformThirdPartyBusinessTransaction = ASPxFormLayout4.FindNestedControlByFieldName("PerformThirdPartyBusinessTransaction") as ASPxTextBox;
                ASPxTextBox AnySubsidiaryInSanctionCountry = ASPxFormLayout4.FindNestedControlByFieldName("AnySubsidiaryInSanctionCountry") as ASPxTextBox;
                ASPxTextBox CountryOfProductTrade = ASPxFormLayout4.FindNestedControlByFieldName("CountryOfProductTrade") as ASPxTextBox;
                ASPxTextBox CountryImportedGoodsandServices = ASPxFormLayout4.FindNestedControlByFieldName("CountryImportedGoodsandServices") as ASPxTextBox;
                ASPxTextBox CountryExportedGoodsandServices = ASPxFormLayout4.FindNestedControlByFieldName("CountryExportedGoodsandServices") as ASPxTextBox;
                ASPxTextBox CountryTransitOfGoodsandService = ASPxFormLayout4.FindNestedControlByFieldName("CountryTransitOfGoodsandService") as ASPxTextBox;

                ASPxMemo YourCustomers = ASPxFormLayout3.FindNestedControlByFieldName("Chargeable_Tax") as ASPxMemo;
                ASPxMemo YourProducts = ASPxFormLayout3.FindNestedControlByFieldName("YourCustomers") as ASPxMemo;
                ASPxTextBox TotalsalesOfClients = ASPxFormLayout3.FindNestedControlByFieldName("TotalsalesOfClients") as ASPxTextBox;
                ASPxTextBox TotalPurchasesofClient = ASPxFormLayout3.FindNestedControlByFieldName("TotalPurchasesofClient") as ASPxTextBox;
                ASPxTextBox TotalAssetsoftheClient = ASPxFormLayout3.FindNestedControlByFieldName("TotalAssetsoftheClient") as ASPxTextBox;
                ASPxTextBox TotalOperatingIncomeofClient = ASPxFormLayout3.FindNestedControlByFieldName("TotalOperatingIncomeofClient") as ASPxTextBox;
                ASPxTextBox LicenseforConductedTransactions = ASPxFormLayout3.FindNestedControlByFieldName("LicenseforConductedTransactions") as ASPxTextBox;
                ASPxTextBox TransactwithSanctionedCountries = ASPxFormLayout3.FindNestedControlByFieldName("TransactwithSanctionedCountries") as ASPxTextBox;
                ASPxTextBox BanksUsedtoTransactwithSanctionedCountries = ASPxFormLayout3.FindNestedControlByFieldName("BanksUsedtoTransactwithSanctionedCountries") as ASPxTextBox;
                ASPxTextBox PlanToGrowMaintainorReduceBusinesswithSanctionCountries = ASPxFormLayout3.FindNestedControlByFieldName("PlanToGrowMaintainorReduceBusinesswithSanctionCountries") as ASPxTextBox;

                    

                using (var context = new RexGlobeEntities())
                {
                    var newItem = new Customer();
                    newItem.REXID = REXID.Text;
                    newItem.TIN = Convert.ToInt32(TIN.Text);
                    newItem.Firstname = Firstname.Text;
                    newItem.LastName = LastName.Text;
                    newItem.Designation = Designation.Text;
                    newItem.CompanyName = CompanyName.Text;
                    newItem.DateOfIncorporation = Convert.ToDateTime(DateOfIncorporation);
                    newItem.DateOfCommencement = Convert.ToDateTime(DateOfCommencement);
                    newItem.BVN = BVN.Text;
                    newItem.Address = Address.Text;
                    newItem.Email = Email.Text;
                    newItem.Phone1 = Phone1.Text;
                    newItem.Phone2 = Phone2.Text;
                    newItem.ContractDate = Convert.ToDateTime(ContractDate.Text);
                    newItem.AssignedTo = AssignedTo.Text;
                    newItem.BusinessLineID = Convert.ToInt32(BusinessLineID.Text);
                    newItem.LGAID = Convert.ToInt32(LgaId.Text);
                    newItem.StateID = StateId.Text;
                    newItem.Status = "New";
                    newItem.CreatedBy = username;
                    newItem.CreatedDate = DateTime.Now;
                    newItem.CreditLine = Convert.ToDecimal(CreditLine.Text);
                    newItem.Shareholding = Convert.ToDecimal(Shareholding.Text);
                    newItem.StaffStrength = Convert.ToInt32(StaffStrength.Text);
                    newItem.TankFarms = TankFarm.Text;
                    newItem.Vessels = Vessels.Text;
                    newItem.Trucks = Trucks.Text;
                    newItem.FillingStations = FillingStations.Text;
                    newItem.Bankers = Banks.Text;
                    newItem.AuditedAccounts = Convert.ToBoolean(AuditedAccounts.Text);
                    newItem.CompanyAuditors = CompanyAuditors.Text;
                    newItem.AttachedAuditedAccounts = Convert.ToBoolean(AttachedAuditedAccounts.Text);
                    newItem.CompanyTurnover = Convert.ToDecimal(CompanyTurnover);
                    newItem.SecurityDeposit = Convert.ToDecimal(SecurityDeposit.Text);
                    newItem.PaymentType = Convert.ToInt32(PaymentType.Text);
                    newItem.CashLocation = CashLocation.Text;
                    newItem.CashOwner = CashLocation.Text;
                    newItem.Walkin = Convert.ToBoolean(Walkin.Text);
                    newItem.MarketedByWhom = MarketedByWhom.Text;
                    newItem.IntroducedByWhom = IntroducedByWhom.Text;
                    newItem.SuppliersList = SuppliersList.Text;
                    newItem.TopFiveclients = TopFiveclients.Text;
                    newItem.RemitMoneyForSanctionedCountry = RemitMoneyForSanctionedCountry.Text;
                    newItem.PerformThirdPartyBusinessTransaction = PerformThirdPartyBusinessTransaction.Text;
                    newItem.AnySubsidiaryInSanctionCountry = AnySubsidiaryInSanctionCountry.Text;
                    newItem.CountryOfProductTrade = AnySubsidiaryInSanctionCountry.Text;
                    newItem.CountryImportedGoodsandServices = CountryImportedGoodsandServices.Text;
                    newItem.CountryExportedGoodsandServices = CountryExportedGoodsandServices.Text;
                    newItem.CountryTransitOfGoodsandService = CountryTransitOfGoodsandService.Text;
                    newItem.YourCustomers = YourCustomers.Text;
                    newItem.YourProducts = YourProducts.Text;
                    newItem.TotalsalesOfClients = Convert.ToDecimal(TotalsalesOfClients.Text);
                    newItem.TotalPurchasesofClient = Convert.ToDecimal(TotalPurchasesofClient.Text);
                    newItem.TotalAssetsoftheClient = Convert.ToDecimal(TotalAssetsoftheClient);
                    newItem.TotalOperatingIncomeofClient = Convert.ToDecimal(TotalOperatingIncomeofClient.Text);
                    newItem.LicenseforConductedTransactions = LicenseforConductedTransactions.Text;
                    newItem.TransactwithSanctionedCountries = TransactwithSanctionedCountries.Text;
                    newItem.BanksUsedtoTransactwithSanctionedCountries = BanksUsedtoTransactwithSanctionedCountries.Text;
                    newItem.PlanToGrowMaintainorReduceBusinesswithSanctionCountries = PlanToGrowMaintainorReduceBusinesswithSanctionCountries.Text;
                    newItem.AcceptTermsandConditions = true;

                    //newItem.CreatedBy = Convert.ToString(Session["UserName"]);//"SFW";
                    context.Customers.Add(newItem);
                    context.SaveChanges();
                    e.Cancel = true;
                    ASPxGridView1.CancelEdit();
                }

            }
            catch (Exception ex)
            {
                var message = ex.Message;
            }
        }

        protected void ASPxGridView1_StartRowEditing(object sender, DevExpress.Web.Data.ASPxStartRowEditingEventArgs e)
        {
            this.Session["RequestID"] = e.EditingKeyValue.ToString();
        }

        protected void ASPxComboBoxLga_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
        {
            //if (string.IsNullOrEmpty(e.Parameter)) return;

            //TabPage AssessmentInfoTabPage = (ASPxGridView1.FindEditFormTemplateControl("PageControl") as ASPxPageControl).TabPages[0];

            //ASPxFormLayout ASPxFormLayout1 = AssessmentInfoTabPage.FindControl("ASPxFormLayout1") as ASPxFormLayout;
            //edsLgas.WhereParameters[0].DefaultValue = e.Parameter;
            //ASPxTextBox LgaId = ASPxFormLayout1.FindNestedControlByFieldName("LgaId") as ASPxTextBox;
            //LgaId.DataBind();
        }

        protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            UserAccount _user = (UserAccount)Session["LoggedInUser"];
            string username = _user.UserName.ToString();
            try
            {
                TabPage AssessmentInfoTabPage = (ASPxGridView1.FindEditFormTemplateControl("PageControl") as ASPxPageControl).TabPages[0];

                ASPxFormLayout ASPxFormLayout1 = AssessmentInfoTabPage.FindControl("ASPxFormLayout1") as ASPxFormLayout;
                ASPxFormLayout ASPxFormLayout2 = AssessmentInfoTabPage.FindControl("ASPxFormLayout2") as ASPxFormLayout;
                ASPxFormLayout ASPxFormLayout3 = AssessmentInfoTabPage.FindControl("ASPxFormLayout3") as ASPxFormLayout;
                ASPxFormLayout ASPxFormLayout4 = AssessmentInfoTabPage.FindControl("ASPxFormLayout4") as ASPxFormLayout;
                ASPxFormLayout ASPxFormLayout5 = AssessmentInfoTabPage.FindControl("ASPxFormLayout4") as ASPxFormLayout;

                ASPxTextBox RequestID = ASPxFormLayout1.FindNestedControlByFieldName("RequestID") as ASPxTextBox;
                ASPxTextBox CompanyName = ASPxFormLayout1.FindNestedControlByFieldName("CompanyName") as ASPxTextBox;
                ASPxTextBox REXID = ASPxFormLayout1.FindNestedControlByFieldName("REXID") as ASPxTextBox;
                ASPxTextBox TIN = ASPxFormLayout1.FindNestedControlByFieldName("TIN") as ASPxTextBox;
                ASPxTextBox Firstname = ASPxFormLayout1.FindNestedControlByFieldName("Firstname") as ASPxTextBox;
                ASPxTextBox LastName = ASPxFormLayout1.FindNestedControlByFieldName("LastName") as ASPxTextBox;
                ASPxTextBox Designation = ASPxFormLayout1.FindNestedControlByFieldName("Designation") as ASPxTextBox;
                ASPxDateEdit DateOfIncorporation = ASPxFormLayout1.FindNestedControlByFieldName("DateOfIncorporation") as ASPxDateEdit;
                ASPxDateEdit DateOfCommencement = ASPxFormLayout1.FindNestedControlByFieldName("DateOfCommencement") as ASPxDateEdit;
                ASPxDateEdit ContractDate = ASPxFormLayout1.FindNestedControlByFieldName("ContractDate") as ASPxDateEdit;
                ASPxTextBox AssignedTo = ASPxFormLayout1.FindNestedControlByFieldName("AssignedTo") as ASPxTextBox;
                ASPxComboBox BusinessLineID = ASPxFormLayout1.FindNestedControlByFieldName("BusinessLineID") as ASPxComboBox;
                ASPxTextBox BVN = ASPxFormLayout1.FindNestedControlByFieldName("BVN") as ASPxTextBox;
                ASPxTextBox StateId = ASPxFormLayout1.FindNestedControlByFieldName("StateId") as ASPxTextBox;
                ASPxTextBox LgaId = ASPxFormLayout1.FindNestedControlByFieldName("LgaId") as ASPxTextBox;

                ASPxTextBox Address = ASPxFormLayout2.FindNestedControlByFieldName("Address") as ASPxTextBox;
                ASPxTextBox Email = ASPxFormLayout2.FindNestedControlByFieldName("Email") as ASPxTextBox;
                ASPxTextBox Phone1 = ASPxFormLayout2.FindNestedControlByFieldName("Phone1") as ASPxTextBox;
                ASPxTextBox Phone2 = ASPxFormLayout2.FindNestedControlByFieldName("Phone2") as ASPxTextBox;
                ASPxTextBox CreditLine = ASPxFormLayout2.FindNestedControlByFieldName("CreditLine") as ASPxTextBox;
                ASPxTextBox Shareholding = ASPxFormLayout2.FindNestedControlByFieldName("Shareholding") as ASPxTextBox;
                ASPxTextBox StaffStrength = ASPxFormLayout2.FindNestedControlByFieldName("StaffStrength") as ASPxTextBox;

                ASPxMemo TankFarm = ASPxFormLayout5.FindNestedControlByFieldName("TankFarm") as ASPxMemo;
                ASPxMemo Vessels = ASPxFormLayout5.FindNestedControlByFieldName("Vessels") as ASPxMemo;
                ASPxMemo Trucks = ASPxFormLayout5.FindNestedControlByFieldName("Trucks") as ASPxMemo;
                ASPxMemo FillingStations = ASPxFormLayout5.FindNestedControlByFieldName("FillingStations") as ASPxMemo;
                ASPxTextBox Banks = ASPxFormLayout5.FindNestedControlByFieldName("Banks") as ASPxTextBox;
                ASPxComboBox AuditedAccounts = ASPxFormLayout5.FindNestedControlByFieldName("AuditedAccounts") as ASPxComboBox;
                ASPxTextBox CompanyAuditors = ASPxFormLayout5.FindNestedControlByFieldName("CompanyAuditors") as ASPxTextBox;
                ASPxComboBox AttachedAuditedAccounts = ASPxFormLayout5.FindNestedControlByFieldName("AttachedAuditedAccounts") as ASPxComboBox;
                ASPxTextBox CompanyTurnover = ASPxFormLayout5.FindNestedControlByFieldName("CompanyTurnover") as ASPxTextBox;
                ASPxTextBox SecurityDeposit = ASPxFormLayout5.FindNestedControlByFieldName("SecurityDeposit") as ASPxTextBox;
                ASPxTextBox Amount = ASPxFormLayout5.FindNestedControlByFieldName("Amount") as ASPxTextBox;
                ASPxComboBox PaymentType = ASPxFormLayout5.FindNestedControlByFieldName("PaymentType") as ASPxComboBox;
                ASPxTextBox CashLocation = ASPxFormLayout5.FindNestedControlByFieldName("CashLocation") as ASPxTextBox;
                ASPxComboBox CashOwner = ASPxFormLayout5.FindNestedControlByFieldName("CashOwner") as ASPxComboBox;

                ASPxComboBox Walkin = ASPxFormLayout4.FindNestedControlByFieldName("Walkin") as ASPxComboBox;
                ASPxTextBox MarketedByWhom = ASPxFormLayout4.FindNestedControlByFieldName("MarketedByWhom") as ASPxTextBox;
                ASPxTextBox IntroducedByWhom = ASPxFormLayout4.FindNestedControlByFieldName("IntroducedByWhom") as ASPxTextBox;
                ASPxTextBox SuppliersList = ASPxFormLayout4.FindNestedControlByFieldName("SuppliersList") as ASPxTextBox;
                ASPxTextBox TopFiveclients = ASPxFormLayout4.FindNestedControlByFieldName("TopFiveclients") as ASPxTextBox;
                ASPxTextBox RemitMoneyForSanctionedCountry = ASPxFormLayout4.FindNestedControlByFieldName("RemitMoneyForSanctionedCountry") as ASPxTextBox;
                ASPxTextBox PerformThirdPartyBusinessTransaction = ASPxFormLayout4.FindNestedControlByFieldName("PerformThirdPartyBusinessTransaction") as ASPxTextBox;
                ASPxTextBox AnySubsidiaryInSanctionCountry = ASPxFormLayout4.FindNestedControlByFieldName("AnySubsidiaryInSanctionCountry") as ASPxTextBox;
                ASPxTextBox CountryOfProductTrade = ASPxFormLayout4.FindNestedControlByFieldName("CountryOfProductTrade") as ASPxTextBox;
                ASPxTextBox CountryImportedGoodsandServices = ASPxFormLayout4.FindNestedControlByFieldName("CountryImportedGoodsandServices") as ASPxTextBox;
                ASPxTextBox CountryExportedGoodsandServices = ASPxFormLayout4.FindNestedControlByFieldName("CountryExportedGoodsandServices") as ASPxTextBox;
                ASPxTextBox CountryTransitOfGoodsandService = ASPxFormLayout4.FindNestedControlByFieldName("CountryTransitOfGoodsandService") as ASPxTextBox;

                ASPxMemo YourCustomers = ASPxFormLayout3.FindNestedControlByFieldName("Chargeable_Tax") as ASPxMemo;
                ASPxMemo YourProducts = ASPxFormLayout3.FindNestedControlByFieldName("YourCustomers") as ASPxMemo;
                ASPxTextBox TotalsalesOfClients = ASPxFormLayout3.FindNestedControlByFieldName("TotalsalesOfClients") as ASPxTextBox;
                ASPxTextBox TotalPurchasesofClient = ASPxFormLayout3.FindNestedControlByFieldName("TotalPurchasesofClient") as ASPxTextBox;
                ASPxTextBox TotalAssetsoftheClient = ASPxFormLayout3.FindNestedControlByFieldName("TotalAssetsoftheClient") as ASPxTextBox;
                ASPxTextBox TotalOperatingIncomeofClient = ASPxFormLayout3.FindNestedControlByFieldName("TotalOperatingIncomeofClient") as ASPxTextBox;
                ASPxTextBox LicenseforConductedTransactions = ASPxFormLayout3.FindNestedControlByFieldName("LicenseforConductedTransactions") as ASPxTextBox;
                ASPxTextBox TransactwithSanctionedCountries = ASPxFormLayout3.FindNestedControlByFieldName("TransactwithSanctionedCountries") as ASPxTextBox;
                ASPxTextBox BanksUsedtoTransactwithSanctionedCountries = ASPxFormLayout3.FindNestedControlByFieldName("BanksUsedtoTransactwithSanctionedCountries") as ASPxTextBox;
                ASPxTextBox PlanToGrowMaintainorReduceBusinesswithSanctionCountries = ASPxFormLayout3.FindNestedControlByFieldName("PlanToGrowMaintainorReduceBusinesswithSanctionCountries") as ASPxTextBox;
                


                using (var context = new RexGlobeEntities())
                {
                    
                    int id = Convert.ToInt32(RequestID.Text);
                    Customer item = context.Customers.First(a => a.RequestID == id);
                    item.REXID = REXID.Text;
                    item.TIN = Convert.ToInt32(TIN.Text);
                    item.Firstname = Firstname.Text;
                    item.LastName = LastName.Text;
                    item.Designation = Designation.Text;
                    item.CompanyName = CompanyName.Text;
                    item.DateOfIncorporation = Convert.ToDateTime(DateOfIncorporation);
                    item.DateOfCommencement = Convert.ToDateTime(DateOfCommencement);
                    item.BVN = BVN.Text;
                    item.Address = Address.Text;
                    item.Email = Email.Text;
                    item.Phone1 = Phone1.Text;
                    item.Phone2 = Phone2.Text;
                    item.ContractDate = Convert.ToDateTime(ContractDate.Text);
                    item.AssignedTo = AssignedTo.Text;
                    item.BusinessLineID = Convert.ToInt32(BusinessLineID.Text);
                    item.LGAID = Convert.ToInt32(LgaId.Text);
                    item.StateID = StateId.Text;
                    item.Status = "New";
                    item.CreatedBy = username;
                    item.CreatedDate = DateTime.Now;
                    item.CreditLine = Convert.ToDecimal(CreditLine.Text);
                    item.Shareholding = Convert.ToDecimal(Shareholding.Text);
                    item.StaffStrength = Convert.ToInt32(StaffStrength.Text);
                    item.TankFarms = TankFarm.Text;
                    item.Vessels = Vessels.Text;
                    item.Trucks = Trucks.Text;
                    item.FillingStations = FillingStations.Text;
                    item.Bankers = Banks.Text;
                    item.AuditedAccounts = Convert.ToBoolean(AuditedAccounts.Text);
                    item.CompanyAuditors = CompanyAuditors.Text;
                    item.AttachedAuditedAccounts = Convert.ToBoolean(AttachedAuditedAccounts.Text);
                    item.CompanyTurnover = Convert.ToDecimal(CompanyTurnover);
                    item.SecurityDeposit = Convert.ToDecimal(SecurityDeposit.Text);
                    item.PaymentType = Convert.ToInt32(PaymentType.Text);
                    item.CashLocation = CashLocation.Text;
                    item.CashOwner = CashLocation.Text;
                    item.Walkin = Convert.ToBoolean(Walkin.Text);
                    item.MarketedByWhom = MarketedByWhom.Text;
                    item.IntroducedByWhom = IntroducedByWhom.Text;
                    item.SuppliersList = SuppliersList.Text;
                    item.TopFiveclients = TopFiveclients.Text;
                    item.RemitMoneyForSanctionedCountry = RemitMoneyForSanctionedCountry.Text;
                    item.PerformThirdPartyBusinessTransaction = PerformThirdPartyBusinessTransaction.Text;
                    item.AnySubsidiaryInSanctionCountry = AnySubsidiaryInSanctionCountry.Text;
                    item.CountryOfProductTrade = AnySubsidiaryInSanctionCountry.Text;
                    item.CountryImportedGoodsandServices = CountryImportedGoodsandServices.Text;
                    item.CountryExportedGoodsandServices = CountryExportedGoodsandServices.Text;
                    item.CountryTransitOfGoodsandService = CountryTransitOfGoodsandService.Text;
                    item.YourCustomers = YourCustomers.Text;
                    item.YourProducts = YourProducts.Text;
                    item.TotalsalesOfClients = Convert.ToDecimal(TotalsalesOfClients.Text);
                    item.TotalPurchasesofClient = Convert.ToDecimal(TotalPurchasesofClient.Text);
                    item.TotalAssetsoftheClient = Convert.ToDecimal(TotalAssetsoftheClient);
                    item.TotalOperatingIncomeofClient = Convert.ToDecimal(TotalOperatingIncomeofClient.Text);
                    item.LicenseforConductedTransactions = LicenseforConductedTransactions.Text;
                    item.TransactwithSanctionedCountries = TransactwithSanctionedCountries.Text;
                    item.BanksUsedtoTransactwithSanctionedCountries = BanksUsedtoTransactwithSanctionedCountries.Text;
                    item.PlanToGrowMaintainorReduceBusinesswithSanctionCountries = PlanToGrowMaintainorReduceBusinesswithSanctionCountries.Text;
                    item.AcceptTermsandConditions = true;

                    context.SaveChanges();
                    e.Cancel = true;
                    ASPxGridView1.CancelEdit();
                    
                }

            }
            catch (Exception ex)
            {
                var message = ex.Message;
            }
        }

        protected void ASPxGridView1_CustomUnboundColumnData(object sender, ASPxGridViewColumnDataEventArgs e)
        {

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
            TabPage AssessmentInfoTabPage = (ASPxGridView1.FindEditFormTemplateControl("PageControl") as ASPxPageControl).TabPages[0];

            ASPxFormLayout ASPxFormLayout1 = AssessmentInfoTabPage.FindControl("ASPxFormLayout5") as ASPxFormLayout;
            ASPxFormLayout1.ForEach(ClearItem);
        }


    }
}