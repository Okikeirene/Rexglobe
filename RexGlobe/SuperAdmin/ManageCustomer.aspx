﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="ManageCustomer.aspx.cs" Inherits="RexLubs.SuperAdmin.ManageCustomer" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<script>
    function OnPageControlInit(s, e) {
        var enabled = !gridPPT_JVCAssessment.IsNewRowEditing();
        for (var i = 1; i < s.GetTabCount() ; i++) {
            s.GetTab(i).SetEnabled(enabled);
        }
    }

</script>
<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlCustomers" KeyFieldName="RequestID"  OnStartRowEditing="ASPxGridView1_StartRowEditing"  OnRowInserting="ASPxGridView1_RowInserting" OnRowUpdating="ASPxGridView1_RowUpdating" OnCustomUnboundColumnData="ASPxGridView1_CustomUnboundColumnData" Width="27%">

    <Columns>
        <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="RequestID" ReadOnly="True" VisibleIndex="1">
            <EditFormSettings Visible="False" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="REXID" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="TIN" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Firstname" Visible="false" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="LastName" Visible="false" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Designation" Visible="false" VisibleIndex="6">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="DateOfIncorporation" Visible="false" VisibleIndex="8">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataDateColumn FieldName="DateOfCommencement" Visible="false" VisibleIndex="9">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn FieldName="BVN" Visible="false" VisibleIndex="10">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Address" Visible="false" VisibleIndex="11">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Email" Visible="false" VisibleIndex="12">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Phone1" Visible="false" VisibleIndex="13">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Phone2" Visible="false" VisibleIndex="14">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="ContractDate" VisibleIndex="15">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn FieldName="AssignedTo" VisibleIndex="16">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="BusinessLine ID" FieldName="BusinessLineID" VisibleIndex="17">
            <PropertiesComboBox DataSourceID="SQLBusinessLines"  TextField="BusinessLineName" ValueField="BusinessLineId">                                                     
                                                    
                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                      
                                                        
                                                    
                <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
                </ValidationSettings>                                 
                                                    
             </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataTextColumn FieldName="LGAID" Visible="false" VisibleIndex="18">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="StateID"  VisibleIndex="19">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Status" VisibleIndex="20">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CreatedBy" Visible="false" VisibleIndex="21">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="CreatedDate" Visible="false" VisibleIndex="22">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn FieldName="CreditLine" Visible="false" VisibleIndex="23">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Shareholding" Visible="false" VisibleIndex="24">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="StaffStrength" Visible="false" VisibleIndex="25">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="TankFarms" Visible="false" VisibleIndex="26">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Vessels" Visible="false" VisibleIndex="27">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Trucks" Visible="false" VisibleIndex="28">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="FillingStations" Visible="false" VisibleIndex="29">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Bankers" Visible="false" VisibleIndex="30">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataCheckColumn FieldName="AuditedAccounts" Visible="false" VisibleIndex="31">
        </dx:GridViewDataCheckColumn>
        <dx:GridViewDataTextColumn FieldName="CompanyAuditors" Visible="false" VisibleIndex="32">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataCheckColumn FieldName="AttachedAuditedAccounts" Visible="false" VisibleIndex="33">
        </dx:GridViewDataCheckColumn>
        <dx:GridViewDataTextColumn FieldName="CompanyTurnover" Visible="false" VisibleIndex="34">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="SecurityDeposit" Visible="false" VisibleIndex="35">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="PaymentType" Visible="false" VisibleIndex="36">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CashLocation" Visible="false" VisibleIndex="37">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CashOwner" Visible="false" VisibleIndex="38">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataCheckColumn FieldName="Walkin" Visible="false" VisibleIndex="39">
        </dx:GridViewDataCheckColumn>
        <dx:GridViewDataTextColumn FieldName="MarketedByWhom" Visible="false" VisibleIndex="40">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="IntroducedByWhom" Visible="false" VisibleIndex="41">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="SuppliersList" Visible="false" VisibleIndex="42">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="TopFiveclients" Visible="false" VisibleIndex="43">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="RemitMoneyForSanctionedCountry" Visible="false" VisibleIndex="44">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="PerformThirdPartyBusinessTransaction" Visible="false" VisibleIndex="45">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="AnySubsidiaryInSanctionCountry" Visible="false" VisibleIndex="46">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CountryOfProductTrade" Visible="false" VisibleIndex="47">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CountryImportedGoodsandServices" Visible="false" VisibleIndex="48">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CountryExportedGoodsandServices" Visible="false" VisibleIndex="49">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CountryTransitOfGoodsandService" Visible="false" VisibleIndex="50">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="YourCustomers" Visible="false" VisibleIndex="51">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="YourProducts" Visible="false" VisibleIndex="52">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="TotalsalesOfClients"  VisibleIndex="53">
        <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0.00">
        </PropertiesTextEdit>
        <EditFormSettings Visible="True">
        </EditFormSettings>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="TotalPurchasesofClient" VisibleIndex="54">
        <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0.00">
        </PropertiesTextEdit>
        <EditFormSettings Visible="True">
        </EditFormSettings>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="TotalAssetsoftheClient" VisibleIndex="55">
        <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0.00">
        </PropertiesTextEdit>
        <EditFormSettings Visible="True">
        </EditFormSettings>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="TotalOperatingIncomeofClient" VisibleIndex="56">
        <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0.00">
        </PropertiesTextEdit>
        <EditFormSettings Visible="True">
        </EditFormSettings>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="LicenseforConductedTransactions" Visible="false" VisibleIndex="57">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="TransactwithSanctionedCountries" Visible="false" VisibleIndex="58">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="BanksUsedtoTransactwithSanctionedCountries" Visible="false" VisibleIndex="59">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="PlanToGrowMaintainorReduceBusinesswithSanctionCountries" Visible="false" VisibleIndex="60">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataCheckColumn FieldName="AcceptTermsandConditions" Visible="false" VisibleIndex="61">
        </dx:GridViewDataCheckColumn>
    </Columns>
        
            <SettingsEditing Mode="PopupEditForm">
        </SettingsEditing>
            <SettingsPager Mode="ShowAllRecords" />
                <settings showfilterrow="True" />
                <SettingsPopup>
                    <EditForm Width="800" Modal="true" />
                </SettingsPopup>
                <Templates>
                    <EditForm>
                        <div style="padding: 4px 3px 4px">
                            <div style="text-align: right; padding: 2px">


                                <dx:ASPxPageControl ID="PageControl" runat="server" ActiveTabIndex="0">
                                    <ClientSideEvents Init="OnPageControlInit" />
                                    <TabPages>
                                        <dx:TabPage Name="CustomerInfo" Text="Customer Info">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server">

                                                    <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%" DataSourceID="SQLCustomer" ClientInstanceName="formlayout" ColCount="2">
                                                        <Items>

                                                            <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Customer Info">

                                                                <Items>
                                                                    <dx:LayoutItem ColSpan="2" Caption="Request ID" FieldName="RequestID" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxTextBox6" runat="server" Text='<%# Bind("RequestID")%>' ClientInstanceName="CompanyName" ReadOnly="True" Width="100%" Height="25px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem ColSpan="2" Caption="Company Name" FieldName="CompanyName" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxCompanyName" runat="server" Text='<%# Bind("CompanyName")%>' ClientInstanceName="CompanyName" Width="100%" Height="25px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem  FieldName="TIN" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Text='<%# Bind("TIN")%>' ClientInstanceName="TIN" ReadOnly="True" Width="100%" Height="25px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="REX ID" FieldName="REXID" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" Text='<%# Bind("REXID")%>' ClientInstanceName="REXID" ReadOnly="True" Width="100%" Height="25px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    
                                                                    <dx:LayoutItem FieldName="DateOfIncorporation" Caption="Date Of Incorporation">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxDateEdit ID="ASPxdeD" Value='<%# Bind("DateOfIncorporation")%>' runat="server" Width="100%">
                                                                                    <TimeSectionProperties>
                                                                                        <TimeEditProperties>
                                                                                            <ClearButton Visibility="Auto"></ClearButton>
                                                                                        </TimeEditProperties>
                                                                                    </TimeSectionProperties>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                </dx:ASPxDateEdit>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem FieldName="DateOfCommencement" Caption="Commencement Date">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxDateEdit ID="ASPxDateOfCommencement" Value='<%# Bind("DateOfCommencement")%>' runat="server" Width="100%">
                                                                                    <TimeSectionProperties>
                                                                                        <TimeEditProperties>
                                                                                            <ClearButton Visibility="Auto"></ClearButton>
                                                                                        </TimeEditProperties>
                                                                                    </TimeSectionProperties>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                </dx:ASPxDateEdit>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem FieldName="ContractDate" Caption="Contract Date">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxDateEdit ID="ASPxDateEdit1" Value='<%# Bind("ContractDate")%>' runat="server" Width="100%">
                                                                                    <TimeSectionProperties>
                                                                                        <TimeEditProperties>
                                                                                            <ClearButton Visibility="Auto"></ClearButton>
                                                                                        </TimeEditProperties>
                                                                                    </TimeSectionProperties>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                </dx:ASPxDateEdit>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem FieldName="AssignedTo" Caption="Assigned To">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxFormNo" runat="server" Text='<%# Bind("AssignedTo")%>' ClientInstanceName="FormNo" Width="100%" Height="25px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem FieldName="BVN" Caption="BVN">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxFormTitle" runat="server" Text='<%# Bind("BVN")%>' ClientInstanceName="FormTitle" Width="100%" Height="15px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="BusinessLine" FieldName="BusinessLineId" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">                                                                                    
                                                                                <dx:ASPxComboBox ID="ASPxComboAssessmentYear" runat="server" Text='<%# Bind("BusinessLineId")%>' IncrementalFilteringMode="Contains" TextField="BusinessLineName" ValueField="BusinessLineId" Width="100%" DataSourceID="SQLBusinessLines">
                                                                                    <ValidationSettings>
                                                                                        <RequiredField ErrorText="Required" IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxComboBox>                                                                               
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Business State" FieldName="StateId" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxComboBox ID="ASPxComboBoxState" runat="server" AutoPostBack="True" AutoResizeWithContainer="True" ClientInstanceName="state" DataSourceID="SQLStates" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="Name" ValueField="StateId" Width="100%" Height="25px">
                                                                                        <ClientSideEvents SelectedIndexChanged="function(s, e) {
	                                                                                                    OnStateChanged(s);
                                                                                                    }" />

                                                                                                    <ClearButton Visibility="Auto"></ClearButton>

                                                                                        <ValidationSettings>
                                                                                            <RequiredField ErrorText="Required" IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Business Lga" FieldName="LgaId">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxComboBox ID="ASPxComboBoxLga" runat="server" ClientInstanceName="lga" DataSourceID="SqlLGA" IncrementalFilteringMode="Contains" OnCallback="ASPxComboBoxLga_Callback" TextField="LGAName" ValueField="LGAId" Width="100%" Height="25px">
                                                                                        <ClientSideEvents EndCallback="function(s, e) {
	                                                                                            OnEndCallback
                                                                                            }" />

                                                                                            <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    
                                                                </Items>
                                                            </dx:LayoutGroup>
                                                        </Items>
                                                        <SettingsItemCaptions Location="Top" />
                                                    </dx:ASPxFormLayout>

                                                    <dx:ASPxFormLayout ID="ASPxFormLayout2" runat="server" Width="100%" DataSourceID="SQLCustomer" ClientInstanceName="formlayout" ColCount="2">
                                                        <Items>
                                                            <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Financial Details">
                                                                <Items>
                                                                    <dx:LayoutItem Caption="Address" FieldName="Address" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxAddress" runat="server" ClientInstanceName="" Text='<%# Bind("Address")%>'  Width="100%" Height="15px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>

                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Phone Number1" FieldName="Phone1" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxPhone1" runat="server" ClientInstanceName="Phone1" Text='<%# Bind("Phone1")%>' Width="100%" Height="15px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>

                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Phone Number2" FieldName="Phone2" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxPhone2" runat="server" ReadOnly="true" ClientInstanceName="Phone2"  Text='<%# Bind("Phone2")%>' Width="100%" Height="15px">
                                                                                  
                                                                                </dx:ASPxTextBox>

                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Email" FieldName="Email" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxEmail" runat="server" ClientInstanceName="Email" Text='<%# Bind("Email")%>'  Width="100%" Height="15px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>

                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Credit Line" FieldName="CreditLine" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="aspxCreditLine" runat="server" ClientInstanceName="CreditLine" Text='<%# Bind("CreditLine")%>' NullText="0.00" DisplayFormatString="0.00" Width="100%" Height="15px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>

                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Shareholding" FieldName="Shareholding" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxShareholding" runat="server" ClientInstanceName="Shareholding" Text='<%# Bind("Shareholding")%>' NullText="0.00" DisplayFormatString="0.00" Width="100%" Height="15px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>

                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Staff Strength" FieldName="StaffStrength" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxTextBox ID="aspxStaffStrength" runat="server"  ClientInstanceName="StaffStrength" Text='<%# Bind("StaffStrength")%>'  Width="100%" Height="15px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    
                                                                    
                                                                </Items>
                                                            </dx:LayoutGroup>
                                                        </Items>
                                                        <SettingsItemCaptions Location="Top" />
                                                    </dx:ASPxFormLayout>

                                                    

                                                </dx:ContentControl>
                                            </ContentCollection>
                                        </dx:TabPage>
                                        <dx:TabPage Name="Assets and Location of Assets" Text="Assets and Location of Assets">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server">
                                                            <dx:ASPxFormLayout ID="ASPxFormLayout5" runat="server" Width="100%" ClientInstanceName="formlayout" ColCount="2" DataSourceID="SQLCustomer" OnDataBound="ASPxFormLayout1_DataBound">
                                                            <Items>
                                                                <dx:LayoutGroup Caption="Credit Facility" ColCount="4" ColSpan="2" ShowCaption="False" >
                                                                    <Items>
                                                                        <dx:LayoutItem FieldName="TankFarm" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxMemo ID="ASPxTankFarm" runat="server" Height="75px" Width="100%">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Vessels" FieldName="Vessels" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">                                                                                 
                                                                                    <dx:ASPxMemo ID="ASPxVessels" runat="server" Height="75px" Width="100%">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Trucks" FieldName="Trucks" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                   
                                                                                    <dx:ASPxMemo ID="ASPxMemoTrucks" runat="server" Height="75px" Width="100%">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                         <dx:LayoutItem Caption="Filling Stations" FieldName="FillingStations" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxMemo ID="ASPxMemoFillingStations" runat="server" Height="75px" Width="100%">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                <dx:LayoutGroup Caption="Bank Information" ColCount="4" ColSpan="2">
                                                                    <Items>
                                                                        <dx:LayoutItem FieldName="Banks">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxGridLookup ID="ASPxGridLookup1" runat="server" AutoGenerateColumns="False" DataSourceID="SQLBanks" KeyFieldName="BankCode" Theme="Aqua" SelectionMode="Multiple" TextFormatString="{1}" MultiTextSeparator=", " Width="100%" Height="25px">

                                                                                        <Columns>
                                                                                            <dx:GridViewCommandColumn VisibleIndex="0" ShowSelectCheckbox="True" ShowEditButton="true" ShowNewButton="true" ShowDeleteButton="true">
                                                                                            </dx:GridViewCommandColumn>
                                                                                            <dx:GridViewDataTextColumn FieldName="BankCode" ReadOnly="True" VisibleIndex="1">
                                                                                            </dx:GridViewDataTextColumn>
                                                                                            <dx:GridViewDataTextColumn FieldName="BankName" VisibleIndex="2">
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
                                                                        <dx:LayoutItem Caption="Does the company have audited accounts?" FieldName="AuditedAccounts">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                     <dx:ASPxComboBox ID="ASPxAuditedAccounts" runat="server" DataSourceID="SQLStatus" IncrementalFilteringMode="Contains" TextField="Decision" ValueField="StatusId" Width="100%" Height="25px">
                                                                                        <ClearButton Visibility="Auto">
                                                                                        </ClearButton>
                                                                                        <ValidationSettings>
                                                                                            <RequiredField ErrorText="Required" IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Name of the Company’s Auditors" FieldName="CompanyAuditors" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxCompanyAuditors" runat="server" Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Can we have a copy the audited accounts" FieldName="AttachedAuditedAccounts">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxComboBox ID="ASPxComboAttachedAuditedAccounts" runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="No" Value="No" />
                                                                                            <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        </Items>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="CompanyTurnover" FieldName="CompanyTurnover"  RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxCompanyTurnover" runat="server" ClientInstanceName="textCompanyTurnover"  Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>                                                                                       
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Security Deposit" FieldName="SecurityDeposit" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxComboBox ID="ASPxSecurityDeposit" runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="No" Value="No" />
                                                                                            <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        </Items>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                <dx:LayoutGroup ColCount="2" Caption="Cash Information" Width="50%">
                                                                    <Items>
                                                                        <dx:LayoutItem Caption="Amount" FieldName="Amount"  RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxAmount" runat="server" ClientInstanceName="textAmount"  Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>                                                                                       
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Payment Type" FieldName="PaymentType" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxComboBox ID="ASPxPaymentType" runat="server" AutoPostBack="True" AutoResizeWithContainer="True" ClientInstanceName="PaymentType" DataSourceID="sqlPaymentType" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="PaymentType" ValueField="PaymentID" Width="100%" Height="25px">
                                                                                        <ClearButton Visibility="Auto"></ClearButton>

                                                                                        <ValidationSettings>
                                                                                            <RequiredField ErrorText="Required" IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                <dx:LayoutGroup Caption="Cash Location" ColCount="2" Width="50%">
                                                                    <Items>
                                                                        <dx:LayoutItem Caption="CashLocation" FieldName="CashLocation" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxCashLocation" runat="server" Width="100%" Height="25px">
                                                                                        <ValidationSettings>
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Cash Owner" FieldName="CashOwner" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                     <dx:ASPxComboBox ID="ASPxComboBoxFinYearBegin" runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Own funds" Value="Own funds" />
                                                                                            <dx:ListEditItem Text="Advanced by your Bankers" Value="Advanced by your Bankers" />
                                                                                        </Items> 

                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                            </Items>
                                                            <SettingsItemCaptions Location="Top" />
                                                        </dx:ASPxFormLayout>
                                                </dx:ContentControl>
                                            </ContentCollection>

                                        </dx:TabPage>
                                        <dx:TabPage Name="Mode of Introduction" Text="Mode of Introduction">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server">
                                                            <dx:ASPxFormLayout ID="ASPxFormLayout4" runat="server" Width="100%" DataSourceID="SQLCustomer" ClientInstanceName="formlayout" ColCount="2">
                                                        <Items>
                                                        <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Mode of Introduction">
                                                                <Items>
                                                                    <dx:LayoutGroup Caption="Mode Of Introduction" ColCount="4" ColSpan="2" ShowCaption="True" >
                                                                    <Items>
                                                                        <dx:LayoutItem FieldName="Walkin" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                     <dx:ASPxLabel ID="ASPxLabel11" runat="server" Text="Do you trade in products or services that originate in any of the following countries?"></dx:ASPxLabel>
                                                                                     <dx:ASPxComboBox ID="ASPxComWalkin" runat="server" Text='<%# Bind("Walkin")%>' SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="0" />
                                                                                            <dx:ListEditItem Text="No" Value="0" />
                                                                                            <dx:ListEditItem Text="Yes" Value="1" />
                                                                                        </Items>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Marketed By Whom?" FieldName="MarketedByWhom"  RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                     <%--<dx:ASPxComboBox ID="ASPxComboBox1" runat="server" Text='<%# Bind("MarketedByWhom")%>'  SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="No" Value="No" />
                                                                                            <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        </Items>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>--%>
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox5" Text='<%# Bind("MarketedByWhom")%>'  runat="server" Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Introduced By Whom" FieldName="IntroducedByWhom"  RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxComboBox ID="ASPxComIntroducedByWhom" runat="server" Text='<%# Bind("IntroducedByWhom")%>' SelectedIndex="0"  Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="No" Value="No" />
                                                                                            <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        </Items>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                    <dx:ASPxTextBox ID="ASPxIntdByWhom" Visible="false" runat="server" Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                <dx:LayoutGroup Caption="Projects" ColCount="2">
                                                                    <Items>
                                                                        <dx:LayoutItem Caption="Please provide us your current list of top 5 suppliers" FieldName="SuppliersList">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxMemo ID="ASPxSuppliersList" runat="server" Text='<%# Bind("SuppliersList")%>' Height="100px" Width="100%"></dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Top Five Clients" FieldName="TopFiveclients">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxMemo ID="ASPxTopFiveclients" runat="server"  Text='<%# Bind("TopFiveclients")%>' Height="100px" Width="100%"></dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Do you remit/receive any money directly to/from a sanctioned country. If Yes, elaborate."  FieldName="RemitMoneyForSanctionedCountry" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxLabel ID="RemitMoney" runat="server" Text="Do you remit/receive any money directly to/from a sanctioned country or indirectly via another country or directly or indirectly to/from a sanctioned person? If yes, please elaborate."></dx:ASPxLabel>
                                                                                   <%--<dx:ASPxComboBox ID="ASPxRemitMoneyForSanctionedCountry" runat="server" Text='<%# Bind("TopFiveclients")%>' AutoPostBack="True" AutoResizeWithContainer="True" OnSelectedIndexChanged="ASPxRemitMoneyForSanctionedCountry_SelectedIndexChanged" ClientInstanceName="ASPxRemitMoneyForSanctionedCountry" Width="100%" Height="25px">
                                                                                       <ClearButton Visibility="Auto"></ClearButton>
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="No" Value="No" />
                                                                                            <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        </Items>
                                                                                    </dx:ASPxComboBox>--%>
                                                                                    <dx:ASPxMemo ID="MemoCommentRemitMoneyForSanctionedCountry" Text='<%# Bind("RemitMoneyForSanctionedCountry")%>' runat="server" Height="100px" Width="300px"></dx:ASPxMemo>
                                                                                    
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Do you perform transactions on behalf of a third party? If yes, provide details." FieldName="PerformThirdPartyBusinessTransaction">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxMemo ID="ASPPerformThirdPartyBusinessTransaction" runat="server" Text='<%# Bind("PerformThirdPartyBusinessTransaction")%>' Width="100%" Height="25px">
                                                                                    </dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="AnySubsidiaryInSanctionCountry" Caption="Any Subsidiary In Sanction Country?"  RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                   
                                                                                    
                                                                                     <%--<dx:ASPxComboBox ID="ASPxComAnySubsidiaryCountry" runat="server" Text='<%# Bind("AnySubsidiaryInSanctionCountry")%>' SelectedIndex="0" OnSelectedIndexChanged="ASPxComAnySubsidiaryCountry_SelectedIndexChanged" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="No" Value="No" />
                                                                                            <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        </Items>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>--%>
                                                                                <dx:ASPxMemo ID="ASPxAnySubsidiaryInSanctionCountry" runat="server" Text='<%# Bind("AnySubsidiaryInSanctionCountry")%>' Width="100%" Height="25px" >
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="CountryOfProductTrade" Caption="Country Of Product Trade" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    
                                                                                     <dx:ASPxComboBox ID="ASPxCountryOfProductTrade" Text='<%# Bind("CountryOfProductTrade")%>' runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="Cuba" Value="Cuba" />
                                                                                            <dx:ListEditItem Text="Burma/Myanmar" Value="Burma/Myanmar" />
                                                                                            <dx:ListEditItem Text="Iran" Value="Iran" />
                                                                                            <dx:ListEditItem Text="North Korea (DPKR)" Value="North Korea (DPKR)" />
                                                                                            <dx:ListEditItem Text="Sudan (North or South)" Value="Sudan (North or South)" />
                                                                                            <dx:ListEditItem Text="Syria" Value="Syria" />
                                                                                            <dx:ListEditItem Text="Crimea (Ukraine)" Value="Crimea (Ukraine)" />
                                                                                            <dx:ListEditItem Text="Israel" Value="Israel" />
                                                                                        </Items>

                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="CountryImportedGoodsandServices" Caption="Country Imported Goods and Services" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                     <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="Do you import goods or services of any origin from or which transit through  any of the following countries?"></dx:ASPxLabel>
                                                                                     <dx:ASPxComboBox ID="ASPxCountryImportedGoodsandServices" Text='<%# Bind("CountryImportedGoodsandServices")%>' runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="Cuba" Value="Cuba" />
                                                                                            <dx:ListEditItem Text="Burma/Myanmar" Value="Burma/Myanmar" />
                                                                                            <dx:ListEditItem Text="Iran" Value="Iran" />
                                                                                            <dx:ListEditItem Text="North Korea (DPKR)" Value="North Korea (DPKR)" />
                                                                                            <dx:ListEditItem Text="Sudan (North or South)" Value="Sudan (North or South)" />
                                                                                            <dx:ListEditItem Text="Syria" Value="Syria" />
                                                                                            <dx:ListEditItem Text="Crimea (Ukraine)" Value="Crimea (Ukraine)" />
                                                                                            <dx:ListEditItem Text="Israel" Value="Israel" />
                                                                                        </Items>

                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="CountryExportedGoodsandServices" Caption="Country Exported Goods and Services" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="Do you export or re-export any goods or services either directly  or indirectly to any of the following countries?"></dx:ASPxLabel>
                                                                                     <dx:ASPxComboBox ID="ASPxComboBox4" runat="server" Text='<%# Bind("CountryExportedGoodsandServices")%>' SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="Cuba" Value="Cuba" />
                                                                                            <dx:ListEditItem Text="Burma/Myanmar" Value="Burma/Myanmar" />
                                                                                            <dx:ListEditItem Text="Iran" Value="Iran" />
                                                                                            <dx:ListEditItem Text="North Korea (DPKR)" Value="North Korea (DPKR)" />
                                                                                            <dx:ListEditItem Text="Sudan (North or South)" Value="Sudan (North or South)" />
                                                                                            <dx:ListEditItem Text="Syria" Value="Syria" />
                                                                                            <dx:ListEditItem Text="Crimea (Ukraine)" Value="Crimea (Ukraine)" />
                                                                                            <dx:ListEditItem Text="Israel" Value="Israel" />
                                                                                        </Items>

                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="CountryTransitOfGoodsandService" Caption="Country Transit Of Goods and Service" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="Do you export or re-export any goods or services which transit  through any of the following countries?"></dx:ASPxLabel>
                                                                                     <dx:ASPxComboBox ID="ASPxComboBox5" Text='<%# Bind("CountryTransitOfGoodsandService")%>' runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="Cuba" Value="Cuba" />
                                                                                            <dx:ListEditItem Text="Burma/Myanmar" Value="Burma/Myanmar" />
                                                                                            <dx:ListEditItem Text="Iran" Value="Iran" />
                                                                                            <dx:ListEditItem Text="North Korea (DPKR)" Value="North Korea (DPKR)" />
                                                                                            <dx:ListEditItem Text="Sudan (North or South)" Value="Sudan (North or South)" />
                                                                                            <dx:ListEditItem Text="Syria" Value="Syria" />
                                                                                            <dx:ListEditItem Text="Crimea (Ukraine)" Value="Crimea (Ukraine)" />
                                                                                            <dx:ListEditItem Text="Israel" Value="Israel" />
                                                                                        </Items>

                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>


                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                </Items>
                                                        </dx:LayoutGroup>
                                                        </Items>
                                                        <SettingsItemCaptions Location="Top" />
                                                    </dx:ASPxFormLayout>
                                                </dx:ContentControl>
                                            </ContentCollection>

                                        </dx:TabPage>
                                        <dx:TabPage Name="Other Information" Text="Other Information">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server">
                                                    <dx:ASPxFormLayout ID="ASPxFormLayout3" runat="server" Width="100%" DataSourceID="SQLCustomer" ClientInstanceName="formlayout" ColCount="2">
                                                        <Items>
                                                                <dx:LayoutGroup ColSpan="2" Caption="If any of your responses to questions (e, f, g or h) is “YES”, please provide additional " Width="100%">
                                                                    <Items>
                                                                        <dx:LayoutItem caption="What is the nature of your customers transaction in the sanctioned country?" FieldName="YourCustomers" RequiredMarkDisplayMode="Required" Width="50%">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxMemo ID="ASPxMemo1" runat="server" Text='<%# Bind("YourCustomers")%>' Height="100px" Width="300px"></dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem  FieldName="YourProducts" Caption="What are the goods/products? For supplies from a sanctioned country, confirm if any goods products originated in the U.S." RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <%--<dx:ASPxLabel ID="ASPxLabel9" runat="server"  Width="100%" Height="25px" Text="What are the goods/products? For supplies from a sanctioned country describe the product and list the destination(s) to which they are sent. For supplies to a sanctioned country, list country/ies of origin and confirm if any goods products originated in the U.S."></dx:ASPxLabel>--%>
                                                                                    <dx:ASPxMemo ID="ASPxMemo6" runat="server" Text='<%# Bind("YourProducts")%>' Height="100px" Width="300px"></dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="TotalsalesOfClients" Caption="Total sales of client (USDm)">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox14" runat="server" Text='<%# Bind("TotalsalesOfClients")%>' ClientInstanceName="textAmount"  Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>                                                                                       
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                <dx:LayoutGroup Caption="Purchase Information" ColCount="2" Width="100%">
                                                                    <Items>
                                                                        <dx:LayoutItem Caption="Total purchases of client (USDm)" FieldName="TotalPurchasesofClient" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox17" runat="server" ClientInstanceName="textAmount" Text='<%# Bind("TotalPurchasesofClient")%>' Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>                                                                                       
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Total Assets of the Client (USDm)" FieldName="TotalAssetsoftheClient" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                   <dx:ASPxTextBox ID="ASPxTextBox13" runat="server" ClientInstanceName="textAmount" Text='<%# Bind("TotalAssetsoftheClient")%>' Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>                                                                                       
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Total operating income of client (USDm)" FieldName="TotalOperatingIncomeofClient">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox20" runat="server" ClientInstanceName="textAmount" Text='<%# Bind("TotalOperatingIncomeofClient")%>' Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>                                                                                       
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="LicenseforConductedTransactions" Caption="Do you hold any specific licenses(OFAC) to conduct these transactions? ">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox23" runat="server" Text='<%# Bind("LicenseforConductedTransactions")%>'  Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="TransactwithSanctionedCountries" Caption="Do you transact with Sanctioned Countries?" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox24" runat="server" Text='<%# Bind("TransactwithSanctionedCountries")%>'  Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                         <dx:LayoutItem FieldName="BanksUsedtoTransactwithSanctionedCountries" Caption="Banks Used to Transact with Sanctioned Countries" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" Text='<%# Bind("BanksUsedtoTransactwithSanctionedCountries")%>'  Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                         <dx:LayoutItem FieldName="PlanToGrowMaintainorReduceBusinesswithSanctionCountries" Caption="Plan To Grow or Maintain or Reduce Business with Sanction Countries" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox4" runat="server" Text='<%# Bind("PlanToGrowMaintainorReduceBusinesswithSanctionCountries")%>'  Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                        </Items>
                                                    </dx:ASPxFormLayout>                                                            
                                                </dx:ContentControl>
                                            </ContentCollection>

                                        </dx:TabPage>
                                        <dx:TabPage Name="Attachment" Text="Attachment">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server">
                                                       <dx:ASPxGridView ID="GridViewAttachment" DataSourceID="SQLCustomerFiles" KeyFieldName="FileId" EnableRowsCache="false" Width="100%" runat="server">
                                                        <Columns>
                                                            <%--<dx:GridViewCommandColumn ShowEditButton="false" />--%>
                                                            <dx:GridViewDataTextColumn FieldName="FileName" />
                                                            <dx:GridViewDataTextColumn FieldName="FileDescription" />
                                                            <dx:GridViewDataTextColumn FieldName="RequestId" Visible="false" />
                                                            <dx:GridViewDataBinaryImageColumn FieldName="FileContent">
                                                                <PropertiesBinaryImage ImageHeight="300px" ImageWidth="250px">
                                                                    <EditingSettings Enabled="false" UploadSettings-UploadValidationSettings-MaxFileSize="10194304"/> 
                                                                </PropertiesBinaryImage>
                                                            </dx:GridViewDataBinaryImageColumn>
                        
                                                        </Columns>
                                                        <SettingsPager PageSize="3"></SettingsPager>
                                                        <SettingsEditing UseFormLayout="False" Mode="EditForm" EditFormColumnCount="3"></SettingsEditing>
                                                        <EditFormLayoutProperties ColCount="3">
                                                            <Items>
                                                                <dx:GridViewColumnLayoutItem ColumnName="FileName"/>
                                                                <dx:GridViewColumnLayoutItem ColumnName="FileDescription"/>
                                                                <dx:GridViewColumnLayoutItem ColumnName="FileContent" RowSpan="4" ShowCaption="False" HelpText="You can upload JPG, GIF or PNG file. Maximum fils size is 4MB." Width="180px"/>
                                                                <dx:EmptyLayoutItem/>
                                                                <dx:EditModeCommandLayoutItem ShowCancelButton="true" ShowUpdateButton="true" HorizontalAlign="Right" />
                                                            </Items>
                                                        </EditFormLayoutProperties>
                                                    </dx:ASPxGridView>       
                                                </dx:ContentControl>
                                            </ContentCollection>

                                        </dx:TabPage>
                                        
                                      </TabPages>
                                </dx:ASPxPageControl>
                            </div>
                            <dx:ASPxGridViewTemplateReplacement ID="UpdateButton" ReplacementType="EditFormUpdateButton"
                                runat="server"></dx:ASPxGridViewTemplateReplacement>
                            <dx:ASPxGridViewTemplateReplacement ID="CancelButton" ReplacementType="EditFormCancelButton"
                                runat="server"></dx:ASPxGridViewTemplateReplacement>
                        </div>
                    </EditForm>
                </Templates>


    </dx:ASPxGridView>

    <asp:SqlDataSource ID="SqlCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Customer] WHERE [RequestID] = @RequestID" InsertCommand="INSERT INTO [Customer] ([REXID], [TIN], [Firstname], [LastName], [Designation], [CompanyName], [DateOfIncorporation], [DateOfCommencement], [BVN], [Address], [Email], [Phone1], [Phone2], [ContractDate], [AssignedTo], [BusinessLineID], [LGAID], [StateID], [Status], [CreatedBy], [CreatedDate], [CreditLine], [Shareholding], [StaffStrength], [TankFarms], [Vessels], [Trucks], [FillingStations], [Bankers], [AuditedAccounts], [CompanyAuditors], [AttachedAuditedAccounts], [CompanyTurnover], [SecurityDeposit], [PaymentType], [CashLocation], [CashOwner], [Walkin], [MarketedByWhom], [IntroducedByWhom], [SuppliersList], [TopFiveclients], [RemitMoneyForSanctionedCountry], [PerformThirdPartyBusinessTransaction], [AnySubsidiaryInSanctionCountry], [CountryOfProductTrade], [CountryImportedGoodsandServices], [CountryExportedGoodsandServices], [CountryTransitOfGoodsandService], [YourCustomers], [YourProducts], [TotalsalesOfClients], [TotalPurchasesofClient], [TotalAssetsoftheClient], [TotalOperatingIncomeofClient], [LicenseforConductedTransactions], [TransactwithSanctionedCountries], [BanksUsedtoTransactwithSanctionedCountries], [PlanToGrowMaintainorReduceBusinesswithSanctionCountries], [AcceptTermsandConditions]) VALUES (@REXID, @TIN, @Firstname, @LastName, @Designation, @CompanyName, @DateOfIncorporation, @DateOfCommencement, @BVN, @Address, @Email, @Phone1, @Phone2, @ContractDate, @AssignedTo, @BusinessLineID, @LGAID, @StateID, @Status, @CreatedBy, @CreatedDate, @CreditLine, @Shareholding, @StaffStrength, @TankFarms, @Vessels, @Trucks, @FillingStations, @Bankers, @AuditedAccounts, @CompanyAuditors, @AttachedAuditedAccounts, @CompanyTurnover, @SecurityDeposit, @PaymentType, @CashLocation, @CashOwner, @Walkin, @MarketedByWhom, @IntroducedByWhom, @SuppliersList, @TopFiveclients, @RemitMoneyForSanctionedCountry, @PerformThirdPartyBusinessTransaction, @AnySubsidiaryInSanctionCountry, @CountryOfProductTrade, @CountryImportedGoodsandServices, @CountryExportedGoodsandServices, @CountryTransitOfGoodsandService, @YourCustomers, @YourProducts, @TotalsalesOfClients, @TotalPurchasesofClient, @TotalAssetsoftheClient, @TotalOperatingIncomeofClient, @LicenseforConductedTransactions, @TransactwithSanctionedCountries, @BanksUsedtoTransactwithSanctionedCountries, @PlanToGrowMaintainorReduceBusinesswithSanctionCountries, @AcceptTermsandConditions)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [REXID] = @REXID, [TIN] = @TIN, [Firstname] = @Firstname, [LastName] = @LastName, [Designation] = @Designation, [CompanyName] = @CompanyName, [DateOfIncorporation] = @DateOfIncorporation, [DateOfCommencement] = @DateOfCommencement, [BVN] = @BVN, [Address] = @Address, [Email] = @Email, [Phone1] = @Phone1, [Phone2] = @Phone2, [ContractDate] = @ContractDate, [AssignedTo] = @AssignedTo, [BusinessLineID] = @BusinessLineID, [LGAID] = @LGAID, [StateID] = @StateID, [Status] = @Status, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate, [CreditLine] = @CreditLine, [Shareholding] = @Shareholding, [StaffStrength] = @StaffStrength, [TankFarms] = @TankFarms, [Vessels] = @Vessels, [Trucks] = @Trucks, [FillingStations] = @FillingStations, [Bankers] = @Bankers, [AuditedAccounts] = @AuditedAccounts, [CompanyAuditors] = @CompanyAuditors, [AttachedAuditedAccounts] = @AttachedAuditedAccounts, [CompanyTurnover] = @CompanyTurnover, [SecurityDeposit] = @SecurityDeposit, [PaymentType] = @PaymentType, [CashLocation] = @CashLocation, [CashOwner] = @CashOwner, [Walkin] = @Walkin, [MarketedByWhom] = @MarketedByWhom, [IntroducedByWhom] = @IntroducedByWhom, [SuppliersList] = @SuppliersList, [TopFiveclients] = @TopFiveclients, [RemitMoneyForSanctionedCountry] = @RemitMoneyForSanctionedCountry, [PerformThirdPartyBusinessTransaction] = @PerformThirdPartyBusinessTransaction, [AnySubsidiaryInSanctionCountry] = @AnySubsidiaryInSanctionCountry, [CountryOfProductTrade] = @CountryOfProductTrade, [CountryImportedGoodsandServices] = @CountryImportedGoodsandServices, [CountryExportedGoodsandServices] = @CountryExportedGoodsandServices, [CountryTransitOfGoodsandService] = @CountryTransitOfGoodsandService, [YourCustomers] = @YourCustomers, [YourProducts] = @YourProducts, [TotalsalesOfClients] = @TotalsalesOfClients, [TotalPurchasesofClient] = @TotalPurchasesofClient, [TotalAssetsoftheClient] = @TotalAssetsoftheClient, [TotalOperatingIncomeofClient] = @TotalOperatingIncomeofClient, [LicenseforConductedTransactions] = @LicenseforConductedTransactions, [TransactwithSanctionedCountries] = @TransactwithSanctionedCountries, [BanksUsedtoTransactwithSanctionedCountries] = @BanksUsedtoTransactwithSanctionedCountries, [PlanToGrowMaintainorReduceBusinesswithSanctionCountries] = @PlanToGrowMaintainorReduceBusinesswithSanctionCountries, [AcceptTermsandConditions] = @AcceptTermsandConditions WHERE [RequestID] = @RequestID">
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


        <asp:SqlDataSource ID="SqlStatus" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Status] WHERE [StatusId] = @StatusId" InsertCommand="INSERT INTO [Status] ([Name], [Decision]) VALUES (@Name, @Decision)" SelectCommand="SELECT * FROM [Status]" UpdateCommand="UPDATE [Status] SET [Name] = @Name, [Decision] = @Decision WHERE [StatusId] = @StatusId">
             <DeleteParameters>
                 <asp:Parameter Name="StatusId" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="Name" Type="String" />
                 <asp:Parameter Name="Decision" Type="Boolean" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="Name" Type="String" />
                 <asp:Parameter Name="Decision" Type="Boolean" />
                 <asp:Parameter Name="StatusId" Type="Int32" />
             </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlPaymentType" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [PaymentTypes] WHERE [PaymentID] = @PaymentID" InsertCommand="INSERT INTO [PaymentTypes] ([PaymentType], [PaymentChannel]) VALUES (@PaymentType, @PaymentChannel)" SelectCommand="SELECT * FROM [PaymentTypes]" UpdateCommand="UPDATE [PaymentTypes] SET [PaymentType] = @PaymentType, [PaymentChannel] = @PaymentChannel WHERE [PaymentID] = @PaymentID">
        <DeleteParameters>
            <asp:Parameter Name="PaymentID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PaymentType" Type="String" />
            <asp:Parameter Name="PaymentChannel" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PaymentType" Type="String" />
            <asp:Parameter Name="PaymentChannel" Type="String" />
            <asp:Parameter Name="PaymentID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlLGA" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [LGAs] WHERE [LGAId] = @LGAId" InsertCommand="INSERT INTO [LGAs] ([LGAName], [StateId]) VALUES (@LGAName, @StateId)" SelectCommand="SELECT * FROM [LGAs] WHERE ([StateId] = @StateId)" UpdateCommand="UPDATE [LGAs] SET [LGAName] = @LGAName, [StateId] = @StateId WHERE [LGAId] = @LGAId">
        <DeleteParameters>
            <asp:Parameter Name="LGAId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LGAName" Type="String" />
            <asp:Parameter Name="StateId" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="StateId" QueryStringField="StateID" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="LGAName" Type="String" />
            <asp:Parameter Name="StateId" Type="String" />
            <asp:Parameter Name="LGAId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlCustomerFiles" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [CustomerFiles] WHERE [FileId] = @FileId" InsertCommand="INSERT INTO [CustomerFiles] ([FileId], [RequestId], [FileName], [FileDescription], [FileType], [FileContent], [CreateDate]) VALUES (@FileId, @RequestId, @FileName, @FileDescription, @FileType, @FileContent, @CreateDate)" SelectCommand="SELECT * FROM [CustomerFiles]" UpdateCommand="UPDATE [CustomerFiles] SET [RequestId] = @RequestId, [FileName] = @FileName, [FileDescription] = @FileDescription, [FileType] = @FileType, [FileContent] = @FileContent, [CreateDate] = @CreateDate WHERE [FileId] = @FileId">
        <DeleteParameters>
            <asp:Parameter Name="FileId" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FileId" Type="Object" />
            <asp:Parameter Name="RequestId" Type="Int32" />
            <asp:Parameter Name="FileName" Type="String" />
            <asp:Parameter Name="FileDescription" Type="String" />
            <asp:Parameter Name="FileType" Type="String" />
            <asp:Parameter Name="FileContent" Type="Object" />
            <asp:Parameter Name="CreateDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RequestId" Type="Int32" />
            <asp:Parameter Name="FileName" Type="String" />
            <asp:Parameter Name="FileDescription" Type="String" />
            <asp:Parameter Name="FileType" Type="String" />
            <asp:Parameter Name="FileContent" Type="Object" />
            <asp:Parameter Name="CreateDate" Type="DateTime" />
            <asp:Parameter Name="FileId" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>
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
    
    <asp:SqlDataSource ID="SQLBanks" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [Banks]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlBusinessLines" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [BusinessLines]"></asp:SqlDataSource>


                <asp:SqlDataSource ID="SqlProduct" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Product] ([Code], [ProductName]) VALUES (@Code, @ProductName)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Code] = @Code, [ProductName] = @ProductName WHERE [ProductID] = @ProductID">
                    <DeleteParameters>
                        <asp:Parameter Name="ProductID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Code" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Code" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlBooking" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Booking] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Booking] ([ShipmentID], [SenderName], [SenderEmail], [OriginServiceLocation], [ReceiverName], [ReceiverEmail], [ReceiverDestination], [ReceiverPinCode], [ReceiverRegion], [ReceiverCity], [ServiceLocation], [CreateDate]) VALUES (@ShipmentID, @SenderName, @SenderEmail, @OriginServiceLocation, @ReceiverName, @ReceiverEmail, @ReceiverDestination, @ReceiverPinCode, @ReceiverRegion, @ReceiverCity, @ServiceLocation, @CreateDate)" SelectCommand="SELECT * FROM [Booking]" UpdateCommand="UPDATE [Booking] SET [ShipmentID] = @ShipmentID, [SenderName] = @SenderName, [SenderEmail] = @SenderEmail, [OriginServiceLocation] = @OriginServiceLocation, [ReceiverName] = @ReceiverName, [ReceiverEmail] = @ReceiverEmail, [ReceiverDestination] = @ReceiverDestination, [ReceiverPinCode] = @ReceiverPinCode, [ReceiverRegion] = @ReceiverRegion, [ReceiverCity] = @ReceiverCity, [ServiceLocation] = @ServiceLocation, [CreateDate] = @CreateDate WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ShipmentID" Type="Int32" />
                        <asp:Parameter Name="SenderName" Type="String" />
                        <asp:Parameter Name="SenderEmail" Type="String" />
                        <asp:Parameter Name="OriginServiceLocation" Type="String" />
                        <asp:Parameter Name="ReceiverName" Type="String" />
                        <asp:Parameter Name="ReceiverEmail" Type="String" />
                        <asp:Parameter Name="ReceiverDestination" Type="String" />
                        <asp:Parameter Name="ReceiverPinCode" Type="String" />
                        <asp:Parameter Name="ReceiverRegion" Type="String" />
                        <asp:Parameter Name="ReceiverCity" Type="String" />
                        <asp:Parameter Name="ServiceLocation" Type="String" />
                        <asp:Parameter Name="CreateDate" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ShipmentID" Type="Int32" />
                        <asp:Parameter Name="SenderName" Type="String" />
                        <asp:Parameter Name="SenderEmail" Type="String" />
                        <asp:Parameter Name="OriginServiceLocation" Type="String" />
                        <asp:Parameter Name="ReceiverName" Type="String" />
                        <asp:Parameter Name="ReceiverEmail" Type="String" />
                        <asp:Parameter Name="ReceiverDestination" Type="String" />
                        <asp:Parameter Name="ReceiverPinCode" Type="String" />
                        <asp:Parameter Name="ReceiverRegion" Type="String" />
                        <asp:Parameter Name="ReceiverCity" Type="String" />
                        <asp:Parameter Name="ServiceLocation" Type="String" />
                        <asp:Parameter Name="CreateDate" Type="DateTime" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

<asp:SqlDataSource ID="SqlRegion" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Region] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Region] ([Region_ID], [Code], [Name], [Country_ID]) VALUES (@Region_ID, @Code, @Name, @Country_ID)" SelectCommand="SELECT * FROM [Region]" UpdateCommand="UPDATE [Region] SET [Region_ID] = @Region_ID, [Code] = @Code, [Name] = @Name, [Country_ID] = @Country_ID WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Region_ID" Type="Int32" />
            <asp:Parameter Name="Code" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Country_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Region_ID" Type="Int32" />
            <asp:Parameter Name="Code" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Country_ID" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlState" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [States] WHERE [StateID] = @StateID" InsertCommand="INSERT INTO [States] ([StateID], [Name], [Region_ID]) VALUES (@StateID, @Name, @Region_ID)" SelectCommand="SELECT * FROM [States]" UpdateCommand="UPDATE [States] SET [Name] = @Name, [Region_ID] = @Region_ID WHERE [StateID] = @StateID">
        <DeleteParameters>
            <asp:Parameter Name="StateID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StateID" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Region_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Region_ID" Type="Int32" />
            <asp:Parameter Name="StateID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<%-- <asp:EntityDataSource ID="edsLgas" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EntitySetName="LGAs" Select="it.[LGAId], it.[LGAName], it.[StateId]" Where="it.StateId = @StateId">
            <WhereParameters>
                <asp:Parameter Name="StateId"  Type="String" />
            </WhereParameters>
        </asp:EntityDataSource>

 <asp:EntityDataSource ID="edsCustomer" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="Customers" EntityTypeFilter="" Select="" Where="">

        </asp:EntityDataSource>
        <asp:EntityDataSource ID="edsCustomerFiles" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="CustomerFiles" EntityTypeFilter="" Select="" Where="">

        </asp:EntityDataSource>
        <asp:SqlDataSource ID="SQLBanks" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [Banks]"></asp:SqlDataSource>
  
        <asp:EntityDataSource ID="edsStates" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EntitySetName="States" Select="it.[StateId], it.[Name]" >
        </asp:EntityDataSource>
        <asp:EntityDataSource ID="edsLgas" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EntitySetName="LGAs" Select="it.[LGAId], it.[LGAName], it.[StateId]" Where="it.StateId = @StateId">
            <WhereParameters>
                <asp:Parameter Name="StateId"  Type="String" />
            </WhereParameters>
        </asp:EntityDataSource>
 
        <asp:EntityDataSource ID="edsBusinessLines" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EntitySetName="BusinessLines" OrderBy="it.BusinessLineName" Select="it.[BusinessLineId], it.[BusinessLineName]">
        </asp:EntityDataSource>
        <asp:EntityDataSource ID="edsStatus" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EntitySetName="Status" OrderBy="it.Decision" Select="it.[StatusId], it.[Decision]">
        </asp:EntityDataSource>
        
        <asp:EntityDataSource ID="EdsPaymentType" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EntitySetName="PaymentTypes" OrderBy="it.PaymentID" Select="it.[PaymentID], it.[PaymentType]">
        </asp:EntityDataSource>

        <asp:EntityDataSource ID="edsCustomerFiless" runat="server" ConnectionString="name=TAAPsDBContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True"  DefaultContainerName="TAAPsDBContext" EnableFlattening="False" EntitySetName="CustomerFiles"  Where="it.RequestId == @RequestId">
        <WhereParameters>
            <asp:SessionParameter Name="RequestId" SessionField="RequestId" Type="Int32" />
        </WhereParameters>
</asp:EntityDataSource>--%>

</asp:Content>
