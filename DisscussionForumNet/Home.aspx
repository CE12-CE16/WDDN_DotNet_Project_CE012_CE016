<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DisscussionForumNet.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Disscussion Forum</title>
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css" />

</head>
<body style="background: black; background-image: url('https://th.bing.com/th/id/R.71693687a237e4e5fa66f956dfeb9f32?rik=vykYkcx1vcJRIw&riu=http%3a%2f%2fwww.telenor.com.mm%2fsites%2fdefault%2ffiles%2fsq-global-ip.jpg&ehk=0KOka%2fPHLlJ2sY2LcokImoreIPVnMb6PxAF0o97o5Gw%3d&risl=&pid=ImgRaw&r=0'); background-attachment: fixed; background-position: center; background-repeat: no-repeat; background-size: 100% 100%">

    <form id="form1" runat="server">
        <nav class="navbar navbar-nav navbar-expand-sm navbar-toggleable-sm navbar-light bg-grey border-bottom box-shadow mb-3">
            <div class="container">
                <a class="navbar-brand" style="color: white" asp-area="">DiscussionForum</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="ft navbar-collapse collapse d-sm-inline-flex flex-sm-row-reverse">
                    <ul class="navbar-nav flex-grow-1">
                        <li class="nav-item">
                            <asp:LinkButton ID="login" CssClass="nav-link text-white home-nav" runat="server" Text='Login' PostBackUrl='./Login.aspx' /></li>
                        <li class="nav-item">
                            <asp:LinkButton ID="singUp" CssClass="nav-link text-white home-nav" runat="server" Text='Sign Up' PostBackUrl='./SignUp.aspx' /></li>
                        <li class="nav-item">
                            <asp:LinkButton ID="contactUs" CssClass="nav-link text-white home-nav" runat="server" Text='Contact Us' PostBackUrl='./ContactUs.aspx' /></li>
                        <li class="nav-item">
                            <asp:LinkButton ID="aboutUs" CssClass="nav-link text-white home-nav" runat="server" Text='About Us' PostBackUrl='./AboutUs.aspx' /></li>
                    </ul>
                </div>
            </div>
        </nav>

        <footer class="page-footer font-small purple pt-4 fixed-bottom" style="background-color: black">


            <div class="container-fluid text-center text-md-left">


                <div class="row">


                    <div class="col-md-6 mt-md-0 mt-3">


                        <h5 class="text-uppercase">Disscussion Forum</h5>
                        <p>This Website used for any kind of Disscussion regarding Doubts or Questions</p>

                    </div>

                    <hr class="clearfix w-100 d-md-none pb-3"/>


                    <div class="col-md-3 mb-md-0 mb-3" style="text-align: left">


                        <h5 class="text-uppercase">Links</h5>

                        <ul class="list-unstyled">
                            <li>
                                <a href="AboutUs.aspx" style="color: cadetblue">About</a>
                            </li>
                            <li>
                                <a href="#" style="color: cadetblue">Privacy</a>
                            </li>
                            <li>
                                <a href="#!" style="color: cadetblue">Terms & Condition</a>
                            </li>

                        </ul>

                    </div>

                </div>
            </div>
            <div class="footer-copyright text-center py-3">
                © 2021 Copyright:
      <a href="Home.aspx" style="color: cadetblue">Disscussionforum.Net</a>
            </div>


        </footer>
    </form>

</body>
</html