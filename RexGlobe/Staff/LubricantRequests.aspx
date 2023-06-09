﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="LubricantRequests.aspx.cs" Inherits="RexLubs.Staff.LubricantRequests" %>


<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Data.Linq" tagprefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server" >

<div class="panel panel-primary"> 
            <div class="panel-heading">Create Lubricant Booking Requests</div>
            <div class="panel-body">


<dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%" ClientInstanceName="formlayout" ColCount="2"   OnDataBound="ASPxFormLayout1_DataBound" ColumnCount="2">
    <Items>
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Customer Details">
		<Items>
			<dx:LayoutItem  Caption="Business Name" FieldName="BusinessName" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                       <dx:ASPxComboBox ID="BusinessName" runat="server"  AutoPostBack="False" ClientInstanceName="BusinessName"  AutoResizeWithContainer="True" IncrementalFilteringMode="StartsWith"  EnableIncrementalFiltering="True" TextField="BusinessName" ValueField="BusinessName" Width="100%" Height="25px" DataSourceID="SqlCustomers">
                          
                            <ClearButton Visibility="Auto"></ClearButton>
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
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

    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Warehouse Details">
		<Items>
			 <dx:LayoutItem Caption="Region" FieldName="WarehouseLocation" RequiredMarkDisplayMode="Required">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                <dx:ASPxComboBox ID="ASPxComboBoxRegion" runat="server" AutoPostBack="True" AutoResizeWithContainer="True" ClientInstanceName="state" DataSourceID="SqlLocation" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="LocationCategory" ValueField="LocationCategory" Width="100%" Height="25px">
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

    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Product Details">
		<Items>
              <%--  <dx:LayoutItem ColSpan="2" Caption="Product PriceList" FieldName="ProductList" RequiredMarkDisplayMode="Required">
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
                                <dx:GridViewDataTextColumn FieldName="Pieces_In_Store" ShowInCustomizationForm="True" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Cartons_In_Store" ShowInCustomizationForm="True" VisibleIndex="6">
                                </dx:GridViewDataTextColumn><dx:GridViewDataTextColumn FieldName="Units_In_Store" ShowInCustomizationForm="True" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Location" ShowInCustomizationForm="True" VisibleIndex="7">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridLookup>
						
                                                                              
                                
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem> --%>
			
			<dx:LayoutItem Caption="Product Name By Piece" FieldName="ProductName" >
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxComboBox ID="ProductName" runat="server" AutoPostBack="False" AutoResizeWithContainer ="True" ClientInstanceName="ProductName" DataSourceID="SqlProductDescription" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="ProductName" ValueField="ProductName" Width="100%" Height="25px">
                     
                            <ClearButton Visibility="Auto"></ClearButton>
                            
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem  Caption="Product Category" FieldName="ProductType">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxComboBox ID="ProductType" runat="server" AutoPostBack="False" AutoResizeWithContainer="True" ClientInstanceName="ProductCategory" DataSourceID="SqlProductCategory" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="ProductType" ValueField="ProductType" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto"></ClearButton>
                          
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Product Quantity" FieldName="ProductQuantity" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="ProductQuantity" runat="server" ClientInstanceName="ProductQuantity" Width="100%" Height="25px" NullText="0" DisplayFormatString="0">
						
						</dx:ASPxTextBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Unit Price By Piece" FieldName="UnitPrice">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
							
                                                                              
                            
					    <dx:ASPxGridLookup ID="UnitPrice" runat="server" AutoGenerateColumns="False" DataSourceID="SqlProductDescription" KeyFieldName="ID"
                            TextFormatString="{4}" MultiTextSeparator=", " Width="500px" SelectionMode="Single">
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
                                <dx:GridViewDataTextColumn FieldName="Pieces_In_Store" ShowInCustomizationForm="True" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Cartons_In_Store" ShowInCustomizationForm="True" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Location" ShowInCustomizationForm="True" VisibleIndex="7">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridLookup>
						
                                                                              
                                
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
				
            <dx:LayoutItem Caption="Product Name By Carton" FieldName="ProductName">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxComboBox ID="ProductName2" runat="server" AutoPostBack="False" AutoResizeWithContainer="True" ClientInstanceName="ProductName" DataSourceID="SqlProductDescription2" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="ProductName" ValueField="ProductName" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto"></ClearButton>
                            
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem  Caption="Product Category" FieldName="ProductType">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxComboBox ID="ProductType2" runat="server" AutoPostBack="False" AutoResizeWithContainer="True" ClientInstanceName="ProductCategory" DataSourceID="SqlProductCategory" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="ProductType" ValueField="ProductType" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto"></ClearButton>
                          
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Product Quantity" FieldName="ProductQuantity">
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="ProductQuantity2" runat="server" ClientInstanceName="ProductQuantity" Width="100%" Height="25px" NullText="0" DisplayFormatString="0">
							
						</dx:ASPxTextBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Carton Price" FieldName="Units_Price_In_Carton">
			    <LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">					
                                                                              
                            
					    <dx:ASPxGridLookup ID="Units_Price_In_Carton" runat="server" AutoGenerateColumns="False" DataSourceID="SqlProductDescription2" KeyFieldName="ID"
                            TextFormatString="{5}" MultiTextSeparator=", " Width="500px" SelectionMode="Single">
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
                                <dx:GridViewDataTextColumn FieldName="Pieces_In_Store" ShowInCustomizationForm="True" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Cartons_In_Store" ShowInCustomizationForm="True" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Location" ShowInCustomizationForm="True" VisibleIndex="7">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridLookup>
						
                                                                              
                                
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
             
                <dx:LayoutItem Caption="Carton Description" FieldName="ProductDescription"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxComboBox ID="ProductDescription" runat="server" AutoPostBack="False" AutoResizeWithContainer="True" ClientInstanceName="ProductDescription" DataSourceID="SqlProductDescription2" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="ProductDescription" ValueField="ProductDescription" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto"></ClearButton>
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Sales Representative" FieldName="SalesRepresentative"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxComboBox ID="SalesRepresentative" runat="server"  AutoPostBack="False" AutoResizeWithContainer="True" ClientInstanceName="SalesRepresentative" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith"  TextField="UserName" ValueField="UserName" Width="100%" Height="25px" DataSourceID="SqlSaleRep">
                            <ClearButton Visibility="Auto"></ClearButton>
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
		
            <dx:LayoutItem Caption="Payment Terms" FieldName="PaymentTerms" RequiredMarkDisplayMode="Required" >
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

    <asp:SqlDataSource ID="SqlLocation" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[LocationName],[LocationCategory],[State],[Country] FROM [RexGlobe].[dbo].[Location]">
    </asp:SqlDataSource>

     <asp:SqlDataSource ID="SqlCountry" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID] ,[Code],[Name] FROM [RexGlobe].[dbo].[Country]">
    </asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlProductDescription" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID], [ProductCode], [ProductName], [ProductDescription], [UnitPrice], [Units_Price_In_Carton], [Pieces_In_Store],[Cartons_In_Store], [Location] FROM [ProductDescription]">
    </asp:SqlDataSource> 

    <asp:SqlDataSource ID="SqlProductDescription2" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID], [ProductCode], [ProductName], [ProductDescription], [UnitPrice], [Units_Price_In_Carton], [Pieces_In_Store],[Cartons_In_Store], [Location] FROM [ProductDescription] where [Units_Price_In_Carton]  is not null">
    </asp:SqlDataSource> 

    <asp:SqlDataSource ID="SqlPaymentTypes" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [PaymentID],[PaymentType],[PaymentChannel],[Payementerms] FROM [RexGlobe].[dbo].[PaymentTypes]">
    </asp:SqlDataSource>   
   <asp:SqlDataSource ID="SqlProductCategory" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[ProductType] FROM [RexGlobe].[dbo].[ProductCategory]">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID], [BusinessName], [TIN_Number], [DateOfBirth], [Email], [PhoneNumber], [Address], [State], [Country], [SalesRepresentative], [PaymentTerms], [TrasactionType], [DateofIncorporation], [TypeOfBusiness], [NextOfKinName], [NextOfKinPhone], [ContactPerson], [ContactPersonEmail], [ContactPersonGender], [ContactPersonPhoneNumber], [CreatedBy], [CreatedDate] FROM [Customers] ">
     </asp:SqlDataSource>

</asp:Content>

