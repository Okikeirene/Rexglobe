<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UserSite.Master" AutoEventWireup="true" CodeBehind="ViewProcurement.aspx.cs" Inherits="RexGlobe.Users.ViewProcurement" %>


<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlProcurement" KeyFieldName="ID">
        <SettingsAdaptivity>
            <AdaptiveDetailLayoutProperties ColCount="1">
            </AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
        <Settings ShowFilterRow="True" />
        <EditFormLayoutProperties ColCount="1">
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="RequestPerson" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Procurement_Type" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Quantity" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Amount" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BudgetName" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Department" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="FinancialMonth" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="FinancialYear" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Location" FieldName="LocationName" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="Compliance" FieldName="Compliance"   VisibleIndex="12">
            <PropertiesComboBox DataSourceID="SqlProcurementDescritpion" TextField="Response"  ValueField="Response" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Head Of Operations" FieldName="HeadOfOperations"   VisibleIndex="13">
            <PropertiesComboBox DataSourceID="SqlProcurementDescritpion" TextField="Response"  ValueField="Response" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Head Of Finance" FieldName="HeadOfFinance"   VisibleIndex="14">
            <PropertiesComboBox DataSourceID="SqlProcurementDescritpion" TextField="Response"  ValueField="Response" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Managing Director" FieldName="ManagingDirector"   VisibleIndex="15">
            <PropertiesComboBox DataSourceID="SqlProcurementDescritpion" TextField="Response"  ValueField="Response" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataDateColumn FieldName="CreatedDate" VisibleIndex="16">
            </dx:GridViewDataDateColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlProcurement" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [Procurement]" DeleteCommand="DELETE FROM [Procurement] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Procurement] ([RequestPerson], [Procurement_Type], [Description], [Quantity], [Amount], [BudgetName], [Department], [FinancialMonth], [FinancialYear], [LocationName], [Compliance], [HeadOfOperations], [HeadOfFinance], [ManagingDirector], [CreatedDate]) VALUES (@RequestPerson, @Procurement_Type, @Description, @Quantity, @Amount, @BudgetName, @Department, @FinancialMonth, @FinancialYear, @LocationName, @Compliance, @HeadOfOperations, @HeadOfFinance, @ManagingDirector, @CreatedDate)" UpdateCommand="UPDATE [Procurement] SET [RequestPerson] = @RequestPerson, [Procurement_Type] = @Procurement_Type, [Description] = @Description, [Quantity] = @Quantity, [Amount] = @Amount, [BudgetName] = @BudgetName, [Department] = @Department, [FinancialMonth] = @FinancialMonth, [FinancialYear] = @FinancialYear, [LocationName] = @LocationName, [Compliance] = @Compliance, [HeadOfOperations] = @HeadOfOperations, [HeadOfFinance] = @HeadOfFinance, [ManagingDirector] = @ManagingDirector, [CreatedDate] = @CreatedDate WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RequestPerson" Type="String" />
            <asp:Parameter Name="Procurement_Type" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Quantity" Type="String" />
            <asp:Parameter Name="Amount" Type="Decimal" />
            <asp:Parameter Name="BudgetName" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="FinancialMonth" Type="String" />
            <asp:Parameter Name="FinancialYear" Type="String" />
            <asp:Parameter Name="LocationName" Type="String" />
            <asp:Parameter Name="Compliance" Type="String" />
            <asp:Parameter Name="HeadOfOperations" Type="String" />
            <asp:Parameter Name="HeadOfFinance" Type="String" />
            <asp:Parameter Name="ManagingDirector" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RequestPerson" Type="String" />
            <asp:Parameter Name="Procurement_Type" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Quantity" Type="String" />
            <asp:Parameter Name="Amount" Type="Decimal" />
            <asp:Parameter Name="BudgetName" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="FinancialMonth" Type="String" />
            <asp:Parameter Name="FinancialYear" Type="String" />
            <asp:Parameter Name="LocationName" Type="String" />
            <asp:Parameter Name="Compliance" Type="String" />
            <asp:Parameter Name="HeadOfOperations" Type="String" />
            <asp:Parameter Name="HeadOfFinance" Type="String" />
            <asp:Parameter Name="ManagingDirector" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlProcurmentDescription" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [ProcurementDescritpion]" DeleteCommand="DELETE FROM [ProcurementDescritpion] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ProcurementDescritpion] ([Procurement_Type], [Response], [Budget]) VALUES (@Procurement_Type, @Response, @Budget)" UpdateCommand="UPDATE [ProcurementDescritpion] SET [Procurement_Type] = @Procurement_Type, [Response] = @Response, [Budget] = @Budget WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Procurement_Type" Type="String" />
            <asp:Parameter Name="Response" Type="String" />
            <asp:Parameter Name="Budget" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Procurement_Type" Type="String" />
            <asp:Parameter Name="Response" Type="String" />
            <asp:Parameter Name="Budget" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>



