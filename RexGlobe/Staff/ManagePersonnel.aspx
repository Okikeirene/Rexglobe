<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="ManagePersonnel.aspx.cs" Inherits="RexGlobe.Staff.ManagePersonnel" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" Theme="PlasticBlue"  runat="server" AutoGenerateColumns="False" DataSourceID="SQLPersonnel" KeyFieldName="Personnel_ID">
    <Settings ShowFilterRow="True" />
    <settingsediting mode="PopupEditForm">
    </settingsediting>
    <SettingsSearchPanel Visible="True" />
    <Columns>
        <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" VisibleIndex="0">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="Personnel_ID" Caption="Personnel ID"  ReadOnly="True" VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="First_Name" Caption="First Name" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Middle_Name" Caption="Middle Name" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Last_Name" Caption="Last Name" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="Gender" FieldName="Gender"   VisibleIndex="5">
            <PropertiesComboBox DataSourceID="SqlGender" TextField="Name"  ValueField="Name" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataTextColumn FieldName="Designation" VisibleIndex="6">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Personnel_Type" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="8">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Phone_No" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Status" Visible="false" VisibleIndex="10">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="User_ID" Visible="false" VisibleIndex="11">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Task_Status" Visible="false" VisibleIndex="12">
        </dx:GridViewDataTextColumn>
    </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SQLPersonnel" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Personnel] WHERE [Personnel_ID] = @Personnel_ID" InsertCommand="INSERT INTO [Personnel] ([Personnel_ID], [First_Name], [Middle_Name], [Last_Name], [Gender], [Designation], [Personnel_Type], [Email], [Phone_No], [Status], [User_ID], [Task_Status]) VALUES (@Personnel_ID, @First_Name, @Middle_Name, @Last_Name, @Gender, @Designation, @Personnel_Type, @Email, @Phone_No, @Status, @User_ID, @Task_Status)" SelectCommand="SELECT * FROM [Personnel]" UpdateCommand="UPDATE [Personnel] SET [First_Name] = @First_Name, [Middle_Name] = @Middle_Name, [Last_Name] = @Last_Name, [Gender] = @Gender, [Designation] = @Designation, [Personnel_Type] = @Personnel_Type, [Email] = @Email, [Phone_No] = @Phone_No, [Status] = @Status, [User_ID] = @User_ID, [Task_Status] = @Task_Status WHERE [Personnel_ID] = @Personnel_ID">
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
    <asp:SqlDataSource ID="SqlGender" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[Name] FROM [RexGlobe].[dbo].[Gender] " >
    </asp:SqlDataSource>

</asp:Content>
