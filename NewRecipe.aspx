<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="NewRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Recipe Wicked Easy Recipes</title>
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
    
        <asp:SqlDataSource ID="sql_recipe" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe %>" 
            DeleteCommand="DELETE FROM [samkoehn_hw6_recipes] WHERE [rpID] = @rpID" 
            InsertCommand="INSERT INTO [samkoehn_hw6_recipes] ([recipe_name], [recipe_submitter], [ingredient_1], [ingredient_2], [ingredient_3], [ingredient_4], [ingredient_5], [preparation], [notes]) VALUES (@recipe_name, @recipe_submitter, @ingredient_1, @ingredient_2, @ingredient_3, @ingredient_4, @ingredient_5, @preparation, @notes)" SelectCommand="SELECT * FROM [samkoehn_hw6_recipes]" UpdateCommand="UPDATE [samkoehn_hw6_recipes] SET [recipe_name] = @recipe_name, [recipe_submitter] = @recipe_submitter, [ingredient_1] = @ingredient_1, [ingredient_2] = @ingredient_2, [ingredient_3] = @ingredient_3, [ingredient_4] = @ingredient_4, [ingredient_5] = @ingredient_5, [preparation] = @preparation, [notes] = @notes WHERE [rpID] = @rpID">
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="rpID" DataSourceID="sql_recipe" DefaultMode="Insert" Width="615px">
            <EditItemTemplate>
      
            </EditItemTemplate>
            <InsertItemTemplate>
                <table>
                    <tr>
                        <td>
                            Recipe Name:

                        </td> 
                        <td>
                            
                            <asp:TextBox ID="tb_recipeName" runat="server" Text='<%# Bind("recipe_name") %>' />

                        </td>
                        <td>
                            
                            <asp:RequiredFieldValidator ID="rfv_recipeName" runat="server" ErrorMessage="Please enter the name of the new recipe!" CssClass="validationError" ControlToValidate="tb_recipeName"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Submitted By:

                        </td>

                        <td>
                              <asp:TextBox ID="tb_recipeSubmitter" runat="server" Text='<%# Bind("recipe_submitter") %>' />

                        </td>
                        <td>
                            
                            <asp:RequiredFieldValidator ID="rfv_recipeSubmitter" runat="server" ErrorMessage="Please enter the author of the new recipe!" CssClass="validationError" ControlToValidate="tb_recipeSubmitter"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>

                            Ingredient 1:
                        </td>

                        <td>

                        <asp:TextBox ID="tb_ingredient1" runat="server" Text='<%# Bind("ingredient_1") %>' />

                        </td>
                           <td>
                            
                            <asp:RequiredFieldValidator ID="rfv_ingredient1" runat="server" ErrorMessage="Please enter the first ingredient of the new recipe!" CssClass="validationError" ControlToValidate="tb_ingredient1"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient 2:

                        </td>

                        <td>
                            
                             <asp:TextBox ID="tb_ingredient2" runat="server" Text='<%# Bind("ingredient_2") %>' />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            Ingredient 3:

                        </td>

                        <td>
                            <asp:TextBox ID="tb_ingredient3" runat="server" Text='<%# Bind("ingredient_3") %>' />

                        </td>

                    </tr>
                    <tr>
                        <td>
                            Ingredient 4:

                        </td>

                        <td>
                            <asp:TextBox ID="tb_ingredient4" runat="server" Text='<%# Bind("ingredient_4") %>' />

                        </td>

                    </tr>
                    <tr>
                        <td>
                            Ingredient 5:

                        </td>

                        <td>
                            <asp:TextBox ID="tb_ingredient5" runat="server" Text='<%# Bind("ingredient_5") %>' />

                        </td>

                    </tr>
                    <tr>
                        <td>
                            Preparation:

                        </td>

                        <td>

                            <asp:TextBox ID="tb_preparation" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                        <td>
                            
                            <asp:RequiredFieldValidator ID="rfv_preparation" runat="server" ErrorMessage="Please enter the preparation of the new recipe!" CssClass="validationError" ControlToValidate="tb_preparation">

                            </asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Notes:

                        </td>

                        <td>

                            <asp:TextBox ID="tb_notes" runat="server" Text='<%# Bind("notes") %>' />
                        </td>

                    </tr>
                 <tr>
                        <td>

                            <asp:Button ID="btn_insert" runat="server" Text="Insert" CausesValidation="True" CommandName="Insert" />
                        </td>

                        <td>
                            <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CausesValidation="False" CommandName="Cancel" />
                           
                        </td>

                    </tr>

                </table>
            </InsertItemTemplate>
            <ItemTemplate>
               
            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
    
    </div>
    </form>
     <footer>
        &copy; 2015. MSCI:3300 Software Design and Development 

    </footer>
</body>

</html>
