<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuestionDetails.aspx.cs" Inherits="DisscussionForumNet.QuestionDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Disscussion</title>
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./Main.css" />
    <link rel="stylesheet" href="./Home.css" />
    <style>
    </style>
</head>
<body style="background-color: black">
    <form id="form1" runat="server">
        <nav class="navbar fixed-navbar navbar-expand-xl navbar-toggleable-sm navbar-light bg-grey border-bottom box-shadow mb-3" style="background-color: black; width: 100%; z-index: 9999">
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
                <asp:Button runat="server" Style="float: right;" CssClass="create-btn" PostBackUrl="~/Main.aspx" ID="createQuery" Text="Home" />
            </div>
            <div style="align-items: flex-end; margin-top: -10px;">
                <asp:Button runat="server" Style="float: right;" CssClass="create-btn" PostBackUrl="~/AboutUs.aspx" ID="Button3" Text="About Us" />
            </div>
            <div style="align-items: flex-end; margin-top: -10px;">
                <asp:Button runat="server" Style="float: right;" CssClass="create-btn" PostBackUrl="~/ContactUs.aspx" ID="Button1" Text="Contact Us" />
            </div>
            <div style="align-items: flex-end; margin-top: -10px;">
                <asp:Button runat="server" Style="float: right;" CssClass="create-btn" OnClick="Logout_Click" ID="Logout" Text="Logout" />
            </div>
        </nav>
        <h1 style="text-align:center;">
            <asp:Label ForeColor="White" ID="Title" runat="server" ></asp:Label><br />
        </h1>
        <hr style="color: white;" />
        <div style="display: flex; justify-content: center; width: 100%; padding: 5px; border-radius: 5px;">
            <asp:Image runat="server" ID="ErrorImage" Style="object-fit: unset; width: 500px; height: auto;" /><br />
        </div>
        <h4 style="border: 1px solid white;width:100%;padding:10px;">
            <asp:Label ForeColor="White" ID="Description" style="padding:10px;"  runat="server"></asp:Label></h4>
            <asp:Label style="float:right;margin-right:10px;" ForeColor="White" ID="Owner" runat="server"></asp:Label><br />
        <asp:LinkButton ID="AddCommentBtn" runat="server" OnClick="AddComment_BtnShow" CssClass="Btn" style="text-decoration:none;color:gainsboro;background-color:black;" Text="Add Comment"></asp:LinkButton>
        <hr style="height: 2px; color: white;" />
        <h2 style="color: white;">Comments</h2>
        <asp:Repeater ID="comments" runat="server">
            <ItemTemplate>
                <div style="margin-left: 50px;margin-right:50px;">
                    <hr style="color: white;" />
                    <asp:Label runat="server" style="padding-left: 10px; color: white;" Text='<%# DataBinder.Eval(Container.DataItem, "CommentDescr") %>'></asp:Label>&nbsp;&nbsp;&nbsp;-- By <asp:Label runat="server" style="font-weight:bold;color: grey;" ID="Commentor" Text='<%# DataBinder.Eval(Container.DataItem, "CommentUserDatas.Name") %>'></asp:Label>&nbsp;&nbsp;&nbsp;<asp:Label runat="server" ID="commentedTime" style="color: lightgray;" Text='<%# DataBinder.Eval(Container.DataItem, "CommentedTime") %>' ></asp:Label>
                    <hr style="color: white;" />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div id="AddComment" style="margin-left: 50px;width:inherit;margin-right:50px;">
            <asp:TextBox ID="comment" TextMode="MultiLine" style="width:100%;background-color:black;color:white;" Visible="false" runat="server"></asp:TextBox>
            <asp:Button ID="AddCommentClick" runat="server" CssClass="Btn" style="text-decoration:none;color:gainsboro;background-color:black;border:0px;" Visible="false" Text="Add Comment" OnClick="AddComment_Btn" />
        </div>
    </form>
</body>
</html>
