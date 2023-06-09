﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="RexLubs.WebForm4" %>

<%@ Register Assembly="DevExpress.Dashboard.v18.1.Web.WebForms, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>
 
<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Src="~/ToolbarExport1.ascx" TagPrefix="dx" TagName="ToolbarExport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <%--<dx:ToolbarExport runat="server" id="ToolbarExport1" OnItemClick="ToolbarExport_ItemClick" />
<dx:ASPxGridViewExporter ID="gridExport" runat="server" GridViewID="Grid">
</dx:ASPxGridViewExporter>
<dx:ASPxGridView ID="Grid" runat="server" Width="100%" DataSourceID="SqlDataSource1"> 
    <Settings ShowFilterRow="True" />
    <SettingsSearchPanel Visible="True" />
<Columns>
    <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0">
    </dx:GridViewCommandColumn>
    <dx:GridViewDataTextColumn FieldName="Subject" ShowInCustomizationForm="True" VisibleIndex="1">
    </dx:GridViewDataTextColumn>
    <dx:GridViewDataTextColumn FieldName="Details" ShowInCustomizationForm="True" VisibleIndex="2">
    </dx:GridViewDataTextColumn>
    <dx:GridViewDataTextColumn FieldName="Name" Caption="Client" ShowInCustomizationForm="True" VisibleIndex="3">
    </dx:GridViewDataTextColumn>
    <dx:GridViewDataTextColumn FieldName="Terminal_Name" Caption="Terminal" ShowInCustomizationForm="True" VisibleIndex="4">
    </dx:GridViewDataTextColumn>
    <dx:GridViewDataDateColumn FieldName="Ticket_Date" ShowInCustomizationForm="True" VisibleIndex="5">
    </dx:GridViewDataDateColumn>
</Columns>
</dx:ASPxGridView> 
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SIMSDB %>" SelectCommand="SELECT Incidents.Subject, Incidents.Details, Client.Name, Terminals.Terminal_Name, Tickets.Ticket_Date
    FROM ((([SIMS].[dbo].[Tickets] 
    INNER JOIN [SIMS].[dbo].[Incidents] ON Tickets.Ticket_ID = Incidents.TicketID)
    INNER JOIN [SIMS].[dbo].[Client] ON Tickets.Client_ID = Client.ID )
    INNER JOIN [SIMS].[dbo].[Terminals] ON Terminals.Terminal_ID = Tickets.Terminal_ID ) ">
          
    </asp:SqlDataSource> --%>
<div class="container" style="background-color: #FFFFFF ;  height: 100%">




<dx:ASPxPageControl ID="PageControl" runat="server" Theme="PlasticBlue" ActiveTabIndex="0"> 
    <TabPages>
        <dx:TabPage Name="IncidentReport" Text="Region Incidents">
            <ContentCollection>
                 <dx:ContentControl runat="server">
                    <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ClientInstanceName="formlayout" Theme="PlasticBlue" ColCount="2"  Width="100%">
	                        <Items>
		                        <dx:LayoutGroup Caption="Fliter Incident" ColCount="4">
			                        <Items>
				                        <dx:LayoutItem  FieldName="DateFrom" RequiredMarkDisplayMode="Required">
					                        <LayoutItemNestedControlCollection>
						                        <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
							                        <dx:ASPxDateEdit ID="aspxDate_From"  runat="server" ClientInstanceName="Date_From" Theme="PlasticBlue" >
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
				                        <dx:LayoutItem FieldName="DateTo" RequiredMarkDisplayMode="Required">
					                        <LayoutItemNestedControlCollection>
						                        <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
							                        <dx:ASPxDateEdit ID="ASPxDateTo" runat="server" ClientInstanceName="Date_To" Theme="PlasticBlue" Width="100%">
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
                                        <dx:LayoutItem Caption="Client" FieldName="Client">
					                        <LayoutItemNestedControlCollection>
						                        <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
							                        <dx:ASPxComboBox ID="DDLClient_" runat="server" Theme="PlasticBlue" TextField="Name" ValueField="ID" DataSourceID="SqlClient"   >
						                                <ValidationSettings Display="Dynamic">
							                                <RequiredField IsRequired="True" />
						                                </ValidationSettings>
					                                </dx:ASPxComboBox>
						                        </dx:LayoutItemNestedControlContainer>
					                        </LayoutItemNestedControlCollection>
				                        </dx:LayoutItem>
                                         <dx:LayoutItem Caption="Region" FieldName="State">
					                        <LayoutItemNestedControlCollection>
						                        <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
							                        <dx:ASPxComboBox ID="ASPxState" runat="server" Theme="PlasticBlue" TextField="Name" ValueField="ID" DataSourceID="SqlRegion"   >
						                                <ValidationSettings Display="Dynamic">
							                                <RequiredField IsRequired="True" />
						                                </ValidationSettings>
					                                </dx:ASPxComboBox>
						                        </dx:LayoutItemNestedControlContainer>
					                        </LayoutItemNestedControlCollection>
				                        </dx:LayoutItem>
				                        <dx:LayoutItem Caption="Submit" FieldName="Submit">
					                        <LayoutItemNestedControlCollection>
						                        <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
							                        <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="IncidentButton_Click" CssClass="btn btn-primary" Text="Submit">

							                        </dx:ASPxButton>
						                        </dx:LayoutItemNestedControlContainer>
					                        </LayoutItemNestedControlCollection>
				                        </dx:LayoutItem>
			                        </Items>
		                        </dx:LayoutGroup>
	                         </Items>
	                        <SettingsItemCaptions Location="Top" />
                        </dx:ASPxFormLayout>

                                                        
                    <hr /> 
                    <dx:ToolbarExport runat="server" id="ToolbarExport1" OnItemClick="ToolbarExport_ItemClick" />
                    <dx:ASPxGridViewExporter ID="gridExport" runat="server" GridViewID="IncidentGridView">
                    </dx:ASPxGridViewExporter>
                        <dx:ASPxGridView ID="IncidentGridView" Theme="PlasticBlue" runat="server" Visible="true" DataSourceID="SqlPickUP" KeyFieldName="ID" Width="100%"  >
                        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                        <SettingsAdaptivity>
                        <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
                        </SettingsAdaptivity>

                        <EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>

                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="ID" ShowInCustomizationForm="True" VisibleIndex="0" ReadOnly="True">
                                    <editformsettings visible="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Name" ShowInCustomizationForm="True" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>      
                                <dx:GridViewDataTextColumn FieldName="Email" ShowInCustomizationForm="True" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn FieldName="PickUpDate" ShowInCustomizationForm="True" VisibleIndex="7">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataTextColumn FieldName="ContactNumber" Visible="False" ShowInCustomizationForm="True" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Address" Visible="False" ShowInCustomizationForm="True" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="StateID" ShowInCustomizationForm="True" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Commodity" ShowInCustomizationForm="True" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Weight" ShowInCustomizationForm="True" VisibleIndex="8">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="NearestServiceLocation" Visible="False" ShowInCustomizationForm="True" VisibleIndex="9">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Status" ShowInCustomizationForm="True" VisibleIndex="10">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataCheckColumn FieldName="ApprovePickUprequest" ShowInCustomizationForm="True" VisibleIndex="11">
                                </dx:GridViewDataCheckColumn>
                                <dx:GridViewDataCheckColumn FieldName="RejectPickUpRequest" ShowInCustomizationForm="True" VisibleIndex="12">
                                </dx:GridViewDataCheckColumn>
                                <dx:GridViewDataDateColumn FieldName="CreateDate" ShowInCustomizationForm="True" VisibleIndex="13">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataTextColumn FieldName="CreatedBy" Visible="False" ShowInCustomizationForm="True" VisibleIndex="14">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    <asp:SqlDataSource ID="SqlPickUP" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [PickUpRequest]" DeleteCommand="DELETE FROM [PickUpRequest] WHERE [ID] = @ID" InsertCommand="INSERT INTO [PickUpRequest] ([Name], [Email], [PickUpDate], [ContactNumber], [Address], [StateID], [Commodity], [Weight], [NearestServiceLocation], [Status], [ApprovePickUprequest], [RejectPickUpRequest], [CreateDate], [CreatedBy]) VALUES (@Name, @Email, @PickUpDate, @ContactNumber, @Address, @StateID, @Commodity, @Weight, @NearestServiceLocation, @Status, @ApprovePickUprequest, @RejectPickUpRequest, @CreateDate, @CreatedBy)" UpdateCommand="UPDATE [PickUpRequest] SET [Name] = @Name, [Email] = @Email, [PickUpDate] = @PickUpDate, [ContactNumber] = @ContactNumber, [Address] = @Address, [StateID] = @StateID, [Commodity] = @Commodity, [Weight] = @Weight, [NearestServiceLocation] = @NearestServiceLocation, [Status] = @Status, [ApprovePickUprequest] = @ApprovePickUprequest, [RejectPickUpRequest] = @RejectPickUpRequest, [CreateDate] = @CreateDate, [CreatedBy] = @CreatedBy WHERE [ID] = @ID">
                    <%--where Ticket_Date  between  aspxDate_From and ASPxDateTo  ">--%>
          
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
  
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
       
    </TabPages>
</dx:ASPxPageControl>

</div>

<asp:SqlDataSource ID="SqlPersonnel" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [Personnel_ID],[First_Name],[Last_Name],[Designation],[Personnel_Type],[Email],[Phone_No],[Status],[User_ID] ,[Task_Status] FROM [SIMS].[dbo].[Personnel] " >
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlClient" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[Name] FROM [Customer] " >
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlRegion" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [StateID],[StateName] FROM [RexGlobe].[dbo].[State] " >
</asp:SqlDataSource>

</asp:Content>
