<%@ Page Language="C#" AutoEventWireup="true" Codefile="calculator.aspx.cs" Inherits="calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Carbon Footprint Calculator</title>
    <style>
        body{
            font-family: Arial, sans-serif;
            background-image: url('green.png');
            background-size: cover;
            background-position: center;
            background-attachment: fixed; /* Keeps the background image fixed while scrolling */
            color: #fff;
        }
        .container {
            width: 50%;
            margin: 50px auto; /* Center the container vertically and horizontally */
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.3); /* Transparent white background */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Shadow effect */
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"] {
            width: calc(100% - 10px); /* Adjusted width to accommodate borders */
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .result {
            font-size: 18px;
            font-weight: bold;
        }

    </style>
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <a href="Default.aspx">&lt; go home</a>
            <h1>Carbon Footprint Calculator</h1>
            
           
            <label for="txtElectricity">Enter Monthly Electricity Consumption (in kWh):</label>
            <asp:TextBox ID="txtElectricity" runat="server"></asp:TextBox>
            <br />

            
            <label for="txtEnergy">Enter Monthly Energy Consumption (in MJ):</label>
            <asp:TextBox ID="txtEnergy" runat="server"></asp:TextBox>
            <br />

           
            <label for="txtWaste">Enter Annual Waste Generation (in kg):</label>
            <asp:TextBox ID="txtWaste" runat="server"></asp:TextBox>
            <br />

           
            <label for="txtMileage">Enter Annual Mileage (in miles):</label>
            <asp:TextBox ID="txtMileage" runat="server"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
            <br />
            <br />

            <asp:Label ID="lblResult" runat="server" EnableViewState="false"></asp:Label>
        </div>
    </form>
</body>
</html>
