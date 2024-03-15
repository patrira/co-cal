<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body{
            font-family: Arial, sans-serif;
            font-style:oblique;
            font-weight:800;
            background-image: url('green.png');
            background-size: cover;
            background-position: center;
            background-attachment: fixed; /* Keeps the background image fixed while scrolling */
   

        }
        .container{
            background-color: rgba(255, 255, 255, 0.3);

        }
        label {
            display: block;
            margin-bottom: 10px;

        }
    </style>

    <div class="container">
        <h1>Contact Us</h1>
        <div class="contact-form">
            
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" required><br />

                <label for="email">Your Email:</label>
                <input type="email" id="email" name="email" required><br />

                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="4" required></textarea><br />

                <input type="submit" value="Submit">
            
        </div>
    </div>

</asp:Content>
