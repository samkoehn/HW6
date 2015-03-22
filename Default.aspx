<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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
        
        <asp:SqlDataSource ID="sql_recipe" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe %>" DeleteCommand="DELETE FROM [samkoehn_hw6_recipes] WHERE [rpID] = @rpID" InsertCommand="INSERT INTO [samkoehn_hw6_recipes] ([recipe_name], [recipe_submitter], [ingredient_1], [ingredient_2], [ingredient_3], [ingredient_4], [ingredient_5], [preparation], [notes]) VALUES (@recipe_name, @recipe_submitter, @ingredient_1, @ingredient_2, @ingredient_3, @ingredient_4, @ingredient_5, @preparation, @notes)" SelectCommand="SELECT * FROM [samkoehn_hw6_recipes]" UpdateCommand="UPDATE [samkoehn_hw6_recipes] SET [recipe_name] = @recipe_name, [recipe_submitter] = @recipe_submitter, [ingredient_1] = @ingredient_1, [ingredient_2] = @ingredient_2, [ingredient_3] = @ingredient_3, [ingredient_4] = @ingredient_4, [ingredient_5] = @ingredient_5, [preparation] = @preparation, [notes] = @notes WHERE [rpID] = @rpID">
            <DeleteParameters>
                <asp:Parameter Name="rpID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="recipe_submitter" Type="String" />
                <asp:Parameter Name="ingredient_1" Type="String" />
                <asp:Parameter Name="ingredient_2" Type="String" />
                <asp:Parameter Name="ingredient_3" Type="String" />
                <asp:Parameter Name="ingredient_4" Type="String" />
                <asp:Parameter Name="ingredient_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="recipe_submitter" Type="String" />
                <asp:Parameter Name="ingredient_1" Type="String" />
                <asp:Parameter Name="ingredient_2" Type="String" />
                <asp:Parameter Name="ingredient_3" Type="String" />
                <asp:Parameter Name="ingredient_4" Type="String" />
                <asp:Parameter Name="ingredient_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="rpID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="rpID" DataSourceID="sql_recipe" Width="619px" CssClass="table table-bordered, table-striped">
       
            <Columns>
                <asp:BoundField DataField="recipe_submitter" HeaderText="Submitted By" SortExpression="recipe_submitter" />
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                <asp:HyperLinkField DataNavigateUrlFields="rpID" DataNavigateUrlFormatString="detailsview.aspx?rpID={0}" Text="View" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>

    <footer>
        &copy; 2015. MSCI:3300 Software Design and Development 

    </footer>
</body>
</html>
