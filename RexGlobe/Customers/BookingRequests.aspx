<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="BookingRequests.aspx.cs" Inherits="RexGlobe.Customers.BookingRequests" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server" >

    <div class="panel panel-primary"> 
            <div class="panel-heading">Create Booking Requests</div>
            <div class="panel-body">

                
<dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%" ClientInstanceName="formlayout" ColCount="2"  DataSourceID="SqlBooking" OnDataBound="ASPxFormLayout1_DataBound">
    <Items>
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Sender Details">
		<Items>
			<dx:LayoutItem  Caption="Sender Name" FieldName="SenderName" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="SenderName" runat="server" ClientInstanceName="SenderName" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem  Caption="Sender Email" FieldName="SenderEmail" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxTextBox ID="SenderEmail" runat="server" ClientInstanceName="SenderEmail" Width="100%" Height="25px">
							<ValidationSettings>
                                <RegularExpression ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Origin Service Location" FieldName="OriginServiceLocation"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxComboBox ID="OriginServiceLocation" runat="server"  IncrementalFilteringMode="Contains" TextField="Name" ValueField="Name" Width="100%" Height="25px" DataSourceID="SqlState">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
		</Items>
                                                                   
	</dx:LayoutGroup>
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Receiver Details">
		<Items>
			<dx:LayoutItem ColSpan="2" Caption="Receiver Name" FieldName="ReceiverName" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="ReceiverName" runat="server" ClientInstanceName="ReceiverName" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Receiver Email" FieldName="ReceiverEmail" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer>
						<dx:ASPxTextBox ID="ReceiverEmail" runat="server" ClientInstanceName="ReceiverEmail" Width="100%" Height="25px">
							<ValidationSettings>
                                <RegularExpression ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Receiver Destination" FieldName="ReceiverDestination"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="ReceiverDestination" runat="server" ClientInstanceName="ReceiverDestination" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem ColSpan="2" Caption="Receiver PinCode" FieldName="ReceiverPinCode" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="ReceiverPinCode" runat="server" ClientInstanceName="ReceiverPinCode" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Receiver Region" FieldName="ReceiverRegion" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxComboBox ID="ReceiverRegion" runat="server"  IncrementalFilteringMode="Contains" TextField="Name" ValueField="ID" Width="100%" Height="25px" DataSourceID="SqlRegion">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Receiver City" FieldName="ReceiverCity"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxComboBox ID="ReceiverCity" runat="server"  IncrementalFilteringMode="Contains" TextField="Name" ValueField="StateID" Width="100%" Height="25px" DataSourceID="SqlState">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Service Location" FieldName="ServiceLocation"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="ServiceLocation" runat="server" ClientInstanceName="ServiceLocation" Width="100%" Height="25px">
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
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Shipment Details">
		<Items>
			<dx:LayoutItem ColSpan="2" Caption="Commodity" FieldName="Commodity" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxComboBox ID="Commodity" runat="server" AutoPostBack="False" AutoResizeWithContainer="True" ClientInstanceName="Product" DataSourceID="SqlProduct" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="ProductName" ValueField="ProductID" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto"></ClearButton>
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Weight" FieldName="Weight" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxTextBox ID="Weight" runat="server" ClientInstanceName="Weight" Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Total Weight" FieldName="TotalWeight"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="TotalWeight" runat="server" ClientInstanceName="TotalWeight" Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem ColSpan="2" Caption="Rate Per KG" FieldName="RatePerKG" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="RatePerKG" runat="server" ClientInstanceName="RatePerKG" Width="100%" Height="25px">
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
			<dx:LayoutItem Caption="Service Tax in Percentage" FieldName="ServiceTax"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="ServiceTax" runat="server" ClientInstanceName="ServiceTax" Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.0">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Freight" FieldName="Freight"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="Freight" runat="server" ClientInstanceName="Freight" Width="100%" Height="25px" >
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
    <%--<asp:EntityDataSource ID="EdsProduct" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EntitySetName="Product" OrderBy="it.Decision" Select="it.[ProductID],it.[Code],it.[ProductName] ">
    </asp:EntityDataSource>
        
    <asp:EntityDataSource ID="EdsBooking" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EntitySetName="Bookings" OrderBy="it.PaymentID" Select="it.[ID] ,it.[ShipmentID],it.[SenderName],it.[SenderEmail] ,it.[OriginServiceLocation],it.[ReceiverName],it.[ReceiverEmail],it.[ReceiverDestination],it.[ReceiverPinCode],it.[ReceiverRegion],it.[ReceiverCity],it.[ServiceLocation],it.[CreateDate]">
    </asp:EntityDataSource>

    <asp:EntityDataSource ID="EdsShipping" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EntitySetName="Shipment" OrderBy="it.ID" Select=" it.[ID],it.[Commodity],it.[Weight],it.[TotalWeight],it.[RatePerKG],it.[Date],it.[ExpectedDeliveryDate],it.[ServiceTax],it.[Freight],it.[BookingID],it.[CreatedBy],it.[CreateDate]">
    </asp:EntityDataSource>--%>

</asp:Content>
