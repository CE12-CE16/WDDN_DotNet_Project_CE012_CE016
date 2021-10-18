<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProfile.aspx.cs" Inherits="DisscussionForumNet.UpdateProfile" UnobtrusiveValidationMode="None" %>
<link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./Home.css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background: black; color:white;background-image: url('https://th.bing.com/th/id/R.71693687a237e4e5fa66f956dfeb9f32?rik=vykYkcx1vcJRIw&riu=http%3a%2f%2fwww.telenor.com.mm%2fsites%2fdefault%2ffiles%2fsq-global-ip.jpg&ehk=0KOka%2fPHLlJ2sY2LcokImoreIPVnMb6PxAF0o97o5Gw%3d&risl=&pid=ImgRaw&r=0'); background-attachment: fixed; background-position: center; background-repeat: no-repeat; background-size: 100% 100% ">
    
    <form id="form1" runat="server" method="post">
        <div class="container">
        <div class="signup-form" >
                <div style="text-align:center;color:white"><h1>Update Profile</h1></div>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                
                <div class="container" style="color:white">
                    
                    <div class="form-group">
                        <label for="Name" style="color:white" class="control-label" >Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="Name" ErrorMessage="Please Enter  Name" Display="None"></asp:RequiredFieldValidator>
                        &nbsp;<asp:TextBox Id="Name" runat="server"  style="background: black;color:white" class="form-control" placeholder="Enter Your Name..." ></asp:TextBox>
                       
                    </div>
                    <div class="form-group">
                        <label for="Handle" style="color:white" class="control-label">Handle<label for="Handle" style="color:white" class="control-label"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Handle" ErrorMessage="Please Enter Handle" Display="None"></asp:RequiredFieldValidator>
                        </label>
                        </label><br />
                        <asp:TextBox Id="Handle" runat="server"  style="background: black;color:white" placeholder="Enter Your Handle..." class="form-control"  ReadOnly="true"></asp:TextBox>
                     
                    </div>
                    <div class="form-group">
                        <label for="Email" style="color:white" class="control-label">Email 
                        <label for="Email" style="color:white" class="control-label">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" ErrorMessage="Please Enter  Email" Display="None" ></asp:RequiredFieldValidator>
                        </label>
                        <asp:RegularExpressionValidator ID="RegexValidator1" runat="server" ControlToValidate="Email" Display="None" ErrorMessage="Plese Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </label>
<asp:TextBox runat="server"  Id="Email"  style="background: black;color:white" placeholder="Enter Your Email..." class="form-control" ReadOnly="true" ></asp:TextBox>
                       
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.  </small>
                        <div class="form-group">
                        <label for="Password"  style="color:white" class="control-label">Password&nbsp;&nbsp;&nbsp; </label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Password" Display="None" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                            <asp:TextBox Id="Password" TextMode="Password"  runat="server" type="password"  style="background: black;color:white" placeholder="Enter Your Password..." class="form-control" ></asp:TextBox>
                        
                    </div>
                    <div class="form-group">
                        <label for="ConfirmPassword" style="color:white" class="control-label">Confirm Password</label><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Password And Confirm Password must be same." CultureInvariantValues="True" Display="None"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ConfirmPassword" Display="None" ErrorMessage="Please Enter Confirm Password"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox Id="ConfirmPassword" runat="server" TextMode="Password"   type="password" asp-for="ConfirmPassword"  style="background: black;color:white" placeholder="Re-Enter Your Password..." class="form-control"></asp:TextBox>
                        
                    </div>
                    
                    <br />
                     <asp:Button ID="update" runat="server" Text="Update"   class="btn btn-primary signup-btn" />
                        
                </div>
                    <br />
                    <p style="text-align:center;">
                    <a href="Main.aspx">Cancle</a>
                     </p>
                </div>
            
            </div>                
             </div>
   
            
    </form>
</body>
</html>