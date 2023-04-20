<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="ManageBooking.aspx.cs" Inherits="RexLubs.Customers.ManageBooking" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqLBooking" KeyFieldName="ID">
    <Settings ShowFilterRow="True" />
    <ClientSideEvents RowDblClick="function(s, e) {
		s.StartEditRow(e.visibleIndex);
}" />
		<Templates>
			<EditForm>
				<dx:ASPxFormLayout ID="formLayout" runat="server" Width="100%">
					<Items>
						<dx:LayoutGroup Caption="Booking Details" ColCount="3">
							<Items>
								<dx:LayoutItem Caption="ID #" FieldName="ID">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement1" runat="server" ColumnID="ID" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
								<dx:LayoutItem FieldName="ShipmentID">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement2" runat="server" ColumnID="ShipmentID" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
                                <dx:LayoutItem Caption="Sender Name" FieldName="SenderName">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement19" runat="server" ColumnID="SenderName" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
								<dx:LayoutItem Caption="Sender Email" FieldName="SenderEmail">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement10" runat="server" ColumnID="SenderEmail" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
								<dx:LayoutItem Caption="Origin Service Location" FieldName="OriginServiceLocation">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement11" runat="server" ColumnID="OriginServiceLocation" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
                                
							</Items>
						</dx:LayoutGroup>
                        <dx:LayoutGroup Caption="Receiver's Details" ColCount="3">
                            <Items>
                                <dx:LayoutItem Caption="ReceiverName" FieldName="ReceiverName">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement3" runat="server" ColumnID="ReceiverName" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
								<dx:LayoutItem FieldName="ReceiverEmail" Caption="Receiver Email">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement4" runat="server" ColumnID="ReceiverEmail" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
                                <dx:LayoutItem FieldName="ReceiverDestination" Caption="Receiver Destination">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement5" runat="server" ColumnID="ReceiverDestination" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
								<dx:LayoutItem Caption="ReceiverPinCode" FieldName="ReceiverPinCode">
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement6" runat="server" ColumnID="ReceiverPinCode" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
								<dx:LayoutItem Caption="Receiver Region" FieldName="ReceiverRegion" >
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement7" runat="server" ColumnID="ReceiverRegion" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
                                <dx:LayoutItem Caption="Receiver City" FieldName="ReceiverCity" >
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement12" runat="server" ColumnID="ReceiverCity" ReplacementType="EditFormCellEditor" />
										</dx:LayoutItemNestedControlContainer>
									</LayoutItemNestedControlCollection>
								</dx:LayoutItem>
                                <dx:LayoutItem Caption="Service Location" FieldName="ServiceLocation" >
									<LayoutItemNestedControlCollection>
										<dx:LayoutItemNestedControlContainer runat="server">
											<dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement13" runat="server" ColumnID="ServiceLocation" ReplacementType="EditFormCellEditor" />
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
		</SettingsEditing><SettingsPopup>
        <EditForm Width="800" Modal="true" />
        </SettingsPopup>
    <Columns>
        <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowEditButton="True" VisibleIndex="0">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
            <EditFormSettings Visible="False" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ShipmentID" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="SenderName" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="SenderEmail" Visible="false" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="OriginServiceLocation" FieldName="OriginServiceLocation"   VisibleIndex="5">
            <PropertiesComboBox DataSourceID="SqlState" TextField="Name"  ValueField="Name" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataTextColumn FieldName="ReceiverName" VisibleIndex="6">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ReceiverEmail" Visible="false" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ReceiverDestination" VisibleIndex="8">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ReceiverPinCode" Visible="false" ReadOnly="true" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="Receiver Region" FieldName="ReceiverRegion"   VisibleIndex="10">
            <PropertiesComboBox DataSourceID="SqlRegion" TextField="Name"  ValueField="Name" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
        </dx:GridViewDataComboBoxColumn>
         <dx:GridViewDataComboBoxColumn Caption="Receiver City" FieldName="ReceiverCity"   VisibleIndex="11">
            <PropertiesComboBox DataSourceID="SqlState" TextField="Name"  ValueField="Name" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataTextColumn FieldName="ServiceLocation" VisibleIndex="12">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="CreateDate" VisibleIndex="13">
        </dx:GridViewDataDateColumn>
    </Columns>
    </dx:ASPxGridView>
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
    <asp:SqlDataSource ID="SqLBooking" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Booking] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Booking] ([ShipmentID], [SenderName], [SenderEmail], [OriginServiceLocation], [ReceiverName], [ReceiverEmail], [ReceiverDestination], [ReceiverPinCode], [ReceiverRegion], [ReceiverCity], [ServiceLocation], [CreateDate]) VALUES (@ShipmentID, @SenderName, @SenderEmail, @OriginServiceLocation, @ReceiverName, @ReceiverEmail, @ReceiverDestination, @ReceiverPinCode, @ReceiverRegion, @ReceiverCity, @ServiceLocation, @CreateDate)" SelectCommand="SELECT * FROM [Booking]" UpdateCommand="UPDATE [Booking] SET [ShipmentID] = @ShipmentID, [SenderName] = @SenderName, [SenderEmail] = @SenderEmail, [OriginServiceLocation] = @OriginServiceLocation, [ReceiverName] = @ReceiverName, [ReceiverEmail] = @ReceiverEmail, [ReceiverDestination] = @ReceiverDestination, [ReceiverPinCode] = @ReceiverPinCode, [ReceiverRegion] = @ReceiverRegion, [ReceiverCity] = @ReceiverCity, [ServiceLocation] = @ServiceLocation, [CreateDate] = @CreateDate WHERE [ID] = @ID">
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
