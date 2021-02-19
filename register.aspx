<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="clinic_management_system.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register - Clinic Management Sysytem</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style2.css">

    <link rel="stylesheet" href="css/owl2.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap2.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style3.css">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/apple-touch-icon1.png" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon1.png">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
  <div data-mdb-perfect-scrollbar='true' class="d-lg-flex half">
    <div class="bg order-1 order-md-2 bgimage" style="background-image: url('images/bg_3.jpg');"></div>
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7">
            <div class="mb-4 text-center">
              <h3> <strong>Register</strong></h3>
              <p class="mb-4">Register form for the clinic from that clinic can
                register their account.</p>
            </div>

              
              <div runat="server" id="alert" class="alert alert-success alert-dismissible fade">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    <strong>  Register Successfully </strong>
  </div>
           
            <div class="form-group first rounded glow">
                <label for="name"><strong>Enter your clinic name</strong></label>
                <asp:TextBox ID="name" runat="server"  class="form-control"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="name" Font-Size="Small">*Required</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="name" ValidationExpression="^[A-Za-z]*$" ErrorMessage="name should not in character" Font-Size="Small">*name should not in character</asp:RegularExpressionValidator>

              <div class="form-group first rounded glow">
                <label for="email"><strong>Enter your E-mail</strong></label>
                  <asp:TextBox ID="email" runat="server" class="form-control"></asp:TextBox>

              </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Required" Font-Size="Small">*Required</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" ErrorMessage="email not match" Font-Size="Small">*email not match</asp:RegularExpressionValidator>

              <div class="form-group first">
                <label for="Address"><strong>Enter clinic address</strong></label>
              </div>
              
              <div class="form-group first rounded glow">
                
                  <asp:TextBox ID="address" TextMode="MultiLine" class="form-control rounded-0" runat="server"></asp:TextBox>
              </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="address" ErrorMessage="*Required" Font-Size="Small">*Required</asp:RequiredFieldValidator>

              <div class="form-group last mb-3 rounded glow">
                <label for="password"><strong>Password</strong></label>
                  <asp:TextBox ID="password" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
            
              </div>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password" ErrorMessage="*Required" Font-Size="Small">*Required</asp:RequiredFieldValidator>


              <div class="form-group last mb-3 rounded glow">
                <label for="password"><strong>Confirm password</strong></label>
                  <asp:TextBox ID="Confirmpassword" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
              </div>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Confirmpassword" ErrorMessage="*Required" Font-Size="Small">*Required</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ErrorMessage="*password not match" ControlToValidate="Confirmpassword" Font-Size="Small">*password not match</asp:CompareValidator>

                <br>
                <br>

                <asp:Button ID="Button1" runat="server" Text="Register" style="background-color:#b0b435 ;" class="btn btn-block btn-success login" OnClick="Button1_Click" />
              <br>
              <div class="mb-4 text-center">
              <p class="text-dark">If you are registered? So:<a class="text-strong text-bold" href="login.aspx" class="forgot-pass">Signin</a></p>
              </div>
          </div>
        </div>
      </div>
    </div>

    
  </div>
    
    

    <script src="js/jjquery-3.3.1.min.js"></script>
    <script src="js/ppopper.min.js"></script>
    <script src="js/bbootstrap.min.js"></script>
    <script src="js/mmain.js"></script>
        </div>
    </form>
</body>
</html>
