<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="CreatePassword.aspx.cs" Inherits="RexGlobe.Staff.CreatePassword" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

 <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div class="col-md-12" align="center">   

             
            <div class="panel panel-primary"> 
            <div class="panel-heading">Create Password</div>
            <div class="panel-body">
                <div class="row">
                      <div class="col-md-12" align="left">Access Information
                                <div class="panel panel-default">
                                      <div class="panel-body">
                                        
                                    
                                            <div class="row">
                                                    <div class="col-md-4">
                                                                    <div class="form-group">
                                                                    <label for="exampleInputText1">Username</label>
                                                                    <input type="text" class="form-control" id="Username" readonly="readonly" placeholder="Username" name="Username" runat="server" />
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Username" ErrorMessage="You must enter Username..!!!" ForeColor="Red"></asp:RequiredFieldValidator> 
                                                                    </div>
                                                        </div>
                                                            <div class="col-md-4">
                                                                       
                                                                            <div class="form-group">
                                                                            <label for="exampleInputText1">Password</label>
                                                                            <input type="Password" class="form-control" id="Password" AssociatedControlID="Password" placeholder="Password" TextMode="Password" runat="server" />
                                                                            </div>
                                                                              <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />                   
                                                            </div>
                                                            <div class="col-md-4">
                                                                             <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                                                             <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                                                                            <div class="form-group">
                                                                            <label for="exampleInputText1">Confirm password</label>
                                                                            <input type="Password" class="form-control" id="ConfirmPassword" AssociatedControlID="ConfirmPassword" TextMode="Password" placeholder="Confirm Password" runat="server" />
                                                                            </div>
                                                                        
                                                            </div>
                                               <br />
                                            </div> 
                                            
                                         
                                      </div>
                                </div>
                      </div>


                      
                      </div>
                      <div class="form-group">
                            <div class="col-md-4 col-md-offset-4">
                                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Update Password" CssClass="btn btn-primary" />
                                <asp:Button ID="AspxButtonref" runat="server"  Text="Refresh" OnClick="Refresh_Click" CssClass="btn btn-primary" />
                            </div>
                        </div>

                
            </div>      
        </div>
    </div>
</asp:Content>
