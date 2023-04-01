<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="ManagePersonnel.aspx.cs" Inherits="RexGlobe.Staff.ManagePersonnel" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" Theme="PlasticBlue"  runat="server" AutoGenerateColumns="False" DataSourceID="SQLPersonnel" KeyFieldName="ID">
    <Settings ShowFilterRow="True" />
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

    <settingsediting mode="PopupEditForm">
    </settingsediting>
    <SettingsSearchPanel Visible="True" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
    <Columns>
        <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="ID"  ReadOnly="True" VisibleIndex="1">
            <EditFormSettings Visible="False" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="FirstName" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="MiddleName" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="LastName" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="UserName" VisibleIndex="5">
        </dx:GridViewDataTextColumn>

        <dx:GridViewDataComboBoxColumn Caption="Gender" FieldName="Gender"   VisibleIndex="6">
            <PropertiesComboBox DataSourceID="SqlGender" TextField="Name"  ValueField="Name" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Salary" visible="false" VisibleIndex="8">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="EmployeeNumber" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="EmployeeType" VisibleIndex="10">
        </dx:GridViewDataTextColumn>

        <dx:GridViewDataTextColumn FieldName="Phone" VisibleIndex="11">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="Department" FieldName="Department"   VisibleIndex="12">
            <PropertiesComboBox DataSourceID="SqlDepartment" TextField="DepartmentName"  ValueField="DepartmentName" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
        </dx:GridViewDataComboBoxColumn>

        <dx:GridViewDataComboBoxColumn Caption="Designation" FieldName="Designation"   VisibleIndex="13">
            <PropertiesComboBox DataSourceID="SqlDesignations" TextField="DesignationName"  ValueField="DesignationName" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
        </dx:GridViewDataComboBoxColumn>

        <dx:GridViewDataTextColumn FieldName="Manager" VisibleIndex="14">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="Manager" FieldName="Manager"   VisibleIndex="14">
            <PropertiesComboBox DataSourceID="SQLPersonnel" TextField="UserName"  ValueField="UserName" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataDateColumn FieldName="Joining_Date" VisibleIndex="15">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn FieldName="NextofKinName" visible="false" VisibleIndex="16">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="NextofKinPhone" visible="false" VisibleIndex="17">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Status" VisibleIndex="18">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="CreatedDate" VisibleIndex="19">
        </dx:GridViewDataDateColumn>
    </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SQLPersonnel" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Employees] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Employees] ([FirstName], [MiddleName], [LastName], [UserName], [Gender], [Email], [Salary], [EmployeeNumber], [EmployeeType], [Phone], [Department], [Designation], [Manager], [Joining_Date], [NextofKinName], [NextofKinPhone], [Status], [CreatedDate]) VALUES (@FirstName, @MiddleName, @LastName, @UserName, @Gender, @Email, @Salary, @EmployeeNumber, @EmployeeType, @Phone, @Department, @Designation, @Manager, @Joining_Date, @NextofKinName, @NextofKinPhone, @Status, @CreatedDate)" SelectCommand="SELECT * FROM [Employees]" UpdateCommand="UPDATE [Employees] SET [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [UserName] = @UserName, [Gender] = @Gender, [Email] = @Email, [Salary] = @Salary, [EmployeeNumber] = @EmployeeNumber, [EmployeeType] = @EmployeeType, [Phone] = @Phone, [Department] = @Department, [Designation] = @Designation, [Manager] = @Manager, [Joining_Date] = @Joining_Date, [NextofKinName] = @NextofKinName, [NextofKinPhone] = @NextofKinPhone, [Status] = @Status, [CreatedDate] = @CreatedDate WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="MiddleName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="EmployeeNumber" Type="String" />
            <asp:Parameter Name="EmployeeType" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Manager" Type="String" />
            <asp:Parameter Name="Joining_Date" DbType="Date" />
            <asp:Parameter Name="NextofKinName" Type="String" />
            <asp:Parameter Name="NextofKinPhone" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="MiddleName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="EmployeeNumber" Type="String" />
            <asp:Parameter Name="EmployeeType" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Manager" Type="String" />
            <asp:Parameter Name="Joining_Date" DbType="Date" />
            <asp:Parameter Name="NextofKinName" Type="String" />
            <asp:Parameter Name="NextofKinPhone" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlGender" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[Name] FROM [RexGlobe].[dbo].[Gender] " >
    </asp:SqlDataSource>

     <asp:SqlDataSource ID="SqlDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[DepartmentName] FROM [RexGlobe].[dbo].[Departments] " >
    </asp:SqlDataSource>

     <asp:SqlDataSource ID="SqlDesignations" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[DesignationName] FROM [RexGlobe].[dbo].[Designations] " >
    </asp:SqlDataSource>

</asp:Content>
