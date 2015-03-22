<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailsView.aspx.vb" Inherits="detailsview" %>

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
    
        <asp:SqlDataSource ID="sql_recipe" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe %>" DeleteCommand="DELETE FROM [samkoehn_hw6_recipes] WHERE [rpID] = @rpID" InsertCommand="INSERT INTO [samkoehn_hw6_recipes] ([recipe_name], [recipe_submitter], [ingredient_1], [ingredient_2], [ingredient_3], [ingredient_4], [ingredient_5], [preparation], [notes]) VALUES (@recipe_name, @recipe_submitter, @ingredient_1, @ingredient_2, @ingredient_3, @ingredient_4, @ingredient_5, @preparation, @notes)" SelectCommand="SELECT * FROM [samkoehn_hw6_recipes] WHERE ([rpID] = @rpID)" UpdateCommand="UPDATE [samkoehn_hw6_recipes] SET [recipe_name] = @recipe_name, [recipe_submitter] = @recipe_submitter, [ingredient_1] = @ingredient_1, [ingredient_2] = @ingredient_2, [ingredient_3] = @ingredient_3, [ingredient_4] = @ingredient_4, [ingredient_5] = @ingredient_5, [preparation] = @preparation, [notes] = @notes WHERE [rpID] = @rpID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="rpID" QueryStringField="rpID" Type="Int32" />
            </SelectParameters>
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
        <span class="deletedrecipe"><asp:Label ID="lbl_deletedrecipe" runat="server"></asp:Label></span>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="rpID" DataSourceID="sql_recipe" Height="50px" Width="564px">
            <Fields>
                <asp:TemplateField HeaderText="Recipe Name" SortExpression="recipe_name">
                    <EditItemTemplate>
                        <asp:TextBox ID="tb_recipeName" runat="server" Text='<%# Bind("recipe_name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter a name for the recipe!" CssClass="validationError" ControlToValidate="tb_recipeName" ID="rfv_recipeName"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("recipe_name") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("recipe_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Submitted By" SortExpression="recipe_submitter">
                    <EditItemTemplate>
                        <asp:TextBox ID="tb_submittedBy" runat="server" Text='<%# Bind("recipe_submitter") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_submittedby" runat="server" ErrorMessage="Please enter an author for this recipe! " ControlToValidate="tb_submittedBy" CssClass="validationError"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("recipe_submitter") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("recipe_submitter") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ingredient 1" SortExpression="ingredient_1">
                    <EditItemTemplate>
                        <asp:TextBox ID="tb_ingredient1" runat="server" Text='<%# Bind("ingredient_1") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_ingredient1" runat="server" ErrorMessage="Please enter the first ingredient for this recipe!" ControlToValidate="tb_ingredient1" CssClass="validationError"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ingredient_1") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("ingredient_1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ingredient_2" HeaderText="Ingredient 2" SortExpression="ingredient_2" />
                <asp:BoundField DataField="ingredient_3" HeaderText="Ingredient 3" SortExpression="ingredient_3" />
                <asp:BoundField DataField="ingredient_4" HeaderText="Ingredient 4" SortExpression="ingredient_4" />
                <asp:BoundField DataField="ingredient_5" HeaderText="Ingredient 5" SortExpression="ingredient_5" />
                <asp:TemplateField HeaderText="Preparation" SortExpression="preparation">
                    <EditItemTemplate>
                        <asp:TextBox ID="tb_preparation" runat="server" Text='<%# Bind("preparation") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_preparation" runat="server" ErrorMessage="Please enter the preparation for this recipe!" ControlToValidate="tb_preparation" CssClass="validationError"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("preparation") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("preparation") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
    
    </div>
    </form>
      <footer>
        &copy; 2015. MSCI:3300 Software Design and Development 

    </footer>
</body>
</html>
