<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UserSite.Master" AutoEventWireup="true" CodeBehind="PickUpRequest.aspx.cs" Inherits="RexGlobe.Users.PickUpRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">


<div class="panel panel-primary"> 
            <div class="panel-heading">Create PickUp Requests</div>
            <div class="panel-body">

<dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%" ClientInstanceName="formlayout" ColCount="2" DataSourceID="SqlPickUpRequests" OnDataBound="ASPxFormLayout1_DataBound">
    <Items>
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Sender Details">
		<Items>
			<dx:LayoutItem ColSpan="2" Caption="Name" FieldName="Name" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="Name" runat="server" ClientInstanceName="Name" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Email" FieldName="Email" RequiredMarkDisplayMode="Required">
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
			<dx:LayoutItem Caption="PickUp Date" FieldName="PickUpDate"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxDateEdit ID="PickUpDate" runat="server" Width="100%" Height="25px">
                        <TimeSectionProperties>
                        <TimeEditProperties>
                        <ClearButton Visibility="Auto"></ClearButton>
                        </TimeEditProperties>
                        </TimeSectionProperties>

                        <ClearButton Visibility="Auto"></ClearButton>
                        </dx:ASPxDateEdit>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
		</Items>
                                                                   
	</dx:LayoutGroup>
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Receiver Details">
		<Items>
			<dx:LayoutItem ColSpan="2" Caption="Contact Number" FieldName="ContactNumber" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="ContactNumber" runat="server" ClientInstanceName="ContactNumber" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Address" FieldName="Address" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxMemo ID="Address" runat="server" Height="100px" Width="300px"></dx:ASPxMemo>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="State" FieldName="StateID"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxComboBox ID="StateID" runat="server" AutoPostBack="True" AutoResizeWithContainer="True" ClientInstanceName="state" DataSourceID="SqlState" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="Name" ValueField="StateId" Width="100%" Height="25px">
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
            <dx:LayoutItem ColSpan="2" Caption="Commodity" FieldName="Commodity" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxComboBox ID="Commodity" runat="server" AutoPostBack="True" AutoResizeWithContainer="True" ClientInstanceName="state" DataSourceID="SqlProduct" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="ProductName" ValueField="ProductID" Width="100%" Height="25px">
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
			<dx:LayoutItem Caption="Approx. Weight (KGs)" FieldName="Weight" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxTextBox ID="Weight" runat="server" ClientInstanceName="Weight" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Nearest Service Location" FieldName="NearestServiceLocation"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxTextBox ID="NearestServiceLocation" runat="server" ClientInstanceName="NearestServiceLocation" Width="100%" Height="25px">
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
                        <dx:ASPxButton ID="ASPxButtonSubmit" runat="server" Text="Submit Request" CommandName="New" OnClick="ASPxButtonSubmit_Click" ClientInstanceName="submit" CssClass="btn btn-primary"  HorizontalAlign="Center" AutoPostBack="False">
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
    <asp:SqlDataSource ID="SqlPickUpRequests" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [PickUpRequest] WHERE [ID] = @ID" InsertCommand="INSERT INTO [PickUpRequest] ([Name], [Email], [PickUpDate], [ContactNumber], [Address], [StateID], [Commodity], [Weight], [NearestServiceLocation], [Status], [ApprovePickUprequest], [RejectPickUpRequest], [CreateDate], [CreatedBy]) VALUES (@Name, @Email, @PickUpDate, @ContactNumber, @Address, @StateID, @Commodity, @Weight, @NearestServiceLocation, @Status, @ApprovePickUprequest, @RejectPickUpRequest, @CreateDate, @CreatedBy)" SelectCommand="SELECT * FROM [PickUpRequest]" UpdateCommand="UPDATE [PickUpRequest] SET [Name] = @Name, [Email] = @Email, [PickUpDate] = @PickUpDate, [ContactNumber] = @ContactNumber, [Address] = @Address, [StateID] = @StateID, [Commodity] = @Commodity, [Weight] = @Weight, [NearestServiceLocation] = @NearestServiceLocation, [Status] = @Status, [ApprovePickUprequest] = @ApprovePickUprequest, [RejectPickUpRequest] = @RejectPickUpRequest, [CreateDate] = @CreateDate, [CreatedBy] = @CreatedBy WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PickUpDate" Type="DateTime" />
            <asp:Parameter Name="ContactNumber" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="StateID" Type="String" />
            <asp:Parameter Name="Commodity" Type="String" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="NearestServiceLocation" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="ApprovePickUprequest" Type="Boolean" />
            <asp:Parameter Name="RejectPickUpRequest" Type="Boolean" />
            <asp:Parameter Name="CreateDate" Type="DateTime" />
            <asp:Parameter Name="CreatedBy" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PickUpDate" Type="DateTime" />
            <asp:Parameter Name="ContactNumber" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="StateID" Type="String" />
            <asp:Parameter Name="Commodity" Type="String" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="NearestServiceLocation" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="ApprovePickUprequest" Type="Boolean" />
            <asp:Parameter Name="RejectPickUpRequest" Type="Boolean" />
            <asp:Parameter Name="CreateDate" Type="DateTime" />
            <asp:Parameter Name="CreatedBy" Type="String" />
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
</asp:Content>
