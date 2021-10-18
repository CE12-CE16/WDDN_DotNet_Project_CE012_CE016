<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="DisscussionForumNet.Main" %>

<!DOCTYPE html>
<link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="./Main.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: black">
    <form id="form1" runat="server">
        <nav class="navbar fixed-navbar navbar-expand-xl navbar-toggleable-sm navbar-light bg-grey border-bottom box-shadow mb-3" style="position:fixed;background-color: black; width: 100%; z-index: 9999">
            <div class="container">
                <asp:Image runat="server" src="https://cdn4.iconfinder.com/data/icons/got-an-idea/128/discussion-512.png" Style="height: 70px; margin-right: 20px;" />
                <asp-button id="Home" class="navbar-brand" style="color: white">DiscussionForum</asp-button>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-collapse collapse d-sm-inline-flex flex-sm-row-reverse">
                    <ul class="navbar-nav flex-grow-1">
                    </ul>
                </div>
            </div>
            <div style="align-items: flex-end; margin-top: -10px;">
                <asp:Button runat="server" Style="float: right;" CssClass="create-btn" PostBackUrl="~/Create.aspx" ID="createQuery" Text="Create Query" />
            </div>
            <div style="align-items: flex-end; margin-top: -10px;">
                <asp:Button runat="server" Style="float: right;" CssClass="create-btn" PostBackUrl="~/AboutUs.aspx" ID="Button3" Text="About Us" />
            </div>
            <div style="align-items: flex-end; margin-top: -10px;">
                <asp:Button runat="server" Style="float: right;" CssClass="create-btn" PostBackUrl="~/ContactUs.aspx" ID="Button1" Text="Contact Us" />
            </div>
        </nav>
        <br /><br /><br/><br />
        
        <div style="display:inline;float:right;width:41%">
                    <asp:TextBox runat="server" ID="SearchText" style="border-radius:3px;border:none;height:35px;width :70%;padding-left:5px;" placeholder="Search Something..."></asp:TextBox>
                    <asp:Button runat="server"  style="height:35px;background-color:#03bfbc;  border: 1px solid #03bfbc;border-radius: 3px;font-family: Montserrat, sans-serif;cursor: pointer;" Text="Search"/>
            </div>
          

        <br />
        
        <div class="container" style="display: flex; justify-content: space-between">
            <section>
                <div class="card-container" style="margin-left: -60px;">
                    <div class="cover-photo">
                        <asp:ImageButton runat="server" ID="ProfilePic" class="profile"></asp:ImageButton>
                    </div>
                    <div class="profile-name">
                        <asp:Label runat="server" ID="Handle"></asp:Label>
                    </div>
                    <p class="about">
                        <asp:Label runat="server" ID="Name"></asp:Label>
                    </p>
                    <p class="about">
                        <asp:Label runat="server" ID="Email"></asp:Label>
                    </p>
                    <asp:Button runat="server" CssClass="update-btn" PostBackUrl="~/UpdateProfile.aspx" Text="Update Profile"/>
                    <asp:Button runat="server" CssClass="logout-btn" OnClick="Logout_Click" Text="Logout" />
                </div>
            </section>
            <div>
                <div style="margin-top: 60px;">
                    <asp:Label runat="server" ID="notFound" style="margin-left:50px;" Visible="false" ForeColor="White"></asp:Label>
                    <asp:Repeater ID="questions" runat="server">
             
                        <ItemTemplate>
                              
                            <div class="cards">
                                <article class="card" style="display: inline-block;">
                                    <div runat="server" visible='<%# DataBinder.Eval(Container.DataItem, "ImagePath")!=null%>'>
                                    <asp:Image ImageAlign="Left" Width="450" Height="248" Style="object-fit:unset;margin-right: 10px; border-radius: 5px;" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "ImagePath") %>' alt="Image" />
                                    </div>
                                    <div style="text-align: center;">
                                        <header>
                                            <h2>
                                                <asp:Label ID="Label3" runat="server" CssClass="card-title" Text='<%# DataBinder.Eval(Container.DataItem, "QTitle") %>'></asp:Label><br />
                                            </h2>
                                        </header>
                                        <div class="block-ellipsis" style="margin-top:25px">
                                        <asp:Label ID="Label2" runat="server"   Text='<%# DataBinder.Eval(Container.DataItem, "QDescr") %>'></asp:Label></div>
                                        
                                        <asp:HyperLink runat="server" style="clear:both;float:right;position:absolute;bottom:0px;right:0px" NavigateUrl='<%# Eval("QId", "~/QuestionDetails.aspx?Id={0}") %>' Text="Read More -->" />
                                    </div>
                                </article>
                            </div>
                            
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>

        </div>

    </form>
</body>
</html>