<%@ Page Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master"  AutoEventWireup="true" CodeBehind="ManageCustomer.aspx.cs" Inherits="RexLubs.Customers.ManageCustomer" %>


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


<%-- <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlCustomers" KeyFieldName="ID" Width="100%">

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>

    <Columns>
        <dx:GridViewCommandColumn ShowNewButtonInHeader="True" VisibleIndex="0">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1" ReadOnly="True">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="BusinessName" VisibleIndex="2">
            <EditFormSettings Visible="False" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="TIN_Number" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="DateOfBirth" VisibleIndex="4">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="PhoneNumber" VisibleIndex="6">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Address" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="8">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="SalesRepresentative" VisibleIndex="10">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="PaymentTerms" VisibleIndex="11">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="TrasactionType" VisibleIndex="12">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="DateofIncorporation" VisibleIndex="13">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn FieldName="TypeOfBusiness" VisibleIndex="14">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="NextOfKinName" VisibleIndex="15">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="NextOfKinPhone" VisibleIndex="16">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ContactPerson" VisibleIndex="17">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ContactPersonEmail" Visible="false" VisibleIndex="18">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ContactPersonGender" Visible="false" VisibleIndex="19">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ContactPersonPhoneNumber" Visible="false" VisibleIndex="20">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CreatedBy" VisibleIndex="21">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="CreatedDate" VisibleIndex="22">
        </dx:GridViewDataDateColumn>
    </Columns>
        
            <SettingsEditing Mode="PopupEditForm">
        </SettingsEditing>
            <SettingsPager Mode="ShowAllRecords" />
                <settings showfilterrow="True" />
                <SettingsPopup>
                    <EditForm Width="800" Modal="true" />
                </SettingsPopup>
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

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

                                                    <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%" DataSourceID="SqlCustomers" ClientInstanceName="formlayout" ColCount="2">
                                                        <Items>

                                                            <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Customer Info">

                                                                <Items>
                                                                    <dx:LayoutItem ColSpan="2" Caption="ID" FieldName="ID" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxTextBox6" runat="server" Text='<%# Bind("ID")%>' ClientInstanceName="ID" ReadOnly="True" Width="100%" Height="25px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem ColSpan="2" Caption="Company Name" FieldName="BusinessName" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxCompanyName" runat="server" Text='<%# Bind("BusinessName")%>' ClientInstanceName="BusinessName" Width="100%" Height="25px">
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
                                                                                <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Text='<%# Bind("TIN_Number")%>' ClientInstanceName="TIN_Number" ReadOnly="True" Width="100%" Height="25px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Date Of Birth" FieldName="DateOfBirth" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" Text='<%# Bind("DateOfBirth")%>' ClientInstanceName="DateOfBirth" ReadOnly="True" Width="100%" Height="25px">
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
                                                                    <dx:LayoutItem FieldName="PhoneNumber" Caption="Phone Number">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" ClientInstanceName="Email" Text='<%# Bind("PhoneNumber")%>'  Width="100%" Height="15px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem FieldName="Address" Caption="Address">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxFormNo" runat="server" Text='<%# Bind("Address")%>' ClientInstanceName="FormNo" Width="100%" Height="25px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="State" FieldName="State"  RequiredMarkDisplayMode="Required" >
				                                                        <LayoutItemNestedControlCollection>
						                                                        <dx:LayoutItemNestedControlContainer>
                                                                                <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" Text='<%# Bind("State")%>' IncrementalFilteringMode="Contains" TextField="Name" ValueField="Name" Width="100%" Height="25px" DataSourceID="SqlState">
                                                                                    <ValidationSettings>
                                                                                        <RequiredField ErrorText="Required" IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxComboBox> 
					                                                        </dx:LayoutItemNestedControlContainer>
				                                                        </LayoutItemNestedControlCollection>
			                                                        </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Country" FieldName="Country"  RequiredMarkDisplayMode="Required" >
				                                                        <LayoutItemNestedControlCollection>
						                                                        <dx:LayoutItemNestedControlContainer> 
                                                                                <dx:ASPxComboBox ID="ASPxComboBox2" runat="server" Text='<%# Bind("Country")%>' IncrementalFilteringMode="Contains" TextField="Name" ValueField="Name" Width="100%" Height="25px" DataSourceID="SqlCountry">
                                                                                        <ValidationSettings>
                                                                                            <RequiredField ErrorText="Required" IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxComboBox> 
					                                                            </dx:LayoutItemNestedControlContainer>
				                                                        </LayoutItemNestedControlCollection>
			                                                        </dx:LayoutItem>
                                                                    <dx:LayoutItem FieldName="SalesRepresentative" Caption="Sales Representative">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxFormTitle" runat="server" Text='<%# Bind("SalesRepresentative")%>' ClientInstanceName="FormTitle" Width="100%" Height="15px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Payment Terms" FieldName="PaymentTerms" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">                                                                                    
                                                                                <dx:ASPxComboBox ID="ASPxComboAssessmentYear" runat="server" Text='<%# Bind("PaymentTerms")%>' IncrementalFilteringMode="Contains" TextField="PaymentType" ValueField="PaymentType" Width="100%" DataSourceID="SqlPaymentTypes">
                                                                                    <ValidationSettings>
                                                                                        <RequiredField ErrorText="Required" IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxComboBox>                                                                               
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Trasaction Type" FieldName="TrasactionType" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                 <dx:ASPxComboBox ID="ASPxComboBox3" runat="server" Text='<%# Bind("TrasactionType")%>' IncrementalFilteringMode="Contains" TextField="Payementerms" ValueField="Payementerms" Width="100%" DataSourceID="SqlPaymentTypes">
                                                                                    <ValidationSettings>
                                                                                        <RequiredField ErrorText="Required" IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxComboBox> 
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Type Of Business" FieldName="TypeOfBusiness">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxComboBox ID="ASPxComboBox4" runat="server" Text='<%# Bind("TypeOfBusiness")%>' IncrementalFilteringMode="Contains" TextField="BusinessLineName" ValueField="BusinessLineId" Width="100%" DataSourceID="SQLBusinessLines">
                                                                                    <ValidationSettings>
                                                                                        <RequiredField ErrorText="Required" IsRequired="True" />
                                                                                    </ValidationSettings>
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
                                                            <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Oter Details">
                                                                <Items>
                                                                    <dx:LayoutItem Caption="Next Of Kin Name" FieldName="NextOfKinName" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxAddress" runat="server" ClientInstanceName="" Text='<%# Bind("NextOfKinName")%>'  Width="100%" Height="15px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>

                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Next Of Kin Phone" FieldName="NextOfKinPhone" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxPhone1" runat="server" ClientInstanceName="NextOfKinPhone" Text='<%# Bind("NextOfKinPhone")%>' Width="100%" Height="15px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>

                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Contact Person Name" FieldName="ContactPerson" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxPhone2" runat="server" ReadOnly="true" ClientInstanceName="Phone2"  Text='<%# Bind("ContactPerson")%>' Width="100%" Height="15px">
                                                                                  
                                                                                </dx:ASPxTextBox>

                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    
                                                                    <dx:LayoutItem Caption="Contact Person Email" FieldName="ContactPersonEmail" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="aspxCreditLine" runat="server" ClientInstanceName="CreditLine" Text='<%# Bind("ContactPersonEmail")%>' NullText="0.00" DisplayFormatString="0.00" Width="100%" Height="15px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>

                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Contact Person PhoneNumber" FieldName="ContactPersonPhoneNumber" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxTextBox ID="ASPxShareholding" runat="server" ClientInstanceName="Shareholding" Text='<%# Bind("ContactPersonPhoneNumber")%>' NullText="0.00" DisplayFormatString="0.00" Width="100%" Height="15px">
                                                                                    <ValidationSettings Display="Dynamic">
                                                                                        <RequiredField IsRequired="True" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>

                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Contact Person Gender" FieldName="ContactPersonGender" RequiredMarkDisplayMode="Required">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxTextBox ID="aspxStaffStrength" runat="server"  ClientInstanceName="StaffStrength" Text='<%# Bind("ContactPersonGender")%>'  Width="100%" Height="15px">
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
                                        <dx:TabPage Name="Attachment" Text="Attachment">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server">
                                                       <dx:ASPxGridView ID="GridViewAttachment" DataSourceID="SQLCustomerFiles" KeyFieldName="FileId" EnableRowsCache="false" Width="100%" runat="server">
                                                        <Columns>
                                                            <%--<dx:GridViewCommandColumn ShowEditButton="false" />
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


    </dx:ASPxGridView>--%>

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlCustomers" KeyFieldName="ID" Width="100%">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BusinessName" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TIN_Number" Caption="TIN" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="DateOfBirth" VisibleIndex="4">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PhoneNumber" Caption="Phone" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Address" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="SalesRepresentative" Caption="Sales Rep" VisibleIndex="10">
               <PropertiesComboBox DataSourceID="SqlSaleRep"  TextField="UserName" ValueField="UserName">                                                     
                                                    
                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">      
                <RequiredField ErrorText="Required" IsRequired="True" />                    
                </ValidationSettings>                                 
                 </PropertiesComboBox>
                <EditFormSettings CaptionLocation="Top" />
             </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="PaymentTerms" VisibleIndex="11">
               <PropertiesComboBox DataSourceID="SqlPaymentTypes"  TextField="PaymentType" ValueField="PaymentType">                                                     
                                                    
                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">      
                <RequiredField ErrorText="Required" IsRequired="True" />                    
                </ValidationSettings>                                 
                 </PropertiesComboBox>
                <EditFormSettings CaptionLocation="Top" />
             </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="TrasactionType" VisibleIndex="12">
               <PropertiesComboBox DataSourceID="SqlPaymentTypes"  TextField="Payementerms" ValueField="Payementerms">                                                     
                                                    
                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">      
                <RequiredField ErrorText="Required" IsRequired="True" />                    
                </ValidationSettings>                                 
                 </PropertiesComboBox>
                <EditFormSettings CaptionLocation="Top" />
             </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataDateColumn FieldName="DateofIncorporation" VisibleIndex="13">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataComboBoxColumn FieldName="TypeOfBusiness" VisibleIndex="14">
               <PropertiesComboBox DataSourceID="SqlBusinessLines"  TextField="BusinessLineName" ValueField="BusinessLineId">                                                     
                                                    
                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">      
                <RequiredField ErrorText="Required" IsRequired="True" />                    
                </ValidationSettings>                                 
                 </PropertiesComboBox>
                <EditFormSettings CaptionLocation="Top" />
             </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="NextOfKinName" Visible="false" VisibleIndex="15">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NextOfKinPhone" Visible="false" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ContactPerson" VisibleIndex="17">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ContactPersonEmail" Caption="Contact Email" VisibleIndex="18">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="ContactPersonGender" Caption="Gender" VisibleIndex="19">
               <PropertiesComboBox DataSourceID="SqlGender"  TextField="Name" ValueField="Name">                                                     
                                                    
                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">      
                <RequiredField ErrorText="Required" IsRequired="True" />                    
                </ValidationSettings>                                 
                 </PropertiesComboBox>
                <EditFormSettings CaptionLocation="Top" />
             </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="ContactPersonPhoneNumber" Caption="Contact Phone" VisibleIndex="20">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CreatedBy" Visible="false"  VisibleIndex="21">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="CreatedDate" Visible="false"  VisibleIndex="22">
            </dx:GridViewDataDateColumn>
        </Columns>
    </dx:ASPxGridView>

    <asp:SqlDataSource ID="SqlCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Customers] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Customers] ([BusinessName], [TIN_Number], [DateOfBirth], [Email], [PhoneNumber], [Address], [State], [Country], [SalesRepresentative], [PaymentTerms], [TrasactionType], [DateofIncorporation], [TypeOfBusiness], [NextOfKinName], [NextOfKinPhone], [ContactPerson], [ContactPersonEmail], [ContactPersonGender], [ContactPersonPhoneNumber], [CreatedBy], [CreatedDate]) VALUES (@BusinessName, @TIN_Number, @DateOfBirth, @Email, @PhoneNumber, @Address, @State, @Country, @SalesRepresentative, @PaymentTerms, @TrasactionType, @DateofIncorporation, @TypeOfBusiness, @NextOfKinName, @NextOfKinPhone, @ContactPerson, @ContactPersonEmail, @ContactPersonGender, @ContactPersonPhoneNumber, @CreatedBy, @CreatedDate)" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [BusinessName] = @BusinessName, [TIN_Number] = @TIN_Number, [DateOfBirth] = @DateOfBirth, [Email] = @Email, [PhoneNumber] = @PhoneNumber, [Address] = @Address, [State] = @State, [Country] = @Country, [SalesRepresentative] = @SalesRepresentative, [PaymentTerms] = @PaymentTerms, [TrasactionType] = @TrasactionType, [DateofIncorporation] = @DateofIncorporation, [TypeOfBusiness] = @TypeOfBusiness, [NextOfKinName] = @NextOfKinName, [NextOfKinPhone] = @NextOfKinPhone, [ContactPerson] = @ContactPerson, [ContactPersonEmail] = @ContactPersonEmail, [ContactPersonGender] = @ContactPersonGender, [ContactPersonPhoneNumber] = @ContactPersonPhoneNumber, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BusinessName" Type="String" />
            <asp:Parameter Name="TIN_Number" Type="String" />
            <asp:Parameter Name="DateOfBirth" Type="DateTime" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="SalesRepresentative" Type="String" />
            <asp:Parameter Name="PaymentTerms" Type="String" />
            <asp:Parameter Name="TrasactionType" Type="String" />
            <asp:Parameter Name="DateofIncorporation" Type="DateTime" />
            <asp:Parameter Name="TypeOfBusiness" Type="String" />
            <asp:Parameter Name="NextOfKinName" Type="String" />
            <asp:Parameter Name="NextOfKinPhone" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="ContactPersonEmail" Type="String" />
            <asp:Parameter Name="ContactPersonGender" Type="String" />
            <asp:Parameter Name="ContactPersonPhoneNumber" Type="String" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BusinessName" Type="String" />
            <asp:Parameter Name="TIN_Number" Type="String" />
            <asp:Parameter Name="DateOfBirth" Type="DateTime" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="SalesRepresentative" Type="String" />
            <asp:Parameter Name="PaymentTerms" Type="String" />
            <asp:Parameter Name="TrasactionType" Type="String" />
            <asp:Parameter Name="DateofIncorporation" Type="DateTime" />
            <asp:Parameter Name="TypeOfBusiness" Type="String" />
            <asp:Parameter Name="NextOfKinName" Type="String" />
            <asp:Parameter Name="NextOfKinPhone" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="ContactPersonEmail" Type="String" />
            <asp:Parameter Name="ContactPersonGender" Type="String" />
            <asp:Parameter Name="ContactPersonPhoneNumber" Type="String" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
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

    <asp:SqlDataSource ID="SqlSaleRep" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID], [UserName] FROM [Employees]">
    </asp:SqlDataSource>

     <asp:SqlDataSource ID="SqlGender" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[Name] FROM [RexGlobe].[dbo].[Gender]">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlLocation" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[LocationName],[State],[Country] FROM [RexGlobe].[dbo].[Location]">
    </asp:SqlDataSource>

     <asp:SqlDataSource ID="SqlCountry" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID] ,[Code],[Name] FROM [RexGlobe].[dbo].[Country]">
    </asp:SqlDataSource> 

     <asp:SqlDataSource ID="SqlPaymentTypes" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [PaymentID],[PaymentType],[PaymentChannel],[Payementerms] FROM [RexGlobe].[dbo].[PaymentTypes]">
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

