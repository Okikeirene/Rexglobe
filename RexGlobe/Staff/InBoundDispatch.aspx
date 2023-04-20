<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="InBoundDispatch.aspx.cs" Inherits="RexLubs.Staff.InBoundDispatch" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

<script>

            function onValueChanged(s, e) {
                hf.Set("LookupValue", s.GetValue()[0]);
            }

 </script>
 <dx:ASPxHiddenField runat="server" ID="hiddenField" ClientInstanceName="hf"></dx:ASPxHiddenField>

<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlInBound" KeyFieldName="In_Bound_ID">
 <ClientSideEvents RowDblClick="function(s, e) {	s.StartEditRow(e.visibleIndex);}" />

<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <Templates>
            <EditForm>
                <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%" DataSourceID="SqlInBound" ClientInstanceName="formlayout" ColCount="2">
                    <Items>
                        <dx:LayoutGroup Caption="Account Details" ColCount="3">
                            <Items>
                                <dx:LayoutItem FieldName="Quantity" Caption="Source">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridLookup ID="ASPxGridLookup2" runat="server" ClientInstanceName="lookup" Value='<%# Bind("QuantityID")%>' DataSourceID="SqlQuantity" KeyFieldName="QuantityID" AutoGenerateColumns="False"
                                                    TextFormatString="{0};{2};{3};{4}" MultiTextSeparator=", "  OnValueChanged="ASPxGridLookup1_ValueChanged" Width="200px" SelectionMode="Single">
                                                    <ClientSideEvents ValueChanged="onValueChanged" />
                                                    <Columns>
                                                        <dx:GridViewCommandColumn VisibleIndex="0" ShowSelectCheckbox="True">
                                                        </dx:GridViewCommandColumn>
                                                        <dx:GridViewDataTextColumn FieldName="QuantityID" VisibleIndex="1">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="PointofDischarge" VisibleIndex="3" >
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Quantityperton" VisibleIndex="4" >
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="TankFarm" VisibleIndex="5" >
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
                                <dx:LayoutItem Caption="Dispatch ID" FieldName="DispatchID">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement50" runat="server" ColumnID="DispatchID" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem FieldName="VehicleID" Caption="Vehicle Number">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement5" runat="server" ColumnID="VehicleID" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem ColSpan="2" FieldName="Region">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                           <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement9" runat="server" ColumnID="Region" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem FieldName="Route_Cities">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement6" runat="server" ColumnID="Route_Cities" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Sender Name" FieldName="BookingID">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement13" runat="server" ColumnID="BookingID" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="WareHouse Agent" FieldName="WareHouseAgent">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement1" runat="server" ColumnID="WareHouseAgent" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="BankStaffatDepo" FieldName="BankStaffatDepo">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement2" runat="server" ColumnID="BankStaffatDepo" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="RexGlobe Staff" FieldName="RexGlobeStaff">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement3" runat="server" ColumnID="RexGlobeStaff" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Name of Depo" FieldName="NameofDepo">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement4" runat="server" ColumnID="NameofDepo" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Company Name" FieldName="CompanyName">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement7" runat="server" ColumnID="CompanyName" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Company Rep" FieldName="CompanyRep">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement8" runat="server" ColumnID="CompanyRep" ReplacementType="EditFormCellEditor" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                            </Items>
                        </dx:LayoutGroup>
                        <dx:LayoutGroup Caption="Record Control" ShowCaption="False">
							<Items>
								<dx:LayoutItem Caption="Save or Cancel" ShowCaption="False">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement10" runat="server" ColumnID="" ReplacementType="EditFormUpdateButton" />
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement11" runat="server" ColumnID="" ReplacementType="EditFormCancelButton" />
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
        <SettingsText CommandEdit="View" PopupEditFormCaption="Edit InBound Dispatch" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
    <Columns>
        <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowEditButton="True" VisibleIndex="0" ShowNewButtonInHeader="True">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="In_Bound_ID" ReadOnly="True" VisibleIndex="1">
            <EditFormSettings Visible="False" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="Source" FieldName="QuantityID" VisibleIndex="2">
            <PropertiesComboBox DataSourceID="SqlQuantity" TextField="BusinessLineName" ValueField="QuantityID">
            </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn FieldName="DispatchID" VisibleIndex="3">
        <PropertiesComboBox DataSourceID="SqlDispatch" TextField="Name" ValueField="ID">
        </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn FieldName="VehicleID" Caption="Vehicle Number" VisibleIndex="4">
        <PropertiesComboBox DataSourceID="SqlVehicles" TextField="VehicleNumber" ValueField="ID">
        </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn FieldName="Region" VisibleIndex="5">
        <PropertiesComboBox DataSourceID="SqlRegion" TextField="Name" ValueField="Region_ID">
        </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataTextColumn FieldName="Route_Cities" Caption="Route Cities" VisibleIndex="6">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn FieldName="BookingID" Caption="Sender Name" VisibleIndex="7">
        <PropertiesComboBox DataSourceID="SqlBooking" TextField="SenderName" ValueField="ID">
        </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataTextColumn FieldName="WareHouseAgent" VisibleIndex="8">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="BankStaffatDepo" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn FieldName="RexGlobeStaff" VisibleIndex="10">
        <PropertiesComboBox DataSourceID="SqlPersonnel" TextField="First_Name" ValueField="Personnel_ID">
        </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataTextColumn FieldName="NameofDepo" VisibleIndex="11">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="12">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CompanyRep" VisibleIndex="13">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="CreatedDate" Visible="false" VisibleIndex="14">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn FieldName="CreatedBy" Visible="false" VisibleIndex="15">
        </dx:GridViewDataTextColumn>
    </Columns>
    </dx:ASPxGridView>
<asp:SqlDataSource ID="SqlDispatch" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [DispatchType] WHERE [ID] = @ID" InsertCommand="INSERT INTO [DispatchType] ([Name]) VALUES (@Name)" SelectCommand="SELECT * FROM [DispatchType]" UpdateCommand="UPDATE [DispatchType] SET [Name] = @Name WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlPersonnel" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Personnel] WHERE [Personnel_ID] = @Personnel_ID" InsertCommand="INSERT INTO [Personnel] ([Personnel_ID], [First_Name], [Middle_Name], [Last_Name], [Gender], [Designation], [Personnel_Type], [Email], [Phone_No], [Status], [User_ID], [Task_Status]) VALUES (@Personnel_ID, @First_Name, @Middle_Name, @Last_Name, @Gender, @Designation, @Personnel_Type, @Email, @Phone_No, @Status, @User_ID, @Task_Status)" SelectCommand="SELECT * FROM [Personnel]" UpdateCommand="UPDATE [Personnel] SET [First_Name] = @First_Name, [Middle_Name] = @Middle_Name, [Last_Name] = @Last_Name, [Gender] = @Gender, [Designation] = @Designation, [Personnel_Type] = @Personnel_Type, [Email] = @Email, [Phone_No] = @Phone_No, [Status] = @Status, [User_ID] = @User_ID, [Task_Status] = @Task_Status WHERE [Personnel_ID] = @Personnel_ID">
        <DeleteParameters>
            <asp:Parameter Name="Personnel_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Personnel_ID" Type="String" />
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Middle_Name" Type="String" />
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Personnel_Type" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone_No" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="User_ID" Type="String" />
            <asp:Parameter Name="Task_Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Middle_Name" Type="String" />
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Personnel_Type" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone_No" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="User_ID" Type="String" />
            <asp:Parameter Name="Task_Status" Type="String" />
            <asp:Parameter Name="Personnel_ID" Type="String" />
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
    <asp:SqlDataSource ID="SqlVehicles" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Vechicle] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Vechicle] ([VehicleProvider], [WorkServiceLocation], [VehicleNumber], [TransportationType], [DriverName], [DriverPhoneNumber], [VehicleDetails], [PermitofStates], [PermitExpiryDate], [CreatedBy], [CreatedDate]) VALUES (@VehicleProvider, @WorkServiceLocation, @VehicleNumber, @TransportationType, @DriverName, @DriverPhoneNumber, @VehicleDetails, @PermitofStates, @PermitExpiryDate, @CreatedBy, @CreatedDate)" SelectCommand="SELECT * FROM [Vechicle]" UpdateCommand="UPDATE [Vechicle] SET [VehicleProvider] = @VehicleProvider, [WorkServiceLocation] = @WorkServiceLocation, [VehicleNumber] = @VehicleNumber, [TransportationType] = @TransportationType, [DriverName] = @DriverName, [DriverPhoneNumber] = @DriverPhoneNumber, [VehicleDetails] = @VehicleDetails, [PermitofStates] = @PermitofStates, [PermitExpiryDate] = @PermitExpiryDate, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="VehicleProvider" Type="Int32" />
            <asp:Parameter Name="WorkServiceLocation" Type="String" />
            <asp:Parameter Name="VehicleNumber" Type="String" />
            <asp:Parameter Name="TransportationType" Type="Int32" />
            <asp:Parameter Name="DriverName" Type="String" />
            <asp:Parameter Name="DriverPhoneNumber" Type="String" />
            <asp:Parameter Name="VehicleDetails" Type="String" />
            <asp:Parameter Name="PermitofStates" Type="String" />
            <asp:Parameter Name="PermitExpiryDate" Type="DateTime" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="VehicleProvider" Type="Int32" />
            <asp:Parameter Name="WorkServiceLocation" Type="String" />
            <asp:Parameter Name="VehicleNumber" Type="String" />
            <asp:Parameter Name="TransportationType" Type="Int32" />
            <asp:Parameter Name="DriverName" Type="String" />
            <asp:Parameter Name="DriverPhoneNumber" Type="String" />
            <asp:Parameter Name="VehicleDetails" Type="String" />
            <asp:Parameter Name="PermitofStates" Type="String" />
            <asp:Parameter Name="PermitExpiryDate" Type="DateTime" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlQuantity" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [Quantity]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlInBound" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [In_Bound_Dispatch] WHERE [In_Bound_ID] = @In_Bound_ID" InsertCommand="INSERT INTO [In_Bound_Dispatch] ([QuantityID], [DispatchID], [VehicleID], [Region], [Route_Cities], [Dispatch_Date_Time], [BookingID], [WareHouseAgent], [BankStaffatDepo], [RexGlobeStaff], [NameofDepo], [CompanyName], [CompanyRep], [CreatedDate], [CreatedBy]) VALUES (@QuantityID, @DispatchID, @VehicleID, @Region, @Route_Cities, @Dispatch_Date_Time, @BookingID, @WareHouseAgent, @BankStaffatDepo, @RexGlobeStaff, @NameofDepo, @CompanyName, @CompanyRep, @CreatedDate, @CreatedBy)" SelectCommand="SELECT * FROM [In_Bound_Dispatch]" UpdateCommand="UPDATE [In_Bound_Dispatch] SET [QuantityID] = @QuantityID, [DispatchID] = @DispatchID, [VehicleID] = @VehicleID, [Region] = @Region, [Route_Cities] = @Route_Cities, [Dispatch_Date_Time] = @Dispatch_Date_Time, [BookingID] = @BookingID, [WareHouseAgent] = @WareHouseAgent, [BankStaffatDepo] = @BankStaffatDepo, [RexGlobeStaff] = @RexGlobeStaff, [NameofDepo] = @NameofDepo, [CompanyName] = @CompanyName, [CompanyRep] = @CompanyRep, [CreatedDate] = @CreatedDate, [CreatedBy] = @CreatedBy WHERE [In_Bound_ID] = @In_Bound_ID">
        <DeleteParameters>
            <asp:Parameter Name="In_Bound_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="QuantityID" Type="Int32" />
            <asp:Parameter Name="DispatchID" Type="Int32" />
            <asp:Parameter Name="VehicleID" Type="Int32" />
            <asp:Parameter Name="Region" Type="String" />
            <asp:Parameter Name="Route_Cities" Type="String" />
            <asp:Parameter DbType="Time" Name="Dispatch_Date_Time" />
            <asp:Parameter Name="BookingID" Type="Int32" />
            <asp:Parameter Name="WareHouseAgent" Type="String" />
            <asp:Parameter Name="BankStaffatDepo" Type="String" />
            <asp:Parameter Name="RexGlobeStaff" Type="String" />
            <asp:Parameter Name="NameofDepo" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="CompanyRep" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="CreatedBy" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="QuantityID" Type="Int32" />
            <asp:Parameter Name="DispatchID" Type="Int32" />
            <asp:Parameter Name="VehicleID" Type="Int32" />
            <asp:Parameter Name="Region" Type="String" />
            <asp:Parameter Name="Route_Cities" Type="String" />
            <asp:Parameter DbType="Time" Name="Dispatch_Date_Time" />
            <asp:Parameter Name="BookingID" Type="Int32" />
            <asp:Parameter Name="WareHouseAgent" Type="String" />
            <asp:Parameter Name="BankStaffatDepo" Type="String" />
            <asp:Parameter Name="RexGlobeStaff" Type="String" />
            <asp:Parameter Name="NameofDepo" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="CompanyRep" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="In_Bound_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>
