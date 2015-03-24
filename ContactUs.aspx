<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Contact Form</title>
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
    
     <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your name:<br />
        <asp:TextBox ID="senderName" runat="server" placeholder="First and last name" ></asp:TextBox>
        <br />
        <br />

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" placeholder="Preferred email address" ></asp:TextBox>
        <br />
        <br />
       
        Your subject:<br />
        <asp:TextBox ID="senderSubject" runat="server"></asp:TextBox>
        <br />
        <br />

         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" placeholder="Please enter your message." ></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>    
        
    <div>
    </div>
    </form>
     <footer>
        &copy; 2015. MSCI:3300 Software Design and Development 

    </footer>
</body>
</html>
