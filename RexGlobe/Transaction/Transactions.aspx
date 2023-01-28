<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="RexGlobe.Transaction.Transactions" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlCustomer" KeyFieldName="QuantityID">
 <ClientSideEvents RowDblClick="function(s, e) {	s.StartEditRow(e.visibleIndex);}" />

<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <Templates>
            <EditForm>
                <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%" DataSourceID="SqlQuantity" ClientInstanceName="formlayout" ColCount="2">
                    <Items>
                        <dx:LayoutGroup Caption="Account Details" ColCount="3">
                            <Items>
                                <dx:LayoutItem FieldName="CustomerID" Caption="Source">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridLookup ID="ASPxGridLookup2" runat="server" ClientInstanceName="lookup" Value='<%# Bind("RequestID")%>' DataSourceID="SqlCustomer" KeyFieldName="RequestID" AutoGenerateColumns="False"
                                                    TextFormatString="{0};{2};{3};{4}" MultiTextSeparator=", "  OnValueChanged="ASPxGridLookup1_ValueChanged" Width="200px" SelectionMode="Single">
                                                    <ClientSideEvents ValueChanged="onValueChanged" />
                                                    <Columns>
                                                        <dx:GridViewCommandColumn VisibleIndex="0" ShowSelectCheckbox="True">
                                                        </dx:GridViewCommandColumn>
                                                        <dx:GridViewDataTextColumn FieldName="REXID" VisibleIndex="1">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="TIN" VisibleIndex="2">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="3" >
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Firstname" VisibleIndex="4" >
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="LastName" VisibleIndex="5" >
                                                        </dx:GridViewDataTextColumn>
                                                    </Columns>
                                                    <GridViewProperties>
                                                        <Templates>
                                                            <StatusBar>
                                                                <table style="float: right">
                                                                    <tr>
                                                                        <td>
                                                                            <dx:ASPxButton ID="Close" runat="server" AutoPostBack="false" Text="Close"
                                                                                ClientSideEvents-Click="function(s, e) {
                                                                    lookup.ConfirmCurrentSelection();
                                                                    lookup.HideDropDown();
                                                                }" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </StatusBar>
                                                        </Templates>
                                                        <Settings ShowFilterRow="True" ShowStatusBar="Visible" />
                                                    </GridViewProperties>
                                                </dx:ASPxGridLookup>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Product Name" FieldName="ProductName">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement50" runat="server" ColumnID="ProductName" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem FieldName="Deposit_Credit" Caption="Deposit_Credit">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement52" runat="server" ColumnID="Deposit_Credit" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem ColSpan="2" FieldName="VesselName">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                           <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement9" runat="server" ColumnID="VesselName" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem FieldName="TruckNumber">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement6" runat="server" ColumnID="TruckNumber" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Drivers Name" FieldName="DriversName">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement13" runat="server" ColumnID="DriversName" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Drivers Phone Number" FieldName="DriversPhoneNumber">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement1" runat="server" ColumnID="DriversPhoneNumber" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="WithDrawal Debit" FieldName="WithDrawal_Debit">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement2" runat="server" ColumnID="WithDrawal_Debit" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Balance" FieldName="Balance">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement3" runat="server" ColumnID="Balance" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="TankFarm" FieldName="TankFarm">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement4" runat="server" ColumnID="TankFarm" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="QuantityperTon" FieldName="Quantityperton">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement7" runat="server" ColumnID="Quantityperton" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Product Purchased From" FieldName="ProductPurchasedFrom">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement8" runat="server" ColumnID="ITaxpayer.MiddleName" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="LC Form Number" FieldName="LCFormNumber">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement5" runat="server" ColumnID="LCFormNumber" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="LC Value" FieldName="LCValue">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement10" runat="server" ColumnID="LCValue" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="FormN Value" FieldName="FormNvalue">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement11" runat="server" ColumnID="FormNvalue" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Commercial Invoice Value" FieldName="CommercialInvoiceValue">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement12" runat="server" ColumnID="CommercialInvoiceValue" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                 <dx:LayoutItem Caption="Point of Discharge" FieldName="PointofDischarge">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement14" runat="server" ColumnID="PointofDischarge" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Payment Reference" FieldName="PaymentReference">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement15" runat="server" ColumnID="PaymentReference" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                            </Items>
                        </dx:LayoutGroup>
                       </Items>
                    <SettingsItemCaptions Location="Top" />
                </dx:ASPxFormLayout>
            </EditForm>
        </Templates>
        <SettingsEditing Mode="PopupEditForm">
        </SettingsEditing>
        <Settings ShowFilterRow="True" />
        <SettingsBehavior AllowSelectSingleRowOnly="True" AllowSelectByRowClick="True" />
        <SettingsDataSecurity AllowDelete="False" />
        <SettingsPopup>
            <EditForm Modal="True" />
        </SettingsPopup>
        <SettingsText CommandEdit="Edit" PopupEditFormCaption="Edit Transactions Details" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="QuantityID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Deposit_Credit" Caption="Deposit" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="VesselName" Caption="Vessel" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TruckNumber" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="DriversName" Visible="false" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="DriversPhoneNumber" Visible="false" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="WithDrawal_Debit" Caption="WithDrawal" VisibleIndex="8">
            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0.00">
            </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Balance" VisibleIndex="9">
            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
            </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TankFarm" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Quantityperton" Caption="QuantityPerTon" Visible="false" VisibleIndex="11">
            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0.00">
            </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductPurchasedFrom" Caption="PurchasedFrom" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LCFormNumber" Visible="false" VisibleIndex="13">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LCValue" Visible="false" VisibleIndex="14">
            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0.00">
            </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="FormNvalue" Visible="false" VisibleIndex="15">
            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0.00">
            </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CommercialInvoiceValue" Caption="Invoice"  VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PointofDischarge" VisibleIndex="17">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="CustomerID" VisibleIndex="18">
            <PropertiesComboBox DataSourceID="SqlCustomer" TextField="CompanyName" ValueField="RequestID">
            </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="PaymentReference" Visible="false" VisibleIndex="19">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="Status" VisibleIndex="20">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn FieldName="CreateDate" VisibleIndex="21">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="CreatedBy" Visible="false" VisibleIndex="22">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Customer] WHERE [RequestID] = @RequestID" InsertCommand="INSERT INTO [Customer] ([REXID], [TIN], [Firstname], [LastName], [Designation], [CompanyName], [DateOfIncorporation], [DateOfCommencement], [BVN], [Address], [Email], [Phone1], [Phone2], [ContractDate], [AssignedTo], [BusinessLineID], [LGAID], [StateID], [Status], [CreatedBy], [CreatedDate], [CreditLine], [Shareholding], [StaffStrength], [TankFarms], [Vessels], [Trucks], [FillingStations], [Bankers], [AuditedAccounts], [CompanyAuditors], [AttachedAuditedAccounts], [CompanyTurnover], [SecurityDeposit], [PaymentType], [CashLocation], [CashOwner], [Walkin], [MarketedByWhom], [IntroducedByWhom], [SuppliersList], [TopFiveclients], [RemitMoneyForSanctionedCountry], [PerformThirdPartyBusinessTransaction], [AnySubsidiaryInSanctionCountry], [CountryOfProductTrade], [CountryImportedGoodsandServices], [CountryExportedGoodsandServices], [CountryTransitOfGoodsandService], [YourCustomers], [YourProducts], [TotalsalesOfClients], [TotalPurchasesofClient], [TotalAssetsoftheClient], [TotalOperatingIncomeofClient], [LicenseforConductedTransactions], [TransactwithSanctionedCountries], [BanksUsedtoTransactwithSanctionedCountries], [PlanToGrowMaintainorReduceBusinesswithSanctionCountries], [AcceptTermsandConditions]) VALUES (@REXID, @TIN, @Firstname, @LastName, @Designation, @CompanyName, @DateOfIncorporation, @DateOfCommencement, @BVN, @Address, @Email, @Phone1, @Phone2, @ContractDate, @AssignedTo, @BusinessLineID, @LGAID, @StateID, @Status, @CreatedBy, @CreatedDate, @CreditLine, @Shareholding, @StaffStrength, @TankFarms, @Vessels, @Trucks, @FillingStations, @Bankers, @AuditedAccounts, @CompanyAuditors, @AttachedAuditedAccounts, @CompanyTurnover, @SecurityDeposit, @PaymentType, @CashLocation, @CashOwner, @Walkin, @MarketedByWhom, @IntroducedByWhom, @SuppliersList, @TopFiveclients, @RemitMoneyForSanctionedCountry, @PerformThirdPartyBusinessTransaction, @AnySubsidiaryInSanctionCountry, @CountryOfProductTrade, @CountryImportedGoodsandServices, @CountryExportedGoodsandServices, @CountryTransitOfGoodsandService, @YourCustomers, @YourProducts, @TotalsalesOfClients, @TotalPurchasesofClient, @TotalAssetsoftheClient, @TotalOperatingIncomeofClient, @LicenseforConductedTransactions, @TransactwithSanctionedCountries, @BanksUsedtoTransactwithSanctionedCountries, @PlanToGrowMaintainorReduceBusinesswithSanctionCountries, @AcceptTermsandConditions)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [REXID] = @REXID, [TIN] = @TIN, [Firstname] = @Firstname, [LastName] = @LastName, [Designation] = @Designation, [CompanyName] = @CompanyName, [DateOfIncorporation] = @DateOfIncorporation, [DateOfCommencement] = @DateOfCommencement, [BVN] = @BVN, [Address] = @Address, [Email] = @Email, [Phone1] = @Phone1, [Phone2] = @Phone2, [ContractDate] = @ContractDate, [AssignedTo] = @AssignedTo, [BusinessLineID] = @BusinessLineID, [LGAID] = @LGAID, [StateID] = @StateID, [Status] = @Status, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate, [CreditLine] = @CreditLine, [Shareholding] = @Shareholding, [StaffStrength] = @StaffStrength, [TankFarms] = @TankFarms, [Vessels] = @Vessels, [Trucks] = @Trucks, [FillingStations] = @FillingStations, [Bankers] = @Bankers, [AuditedAccounts] = @AuditedAccounts, [CompanyAuditors] = @CompanyAuditors, [AttachedAuditedAccounts] = @AttachedAuditedAccounts, [CompanyTurnover] = @CompanyTurnover, [SecurityDeposit] = @SecurityDeposit, [PaymentType] = @PaymentType, [CashLocation] = @CashLocation, [CashOwner] = @CashOwner, [Walkin] = @Walkin, [MarketedByWhom] = @MarketedByWhom, [IntroducedByWhom] = @IntroducedByWhom, [SuppliersList] = @SuppliersList, [TopFiveclients] = @TopFiveclients, [RemitMoneyForSanctionedCountry] = @RemitMoneyForSanctionedCountry, [PerformThirdPartyBusinessTransaction] = @PerformThirdPartyBusinessTransaction, [AnySubsidiaryInSanctionCountry] = @AnySubsidiaryInSanctionCountry, [CountryOfProductTrade] = @CountryOfProductTrade, [CountryImportedGoodsandServices] = @CountryImportedGoodsandServices, [CountryExportedGoodsandServices] = @CountryExportedGoodsandServices, [CountryTransitOfGoodsandService] = @CountryTransitOfGoodsandService, [YourCustomers] = @YourCustomers, [YourProducts] = @YourProducts, [TotalsalesOfClients] = @TotalsalesOfClients, [TotalPurchasesofClient] = @TotalPurchasesofClient, [TotalAssetsoftheClient] = @TotalAssetsoftheClient, [TotalOperatingIncomeofClient] = @TotalOperatingIncomeofClient, [LicenseforConductedTransactions] = @LicenseforConductedTransactions, [TransactwithSanctionedCountries] = @TransactwithSanctionedCountries, [BanksUsedtoTransactwithSanctionedCountries] = @BanksUsedtoTransactwithSanctionedCountries, [PlanToGrowMaintainorReduceBusinesswithSanctionCountries] = @PlanToGrowMaintainorReduceBusinesswithSanctionCountries, [AcceptTermsandConditions] = @AcceptTermsandConditions WHERE [RequestID] = @RequestID">
        <DeleteParameters>
            <asp:Parameter Name="RequestID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="REXID" Type="String" />
            <asp:Parameter Name="TIN" Type="Int32" />
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="DateOfIncorporation" Type="DateTime" />
            <asp:Parameter Name="DateOfCommencement" Type="DateTime" />
            <asp:Parameter Name="BVN" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone1" Type="String" />
            <asp:Parameter Name="Phone2" Type="String" />
            <asp:Parameter Name="ContractDate" Type="DateTime" />
            <asp:Parameter Name="AssignedTo" Type="String" />
            <asp:Parameter Name="BusinessLineID" Type="Int32" />
            <asp:Parameter Name="LGAID" Type="Int32" />
            <asp:Parameter Name="StateID" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="CreditLine" Type="Decimal" />
            <asp:Parameter Name="Shareholding" Type="Decimal" />
            <asp:Parameter Name="StaffStrength" Type="Int32" />
            <asp:Parameter Name="TankFarms" Type="String" />
            <asp:Parameter Name="Vessels" Type="String" />
            <asp:Parameter Name="Trucks" Type="String" />
            <asp:Parameter Name="FillingStations" Type="String" />
            <asp:Parameter Name="Bankers" Type="String" />
            <asp:Parameter Name="AuditedAccounts" Type="Boolean" />
            <asp:Parameter Name="CompanyAuditors" Type="String" />
            <asp:Parameter Name="AttachedAuditedAccounts" Type="Boolean" />
            <asp:Parameter Name="CompanyTurnover" Type="Decimal" />
            <asp:Parameter Name="SecurityDeposit" Type="Decimal" />
            <asp:Parameter Name="PaymentType" Type="Int32" />
            <asp:Parameter Name="CashLocation" Type="String" />
            <asp:Parameter Name="CashOwner" Type="String" />
            <asp:Parameter Name="Walkin" Type="Boolean" />
            <asp:Parameter Name="MarketedByWhom" Type="String" />
            <asp:Parameter Name="IntroducedByWhom" Type="String" />
            <asp:Parameter Name="SuppliersList" Type="String" />
            <asp:Parameter Name="TopFiveclients" Type="String" />
            <asp:Parameter Name="RemitMoneyForSanctionedCountry" Type="String" />
            <asp:Parameter Name="PerformThirdPartyBusinessTransaction" Type="String" />
            <asp:Parameter Name="AnySubsidiaryInSanctionCountry" Type="String" />
            <asp:Parameter Name="CountryOfProductTrade" Type="String" />
            <asp:Parameter Name="CountryImportedGoodsandServices" Type="String" />
            <asp:Parameter Name="CountryExportedGoodsandServices" Type="String" />
            <asp:Parameter Name="CountryTransitOfGoodsandService" Type="String" />
            <asp:Parameter Name="YourCustomers" Type="String" />
            <asp:Parameter Name="YourProducts" Type="String" />
            <asp:Parameter Name="TotalsalesOfClients" Type="Decimal" />
            <asp:Parameter Name="TotalPurchasesofClient" Type="Decimal" />
            <asp:Parameter Name="TotalAssetsoftheClient" Type="Decimal" />
            <asp:Parameter Name="TotalOperatingIncomeofClient" Type="Decimal" />
            <asp:Parameter Name="LicenseforConductedTransactions" Type="String" />
            <asp:Parameter Name="TransactwithSanctionedCountries" Type="String" />
            <asp:Parameter Name="BanksUsedtoTransactwithSanctionedCountries" Type="String" />
            <asp:Parameter Name="PlanToGrowMaintainorReduceBusinesswithSanctionCountries" Type="String" />
            <asp:Parameter Name="AcceptTermsandConditions" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="REXID" Type="String" />
            <asp:Parameter Name="TIN" Type="Int32" />
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="DateOfIncorporation" Type="DateTime" />
            <asp:Parameter Name="DateOfCommencement" Type="DateTime" />
            <asp:Parameter Name="BVN" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone1" Type="String" />
            <asp:Parameter Name="Phone2" Type="String" />
            <asp:Parameter Name="ContractDate" Type="DateTime" />
            <asp:Parameter Name="AssignedTo" Type="String" />
            <asp:Parameter Name="BusinessLineID" Type="Int32" />
            <asp:Parameter Name="LGAID" Type="Int32" />
            <asp:Parameter Name="StateID" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="CreditLine" Type="Decimal" />
            <asp:Parameter Name="Shareholding" Type="Decimal" />
            <asp:Parameter Name="StaffStrength" Type="Int32" />
            <asp:Parameter Name="TankFarms" Type="String" />
            <asp:Parameter Name="Vessels" Type="String" />
            <asp:Parameter Name="Trucks" Type="String" />
            <asp:Parameter Name="FillingStations" Type="String" />
            <asp:Parameter Name="Bankers" Type="String" />
            <asp:Parameter Name="AuditedAccounts" Type="Boolean" />
            <asp:Parameter Name="CompanyAuditors" Type="String" />
            <asp:Parameter Name="AttachedAuditedAccounts" Type="Boolean" />
            <asp:Parameter Name="CompanyTurnover" Type="Decimal" />
            <asp:Parameter Name="SecurityDeposit" Type="Decimal" />
            <asp:Parameter Name="PaymentType" Type="Int32" />
            <asp:Parameter Name="CashLocation" Type="String" />
            <asp:Parameter Name="CashOwner" Type="String" />
            <asp:Parameter Name="Walkin" Type="Boolean" />
            <asp:Parameter Name="MarketedByWhom" Type="String" />
            <asp:Parameter Name="IntroducedByWhom" Type="String" />
            <asp:Parameter Name="SuppliersList" Type="String" />
            <asp:Parameter Name="TopFiveclients" Type="String" />
            <asp:Parameter Name="RemitMoneyForSanctionedCountry" Type="String" />
            <asp:Parameter Name="PerformThirdPartyBusinessTransaction" Type="String" />
            <asp:Parameter Name="AnySubsidiaryInSanctionCountry" Type="String" />
            <asp:Parameter Name="CountryOfProductTrade" Type="String" />
            <asp:Parameter Name="CountryImportedGoodsandServices" Type="String" />
            <asp:Parameter Name="CountryExportedGoodsandServices" Type="String" />
            <asp:Parameter Name="CountryTransitOfGoodsandService" Type="String" />
            <asp:Parameter Name="YourCustomers" Type="String" />
            <asp:Parameter Name="YourProducts" Type="String" />
            <asp:Parameter Name="TotalsalesOfClients" Type="Decimal" />
            <asp:Parameter Name="TotalPurchasesofClient" Type="Decimal" />
            <asp:Parameter Name="TotalAssetsoftheClient" Type="Decimal" />
            <asp:Parameter Name="TotalOperatingIncomeofClient" Type="Decimal" />
            <asp:Parameter Name="LicenseforConductedTransactions" Type="String" />
            <asp:Parameter Name="TransactwithSanctionedCountries" Type="String" />
            <asp:Parameter Name="BanksUsedtoTransactwithSanctionedCountries" Type="String" />
            <asp:Parameter Name="PlanToGrowMaintainorReduceBusinesswithSanctionCountries" Type="String" />
            <asp:Parameter Name="AcceptTermsandConditions" Type="Boolean" />
            <asp:Parameter Name="RequestID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlQuantity" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Quantity] WHERE [QuantityID] = @QuantityID" InsertCommand="INSERT INTO [Quantity] ([ProductName], [Deposit_Credit], [VesselName], [TruckNumber], [DriversName], [DriversPhoneNumber], [WithDrawal_Debit], [Balance], [AttachedWayBill], [TankFarm], [Quantityperton], [ProductPurchasedFrom], [LCFormNumber], [LCValue], [FormNvalue], [CommercialInvoiceValue], [PointofDischarge], [CustomerID], [PaymentReference], [Status], [CreateDate], [CreatedBy]) VALUES (@ProductName, @Deposit_Credit, @VesselName, @TruckNumber, @DriversName, @DriversPhoneNumber, @WithDrawal_Debit, @Balance, @AttachedWayBill, @TankFarm, @Quantityperton, @ProductPurchasedFrom, @LCFormNumber, @LCValue, @FormNvalue, @CommercialInvoiceValue, @PointofDischarge, @CustomerID, @PaymentReference, @Status, @CreateDate, @CreatedBy)" SelectCommand="SELECT * FROM [Quantity]" UpdateCommand="UPDATE [Quantity] SET [ProductName] = @ProductName, [Deposit_Credit] = @Deposit_Credit, [VesselName] = @VesselName, [TruckNumber] = @TruckNumber, [DriversName] = @DriversName, [DriversPhoneNumber] = @DriversPhoneNumber, [WithDrawal_Debit] = @WithDrawal_Debit, [Balance] = @Balance, [AttachedWayBill] = @AttachedWayBill, [TankFarm] = @TankFarm, [Quantityperton] = @Quantityperton, [ProductPurchasedFrom] = @ProductPurchasedFrom, [LCFormNumber] = @LCFormNumber, [LCValue] = @LCValue, [FormNvalue] = @FormNvalue, [CommercialInvoiceValue] = @CommercialInvoiceValue, [PointofDischarge] = @PointofDischarge, [CustomerID] = @CustomerID, [PaymentReference] = @PaymentReference, [Status] = @Status, [CreateDate] = @CreateDate, [CreatedBy] = @CreatedBy WHERE [QuantityID] = @QuantityID">
        <DeleteParameters>
            <asp:Parameter Name="QuantityID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Deposit_Credit" Type="Decimal" />
            <asp:Parameter Name="VesselName" Type="String" />
            <asp:Parameter Name="TruckNumber" Type="String" />
            <asp:Parameter Name="DriversName" Type="String" />
            <asp:Parameter Name="DriversPhoneNumber" Type="String" />
            <asp:Parameter Name="WithDrawal_Debit" Type="Decimal" />
            <asp:Parameter Name="Balance" Type="Decimal" />
            <asp:Parameter Name="AttachedWayBill" Type="Object" />
            <asp:Parameter Name="TankFarm" Type="String" />
            <asp:Parameter Name="Quantityperton" Type="Int32" />
            <asp:Parameter Name="ProductPurchasedFrom" Type="String" />
            <asp:Parameter Name="LCFormNumber" Type="String" />
            <asp:Parameter Name="LCValue" Type="Decimal" />
            <asp:Parameter Name="FormNvalue" Type="Decimal" />
            <asp:Parameter Name="CommercialInvoiceValue" Type="Decimal" />
            <asp:Parameter Name="PointofDischarge" Type="String" />
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="PaymentReference" Type="String" />
            <asp:Parameter Name="Status" Type="Boolean" />
            <asp:Parameter Name="CreateDate" Type="DateTime" />
            <asp:Parameter Name="CreatedBy" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Deposit_Credit" Type="Decimal" />
            <asp:Parameter Name="VesselName" Type="String" />
            <asp:Parameter Name="TruckNumber" Type="String" />
            <asp:Parameter Name="DriversName" Type="String" />
            <asp:Parameter Name="DriversPhoneNumber" Type="String" />
            <asp:Parameter Name="WithDrawal_Debit" Type="Decimal" />
            <asp:Parameter Name="Balance" Type="Decimal" />
            <asp:Parameter Name="AttachedWayBill" Type="Object" />
            <asp:Parameter Name="TankFarm" Type="String" />
            <asp:Parameter Name="Quantityperton" Type="Int32" />
            <asp:Parameter Name="ProductPurchasedFrom" Type="String" />
            <asp:Parameter Name="LCFormNumber" Type="String" />
            <asp:Parameter Name="LCValue" Type="Decimal" />
            <asp:Parameter Name="FormNvalue" Type="Decimal" />
            <asp:Parameter Name="CommercialInvoiceValue" Type="Decimal" />
            <asp:Parameter Name="PointofDischarge" Type="String" />
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="PaymentReference" Type="String" />
            <asp:Parameter Name="Status" Type="Boolean" />
            <asp:Parameter Name="CreateDate" Type="DateTime" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="QuantityID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
