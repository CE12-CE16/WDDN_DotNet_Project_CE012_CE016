<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="DisscussionForumNet.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css" />
    <style>
    .contact-form {
        background: rgb(0,0,0,0.6);
        margin-top: 5%;
        margin-bottom: 5%;
        width: 70%;
        border:1px solid white;
        border-radius:15px;
    }
        .contact-form .form-control {
            border-radius: 1rem;
            background: rgb(0,0,0,0.6);
            color:white;
        }

    .contact-image {
        text-align: center;
    }

        .contact-image img {
            border-radius: 6rem;
            width: 11%;
            margin-top: -3%;
            transform: rotate(29deg);
        }

    .contact-form form {
        padding: 14%;
        padding-bottom:5%;
    }

        .contact-form form .row {
            margin-bottom: -7%;
        }

    .contact-form h3 {
        margin-bottom: 8%;
        margin-top: -10%;
        text-align: center;
        color: #0062cc;
    }

    .contact-form .btnContact {
        width: 50%;
        border: none;
        border-radius: 1rem;
        padding: 1.5%;
        background: #dc3545;
        font-weight: 600;
        color: #fff;
        cursor: pointer;
    }

    .btnContactSubmit {
        width: 50%;
        border-radius: 1rem;
        padding: 1.5%;
        color: #fff;
        background-color: #0062cc;
        border: none;
        cursor: pointer;
    }
</style>
</head>
<body style="background: black; background-image: url('https://th.bing.com/th/id/R.71693687a237e4e5fa66f956dfeb9f32?rik=vykYkcx1vcJRIw&riu=http%3a%2f%2fwww.telenor.com.mm%2fsites%2fdefault%2ffiles%2fsq-global-ip.jpg&ehk=0KOka%2fPHLlJ2sY2LcokImoreIPVnMb6PxAF0o97o5Gw%3d&risl=&pid=ImgRaw&r=0'); background-attachment: fixed; background-position: center; background-repeat: no-repeat; background-size: 100% 100% ">

    <div class="container contact-form">
    <div class="contact-image">
        <img src="https://image.ibb.co/kUagtU/rocket_contact.png" alt="rocket_contact" />
    </div>
       <form method="post" runat="server">
        <h3 style="color:white">Drop Us a Message</h3>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <input type="text" name="Name" class="form-control" placeholder="Your Name *" value="" required="required"/>
                </div><br />
                <div class="form-group">
                    <input type="text" name="Email" class="form-control" placeholder="Your Email *" value="" required="required" />
                </div><br />
                <div class="form-group">
                    <input type="text" name="Phone" class="form-control" placeholder="Your Phone Number *" value="" required="required"/>
                </div><br />
                <div class="form-group">
                    <input type="submit" name="Submit" class="btnContact" value="Send Message" />
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <textarea name="Msg" class="form-control" placeholder="Your Message *" style="width: 100%; height: 150px;" required="required"></textarea>
                </div>
            </div>
            <p style="text-align:center;">
        <a href="Main.aspx">Home</a>
            </p>
        </div>
    </form>
        </div>
</body>
</html>
