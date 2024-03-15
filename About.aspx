<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* Base styles */
       .container {
            font-family: Arial, sans-serif;
            background-image: url('green,png'); /* Specify your background image */
            background-size: cover; /* Ensure the background image covers the entire element */
            backdrop-filter: blur(10px); /* Apply a blur effect to the background */
            -webkit-backdrop-filter: blur(10px); /* For Safari */
            padding: 50px;
            text-align: center;
            border-radius: 10px;        
            max-width: 800px;
            margin: 20px auto;
            padding: 0 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            
       }
        h1, h2 {
            text-align: center;
            color: #007bff;
            margin-top: 20px;
        }
        p {
            line-height: 1.6;
            margin-bottom: 20px;
        }
        a {
            color: #007bff;
        }
        a:hover {
            text-decoration: underline;
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .container {
                padding: 0 10px;
            }
        }
    </style>

    <div class="container">
        <h1>About Carbon Footprint Tracker</h1>
        <p>Welcome to the About page of our Carbon Footprint Tracker application. Our mission is to empower individuals and organizations to monitor and reduce their carbon footprint for a sustainable future.</p>
        <h2>What We Do</h2>
        <p>Carbon Footprint Tracker allows users to track their carbon emissions across various activities such as transportation, energy consumption, and waste management. With our user-friendly interface and insightful analytics, users can visualize their environmental impact and take steps towards reducing it.</p>
        <h2>Our Team</h2>
        <p>We are a passionate team of developers, designers, and environmental enthusiasts dedicated to creating tools that make a positive difference in the world. Our diverse backgrounds and expertise enable us to innovate and address complex environmental challenges.</p>
        <h2>Contact Us</h2>
        <p>Have questions or feedback? We'd love to hear from you! Feel free to reach out to us at <a href="mailto:contact@carbontracker.com">contact@carbontracker.com</a>.</p>
    </div>

</asp:Content>
