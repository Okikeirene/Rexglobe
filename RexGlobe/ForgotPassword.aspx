<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="RexGlobe.ForgotPassword" %>

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
    <style type="text/css">
        .auto-style2 {
            height: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="form-area">
        <div class="row" style=" margin-top:20px;">
        <div class="col-md-2"></div>
        <div class="col-md-8">
                <div align="center" style="color:#FA0C09"><h2>Password Reset.</h2></div>
                <div class="form-horizontal">
                    <h6>Enter your email address. An email will be sent to you with instructions on how to reset your password.</h6>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                   
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-4 control-label">Email</asp:Label>
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div><!-- End form group -->
                    <div class="form-group">
                        <div class="col-md-12">
                            <asp:Button ID="Send" runat="server" OnClick="Send_Click" Text="Reset Password" CssClass="btn btn-primary" />
                            <asp:Button ID="Cancel" runat="server" OnClick="Cancel_Click" Text="Cancel" CssClass="btn btn-danger" />
                        </div>
                    </div>
                </div>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="enabled">Register as a new user</asp:HyperLink>
                </p>
               
       
        </div>

        <div class="col-md-2">
        </div>
    </div>
    </div>
    </form>
</body>
</html>
