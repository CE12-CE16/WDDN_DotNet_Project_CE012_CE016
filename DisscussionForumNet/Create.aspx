<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="DisscussionForumNet.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>

    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css" />
</head>
<body style="background: black; background-image: url('https://th.bing.com/th/id/R.71693687a237e4e5fa66f956dfeb9f32?rik=vykYkcx1vcJRIw&riu=http%3a%2f%2fwww.telenor.com.mm%2fsites%2fdefault%2ffiles%2fsq-global-ip.jpg&ehk=0KOka%2fPHLlJ2sY2LcokImoreIPVnMb6PxAF0o97o5Gw%3d&risl=&pid=ImgRaw&r=0'); background-attachment: fixed; background-position: center; background-repeat: no-repeat; background-size: 100% 100% ">

    <form id="form1" runat="server" EncType="multipart/form-data" method="post">
        <div>
          <section class="vh-100">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100" >
      <div class="col-xl-9">
          
        <div class="card" style="border-radius: 15px; background-color:rgba(0,0,0,0.6); color:white; border:1px solid; ">
          <div class="card-body" >
              <h1 style="text-align:center">Create Question</h1>
            <div class="row align-items-center pt-4 pb-3">
              <div class="col-md-3 ps-5">

                <h6 class="mb-0" style="font-size:20px">Title</h6>

              </div>
              <div class="col-md-9 pe-5">

                <asp:TextBox placeholder="Enter Title"  ID="title" runat="server" type="text" style="background-color:black; color:white;" class="form-control form-control-lg" />

              </div>
            </div>

            <hr class="mx-n3"/>

            <div class="row align-items-center py-3">
              <div class="col-md-3 ps-5">

                <h6 class="mb-0" style="font-size:20px">Description</h6>

              </div>
              <div class="col-md-9 pe-5">

                <asp:TextBox class="form-control" Textmode="MultiLine" rows="3" runat="server" ID="Descr" style="background-color:black; color:white;" placeholder="Enter Description about your query"></asp:TextBox>
                
              </div>
            </div>
              
              
            <hr class="mx-n3"/>

            <div class="row align-items-center py-2">
              <div class="col-md-3 ps-5">

                <h6 class="mb-0" style="font-size:20px">Image</h6>

              </div>
              <div class="col-md-9 pe-5">
                 <asp:FileUpload ID="FileUpload1"   style="background-color:black; color:white;" CssClass="form-control form-control-lg" runat="server" />
                <div class="small text-muted mt-2">Upload image related to your query.</div>

              </div>
            </div>

            <hr class="mx-n3"/>

            <div class="px-5 py-2" style="display: flex; justify-content: center;">
              <asp:Button ID="createQuery" runat="server" CssClass="btn btn-primary btn-lg" Text="Raise Question" OnClick="createQuery_Click"></asp:Button>
            </div>

          </div>
       

      </div>
    </div>
  </div>
      </div>
</section>
        </div>
        
        
    </form>
</body>
</html>