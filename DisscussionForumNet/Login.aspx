<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DisscussionForumNet.Login" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>
<link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="./Home.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background: black; color:white; background-image: url('https://th.bing.com/th/id/R.71693687a237e4e5fa66f956dfeb9f32?rik=vykYkcx1vcJRIw&riu=http%3a%2f%2fwww.telenor.com.mm%2fsites%2fdefault%2ffiles%2fsq-global-ip.jpg&ehk=0KOka%2fPHLlJ2sY2LcokImoreIPVnMb6PxAF0o97o5Gw%3d&risl=&pid=ImgRaw&r=0'); background-attachment: fixed; background-position: center; background-repeat: no-repeat; background-size: 100% 100% ">
    
    <form id="form1" runat="server" method="post">
        <div class="container">
        <div class="signup-form">
            <div style="text-align:center;color:white">
                <h1>Login</h1>
            </div><br />
            <div style="text-align:center;" >
            <asp:Label runat="server" Visible="false" class="alert alert-danger alert-dismissible fade show" ID="error"></asp:Label>
             </div>
            <div class="container"><br /><asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                <div class="form-group">
                    <label for="exampleInputEmail1" style="color:white">Email</label><label for="exampleInputEmail1" style="color:white">
                    </label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="email" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="None" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:TextBox runat="server" CssClass="form-control" style="background: black; color:white" ID="email" name="email" aria-describedby="emailHelp" placeholder="Enter email"></asp:TextBox>
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1" style="color:white">Password&nbsp;&nbsp; </label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Please Enter Password" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                &nbsp;<asp:TextBox runat="server" TextMode="Password" CssClass="form-control" style="background: black; color:white" ID="password" name="password" placeholder="Password"></asp:TextBox>
                </div>
                <br />
                <asp:Button ID="loginBtn" runat="server" CssClass="btn btn-primary signup-btn" Text="Login" OnClick="loginBtn_Click"></asp:Button>
                <div><a class="link" href="SignUp.aspx">Don't Have Account?</a></div>
            </div>
            <p style="text-align:center;">
        <a href="Home.aspx">Home</a>
            </p>
        </div>
        </div>
    </form>
</body>
</html>