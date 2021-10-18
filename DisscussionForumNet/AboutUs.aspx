<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="DisscussionForumNet.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
        }

        html {
            box-sizing: border-box;
        }

        *, *:before, *:after {
            box-sizing: inherit;
        }

        .column {
            float: left;
            width: 33.3%;
            margin-bottom: 16px;
            padding: 0 8px;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            margin: 8px;
        }

        .about-section {
            padding: 20px;
            text-align: center;
            background-color: #474e5d;
            color: white;
        }

        .container {
            padding: 0 16px;
        }

            .container::after, .row::after {
                content: "";
                clear: both;
                display: table;
            }

        .title {
            color: grey;
        }

        .button {
            border: none;
            outline: 0;
            display: inline-block;
            padding: 8px;
            color: white;
            background-color: #000;
            text-align: center;
            cursor: pointer;
            width: 100%;
        }

            .button:hover {
                background-color: #555;
            }

        @media screen and (max-width: 650px) {
            .column {
                width: 100%;
                display: block;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="about-section">
                <h1>About Us</h1>
                <p>This is the ASP.NET project for Disscussion Forum</p>
                <p>Made By Dharmsinh Desai University Sem-5 students</p>
            </div>

            <h2 style="text-align: center">Our Team</h2>
            <div style="width: 100%;">
                <div class="row">
                    <div class="column" style="margin-left:320px;">
                        <div class="card" style="width: 300px;">
                            <img src="https://static.thenounproject.com/png/17241-200.png" style="width: 100%" />
                            <div class="container">
                                <h2>Jaydev Bambhaniya</h2>
                                <p class="title">Student</p>
                                <p>Student at Dharmsinh Desai University</p>
                            </div>
                        </div>
                    </div>

                    <div class="column">
                        <div class="card" style="width: 300px;">
                            <img src="https://static.thenounproject.com/png/17241-200.png" style="width: 100%" />
                            <div class="container">
                                <h2>Kevin Bhanderi</h2>
                                <p class="title">Student</p>
                                <p>Student at Dharmsinh Desai University</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
