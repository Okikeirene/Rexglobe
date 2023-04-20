<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UserSite.Master" AutoEventWireup="true" CodeBehind="AddTruck.aspx.cs" Inherits="RexLubs.Users.AddTruck" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">


 <asp:SqlDataSource ID="SqlTrucks" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Vechicle] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Vechicle] ([VehicleProvider], [WorkServiceLocation], [VehicleNumber], [TransportationType], [DriverName], [DriverPhoneNumber], [VehicleDetails], [PermitofStates], [PermitExpiryDate], [CreatedBy], [CreatedDate]) VALUES (@VehicleProvider, @WorkServiceLocation, @VehicleNumber, @TransportationType, @DriverName, @DriverPhoneNumber, @VehicleDetails, @PermitofStates, @PermitExpiryDate, @CreatedBy, @CreatedDate)" SelectCommand="SELECT * FROM [Vechicle]" UpdateCommand="UPDATE [Vechicle] SET [VehicleProvider] = @VehicleProvider, [WorkServiceLocation] = @WorkServiceLocation, [VehicleNumber] = @VehicleNumber, [TransportationType] = @TransportationType, [DriverName] = @DriverName, [DriverPhoneNumber] = @DriverPhoneNumber, [VehicleDetails] = @VehicleDetails, [PermitofStates] = @PermitofStates, [PermitExpiryDate] = @PermitExpiryDate, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate WHERE [ID] = @ID">
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
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
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
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<div class="panel panel-primary"> 
            <div class="panel-heading">ADD NEW TRUCK</div>
            <div class="panel-body">

<dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%" ClientInstanceName="formlayout" DataSourceID="SqlTrucks" ColCount="2" OnDataBound="ASPxFormLayout1_DataBound" >
    <Items>
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Vehicle Details">
		<Items>
			<dx:LayoutItem  Caption="Vehicle Provider" FieldName="VehicleProvider" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxComboBox ID="VehicleProvider" runat="server" DataSourceID="SqlVehicleType" IncrementalFilteringMode="Contains" TextField="VehicleProvider" ValueField="ID" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto">
                            </ClearButton>
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="WorkService Location" FieldName="WorkServiceLocation" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxTextBox ID="WorkServiceLocation" runat="server" ClientInstanceName="WorkServiceLocation" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Vehicle Number" FieldName="VehicleNumber"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="VehicleNumber" runat="server" ClientInstanceName="VehicleNumber" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
		</Items>
                                                                   
	</dx:LayoutGroup>
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Description">
		<Items>
            <dx:LayoutItem Caption="Driver Name" FieldName="DriverName"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="DriverName" runat="server" ClientInstanceName="VehicleNumber" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Driver PhoneNumber" FieldName="DriverPhoneNumber"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="DriverPhoneNumber" runat="server" ClientInstanceName="DriverPhoneNumber" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem ColSpan="2" Caption="Transportation Type" FieldName="TransportationType" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                        <dx:ASPxComboBox ID="TransportationType" runat="server" DataSourceID="SqlTransportation" IncrementalFilteringMode="Contains" TextField="TransportationType" ValueField="ID" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto">
                            </ClearButton>
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Vehicle Details" FieldName="VehicleDetails" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxMemo ID="VehicleDetails" runat="server" Height="100px" Width="300px"></dx:ASPxMemo>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Permit of States" FieldName="PermitofStates"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="PermitofStates" runat="server" ClientInstanceName="PermitofStates" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem ColSpan="2" Caption="Permit Expiry Date" FieldName="PermitExpiryDate" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxDateEdit ID="PermitExpiryDate" runat="server" Width="100%" Height="25px">
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
		</Items>
                                                                   
	</dx:LayoutGroup>
    
     <dx:LayoutGroup ColSpan="2" HorizontalAlign="Right" ShowCaption="False">
		<Items>
			<dx:LayoutItem ShowCaption="False" HorizontalAlign="Center">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                        <dx:ASPxButton ID="ASPxButtonSubmit" runat="server" Text="Submit Request" CommandName="New"  OnClick="ASPxButtonSubmit_Click" ClientInstanceName="submit" CssClass="btn btn-primary"  HorizontalAlign="Center" AutoPostBack="False">
                            <ClientSideEvents Click="function(s, e) {
                            ASPxClientEdit.ValidateEditorsInContainer(formlayout);
                            }" />
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
        </Items>
    </dx:LayoutGroup>
    </Items>
<SettingsItemCaptions Location="Top" />
</dx:ASPxFormLayout>

                <asp:SqlDataSource ID="SqlVehicleType" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [VechicleType] WHERE [ID] = @ID" InsertCommand="INSERT INTO [VechicleType] ([VehicleProvider]) VALUES (@VehicleProvider)" SelectCommand="SELECT * FROM [VechicleType]" UpdateCommand="UPDATE [VechicleType] SET [VehicleProvider] = @VehicleProvider WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="VehicleProvider" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="VehicleProvider" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlTransportation" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Transportation] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Transportation] ([TransportationType]) VALUES (@TransportationType)" SelectCommand="SELECT * FROM [Transportation]" UpdateCommand="UPDATE [Transportation] SET [TransportationType] = @TransportationType WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TransportationType" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TransportationType" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
    </div>      
</div>
</asp:Content>
