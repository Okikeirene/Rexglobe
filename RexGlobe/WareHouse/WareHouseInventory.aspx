<%@ Page Title="" Language="C#" MasterPageFile="~/WareHouse/SiteEngineer.Master" AutoEventWireup="true" CodeBehind="WareHouseInventory.aspx.cs" Inherits="RexLubs.WareHouse.WareHouseInventory" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlInventory" KeyFieldName="ID" Width="100%">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <Settings ShowFilterRow="True" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductNameByPiece" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductTypeP" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnitPriceByPiece" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductQuantityP" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductNameByCarton" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductTypeC" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnitPriceByCarton" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductQuantityC" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Location" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="Manager" FieldName="Manager"   VisibleIndex="11">
            <PropertiesComboBox DataSourceID="SQLPersonnel" TextField="UserName"  ValueField="UserName" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
        </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="ManagerPhoneNumber" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Message" VisibleIndex="13">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="State" FieldName="State"   VisibleIndex="14">
            <PropertiesComboBox DataSourceID="SqlState" TextField="Name"  ValueField="Name" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Country" FieldName="Country"   VisibleIndex="15">
            <PropertiesComboBox DataSourceID="SqlCountry" TextField="Name"  ValueField="Name" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="CreateBy" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="CreatedDate" VisibleIndex="17">
            </dx:GridViewDataDateColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlInventory" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [WareHouseInventory] WHERE [ID] = @ID" InsertCommand="INSERT INTO [WareHouseInventory] ([ProductNameByPiece], [ProductTypeP], [UnitPriceByPiece], [ProductQuantityP], [ProductNameByCarton], [ProductTypeC], [UnitPriceByCarton], [ProductQuantityC], [Location], [ManagerName], [ManagerPhoneNumber], [Message], [State], [Country], [CreateBy], [CreatedDate]) VALUES (@ProductNameByPiece, @ProductTypeP, @UnitPriceByPiece, @ProductQuantityP, @ProductNameByCarton, @ProductTypeC, @UnitPriceByCarton, @ProductQuantityC, @Location, @ManagerName, @ManagerPhoneNumber, @Message, @State, @Country, @CreateBy, @CreatedDate)" SelectCommand="SELECT * FROM [WareHouseInventory]" UpdateCommand="UPDATE [WareHouseInventory] SET [ProductNameByPiece] = @ProductNameByPiece, [ProductTypeP] = @ProductTypeP, [UnitPriceByPiece] = @UnitPriceByPiece, [ProductQuantityP] = @ProductQuantityP, [ProductNameByCarton] = @ProductNameByCarton, [ProductTypeC] = @ProductTypeC, [UnitPriceByCarton] = @UnitPriceByCarton, [ProductQuantityC] = @ProductQuantityC, [Location] = @Location, [ManagerName] = @ManagerName, [ManagerPhoneNumber] = @ManagerPhoneNumber, [Message] = @Message, [State] = @State, [Country] = @Country, [CreateBy] = @CreateBy, [CreatedDate] = @CreatedDate WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductNameByPiece" Type="String" />
            <asp:Parameter Name="ProductTypeP" Type="String" />
            <asp:Parameter Name="UnitPriceByPiece" Type="Decimal" />
            <asp:Parameter Name="ProductQuantityP" Type="Int32" />
            <asp:Parameter Name="ProductNameByCarton" Type="String" />
            <asp:Parameter Name="ProductTypeC" Type="String" />
            <asp:Parameter Name="UnitPriceByCarton" Type="Decimal" />
            <asp:Parameter Name="ProductQuantityC" Type="Int32" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="ManagerName" Type="String" />
            <asp:Parameter Name="ManagerPhoneNumber" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="CreateBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductNameByPiece" Type="String" />
            <asp:Parameter Name="ProductTypeP" Type="String" />
            <asp:Parameter Name="UnitPriceByPiece" Type="Decimal" />
            <asp:Parameter Name="ProductQuantityP" Type="Int32" />
            <asp:Parameter Name="ProductNameByCarton" Type="String" />
            <asp:Parameter Name="ProductTypeC" Type="String" />
            <asp:Parameter Name="UnitPriceByCarton" Type="Decimal" />
            <asp:Parameter Name="ProductQuantityC" Type="Int32" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="ManagerName" Type="String" />
            <asp:Parameter Name="ManagerPhoneNumber" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="CreateBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

     <asp:SqlDataSource ID="SqlState" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [StateID] ,[Name] ,[Region_ID] FROM [RexGlobe].[dbo].[States]">
</asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlCountry" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[Code],[Name]  FROM [RexGlobe].[dbo].[Country]">
</asp:SqlDataSource>  
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


</asp:Content>
