<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApplication1.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv ="X-UA compatible" content="Google Chrome-edge"/>

    <link href="css/Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
</head>
<body>
    <form id="form1" runat="server">
        
       <div>   
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>


                </button>
                <a class="navbar-brand" href="Default.aspx"> <span><img src="Icon/LogoIcon.jpg" alt="MyChocorichChocolate " height="30" /></span>My Chocolate</a>

                  </div>
            <div class="navbar-collapse collapse">
                <ul class=" nav navbar-nav navbar-right" >
                    <li><a href="Default.aspx">Home</a></li>
                     <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">Blog</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">Chocolate</li>
                            <li role="separator" class="divider"></li> 

                            <li><a href="#">White Chocolate</a></li>
                             <li><a href="#">Milk Chocolate</a></li>
                             <li><a href="#">Dark Chocolate</a></li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Gift Chocolate</li>
                            <li role="separator" class="divider"></li>

                            <li><a href="#">Choclairs Gold Home Pack</a></li>
                             <li><a href="#"> Rich Cocoa Dark Chocolate Bar</a></li>
                             <li><a href="#"> Cocoa Dark Noir Chocolate</a></li>

                        </ul>
                    </li>

                   <li><a href="SignUp.aspx">SignUp</a></li>
                    <li class="active"><a href="SignIn.aspx">SignIn</a></li>
                </ul>
            </div>

        </div>
        </div>

    </div>
                <br />
                <br />
                <br />
            <!----------SignIn form Start here---------->
            <div class="container"> 
<div class="form-horizontal">
    <h2>Login Form</h2>
    <hr />
    <div class="form-group">
        <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="UserName"></asp:Label>
        <div class="col-md-3">
            <asp:TextBox ID="txtUsername" Cssclass="form-control"   runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass="text-danger" ErrorMessage="Plz Enter Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="Password"></asp:Label>
        <div class="col-md-3">
            <asp:TextBox ID="txtPass" Cssclass="form-control"   runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" CssClass="text-danger" ErrorMessage="Plz Enter Valid Password" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group">
        <div  class="col-md-2"></div>
        <div class="col-md-6">

            <asp:CheckBox ID="CheckBox1" runat="server" />     
            <asp:Label ID="Label3" CssClass=" control-label" runat="server" Text="Remember me"></asp:Label>
        </div>
    </div>



    <div class="form-group">
        <div  class="col-md-2"></div>
        <div class="col-md-6">

            <asp:Button ID="btnlogin" CssClass="btn btn-success" runat="server" Text="login&raquo;" OnClick="btnlogin_Click1"  />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>

        </div>
    </div>

    <%---Forgot Password----%>
    <div class="form-group">
        <div  class="col-md-2"></div>
        <div class="col-md-6">

            <asp:HyperLink ID="HyForgotPass" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
        </div>
    </div>

     <div class="form-group">
        <div  class="col-md-2"></div>
        <div class="col-md-6">

            <asp:Label ID="lblError" CssClass="text-danger" runat="server" ></asp:Label>
        </div>
    </div>


</div>
 </div>

  <br />
                <br />

            <!----------SignIn form end---------->

             <!-------Footer Contents start here-------->
        <hr />
<footer>

    <div class="container">
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy 2021 Chocolate Site created by Rashmi &middot;<a href="Default.aspx">Home</a>&middot;<a href="#">About Us</a>&middot;<a href="#">Contact Us</a>&middot;<a href="#">Blog</a>&middot;<a href="#">Product</a>&middot;<a href="#">Account</a>&middot;</p>

 </div>

</footer>

  <!-------Footer Contents End here--------> 

    </form>
</body>
</html>
