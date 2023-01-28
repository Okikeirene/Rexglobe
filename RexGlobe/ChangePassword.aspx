<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="RexGlobe.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<title>Rex Globe Portal </title>
	<link href="Content/login.css" rel="stylesheet" />
    <link rel="stylesheet" href="Content/bootstrap.min.css"/>
    <link rel="stylesheet" href="Content/bootstrap-theme.min.css"/>
    <script src="Content/js/jquery.min.js"></script>
    <script src="Content/js/bootstrap.min.js"></script>
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <style type="text/css">
        .auto-style2 {
            height: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                                                                    <input type="Password" class="form-control" id="txtPassword" associatedcontrolid="Password" placeholder="Password" textmode="Password" runat="server" />
                                                                    </div>
                                                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />                   
                                                            </div>
                                                               
                                               <br />
                                            </div> 
                                            <div class="row">
                                                 <div class="col-md-4">                                                                       
                                                            <div class="form-group">
                                                            <label for="exampleInputText1">PhoneNumber</label>
                                                            <input type="text" class="form-control" id="PhoneNumber"  placeholder="PhoneNumber"  runat="server" />
                                                            </div>
                                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="PhoneNumber" CssClass="text-danger" ErrorMessage="The Phone Number field is required." />                   
                                                    </div>
                                                            <div class="form-group">
                                                                    <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                                                                    <div class="col-md-12">
                                                                        <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                                                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                                                            CssClass="text-danger" ErrorMessage="The Email field is required." />
                                                                    </div>
                                                                </div><!-- End form group -->
            
                                            </div>
                                         
                                      </div>
                                </div>
                      </div>


                      
                      </div>
                      <div class="form-group">
                            <div class="col-md-4 col-md-offset-4">
                                <asp:Button id="UpdatePassword" runat="server" OnClick="UpdatePassword_Click" Text="Update Password" CssClass="btn btn-primary" />
                                <asp:Button ID="Refresh" runat="server"  Text="Refresh" OnClick="Refresh_Click" CssClass="btn btn-primary" />
                            </div>
                        </div>

                
            </div>      
        </div>
    </div>
    </form>
</body>
</html>
