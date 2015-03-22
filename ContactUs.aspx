<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes</title>
    <link rel="stylesheet" type="text/css" href="~/css/stylesheet.css" />
</head>
<body>
    <h1>
        Wicked Easy Recipes

    </h1>

    <h2>
        Using 5 Ingredients or Less!

    </h2>
    <nav>
        <a href="Default.aspx">Home</a>
        <a href="NewRecipe.aspx">New Recipe</a>
        <a href="AboutUs.html">About Us</a>
        <a href="ContactUs.aspx">Contact Us</a> 
    </nav>

    <form id="form1" runat="server">
    <div>
    <p>
        Your Email Address: <asp:TextBox ID="tb_emailaddress" runat="server"></asp:TextBox>
    </p>
    <p>
        Your Message: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    </div>
    </form>
     <footer>
        &copy; 2015. MSCI:3300 Software Design and Development 

    </footer>
</body>
</html>
