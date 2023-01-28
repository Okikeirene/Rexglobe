<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="NewCustomer.aspx.cs" Inherits="RexGlobe.Customers.NewCustomer" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

   
    <!-- Include jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.3/themes/base/jquery-ui.css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.8.3/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
  
    //var lastState = null;
    //function OnStateChanged(state) {

    //    if (lga.InCallback())
    //        lastState = state.GetValue().toString();
    //    else lga.PerformCallback(state.GetValue().toString());
    //}

    //function OnEndCallback(s, e) {
    //    if (lastState) {
    //        lga.PerformCallback(lastState);
    //        lastState = null;
    //    }
    //}
   
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });

    // Javascript to enable link to tab
    var url = document.location.toString();
    if (url.match('#')) {
        $('.nav-pills a[href="#' + url.split('#')[1] + '"]').tab('show');
    }
    //Change hash for Page-reload
    $('.nav-pills a').on('shown.bs.tab', function (e) {
        window.location.hash = e.target.hash;
    })


</script>

<%--<%=HttpContext.Current.Session["PhoneNumber"]%>
<%=HttpContext.Current.Session["CompanyName"]%>SelectedTab="SelectTab"
<%=HttpContext.Current.Session["Email"]%>--%> 

         <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong><h3 class="panel-title">New Customer Registration</h3></strong>
                        </div>
                            <ul id="myTab" class="nav nav-pills" role="tablist" >
                                <li class="active"> 
                                <a href="#Company_data" role="tab" data-toggle="tab">Company Information</a> 
                                </li>
                                <li><a href="#Assets_data" role="tab" data-toggle="tab">Assets and Location of Assets</a></li>
                                <li><a href="#Introduction" role="tab" data-toggle="tab">Mode of Introduction</a></li>
                                <li><a href="#Other" role="tab" data-toggle="tab">Other Information</a></li>
                                <li><a href="#attachment" role="tab" data-toggle="tab">Attachment</a></li>
                                <li><a href="#Legal" role="tab" data-toggle="tab">Legal Agreement</a></li>
                            </ul>
                            <div id="myTabContent" class="tab-content" >
                                <div class="tab-pane fade in active " id="Company_data" role="tabpanel"  >
                                
                                <div class="row">
                                    <div class="col-md-12"> 
                                            <div class="progress">
                                              <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="14"
                                              aria-valuemin="0" aria-valuemax="100" style="width:14%">
                                                20% Complete (success)
                                              </div>
                                            </div> 
                                    </div>
                                </div>
                                 <div class="panel panel-default">
                                       
                                            <div id="Company" runat="server" class="panel-collapse collapse in">
                                                
                                                <div class="panel-body">
                                                    
                                                        <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%" ClientInstanceName="formlayout" ColCount="2" DataSourceID="SQLCustomer" OnDataBound="ASPxFormLayout1_DataBound" ColumnCount="2">
                                                            <Items>
                                                                <dx:LayoutGroup ColCount="4" ColSpan="2" ShowCaption="False" >
                                                                    <Items>
                                                                        <dx:LayoutItem FieldName="CompanyName" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                      <dx:ASPxTextBox ID="ASPxCompanyName" runat="server" ClientInstanceName="textCompanyName"  Width="100%" Height="25px" EnableClientSideAPI="True" >
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="TIN" FieldName="TIN" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxTIN" runat="server" ClientInstanceName="textTIN" Width="100%" Height="25px" EnableClientSideAPI="True" >
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="REX ID" FieldName="REXID" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" ClientInstanceName="textCompanyName" Width="100%" Height="25px" EnableClientSideAPI="True" >
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                <dx:LayoutGroup Caption="Company Information" ColCount="4" ColSpan="2">
                                                                    <Items>
                                                                        <dx:LayoutItem FieldName="DateOfIncorporation">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxDateEdit ID="aspxdtDoI" runat="server" ClientInstanceName="IncorporationDate" Width="100%" Height="25px">
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
                                                                        <dx:LayoutItem FieldName="DateOfCommencement">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxDateEdit ID="ASPxdeDoC" runat="server" Width="100%" Height="25px">
                                                                                    <TimeSectionProperties>
                                                                                    <TimeEditProperties>
                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </TimeEditProperties>
                                                                                    </TimeSectionProperties>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxDateEdit>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="ContractDate" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxDateEdit ID="ASPxContractDate" runat="server" Width="100%" Height="25px">
                                                                                    <TimeSectionProperties>
                                                                                    <TimeEditProperties>
                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </TimeEditProperties>
                                                                                    </TimeSectionProperties>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxDateEdit>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="AssignedTo">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxAssignedTo" runat="server" Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="BVN"  RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxBVN" runat="server" ClientInstanceName="textBVN"  Width="100%" Height="25px" EnableClientSideAPI="True">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Business Line" FieldName="BusinessLineId" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxComboBox ID="ASPxBusinessLineId" runat="server" DataSourceID="SqlBusinessLines" IncrementalFilteringMode="Contains" TextField="BusinessLineName" ValueField="BusinessLineId" Width="100%" Height="25px">
                                                    <ClearButton Visibility="Auto"></ClearButton>

                                                                                        <ValidationSettings>
                                                                                            <RequiredField ErrorText="Required" IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                <dx:LayoutGroup ColCount="2" Caption="Address" Width="50%">
                                                                    <Items>
                                                                        <dx:LayoutItem Caption="Business Address" ColSpan="2" FieldName="Address" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxFormLayout1_E11" runat="server" Width="100%" Height="25px">
                                                                                        <ValidationSettings>
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Business State" FieldName="StateId" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxComboBox ID="ASPxComboBoxState" runat="server" AutoPostBack="True" AutoResizeWithContainer="True" ClientInstanceName="state" DataSourceID="SqlState" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="Name" ValueField="StateId" Width="100%" Height="25px">
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
                                                                        <dx:LayoutItem Caption="Business Lga" FieldName="LgaId">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxComboBox ID="ASPxComboBoxLga" runat="server" ClientInstanceName="lga" DataSourceID="SqlLGA" IncrementalFilteringMode="Contains"   TextField="LGAName" ValueField="LGAId" Width="100%" Height="25px">
                                                                                       <ClientSideEvents EndCallback="function(s, e) {
	                                                                                            OnEndCallback
                                                                                            }" />

                                                                                            <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                <dx:LayoutGroup Caption="Contact Information" ColCount="2" Width="50%">
                                                                    <Items>
                                                                        <dx:LayoutItem Caption="Shareholding" FieldName="Shareholding" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxShareholding" runat="server" Width="100%" Height="25px">
                                                                                        <ValidationSettings>
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Staff Strength" FieldName="StaffStrength" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxStaffStrength" runat="server" Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="Phone1">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxPhone1" runat="server" Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="Phone2">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxPhone2" runat="server" Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem ColSpan="2" FieldName="Email" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxFormLayout1_E18" runat="server" Width="100%" Height="25px">
                                                                                        <ValidationSettings>
                                                                                            <RegularExpression ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                
                                                            </Items>
                                                            <SettingsItemCaptions Location="Top" />
                                                        </dx:ASPxFormLayout>

                                                        <dx:ASPxFormLayout ID="ASPxFormLayout3" runat="server" Width="100%" DataSourceID="SQLCustomer" ClientInstanceName="formlayout" ColCount="2" OnDataBound="ASPxFormLayout1_DataBound" ColumnCount="2">
		                                                    <Items>
                                                               <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Contact Person">
				                                                    <Items>
					                                                    <dx:LayoutItem ColSpan="2" Caption="First Name" FieldName="FirstName" RequiredMarkDisplayMode="Required">
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
								                                                    <dx:ASPxTextBox ID="FirstName" runat="server" ClientInstanceName="FirstName" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="True" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem Caption="Last Name" FieldName="LastName" RequiredMarkDisplayMode="Required">
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server">
								                                                    <dx:ASPxTextBox ID="LastName" runat="server" ClientInstanceName="LastName" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="True" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem Caption="Designation" FieldName="Designation"  RequiredMarkDisplayMode="Required" >
						                                                    <LayoutItemNestedControlCollection>
						                                                            <dx:LayoutItemNestedControlContainer>
                                                                                    <dx:ASPxTextBox ID="ASPxDesignation" runat="server" ClientInstanceName="Designation" Width="100%" Height="25px">
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

                                                            </Items>
		                                                    <SettingsItemCaptions Location="Top" />
	                                                    </dx:ASPxFormLayout>
                                                  
                                                        

                                                </div>
                                                   
                                                 <div style="float:right">
                                                          
                                                                <asp:Button ID="btnCmpID" runat="server" OnClick="ASPxCompanyNext_Click" Text="Next" CssClass="btn btn-primary" /> 
                                                       
                                                        </div><br /><br />
                                            </div>                                               
                                          
                                            
                                  </div>

                                   
                                 
                                </div>
                                 
                                 <div class="tab-pane fade " id="Assets_data" role="tabpanel"  >
                                    <div class="row">
                                        <div class="col-md-12"> 
                                            <div class="progress">
                                              <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="33"
                                              aria-valuemin="0" aria-valuemax="100" style="width:33%">
                                                33% Complete (success)
                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                 <div class="panel panel-default" >
                                        
                                       
                                            <div id="Assetsdata" class="panel-collapse collapse in" >
                                                
                                                <div class="panel-body">
                                                    <dx:ASPxFormLayout ID="ASPxFormLayout4" runat="server" Width="100%" ClientInstanceName="formlayout" ColCount="2" DataSourceID="SQLCustomer" OnDataBound="ASPxFormLayout1_DataBound" ColumnCount="2">
                                                            <Items>
                                                                <dx:LayoutGroup Caption="Credit Facility" ColCount="4" ColSpan="2" ShowCaption="False" >
                                                                    <Items>
                                                                        <dx:LayoutItem FieldName="TankFarm" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxMemo ID="ASPxTankFarm" runat="server" Height="75px" Width="100%">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Vessels" FieldName="Vessels" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">                                                                                 
                                                                                    <dx:ASPxMemo ID="ASPxVessels" runat="server" Height="75px" Width="100%">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Trucks" FieldName="Trucks" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                   
                                                                                    <dx:ASPxMemo ID="ASPxMemoTrucks" runat="server" Height="75px" Width="100%">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                         <dx:LayoutItem Caption="Filling Stations" FieldName="FillingStations" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxMemo ID="ASPxMemoFillingStations" runat="server" Height="75px" Width="100%">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                <dx:LayoutGroup Caption="Bank Information" ColCount="4" ColSpan="2">
                                                                    <Items>
                                                                        <dx:LayoutItem FieldName="Banks">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxGridLookup ID="ASPxGridLookup1" runat="server" AutoGenerateColumns="False" DataSourceID="SQLBanks" KeyFieldName="BankCode" Theme="Aqua" SelectionMode="Multiple" TextFormatString="{1}" MultiTextSeparator=", " Width="100%" Height="25px">

                                                                                        <Columns>
                                                                                            <dx:GridViewCommandColumn VisibleIndex="0" ShowSelectCheckbox="True" ShowEditButton="true" ShowNewButton="true" ShowDeleteButton="true">
                                                                                            </dx:GridViewCommandColumn>
                                                                                            <dx:GridViewDataTextColumn FieldName="BankCode" ReadOnly="True" VisibleIndex="1">
                                                                                            </dx:GridViewDataTextColumn>
                                                                                            <dx:GridViewDataTextColumn FieldName="BankName" VisibleIndex="2">
                                                                                            </dx:GridViewDataTextColumn>
                                                                                        </Columns>
                                                                                        <GridViewProperties>
                                                                                            <Templates>
                                                                                                <StatusBar>
                                                                                                    <table style="float: right">
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <dx:ASPxButton ID="Close" runat="server" AutoPostBack="false" Text="Close" 
                                                                                                                    ClientSideEvents-Click="function(s, e) {
                                                                                                                        lookup.ConfirmCurrentSelection();
                                                                                                                        lookup.HideDropDown();
                                                                                                                    }" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        </table>
                                                                                                </StatusBar>
                                                                                            </Templates>
                                                                                            <Settings ShowFilterRow="True" ShowStatusBar="Visible" />
                                                                                        </GridViewProperties>
                                                                                    </dx:ASPxGridLookup> 
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Does the company have audited accounts?" FieldName="AuditedAccounts">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                     <dx:ASPxComboBox ID="ASPxAuditedAccounts" runat="server" DataSourceID="SQLStatus" IncrementalFilteringMode="Contains" TextField="Decision" ValueField="StatusId" Width="100%" Height="25px">
                                                                                        <ClearButton Visibility="Auto">
                                                                                        </ClearButton>
                                                                                        <ValidationSettings>
                                                                                            <RequiredField ErrorText="Required" IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Name of the Company’s Auditors" FieldName="CompanyAuditors" ColSpan="2" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxCompanyAuditors" runat="server" Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Can we have a copy the audited accounts" FieldName="AttachedAuditedAccounts">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxComboBox ID="ASPxComboAttachedAuditedAccounts" runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="No" Value="No" />
                                                                                            <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        </Items>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="CompanyTurnover" FieldName="CompanyTurnover"  RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxCompanyTurnover" runat="server" ClientInstanceName="textCompanyTurnover"  Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>                                                                                       
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Security Deposit" FieldName="SecurityDeposit" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxComboBox ID="ASPxSecurityDeposit" runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="No" Value="No" />
                                                                                            <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        </Items>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                <dx:LayoutGroup ColCount="2" Caption="Cash Information" Width="50%">
                                                                    <Items>
                                                                        <dx:LayoutItem Caption="Amount" FieldName="Amount"  RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxAmount" runat="server" ClientInstanceName="textAmount"  Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>                                                                                       
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Payment Type" FieldName="PaymentType" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxComboBox ID="ASPxPaymentType" runat="server" AutoPostBack="True" AutoResizeWithContainer="True" ClientInstanceName="PaymentType" DataSourceID="SQLPaymentType" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="PaymentType" ValueField="PaymentID" Width="100%" Height="25px">
                                                                                        

                                                                                        <ValidationSettings>
                                                                                            <RequiredField ErrorText="Required" IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                <dx:LayoutGroup Caption="Cash Location" ColCount="2" Width="50%">
                                                                    <Items>
                                                                        <dx:LayoutItem Caption="CashLocation" FieldName="CashLocation" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxCashLocation" runat="server" Width="100%" Height="25px">
                                                                                        <ValidationSettings>
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Cash Owner" FieldName="CashOwner" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                     <dx:ASPxComboBox ID="ASPxComboBoxFinYearBegin" runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Own funds" Value="Own funds" />
                                                                                            <dx:ListEditItem Text="Advanced by your Bankers" Value="Advanced by your Bankers" />
                                                                                        </Items> 

                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                            </Items>
                                                            <SettingsItemCaptions Location="Top" />
                                                        </dx:ASPxFormLayout>
                                                        
                                                </div>
                                                    <div style="float:right">
                                                   
                                                        <asp:Button ID="btnAssetNex" runat="server" OnClick="ASPxAssetNext_Click" Text="Next" CssClass="btn btn-primary" />
                                                </div>
                                                <div style="float:left">
                                                    
                                                    <asp:Button ID="btnAssetsPrev" runat="server" OnClick="ASPxAssetsPrev_Click" Text="Back" CssClass="btn btn-primary" /><%-- <input type='button'  id="PBack" class='btn button-previous' value='Back' onclick='$("#Company_data").tabs("option", "active", 2)'  /> </a>--%>
                                              </div>
                                                    <br /><br />

                                            </div>
                                                
                                        </div>

                             
                                 
                                </div>
                                 
                                <div class="tab-pane fade in" id="Introduction" role="tabpanel" >
                                <div class="row">
                                        <div class="col-md-12"> 
                                            <div class="progress">
                                              <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="50"
                                              aria-valuemin="0" aria-valuemax="100" style="width:50%">
                                                50% Complete (success)
                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                
                                 <div class="panel panel-default">
                                   
                                            <div id="Introductions" class="panel-collapse collapse in" runat="server">
                                                
                                                <div class="panel-body">
                                                
                                                   <dx:ASPxFormLayout ID="ASPxFormLayout5" runat="server" Width="100%" ClientInstanceName="formlayout" ColCount="2" DataSourceID="SQLCustomer" OnDataBound="ASPxFormLayout1_DataBound" ColumnCount="2">
                                                            <Items>
                                                                <dx:LayoutGroup Caption="Mode Of Introduction" ColCount="4" ColSpan="2" ShowCaption="True" >
                                                                    <Items>
                                                                        <dx:LayoutItem FieldName="Walkin" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                     <dx:ASPxLabel ID="ASPxLabel11" runat="server" Text="Do you trade in products or services that originate in any of the following countries?"></dx:ASPxLabel>
                                                                                     <dx:ASPxComboBox ID="ASPxComWalkin" runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="No" Value="No" />
                                                                                            <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        </Items>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Marketed By Whom?" FieldName="MarketedByWhom"  RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                     <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="No" Value="No" />
                                                                                            <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        </Items>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Introduced By Whom" FieldName="IntroducedByWhom"  RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxComboBox ID="ASPxComIntroducedByWhom" runat="server" SelectedIndex="0" OnSelectedIndexChanged="ASPxComIntroducedByWhom_SelectedIndexChanged" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="No" Value="No" />
                                                                                            <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        </Items>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                    <dx:ASPxTextBox ID="ASPxIntdByWhom" Visible="false" runat="server" Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                <dx:LayoutGroup Caption="Projects" ColCount="2">
                                                                    <Items>
                                                                        <dx:LayoutItem Caption="Please provide us your current list of top 5 suppliers" FieldName="SuppliersList">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxMemo ID="ASPxSuppliersList" runat="server" Height="100px" Width="100%"></dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Top Five Clients" FieldName="TopFiveclients">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxMemo ID="ASPxTopFiveclients" runat="server" Height="100px" Width="100%"></dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem  FieldName="RemitMoneyForSanctionedCountry" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxLabel ID="RemitMoney" runat="server" Text="Do you remit/receive any money directly to/from a sanctioned country or indirectly via another country or directly or indirectly to/from a sanctioned person? If yes, please elaborate."></dx:ASPxLabel>
                                                                                   <dx:ASPxComboBox ID="ASPxRemitMoneyForSanctionedCountry" runat="server" AutoPostBack="True" AutoResizeWithContainer="True" OnSelectedIndexChanged="ASPxRemitMoneyForSanctionedCountry_SelectedIndexChanged" ClientInstanceName="ASPxRemitMoneyForSanctionedCountry" Width="100%" Height="25px">
                                                                                       <ClearButton Visibility="Auto"></ClearButton>
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="No" Value="No" />
                                                                                            <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        </Items>
                                                                                    </dx:ASPxComboBox>
                                                                                    <dx:ASPxMemo ID="MemoCommentRemitMoneyForSanctionedCountry" Visible="false" runat="server" Height="100px" Width="300px"></dx:ASPxMemo>
                                                                                    <dx:ASPxTextBox ID="CommentRemitMoneyForSanctionedCountry" Visible="false" runat="server" Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Do you perform business/transactions on behalf of a third party? If yes, provide details." FieldName="PerformThirdPartyBusinessTransaction">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxMemo ID="ASPPerformThirdPartyBusinessTransaction" runat="server" Width="100%" Height="25px">
                                                                                    </dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="AnySubsidiaryInSanctionCountry"  RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Do you have any subsidiary, branch, office or other presence in a Sanction Country? If yes, specify the sanctioned country and nature of business/ operations."></dx:ASPxLabel>
                                                                                    
                                                                                     <dx:ASPxComboBox ID="ASPxComAnySubsidiaryCountry" runat="server" SelectedIndex="0" OnSelectedIndexChanged="ASPxComAnySubsidiaryCountry_SelectedIndexChanged" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="No" Value="No" />
                                                                                            <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        </Items>

                                                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                <dx:ASPxMemo ID="ASPxAnySubsidiaryInSanctionCountry" runat="server" Visible="false"  Width="100%" Height="25px" >
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="CountryOfProductTrade" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="Do you trade in products or services that originate in any of the following countries?"></dx:ASPxLabel>
                                                                                     <dx:ASPxComboBox ID="ASPxCountryOfProductTrade" runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="Cuba" Value="Cuba" />
                                                                                            <dx:ListEditItem Text="Burma/Myanmar" Value="Burma/Myanmar" />
                                                                                            <dx:ListEditItem Text="Iran" Value="Iran" />
                                                                                            <dx:ListEditItem Text="North Korea (DPKR)" Value="North Korea (DPKR)" />
                                                                                            <dx:ListEditItem Text="Sudan (North or South)" Value="Sudan (North or South)" />
                                                                                            <dx:ListEditItem Text="Syria" Value="Syria" />
                                                                                            <dx:ListEditItem Text="Crimea (Ukraine)" Value="Crimea (Ukraine)" />
                                                                                            <dx:ListEditItem Text="Israel" Value="Israel" />
                                                                                        </Items>

                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="CountryImportedGoodsandServices" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                     <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="Do you import goods or services of any origin from or which transit through  any of the following countries?"></dx:ASPxLabel>
                                                                                     <dx:ASPxComboBox ID="ASPxCountryImportedGoodsandServices" runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="Cuba" Value="Cuba" />
                                                                                            <dx:ListEditItem Text="Burma/Myanmar" Value="Burma/Myanmar" />
                                                                                            <dx:ListEditItem Text="Iran" Value="Iran" />
                                                                                            <dx:ListEditItem Text="North Korea (DPKR)" Value="North Korea (DPKR)" />
                                                                                            <dx:ListEditItem Text="Sudan (North or South)" Value="Sudan (North or South)" />
                                                                                            <dx:ListEditItem Text="Syria" Value="Syria" />
                                                                                            <dx:ListEditItem Text="Crimea (Ukraine)" Value="Crimea (Ukraine)" />
                                                                                            <dx:ListEditItem Text="Israel" Value="Israel" />
                                                                                        </Items>

                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="CountryExportedGoodsandServices" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="Do you export or re-export any goods or services either directly  or indirectly to any of the following countries?"></dx:ASPxLabel>
                                                                                     <dx:ASPxComboBox ID="ASPxComboBox4" runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="Cuba" Value="Cuba" />
                                                                                            <dx:ListEditItem Text="Burma/Myanmar" Value="Burma/Myanmar" />
                                                                                            <dx:ListEditItem Text="Iran" Value="Iran" />
                                                                                            <dx:ListEditItem Text="North Korea (DPKR)" Value="North Korea (DPKR)" />
                                                                                            <dx:ListEditItem Text="Sudan (North or South)" Value="Sudan (North or South)" />
                                                                                            <dx:ListEditItem Text="Syria" Value="Syria" />
                                                                                            <dx:ListEditItem Text="Crimea (Ukraine)" Value="Crimea (Ukraine)" />
                                                                                            <dx:ListEditItem Text="Israel" Value="Israel" />
                                                                                        </Items>

                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="CountryTransitOfGoodsandService" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="Do you export or re-export any goods or services which transit  through any of the following countries?"></dx:ASPxLabel>
                                                                                     <dx:ASPxComboBox ID="ASPxComboBox5" runat="server" SelectedIndex="0" Width="100%" Height="25px">
                                                                                        <Items>
                                                                                            <dx:ListEditItem Selected="True" Text="Select" Value="Select" />
                                                                                            <dx:ListEditItem Text="Cuba" Value="Cuba" />
                                                                                            <dx:ListEditItem Text="Burma/Myanmar" Value="Burma/Myanmar" />
                                                                                            <dx:ListEditItem Text="Iran" Value="Iran" />
                                                                                            <dx:ListEditItem Text="North Korea (DPKR)" Value="North Korea (DPKR)" />
                                                                                            <dx:ListEditItem Text="Sudan (North or South)" Value="Sudan (North or South)" />
                                                                                            <dx:ListEditItem Text="Syria" Value="Syria" />
                                                                                            <dx:ListEditItem Text="Crimea (Ukraine)" Value="Crimea (Ukraine)" />
                                                                                            <dx:ListEditItem Text="Israel" Value="Israel" />
                                                                                        </Items>

                                                    <ClearButton Visibility="Auto"></ClearButton>
                                                                                    </dx:ASPxComboBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>


                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                
                                                            </Items>
                                                            <SettingsItemCaptions Location="Top" />
                                                        </dx:ASPxFormLayout>
                                                  
                                                     
                                                </div><%--End of row-----%>
                                                  <div style="float:right">
                                                   
                                                        <asp:Button ID="BtnInformatonNext" runat="server" OnClick="BtnInformatonNext_Click" Text="Next" CssClass="btn btn-primary" />
                                                </div>
                                                <div style="float:left">
                                                    
                                                    <asp:Button ID="BtnInforPrev" runat="server" OnClick="BtnInforPrev_Click" Text="Back" CssClass="btn btn-primary" /><%-- <input type='button'  id="PBack" class='btn button-previous' value='Back' onclick='$("#Company_data").tabs("option", "active", 2)'  /> </a>--%>
                                              </div>
                                                  <br /><br />
                                            </div>
                                        </div>

                                   
                                 
                                </div>

                                <div class="tab-pane fade in " id="Other" role="tabpanel" >
                                     <div class="row">
                                        <div class="col-md-12"> 
                                            <div class="progress">
                                              <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="70"
                                              aria-valuemin="0" aria-valuemax="100" style="width:70%">
                                                70% Complete (success)
                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                 
                                     <div class="panel panel-default">
                                         
                                       
                                            <div id="Others" class="panel-collapse collapse in" runat="server">
                                                
                                                <div class="panel-body">
                                                    
                                                  <dx:ASPxFormLayout ID="ASPxFormLayout6" runat="server" Width="100%" ClientInstanceName="formlayout" ColCount="2" DataSourceID="SQLCustomer" OnDataBound="ASPxFormLayout1_DataBound" ColumnCount="2">
                                                            <Items>
                                                                <dx:LayoutGroup ColSpan="2" Caption="If any of your responses to questions (e, f, g or h) is “YES”, please provide additional " Width="100%">
                                                                    <Items>
                                                                        <dx:LayoutItem  FieldName="YourCustomers" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" Width="50%">
                                                                                    <dx:ASPxLabel ID="ASPxLabel8" runat="server"  Width="100%" Height="25px" Text="What is the nature of your customers, suppliers, counterparties or other persons with whom you transact with in the sanctioned country? How many are there? Who is the end user (if different) of the goods sold, in the sanctioned country."></dx:ASPxLabel>
                                                                                   
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem  FieldName="YourCustomers" RequiredMarkDisplayMode="Required" Width="50%">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxMemo ID="ASPxMemo1" runat="server" Height="100px" Width="300px"></dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem  FieldName="YourProducts" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxLabel ID="ASPxLabel9" runat="server"  Width="100%" Height="25px" Text="What are the goods/products? For supplies from a sanctioned country describe the product and list the destination(s) to which they are sent. For supplies to a sanctioned country, list country/ies of origin and confirm if any goods products originated in the U.S."></dx:ASPxLabel>
                                                                                    <dx:ASPxMemo ID="ASPxMemo6" runat="server" Height="100px" Width="300px"></dx:ASPxMemo>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="TotalsalesOfClients">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxLabel ID="ASPxLabel10" runat="server" Text="Total sales of client (USDm)"></dx:ASPxLabel>
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox14" runat="server" ClientInstanceName="textAmount"  Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>                                                                                       
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                <dx:LayoutGroup Caption="Purchase Information" ColCount="2" Width="100%">
                                                                    <Items>
                                                                        <dx:LayoutItem Caption="Total purchases of client (USDm)" FieldName="TotalPurchasesofClient" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox17" runat="server" ClientInstanceName="textAmount"  Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>                                                                                       
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem Caption="Total Assets of the Client (USDm)" FieldName="TotalAssetsoftheClient" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                   <dx:ASPxTextBox ID="ASPxTextBox13" runat="server" ClientInstanceName="textAmount"  Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>                                                                                       
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="Total operating income of client (USDm)">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox20" runat="server" ClientInstanceName="textAmount"  Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0.00">
                                                                                        <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>                                                                                       
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem FieldName="Phone2">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox23" runat="server" Width="100%" Height="25px">
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                        <dx:LayoutItem ColSpan="2" FieldName="Email" RequiredMarkDisplayMode="Required">
                                                                            <LayoutItemNestedControlCollection>
                                                                                <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                                                                    <dx:ASPxTextBox ID="ASPxTextBox24" runat="server" Width="100%" Height="25px">
                                                                                        <ValidationSettings>
                                                                                            <RegularExpression ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                                                                            <RequiredField IsRequired="True" />
                                                                                        </ValidationSettings>
                                                                                    </dx:ASPxTextBox>
                                                                                </dx:LayoutItemNestedControlContainer>
                                                                            </LayoutItemNestedControlCollection>
                                                                        </dx:LayoutItem>
                                                                    </Items>
                                                                </dx:LayoutGroup>
                                                                
                                                            </Items>
                                                            <SettingsItemCaptions Location="Top" />
                                                        </dx:ASPxFormLayout>
                                                        
                                                </div>
                                                 <div style="float:right">
                                                   
                                                        <asp:Button ID="BtnOtherNext" runat="server" OnClick="BtnOtherNext_Click" Text="Next" CssClass="btn btn-primary" />
                                                </div>
                                                <div style="float:left">
                                                    
                                                    <asp:Button ID="BtnOtherPrev" runat="server" OnClick="BtnOtherPrev_Click" Text="Back" CssClass="btn btn-primary" />
                                              </div>
                                                   <br /><br />
                                            </div>
                                        </div>

                                   
                                 
                                </div>

                                
                                <div class="tab-pane fade in " id="attachment" role="tabpanel" >
                                 <div class="row">
                                        <div class="col-md-12"> 
                                            <div class="progress">
                                              <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90"
                                              aria-valuemin="0" aria-valuemax="100" style="width:90%">
                                                90% Complete (success)
                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                 <div class="panel panel-default">
                                        
                                     
                                            <div id="Uploadattachment" class="panel-collapse collapse in" >
                                                
                                                <div class="panel-body">
                                                    
                                                     <dx:ASPxFormLayout ID="ASPxFormLayout2" runat="server" Width="100%" DataSourceID="SQLCustomerFiles" ClientInstanceName="formlayout" ColCount="2" OnDataBound="ASPxFormLayout1_DataBound" ColumnCount="2">
		                                                    <Items>
                                                               <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Supporting Documents - Ensure you upload either (Driver’s license or International Passport) ">
				                                                    <Items>
					                                                    <dx:LayoutItem ColSpan="2" Caption="Certificate of incorporation" FieldName="FileName1" RequiredMarkDisplayMode="Required">
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
								                                                    <dx:ASPxTextBox ID="FileName1" runat="server" ClientInstanceName="Certificateofincorporation"  text="Certificate of incorporation" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="True" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem Caption="Document Description" FieldName="FileDescription1" RequiredMarkDisplayMode="Required">
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server">
								                                                    <dx:ASPxTextBox ID="FileDescription1" runat="server" ClientInstanceName="FileDescription" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="True" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem Caption="File Content" FieldName="FileContent1"  RequiredMarkDisplayMode="Required" >
						                                                    <LayoutItemNestedControlCollection>
						                                                            <dx:LayoutItemNestedControlContainer>
                                                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                                    `                             
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
				                                                    </Items>
                                                                   <Items>
					                                                    <dx:LayoutItem ColSpan="2" Caption="Articles of Association" FieldName="FileName2" >
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
								                                                    <dx:ASPxTextBox ID="FileName2" runat="server" ClientInstanceName="FileName" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="False" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem Caption="Document Description" FieldName="FileDescription2" >
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server">
								                                                    <dx:ASPxTextBox ID="FileDescription2" runat="server" ClientInstanceName="FileDescription" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="False" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem FieldName="FileContent2" Caption="File Content" >
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
							                                                        <asp:FileUpload ID="FileUpload2"  runat="server" />
                                                                                                                       
                                                                                </dx:LayoutItemNestedControlContainer>
                            
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
				                                                    </Items>
                                                                     <Items>
					                                                    <dx:LayoutItem ColSpan="2" Caption="Utility Bill" FieldName="FileName1" RequiredMarkDisplayMode="Required">
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
								                                                    <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" ClientInstanceName="FileName" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="True" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem Caption="Document Description" FieldName="FileDescription1" RequiredMarkDisplayMode="Required">
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server">
								                                                    <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" ClientInstanceName="FileDescription" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="True" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem Caption="File Content" FieldName="FileContent1"  RequiredMarkDisplayMode="Required" >
						                                                    <LayoutItemNestedControlCollection>
						                                                            <dx:LayoutItemNestedControlContainer>
                                                                                    <asp:FileUpload ID="FileUpload3" runat="server" />
                                                    `                               
                                                                                    

							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
				                                                    </Items>
                                                                   <Items>
					                                                    <dx:LayoutItem ColSpan="2" Caption="Form C07 & Form C02" FieldName="FileName2" >
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
								                                                    <dx:ASPxTextBox ID="ASPxTextBox4" runat="server" ClientInstanceName="FileName" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="False" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem Caption="Document Description" FieldName="FileDescription2" >
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server">
								                                                    <dx:ASPxTextBox ID="ASPxTextBox5" runat="server" ClientInstanceName="FileDescription" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="False" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem FieldName="FileContent2" Caption="File Content" >
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
							                                                        <asp:FileUpload ID="FileUpload4"  runat="server" />
                                                                                                                       
                                                                                </dx:LayoutItemNestedControlContainer>
                            
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
				                                                    </Items>
                                                                     <Items>
					                                                    <dx:LayoutItem ColSpan="2" Caption="Authorised Signatory list" FieldName="FileName1" RequiredMarkDisplayMode="Required">
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
								                                                    <dx:ASPxTextBox ID="ASPxTextBox6" runat="server" ClientInstanceName="FileName" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="True" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem Caption="Document Description" FieldName="FileDescription1" RequiredMarkDisplayMode="Required">
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server">
								                                                    <dx:ASPxTextBox ID="ASPxTextBox7" runat="server" ClientInstanceName="FileDescription" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="True" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem Caption="File Content" FieldName="FileContent1"  RequiredMarkDisplayMode="Required" >
						                                                    <LayoutItemNestedControlCollection>
						                                                            <dx:LayoutItemNestedControlContainer>
                                                                                    <asp:FileUpload ID="FileUpload5" runat="server" />
                                                    `                               

							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
				                                                    </Items>
                                                                   <Items>
					                                                    <dx:LayoutItem ColSpan="2" Caption="Board of Directors" FieldName="FileName2" >
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
								                                                    <dx:ASPxTextBox ID="ASPxTextBox8" runat="server" ClientInstanceName="FileName" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="False" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem Caption="Document Description" FieldName="FileDescription2" >
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server">
								                                                    <dx:ASPxTextBox ID="ASPxTextBox9" runat="server" ClientInstanceName="FileDescription" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="False" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem FieldName="FileContent2" Caption="File Content" >
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
							                                                        <asp:FileUpload ID="FileUpload6"  runat="server" />
                                                                                                                    
                                                                                </dx:LayoutItemNestedControlContainer>
                            
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
				                                                    </Items>
                                                                    <Items>
					                                                    <dx:LayoutItem ColSpan="2" Caption="Bank Reference" FieldName="FileName2" >
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
								                                                    <dx:ASPxTextBox ID="ASPxTextBox10" runat="server" ClientInstanceName="FileName" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="False" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem Caption="Document Description" FieldName="FileDescription2" >
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server">
								                                                    <dx:ASPxTextBox ID="ASPxTextBox11" runat="server" ClientInstanceName="FileDescription" Width="100%" Height="25px">
									                                                    <ValidationSettings Display="Dynamic">
										                                                    <RequiredField IsRequired="False" />
									                                                    </ValidationSettings>
								                                                    </dx:ASPxTextBox>
							                                                    </dx:LayoutItemNestedControlContainer>
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
					                                                    <dx:LayoutItem FieldName="FileContent2" Caption="File Content" >
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
							                                                        <asp:FileUpload ID="FileUpload7"  runat="server" />
                                                                                                                     
                                                                                </dx:LayoutItemNestedControlContainer>
                            
						                                                    </LayoutItemNestedControlCollection>
					                                                    </dx:LayoutItem>
				                                                    </Items>
			                                                    </dx:LayoutGroup>
                                                                
                                                            </Items>
		                                                    <SettingsItemCaptions Location="Top" />
	                                                    </dx:ASPxFormLayout>
                                                    
                                                    
                                                </div>
                                                <div style="float:right">
                                                   
                                                        <asp:Button ID="btnAttachNext" runat="server" OnClick="AttachbtnNext_Click" Text="Next" CssClass="btn btn-primary" />
                                                </div>
                                                <div style="float:left">
                                                    
                                                    <asp:Button ID="btnAttachPrev" runat="server" OnClick="AttachbtnPrevious_Click" Text="Back" CssClass="btn btn-primary" />
                                              </div>
                                                
                                                <br /><br />
                                            </div>
                                        </div>

                                </div>
                                 
                                <div class="tab-pane fade in " id="Legal" role="tabpanel" >
                                   <div class="row">
                                        <div class="col-md-12"> 
                                            <div class="progress">
                                              <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100"
                                              aria-valuemin="0" aria-valuemax="100" style="width:100%">
                                                100% Complete (success)
                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                         

                                 <div class="panel panel-default">
                                 
                                       <div id="LegalAgreement" class="panel-collapse collapse in" >
                                                
                                                <div class="panel-body">
                                                <dx:ASPxCheckBox ID="ASPxCheckBox1" runat="server"></dx:ASPxCheckBox>
                                                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="I/We certify that we will not undertake transactions with parties or countries subject to international sanctions regimes/restrictions via our accounts with Emirates Islamic and its subsidiaries unless and until this has been agreed to with the bank. I/We further confirm that we will not route transactions via 3rd parties/countries to obscure transaction activity and undertake to provide the necessary evidence to demonstrate our compliance with this undertaking if so requested by Emirates Islamic and its subsidiaries. I/We acknowledge that failure to do so or provide false, incorrect or misleading information may result in Emirates Islamic and its subsidiaries requesting us to immediately close our relationship. I/We confirm that this Questionnaire has been signed by (name of the person) "></dx:ASPxLabel>
                                                <dx:ASPxTextBox ID="ASPxTextBox12" runat="server" Height="30%" Width="100%"></dx:ASPxTextBox>
                                                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="in the company and that all information is correct and true at the time of responding and is authorised to provide such certifications/undertakings."></dx:ASPxLabel>
                                                </div>

                                                <div style="float:left">
                                                    
                                                    <asp:Button ID="BtnLegalAgreement" runat="server" OnClick="BtnLegalAgreement_Click" Text="Back" CssClass="btn btn-primary" />
                                                </div>
                                                <br /><br />
                                        </div>
                                   </div>

                                    <div class="form-group col-md-3" style="padding-top: 10px;" align="center">
                                             <asp:Button ID="ASPxButtonind" runat="server"  Text="Submit Application" OnClick="ASPxButtonSubmit_Click" CssClass="btn btn-primary"  />  
                                        </div>
                                             <asp:HiddenField id="CurrentTab" value="" runat="server" ClientIDMode="static" />
                                             
                                 </div>
                        
                        </div>
                           <asp:HiddenField ID="TabName" runat="server" />
                   </div> 
        <script>
            $('#myTab a').click(function (e) {
                e.preventDefault();
                $(this).tab('show');
            });

            // store the currently selected tab in the hash value
            $("ul.nav-pills > li > a").on("shown.bs.tab", function (e) {
                var id = $(e.target).attr("href").substr(1);
                window.location.hash = id;
            });

            // on load of the page: switch to the currently selected tab
            var hash = window.location.hash;
            $('#myTab a[href="' + hash + '"]').tab('show');
            //$(document).ready(function () {
            //    if (location.hash) {
            //        $("a[href='" + location.hash + "']").tab("show");
            //    }
            //    $(document.body).on("click", "a[data-toggle]", function (event) {
            //        location.hash = this.getAttribute("href");
            //    });
            //});
            //$(window).on("popstate", function () {
            //    var anchor = location.hash || $("a[data-toggle='tab']").first().attr("href");
            //    $("a[href='" + anchor + "']").tab("show");
            //});
        </script>      



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
    <asp:SqlDataSource ID="SqlPaymentType" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [PaymentTypes] WHERE [PaymentID] = @PaymentID" InsertCommand="INSERT INTO [PaymentTypes] ([PaymentType], [PaymentChannel]) VALUES (@PaymentType, @PaymentChannel)" SelectCommand="SELECT * FROM [PaymentTypes]" UpdateCommand="UPDATE [PaymentTypes] SET [PaymentType] = @PaymentType, [PaymentChannel] = @PaymentChannel WHERE [PaymentID] = @PaymentID">
        <DeleteParameters>
            <asp:Parameter Name="PaymentID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PaymentType" Type="String" />
            <asp:Parameter Name="PaymentChannel" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PaymentType" Type="String" />
            <asp:Parameter Name="PaymentChannel" Type="String" />
            <asp:Parameter Name="PaymentID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
  
    <asp:SqlDataSource ID="SqlLGA" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [LGAs] WHERE [LGAId] = @LGAId" InsertCommand="INSERT INTO [LGAs] ([LGAName], [StateId]) VALUES (@LGAName, @StateId)" SelectCommand="SELECT * FROM [LGAs] WHERE ([StateId] = @StateId)" UpdateCommand="UPDATE LGAs SET LGAName = @LGAName, StateId = @StateId WHERE (LGAId = @LGAId)">
        <DeleteParameters>
            <asp:Parameter Name="LGAId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LGAName" Type="String" />
            <asp:Parameter Name="StateId" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="StateId" QueryStringField="StateID" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="LGAName" Type="String" />
            <asp:Parameter Name="StateId" Type="String" />
            <asp:Parameter Name="LGAId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlCustomerFiles" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [CustomerFiles] WHERE [FileId] = @FileId" InsertCommand="INSERT INTO [CustomerFiles] ([FileId], [RequestId], [FileName], [FileDescription], [FileType], [FileContent], [CreateDate]) VALUES (@FileId, @RequestId, @FileName, @FileDescription, @FileType, @FileContent, @CreateDate)" SelectCommand="SELECT * FROM [CustomerFiles]" UpdateCommand="UPDATE [CustomerFiles] SET [RequestId] = @RequestId, [FileName] = @FileName, [FileDescription] = @FileDescription, [FileType] = @FileType, [FileContent] = @FileContent, [CreateDate] = @CreateDate WHERE [FileId] = @FileId">
        <DeleteParameters>
            <asp:Parameter Name="FileId" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FileId" Type="Object" />
            <asp:Parameter Name="RequestId" Type="Int32" />
            <asp:Parameter Name="FileName" Type="String" />
            <asp:Parameter Name="FileDescription" Type="String" />
            <asp:Parameter Name="FileType" Type="String" />
            <asp:Parameter Name="FileContent" Type="Object" />
            <asp:Parameter Name="CreateDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RequestId" Type="Int32" />
            <asp:Parameter Name="FileName" Type="String" />
            <asp:Parameter Name="FileDescription" Type="String" />
            <asp:Parameter Name="FileType" Type="String" />
            <asp:Parameter Name="FileContent" Type="Object" />
            <asp:Parameter Name="CreateDate" Type="DateTime" />
            <asp:Parameter Name="FileId" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Customer] WHERE [RequestID] = @RequestID" InsertCommand="INSERT INTO [Customer] ([REXID], [TIN], [Firstname], [LastName], [Designation], [CompanyName], [DateOfIncorporation], [DateOfCommencement], [BVN], [Address], [Email], [Phone1], [Phone2], [ContractDate], [AssignedTo], [BusinessLineID], [LGAID], [StateID], [Status], [CreatedBy], [CreatedDate], [CreditLine], [Shareholding], [StaffStrength], [TankFarms], [Vessels], [Trucks], [FillingStations], [Bankers], [AuditedAccounts], [CompanyAuditors], [AttachedAuditedAccounts], [CompanyTurnover], [SecurityDeposit], [PaymentType], [CashLocation], [CashOwner], [Walkin], [MarketedByWhom], [IntroducedByWhom], [SuppliersList], [TopFiveclients], [RemitMoneyForSanctionedCountry], [PerformThirdPartyBusinessTransaction], [AnySubsidiaryInSanctionCountry], [CountryOfProductTrade], [CountryImportedGoodsandServices], [CountryExportedGoodsandServices], [CountryTransitOfGoodsandService], [YourCustomers], [YourProducts], [TotalsalesOfClients], [TotalPurchasesofClient], [TotalAssetsoftheClient], [TotalOperatingIncomeofClient], [LicenseforConductedTransactions], [TransactwithSanctionedCountries], [BanksUsedtoTransactwithSanctionedCountries], [PlanToGrowMaintainorReduceBusinesswithSanctionCountries], [AcceptTermsandConditions]) VALUES (@REXID, @TIN, @Firstname, @LastName, @Designation, @CompanyName, @DateOfIncorporation, @DateOfCommencement, @BVN, @Address, @Email, @Phone1, @Phone2, @ContractDate, @AssignedTo, @BusinessLineID, @LGAID, @StateID, @Status, @CreatedBy, @CreatedDate, @CreditLine, @Shareholding, @StaffStrength, @TankFarms, @Vessels, @Trucks, @FillingStations, @Bankers, @AuditedAccounts, @CompanyAuditors, @AttachedAuditedAccounts, @CompanyTurnover, @SecurityDeposit, @PaymentType, @CashLocation, @CashOwner, @Walkin, @MarketedByWhom, @IntroducedByWhom, @SuppliersList, @TopFiveclients, @RemitMoneyForSanctionedCountry, @PerformThirdPartyBusinessTransaction, @AnySubsidiaryInSanctionCountry, @CountryOfProductTrade, @CountryImportedGoodsandServices, @CountryExportedGoodsandServices, @CountryTransitOfGoodsandService, @YourCustomers, @YourProducts, @TotalsalesOfClients, @TotalPurchasesofClient, @TotalAssetsoftheClient, @TotalOperatingIncomeofClient, @LicenseforConductedTransactions, @TransactwithSanctionedCountries, @BanksUsedtoTransactwithSanctionedCountries, @PlanToGrowMaintainorReduceBusinesswithSanctionCountries, @AcceptTermsandConditions)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [REXID] = @REXID, [TIN] = @TIN, [Firstname] = @Firstname, [LastName] = @LastName, [Designation] = @Designation, [CompanyName] = @CompanyName, [DateOfIncorporation] = @DateOfIncorporation, [DateOfCommencement] = @DateOfCommencement, [BVN] = @BVN, [Address] = @Address, [Email] = @Email, [Phone1] = @Phone1, [Phone2] = @Phone2, [ContractDate] = @ContractDate, [AssignedTo] = @AssignedTo, [BusinessLineID] = @BusinessLineID, [LGAID] = @LGAID, [StateID] = @StateID, [Status] = @Status, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate, [CreditLine] = @CreditLine, [Shareholding] = @Shareholding, [StaffStrength] = @StaffStrength, [TankFarms] = @TankFarms, [Vessels] = @Vessels, [Trucks] = @Trucks, [FillingStations] = @FillingStations, [Bankers] = @Bankers, [AuditedAccounts] = @AuditedAccounts, [CompanyAuditors] = @CompanyAuditors, [AttachedAuditedAccounts] = @AttachedAuditedAccounts, [CompanyTurnover] = @CompanyTurnover, [SecurityDeposit] = @SecurityDeposit, [PaymentType] = @PaymentType, [CashLocation] = @CashLocation, [CashOwner] = @CashOwner, [Walkin] = @Walkin, [MarketedByWhom] = @MarketedByWhom, [IntroducedByWhom] = @IntroducedByWhom, [SuppliersList] = @SuppliersList, [TopFiveclients] = @TopFiveclients, [RemitMoneyForSanctionedCountry] = @RemitMoneyForSanctionedCountry, [PerformThirdPartyBusinessTransaction] = @PerformThirdPartyBusinessTransaction, [AnySubsidiaryInSanctionCountry] = @AnySubsidiaryInSanctionCountry, [CountryOfProductTrade] = @CountryOfProductTrade, [CountryImportedGoodsandServices] = @CountryImportedGoodsandServices, [CountryExportedGoodsandServices] = @CountryExportedGoodsandServices, [CountryTransitOfGoodsandService] = @CountryTransitOfGoodsandService, [YourCustomers] = @YourCustomers, [YourProducts] = @YourProducts, [TotalsalesOfClients] = @TotalsalesOfClients, [TotalPurchasesofClient] = @TotalPurchasesofClient, [TotalAssetsoftheClient] = @TotalAssetsoftheClient, [TotalOperatingIncomeofClient] = @TotalOperatingIncomeofClient, [LicenseforConductedTransactions] = @LicenseforConductedTransactions, [TransactwithSanctionedCountries] = @TransactwithSanctionedCountries, [BanksUsedtoTransactwithSanctionedCountries] = @BanksUsedtoTransactwithSanctionedCountries, [PlanToGrowMaintainorReduceBusinesswithSanctionCountries] = @PlanToGrowMaintainorReduceBusinesswithSanctionCountries, [AcceptTermsandConditions] = @AcceptTermsandConditions WHERE [RequestID] = @RequestID">
        <DeleteParameters>
            <asp:Parameter Name="RequestID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="REXID" Type="String" />
            <asp:Parameter Name="TIN" Type="Int32" />
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="DateOfIncorporation" Type="DateTime" />
            <asp:Parameter Name="DateOfCommencement" Type="DateTime" />
            <asp:Parameter Name="BVN" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone1" Type="String" />
            <asp:Parameter Name="Phone2" Type="String" />
            <asp:Parameter Name="ContractDate" Type="DateTime" />
            <asp:Parameter Name="AssignedTo" Type="String" />
            <asp:Parameter Name="BusinessLineID" Type="Int32" />
            <asp:Parameter Name="LGAID" Type="Int32" />
            <asp:Parameter Name="StateID" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="CreditLine" Type="Decimal" />
            <asp:Parameter Name="Shareholding" Type="Decimal" />
            <asp:Parameter Name="StaffStrength" Type="Int32" />
            <asp:Parameter Name="TankFarms" Type="String" />
            <asp:Parameter Name="Vessels" Type="String" />
            <asp:Parameter Name="Trucks" Type="String" />
            <asp:Parameter Name="FillingStations" Type="String" />
            <asp:Parameter Name="Bankers" Type="String" />
            <asp:Parameter Name="AuditedAccounts" Type="Boolean" />
            <asp:Parameter Name="CompanyAuditors" Type="String" />
            <asp:Parameter Name="AttachedAuditedAccounts" Type="Boolean" />
            <asp:Parameter Name="CompanyTurnover" Type="Decimal" />
            <asp:Parameter Name="SecurityDeposit" Type="Decimal" />
            <asp:Parameter Name="PaymentType" Type="Int32" />
            <asp:Parameter Name="CashLocation" Type="String" />
            <asp:Parameter Name="CashOwner" Type="String" />
            <asp:Parameter Name="Walkin" Type="Boolean" />
            <asp:Parameter Name="MarketedByWhom" Type="String" />
            <asp:Parameter Name="IntroducedByWhom" Type="String" />
            <asp:Parameter Name="SuppliersList" Type="String" />
            <asp:Parameter Name="TopFiveclients" Type="String" />
            <asp:Parameter Name="RemitMoneyForSanctionedCountry" Type="String" />
            <asp:Parameter Name="PerformThirdPartyBusinessTransaction" Type="String" />
            <asp:Parameter Name="AnySubsidiaryInSanctionCountry" Type="String" />
            <asp:Parameter Name="CountryOfProductTrade" Type="String" />
            <asp:Parameter Name="CountryImportedGoodsandServices" Type="String" />
            <asp:Parameter Name="CountryExportedGoodsandServices" Type="String" />
            <asp:Parameter Name="CountryTransitOfGoodsandService" Type="String" />
            <asp:Parameter Name="YourCustomers" Type="String" />
            <asp:Parameter Name="YourProducts" Type="String" />
            <asp:Parameter Name="TotalsalesOfClients" Type="Decimal" />
            <asp:Parameter Name="TotalPurchasesofClient" Type="Decimal" />
            <asp:Parameter Name="TotalAssetsoftheClient" Type="Decimal" />
            <asp:Parameter Name="TotalOperatingIncomeofClient" Type="Decimal" />
            <asp:Parameter Name="LicenseforConductedTransactions" Type="String" />
            <asp:Parameter Name="TransactwithSanctionedCountries" Type="String" />
            <asp:Parameter Name="BanksUsedtoTransactwithSanctionedCountries" Type="String" />
            <asp:Parameter Name="PlanToGrowMaintainorReduceBusinesswithSanctionCountries" Type="String" />
            <asp:Parameter Name="AcceptTermsandConditions" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="REXID" Type="String" />
            <asp:Parameter Name="TIN" Type="Int32" />
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="DateOfIncorporation" Type="DateTime" />
            <asp:Parameter Name="DateOfCommencement" Type="DateTime" />
            <asp:Parameter Name="BVN" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone1" Type="String" />
            <asp:Parameter Name="Phone2" Type="String" />
            <asp:Parameter Name="ContractDate" Type="DateTime" />
            <asp:Parameter Name="AssignedTo" Type="String" />
            <asp:Parameter Name="BusinessLineID" Type="Int32" />
            <asp:Parameter Name="LGAID" Type="Int32" />
            <asp:Parameter Name="StateID" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="CreditLine" Type="Decimal" />
            <asp:Parameter Name="Shareholding" Type="Decimal" />
            <asp:Parameter Name="StaffStrength" Type="Int32" />
            <asp:Parameter Name="TankFarms" Type="String" />
            <asp:Parameter Name="Vessels" Type="String" />
            <asp:Parameter Name="Trucks" Type="String" />
            <asp:Parameter Name="FillingStations" Type="String" />
            <asp:Parameter Name="Bankers" Type="String" />
            <asp:Parameter Name="AuditedAccounts" Type="Boolean" />
            <asp:Parameter Name="CompanyAuditors" Type="String" />
            <asp:Parameter Name="AttachedAuditedAccounts" Type="Boolean" />
            <asp:Parameter Name="CompanyTurnover" Type="Decimal" />
            <asp:Parameter Name="SecurityDeposit" Type="Decimal" />
            <asp:Parameter Name="PaymentType" Type="Int32" />
            <asp:Parameter Name="CashLocation" Type="String" />
            <asp:Parameter Name="CashOwner" Type="String" />
            <asp:Parameter Name="Walkin" Type="Boolean" />
            <asp:Parameter Name="MarketedByWhom" Type="String" />
            <asp:Parameter Name="IntroducedByWhom" Type="String" />
            <asp:Parameter Name="SuppliersList" Type="String" />
            <asp:Parameter Name="TopFiveclients" Type="String" />
            <asp:Parameter Name="RemitMoneyForSanctionedCountry" Type="String" />
            <asp:Parameter Name="PerformThirdPartyBusinessTransaction" Type="String" />
            <asp:Parameter Name="AnySubsidiaryInSanctionCountry" Type="String" />
            <asp:Parameter Name="CountryOfProductTrade" Type="String" />
            <asp:Parameter Name="CountryImportedGoodsandServices" Type="String" />
            <asp:Parameter Name="CountryExportedGoodsandServices" Type="String" />
            <asp:Parameter Name="CountryTransitOfGoodsandService" Type="String" />
            <asp:Parameter Name="YourCustomers" Type="String" />
            <asp:Parameter Name="YourProducts" Type="String" />
            <asp:Parameter Name="TotalsalesOfClients" Type="Decimal" />
            <asp:Parameter Name="TotalPurchasesofClient" Type="Decimal" />
            <asp:Parameter Name="TotalAssetsoftheClient" Type="Decimal" />
            <asp:Parameter Name="TotalOperatingIncomeofClient" Type="Decimal" />
            <asp:Parameter Name="LicenseforConductedTransactions" Type="String" />
            <asp:Parameter Name="TransactwithSanctionedCountries" Type="String" />
            <asp:Parameter Name="BanksUsedtoTransactwithSanctionedCountries" Type="String" />
            <asp:Parameter Name="PlanToGrowMaintainorReduceBusinesswithSanctionCountries" Type="String" />
            <asp:Parameter Name="AcceptTermsandConditions" Type="Boolean" />
            <asp:Parameter Name="RequestID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SQLBanks" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [Banks]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlBusinessLines" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [BusinessLines]"></asp:SqlDataSource>

         <%--<asp:EntityDataSource ID="edsCustomer" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="Customers" EntityTypeFilter="" Select="" Where="">

        </asp:EntityDataSource>
        <asp:EntityDataSource ID="edsCustomerFiles" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="CustomerFiles" EntityTypeFilter="" Select="" Where="">

        </asp:EntityDataSource>--%>
        
  
        <%--<asp:EntityDataSource ID="edsStates" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EntitySetName="States" Select="it.[StateId], it.[Name]" >
        </asp:EntityDataSource>
        <asp:EntityDataSource ID="edsLgas" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EntitySetName="LGAs" Select="it.[LGAId], it.[LGAName], it.[StateId]" Where="it.StateId = @StateId">
            <WhereParameters>
                <asp:Parameter Name="StateId"  Type="String" />
            </WhereParameters>
        </asp:EntityDataSource>--%>
 
        <asp:EntityDataSource ID="edsBusinessLines" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EntitySetName="BusinessLines" OrderBy="it.BusinessLineName" Select="it.[BusinessLineId], it.[BusinessLineName]">
        </asp:EntityDataSource>
        <asp:EntityDataSource ID="edsStatus" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EntitySetName="Status" OrderBy="it.Decision" Select="it.[StatusId], it.[Decision]">
        </asp:EntityDataSource>
        
        <asp:EntityDataSource ID="EdsPaymentType" runat="server" ConnectionString="name=RexGlobeEntities" DefaultContainerName="RexGlobeEntities" EnableFlattening="False" EntitySetName="PaymentTypes" OrderBy="it.PaymentID" Select="it.[PaymentID], it.[PaymentType]">
        </asp:EntityDataSource>


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



</asp:Content>
