<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="ManagePickUp.aspx.cs" Inherits="RexLubs.Customers.ManagePickUp" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlPickUp" KeyFieldName="ID" Width="100%">
<Settings ShowFilterRow="True" />
    <%--<settingsediting mode="PopupEditForm">
    </settingsediting>--%>
    <ClientSideEvents RowDblClick="function(s, e) {
		s.StartEditRow(e.visibleIndex);
}" />
		<Templates>
			<EditForm>
				<dx:ASPxFormLayout ID="formLayout" runat="server" Width="100%">
					<Items>
						<dx:LayoutGroup Caption="PickUp Details" ColCount="3">
							<Items>
								<dx:LayoutItem Caption="ID #" FieldName="ID">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement1" runat="server" ColumnID="ID" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
								<dx:LayoutItem FieldName="Name">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement2" runat="server" ColumnID="Name" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
                                <dx:LayoutItem Caption="Email" FieldName="Email">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement19" runat="server" ColumnID="Email" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
								<dx:LayoutItem Caption="PickUp Date" FieldName="PickUpDate">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement10" runat="server" ColumnID="PickUpDate" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
								<dx:LayoutItem Caption="Contact Number" FieldName="ContactNumber">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement11" runat="server" ColumnID="ContactNumber" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
                                <dx:LayoutItem Caption="Address" FieldName="Address">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement3" runat="server" ColumnID="Address" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
                                <dx:LayoutItem FieldName="StateID" Caption="StateID">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement4" runat="server" ColumnID="StateID" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
							</Items>
						</dx:LayoutGroup>
                        <dx:LayoutGroup Caption="Product Details" ColCount="3">
                            <Items>                              
								
                                <dx:LayoutItem FieldName="Commodity" Caption="Commodity">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement5" runat="server" ColumnID="Commodity" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
								<dx:LayoutItem Caption="Weight" FieldName="Weight">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement6" runat="server" ColumnID="Weight" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
								<dx:LayoutItem Caption="NearestServiceLocation" FieldName="NearestServiceLocation">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement7" runat="server" ColumnID="NearestServiceLocation" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
                                
                            </Items>
                        </dx:LayoutGroup>
                        <dx:LayoutGroup Caption="Request Status" ColCount="3">
                            <Items>
                                    <dx:LayoutItem Caption="Status" FieldName="Status" >
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement12" runat="server" ColumnID="Status" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
                                <dx:LayoutItem Caption="ApprovePickUprequest" FieldName="ApprovePickUprequest" >
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement13" runat="server" ColumnID="ApprovePickUprequest" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
                                <dx:LayoutItem Caption="RejectPickUpRequest" FieldName="RejectPickUpRequest" >
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement14" runat="server" ColumnID="RejectPickUpRequest" ReplacementType="EditFormCellEditor" />
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
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement8" runat="server" ColumnID="" ReplacementType="EditFormUpdateButton" />
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement9" runat="server" ColumnID="" ReplacementType="EditFormCancelButton" />
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
    <Columns>
        <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
            <EditFormSettings Visible="False" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="PickUpDate" VisibleIndex="4">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn FieldName="ContactNumber" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Address" Visible="false" VisibleIndex="6">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="State" FieldName="StateID"   VisibleIndex="7">
            <PropertiesComboBox DataSourceID="SqlState" TextField="Name"  ValueField="StateID" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn Caption="Commodity" FieldName="Commodity"   VisibleIndex="8">
            <PropertiesComboBox DataSourceID="SqlProduct" TextField="ProductName"  ValueField="ProductID" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataTextColumn FieldName="Weight" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="NearestServiceLocation" Caption="Location" VisibleIndex="10">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn  FieldName="Status"   VisibleIndex="11">
            <PropertiesComboBox DataSourceID="SqlStatus" TextField="Name"  ValueField="StatusId" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataCheckColumn FieldName="ApprovePickUprequest" VisibleIndex="12">
        </dx:GridViewDataCheckColumn>
        <dx:GridViewDataCheckColumn FieldName="RejectPickUpRequest" VisibleIndex="13">
        </dx:GridViewDataCheckColumn>
        <dx:GridViewDataDateColumn FieldName="CreateDate" VisibleIndex="14">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn FieldName="CreatedBy" Visible="false" VisibleIndex="15">
        </dx:GridViewDataTextColumn>
    </Columns>
    </dx:ASPxGridView>

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

    <asp:SqlDataSource ID="SqlPickUp" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [PickUpRequest] WHERE [ID] = @ID" InsertCommand="INSERT INTO [PickUpRequest] ([Name], [Email], [PickUpDate], [ContactNumber], [Address], [StateID], [Commodity], [Weight], [NearestServiceLocation], [Status], [ApprovePickUprequest], [RejectPickUpRequest], [CreateDate], [CreatedBy]) VALUES (@Name, @Email, @PickUpDate, @ContactNumber, @Address, @StateID, @Commodity, @Weight, @NearestServiceLocation, @Status, @ApprovePickUprequest, @RejectPickUpRequest, @CreateDate, @CreatedBy)" SelectCommand="SELECT * FROM [PickUpRequest]" UpdateCommand="UPDATE [PickUpRequest] SET [Name] = @Name, [Email] = @Email, [PickUpDate] = @PickUpDate, [ContactNumber] = @ContactNumber, [Address] = @Address, [StateID] = @StateID, [Commodity] = @Commodity, [Weight] = @Weight, [NearestServiceLocation] = @NearestServiceLocation, [Status] = @Status, [ApprovePickUprequest] = @ApprovePickUprequest, [RejectPickUpRequest] = @RejectPickUpRequest, [CreateDate] = @CreateDate, [CreatedBy] = @CreatedBy WHERE [ID] = @ID">
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

</asp:Content>
