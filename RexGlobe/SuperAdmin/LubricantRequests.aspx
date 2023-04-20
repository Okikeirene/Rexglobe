<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="LubricantRequests.aspx.cs" Inherits="RexLubs.SuperAdmin.LubricantRequests" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server" >
    <script type="text/javascript">
        
        

        function HidePopUp(index) {
            popup.HideWindow(popup.GetWindow(index));
        }

        function OnGetRCNo(Value) {
            BusinessName.SetValue(Value[0]);
            BusinessName.SetText(Value[0])
            Email.SetValue(Value[1]);
            Email.SetText(Value[1])
            PhoneNumber.SetValue(Value[2]);
            PhoneNumber.SetText(Value[2])
            Address.SetValue(Value[3]);
            Address.SetText(Value[3])
            State.SetValue(Value[4]);
            State.SetText(Value[4])
            Country.SetValue(Value[5]);
            Country.SetText(Value[5])
            HidePopUp(0);
        }
       
    </script><div class="panel panel-primary"> 
            <div class="panel-heading">Create Lubricant Booking Requests</div>
            <div class="panel-body">

                
<dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%" ClientInstanceName="formlayout" ColCount="2"   OnDataBound="ASPxFormLayout1_DataBound" ColumnCount="2">
    <Items>
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Customer Details">
		<Items>
			<dx:LayoutItem  Caption="Business Name" FieldName="BusinessName" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                       <dx:ASPxComboBox ID="BusinessName" runat="server"  AutoPostBack="True" ClientInstanceName="BusinessName"  AutoResizeWithContainer="True" IncrementalFilteringMode="StartsWith"  EnableIncrementalFiltering="True" TextField="BusinessName" ValueField="BusinessName" Width="100%" Height="25px" DataSourceID="SqlCustomers">
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
			<dx:LayoutItem  Caption="Business Email" FieldName="Email" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxTextBox ID="Email" runat="server" ClientInstanceName="Email" Width="100%" Height="25px">
							<ValidationSettings>
                                <RegularExpression ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Business Phone Number" FieldName="PhoneNumber"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxTextBox ID="PhoneNumber" runat="server" ClientInstanceName="PhoneNumber" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Address" FieldName="Address"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxTextBox ID="Address" runat="server" ClientInstanceName="Address" Width="100%" Height="25px">
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
`                       <dx:ASPxComboBox ID="State" runat="server"  IncrementalFilteringMode="Contains" TextField="Name" ValueField="Name" Width="100%" Height="25px" DataSourceID="SqlState">
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
`                       <dx:ASPxComboBox ID="Country" runat="server"  IncrementalFilteringMode="Contains" TextField="Name" ValueField="Name" Width="100%" Height="25px" DataSourceID="SqlCountry">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Sales Representative" FieldName="SalesRepresentative"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxComboBox ID="SalesRepresentative" runat="server"  IncrementalFilteringMode="Contains" TextField="UserName" ValueField="UserName" Width="100%" Height="25px" DataSourceID="SqlSaleRep">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
		</Items>
                                                                   
	</dx:LayoutGroup>
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Contact Person Details">
		<Items>
			<dx:LayoutItem  Caption="Contact Person Name" FieldName="ContactPerson" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="ContactPerson" runat="server" ClientInstanceName="ContactPerson" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem  Caption="Contact Person Email" FieldName="ContactPersonEmail" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxTextBox ID="ContactPersonEmail" runat="server" ClientInstanceName="ContactPersonEmail" Width="100%" Height="25px">
							<ValidationSettings>
                                <RegularExpression ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Contact Person PhoneNumber" FieldName="ContactPersonPhoneNumber"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxTextBox ID="ContactPersonPhoneNumber" runat="server" ClientInstanceName="ContactPersonPhoneNumber" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>     
        </Items>                                          
	</dx:LayoutGroup>


    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Product Details">
		<Items>
            <dx:LayoutItem ColSpan="2" Caption="Product PriceList" FieldName="ProductList" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
							
                                                                              
                                
					    <dx:ASPxGridLookup ID="ASPxGridLookup1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlProductDescription" KeyFieldName="ID"
                            TextFormatString="{2};{3};{4};{5};{6};{7}" MultiTextSeparator=", " Width="500px" SelectionMode="Single">
                            <GridViewProperties>
                                <SettingsBehavior AllowFocusedRow="True" AllowSelectSingleRowOnly="True" />
                                <EditFormLayoutProperties ColCount="1">
                                </EditFormLayoutProperties>
                            </GridViewProperties>
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ProductCode" ShowInCustomizationForm="True" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ProductName" ShowInCustomizationForm="True" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ProductDescription" ShowInCustomizationForm="True" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="UnitPrice" ShowInCustomizationForm="True" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Units_Price_In_Carton" ShowInCustomizationForm="True" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Units_In_Store" ShowInCustomizationForm="True" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Location" ShowInCustomizationForm="True" VisibleIndex="7">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridLookup>
						
                                                                              
                                
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem ColSpan="2" Caption="Product Name" FieldName="ProductName" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxComboBox ID="ProductName" runat="server" AutoPostBack="False" AutoResizeWithContainer="True" ClientInstanceName="ProductName" DataSourceID="SqlProduct" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="ProductName" ValueField="ProductName" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto"></ClearButton>
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="ProductType" FieldName="ProductType" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxComboBox ID="ProductType" runat="server" AutoPostBack="False" AutoResizeWithContainer="True" ClientInstanceName="ProductName" DataSourceID="SqlProductDescription" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="ProductName" ValueField="ProductName" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto"></ClearButton>
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Product Quantity" FieldName="ProductQuantity"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="ProductQuantity" runat="server" ClientInstanceName="ProductQuantity" Width="100%" Height="25px" NullText="0" DisplayFormatString="0">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem ColSpan="2" Caption="Unit Price" FieldName="UnitPrice" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="UnitPrice" runat="server" ClientInstanceName="UnitPrice" Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Total Amount" FieldName="Total_Amount"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="Total_Amount" runat="server" ClientInstanceName="TotalWeight" Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00" UnboundType="Decimal" UnboundExpression="[ProductQuantity]*[UnitPrice]">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Payment Terms" FieldName="PaymentTerms"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxComboBox ID="PaymentTerms" runat="server" AutoPostBack="False" AutoResizeWithContainer="True" ClientInstanceName="PaymentTerms" DataSourceID="SqlPaymentTypes" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="PaymentType" ValueField="PaymentType" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto"></ClearButton>
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Trasaction Type" FieldName="TrasactionType"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxComboBox ID="TrasactionType" runat="server" AutoPostBack="False" AutoResizeWithContainer="True" ClientInstanceName="TrasactionType" DataSourceID="SqlPaymentTypes" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="Payementerms" ValueField="Payementerms" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto"></ClearButton>
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
		
		</Items>
                                                                   
	</dx:LayoutGroup>

    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Warehouse Details">
		<Items>
			<dx:LayoutItem ColSpan="2" Caption="Warehouse Manager Name" FieldName="WarehouseManagerName" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxComboBox ID="WarehouseManagerName" runat="server"  IncrementalFilteringMode="Contains" TextField="UserName" ValueField="UserName" Width="100%" Height="25px" DataSourceID="SqlSaleRep">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Warehouse Manager Email" FieldName="WarehouseManagerEmail" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer>
						<dx:ASPxTextBox ID="WarehouseManagerEmail" runat="server" ClientInstanceName="WarehouseManagerEmail" Width="100%" Height="25px">
							<ValidationSettings>
                                <RegularExpression ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="WarehouseLocation" FieldName="WarehouseLocation"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                         <dx:ASPxComboBox ID="WarehouseLocation" runat="server"  IncrementalFilteringMode="Contains" TextField="LocationName" ValueField="LocationName" Width="100%" Height="25px" DataSourceID="SqlLocation">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem ColSpan="2" Caption="PickUp Person Name" FieldName="PickUpPersonName" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						 <dx:ASPxTextBox ID="PickUpPersonName" runat="server" ClientInstanceName="PickUpPersonName" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="PickUp Person Phone" FieldName="PickUpPersonPhone" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="PickUpPersonPhone" runat="server" ClientInstanceName="PickUpPersonPhone" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Expected Delivery Date" FieldName="ExpectedDeliveryDate" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxDateEdit ID="ExpectedDeliveryDate" runat="server" ClientInstanceName="ExpectedDeliveryDate" Width="100%" Height="25px">
                            <TimeSectionProperties>
                            <TimeEditProperties>
                            <ClearButton Visibility="Auto"></ClearButton>
                            </TimeEditProperties>
                            </TimeSectionProperties>

                            <ClearButton Visibility="Auto"></ClearButton>

                            <ValidationSettings ValidateOnLeave="False">
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
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

    </div>      
 </div>

    <asp:SqlDataSource ID="SqlShipping" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Shipment] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Shipment] ([Commodity], [Weight], [TotalWeight], [RatePerKG], [Date], [ExpectedDeliveryDate], [ServiceTax], [Freight], [BookingID], [CreatedBy], [CreateDate]) VALUES (@Commodity, @Weight, @TotalWeight, @RatePerKG, @Date, @ExpectedDeliveryDate, @ServiceTax, @Freight, @BookingID, @CreatedBy, @CreateDate)" SelectCommand="SELECT * FROM [Shipment]" UpdateCommand="UPDATE [Shipment] SET [Commodity] = @Commodity, [Weight] = @Weight, [TotalWeight] = @TotalWeight, [RatePerKG] = @RatePerKG, [Date] = @Date, [ExpectedDeliveryDate] = @ExpectedDeliveryDate, [ServiceTax] = @ServiceTax, [Freight] = @Freight, [BookingID] = @BookingID, [CreatedBy] = @CreatedBy, [CreateDate] = @CreateDate WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Commodity" Type="String" />
                        <asp:Parameter Name="Weight" Type="Decimal" />
                        <asp:Parameter Name="TotalWeight" Type="Decimal" />
                        <asp:Parameter Name="RatePerKG" Type="Decimal" />
                        <asp:Parameter Name="Date" Type="DateTime" />
                        <asp:Parameter Name="ExpectedDeliveryDate" Type="DateTime" />
                        <asp:Parameter Name="ServiceTax" Type="Int32" />
                        <asp:Parameter Name="Freight" Type="String" />
                        <asp:Parameter Name="BookingID" Type="Int32" />
                        <asp:Parameter Name="CreatedBy" Type="String" />
                        <asp:Parameter Name="CreateDate" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Commodity" Type="String" />
                        <asp:Parameter Name="Weight" Type="Decimal" />
                        <asp:Parameter Name="TotalWeight" Type="Decimal" />
                        <asp:Parameter Name="RatePerKG" Type="Decimal" />
                        <asp:Parameter Name="Date" Type="DateTime" />
                        <asp:Parameter Name="ExpectedDeliveryDate" Type="DateTime" />
                        <asp:Parameter Name="ServiceTax" Type="Int32" />
                        <asp:Parameter Name="Freight" Type="String" />
                        <asp:Parameter Name="BookingID" Type="Int32" />
                        <asp:Parameter Name="CreatedBy" Type="String" />
                        <asp:Parameter Name="CreateDate" Type="DateTime" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
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
                <asp:SqlDataSource ID="SqlBooking" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [ProductRequest] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ProductRequest] ([BusinessName], [Email], [PhoneNumber], [Address], [State], [Country], [SalesRepresentative], [ContactPerson], [ContactPersonEmail], [ContactPersonPhoneNumber], [ProductName], [ProductType], [UnitPrice], [ProductQuantity], [Total_Amount], [PaymentTerms], [TrasactionType], [WarehouseManagerName], [WarehouseManagerEmail], [WarehouseLocation], [PickUpPersonName], [PickUpPersonPhone], [Status], [ExpectedDeliveryDate], [CreatedBy], [CreatedDate]) VALUES (@BusinessName, @Email, @PhoneNumber, @Address, @State, @Country, @SalesRepresentative, @ContactPerson, @ContactPersonEmail, @ContactPersonPhoneNumber, @ProductName, @ProductType, @UnitPrice, @ProductQuantity, @Total_Amount, @PaymentTerms, @TrasactionType, @WarehouseManagerName, @WarehouseManagerEmail, @WarehouseLocation, @PickUpPersonName, @PickUpPersonPhone, @Status, @ExpectedDeliveryDate, @CreatedBy, @CreatedDate)" SelectCommand="SELECT * FROM [ProductRequest]" UpdateCommand="UPDATE [ProductRequest] SET [BusinessName] = @BusinessName, [Email] = @Email, [PhoneNumber] = @PhoneNumber, [Address] = @Address, [State] = @State, [Country] = @Country, [SalesRepresentative] = @SalesRepresentative, [ContactPerson] = @ContactPerson, [ContactPersonEmail] = @ContactPersonEmail, [ContactPersonPhoneNumber] = @ContactPersonPhoneNumber, [ProductName] = @ProductName, [ProductType] = @ProductType, [UnitPrice] = @UnitPrice, [ProductQuantity] = @ProductQuantity, [Total_Amount] = @Total_Amount, [PaymentTerms] = @PaymentTerms, [TrasactionType] = @TrasactionType, [WarehouseManagerName] = @WarehouseManagerName, [WarehouseManagerEmail] = @WarehouseManagerEmail, [WarehouseLocation] = @WarehouseLocation, [PickUpPersonName] = @PickUpPersonName, [PickUpPersonPhone] = @PickUpPersonPhone, [Status] = @Status, [ExpectedDeliveryDate] = @ExpectedDeliveryDate, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BusinessName" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Country" Type="String" />
                        <asp:Parameter Name="SalesRepresentative" Type="String" />
                        <asp:Parameter Name="ContactPerson" Type="String" />
                        <asp:Parameter Name="ContactPersonEmail" Type="String" />
                        <asp:Parameter Name="ContactPersonPhoneNumber" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductType" Type="String" />
                        <asp:Parameter Name="UnitPrice" Type="Decimal" />
                        <asp:Parameter Name="ProductQuantity" Type="Int32" />
                        <asp:Parameter Name="Total_Amount" Type="Decimal" />
                        <asp:Parameter Name="PaymentTerms" Type="String" />
                        <asp:Parameter Name="TrasactionType" Type="String" />
                        <asp:Parameter Name="WarehouseManagerName" Type="String" />
                        <asp:Parameter Name="WarehouseManagerEmail" Type="String" />
                        <asp:Parameter Name="WarehouseLocation" Type="String" />
                        <asp:Parameter Name="PickUpPersonName" Type="String" />
                        <asp:Parameter Name="PickUpPersonPhone" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="ExpectedDeliveryDate" Type="DateTime" />
                        <asp:Parameter Name="CreatedBy" Type="String" />
                        <asp:Parameter Name="CreatedDate" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BusinessName" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Country" Type="String" />
                        <asp:Parameter Name="SalesRepresentative" Type="String" />
                        <asp:Parameter Name="ContactPerson" Type="String" />
                        <asp:Parameter Name="ContactPersonEmail" Type="String" />
                        <asp:Parameter Name="ContactPersonPhoneNumber" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductType" Type="String" />
                        <asp:Parameter Name="UnitPrice" Type="Decimal" />
                        <asp:Parameter Name="ProductQuantity" Type="Int32" />
                        <asp:Parameter Name="Total_Amount" Type="Decimal" />
                        <asp:Parameter Name="PaymentTerms" Type="String" />
                        <asp:Parameter Name="TrasactionType" Type="String" />
                        <asp:Parameter Name="WarehouseManagerName" Type="String" />
                        <asp:Parameter Name="WarehouseManagerEmail" Type="String" />
                        <asp:Parameter Name="WarehouseLocation" Type="String" />
                        <asp:Parameter Name="PickUpPersonName" Type="String" />
                        <asp:Parameter Name="PickUpPersonPhone" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="ExpectedDeliveryDate" Type="DateTime" />
                        <asp:Parameter Name="CreatedBy" Type="String" />
                        <asp:Parameter Name="CreatedDate" Type="DateTime" />
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

    <asp:SqlDataSource ID="SqlSaleRep" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID], [UserName] FROM [Employees]">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlLocation" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[LocationName],[State],[Country] FROM [RexGlobe].[dbo].[Location]">
    </asp:SqlDataSource>

     <asp:SqlDataSource ID="SqlCountry" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID] ,[Code],[Name] FROM [RexGlobe].[dbo].[Country]">
    </asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlProductDescription" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID], [ProductCode], [ProductName], [ProductDescription], [UnitPrice], [Units_Price_In_Carton], [Units_In_Store], [Location] FROM [ProductDescription]">
    </asp:SqlDataSource> 

    <asp:SqlDataSource ID="SqlPaymentTypes" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [PaymentID],[PaymentType],[PaymentChannel],[Payementerms] FROM [RexGlobe].[dbo].[PaymentTypes]">
    </asp:SqlDataSource>   
   <asp:SqlDataSource ID="SqlCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID], [BusinessName], [TIN_Number], [DateOfBirth], [Email], [PhoneNumber], [Address], [State], [Country], [SalesRepresentative], [PaymentTerms], [TrasactionType], [DateofIncorporation], [TypeOfBusiness], [NextOfKinName], [NextOfKinPhone], [ContactPerson], [ContactPersonEmail], [ContactPersonGender], [ContactPersonPhoneNumber], [CreatedBy], [CreatedDate] FROM [Customers])">
    </asp:SqlDataSource>



   <asp:EntityDataSource ID="esmdsRegisteredCompanies" runat="server" ConnectionString="name=RexLubsEntities" DefaultContainerName="RexLubsEntities" EntitySetName="Customers1" Include="BusinessName"  Where ="it.BusinessName = @BusinessName" OnSelecting="esmdsRegisteredCompanies_Selecting"  >
        <WhereParameters>
            <asp:ControlParameter ControlID="ASPxFormLayout1$BusinessName" Name="BusinessName" PropertyName="Value" Type="String" />
        </WhereParameters>
    </asp:EntityDataSource>

  
     <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" ClientInstanceName="popup" Height="400px" Width="800px" AllowDragging="True" CloseAction="CloseButton" HeaderText="" Modal="True" PopupVerticalAlign="WindowCenter"  PopupElementID="ASPxFormLayout1$ASPxButtonEditRCNo">
        <Windows>
            
            <dx:PopupWindow PopupElementID="ASPxFormLayout1$BusinessName">
                <ContentCollection>
                    <dx:PopupControlContentControl runat="server">
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlCustomers" KeyFieldName="ID" Width="100%" ClientInstanceName="mastergrid">
                                        <ClientSideEvents RowDblClick="function(s, e) 
                        {
	                        mastergrid.GetRowValues(e.visibleIndex, 'BusinessName;Email;PhoneNumber;Address;State;', OnGetRCNo);
                        }" />
                                        <Columns>
                                            <dx:GridViewDataTextColumn Caption="BusinessName" FieldName="BusinessName" ReadOnly="True"  VisibleIndex="0" Width="100px">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataDateColumn FieldName="PhoneNumber" VisibleIndex="2">
                                            </dx:GridViewDataDateColumn>
                                            <dx:GridViewDataDateColumn FieldName="Address" VisibleIndex="3">
                                            </dx:GridViewDataDateColumn>
                                            <dx:GridViewDataDateColumn FieldName="State" VisibleIndex="4">
                                            </dx:GridViewDataDateColumn>
                                            <dx:GridViewDataDateColumn FieldName="Country" VisibleIndex="52">
                                            </dx:GridViewDataDateColumn>
                                        </Columns>
                                        <SettingsBehavior AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                                        <Settings ShowFilterRow="True" />
                                        <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                                    </dx:ASPxGridView>

                    </dx:PopupControlContentControl>
                </ContentCollection>
            </dx:PopupWindow>
            <%--<dx:PopupWindow PopupElementID="ASPxFormLayout1$ASPxComboBoxTaxOffices">
                <ContentCollection>
                    <dx:PopupControlContentControl runat="server">
                        <dx:ASPxGridView ID="ASPxgvTaxOffices" runat="server" AutoGenerateColumns="False" ClientInstanceName="gridTaxOffices" DataSourceID="edsTaxOffices" KeyFieldName="TaxOfficeId" Width="100%">
                            <ClientSideEvents RowDblClick="function(s, e) {
	gridTaxOffices.GetRowValues(e.visibleIndex, 'TaxOfficeId;TaxOfficeName', OnGetTaxOffice);
}" />
                            <Columns>
                                <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowInCustomizationForm="True" VisibleIndex="6">
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn Caption="Tax Office ID" FieldName="TaxOfficeId" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="TaxOfficeName" ShowInCustomizationForm="True" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Street" ShowInCustomizationForm="True" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="City" ShowInCustomizationForm="True" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                            <Settings ShowFilterRow="True" />
                            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                        </dx:ASPxGridView>
                    </dx:PopupControlContentControl>
                </ContentCollection>
            </dx:PopupWindow>--%>
        </Windows>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

</asp:Content>

