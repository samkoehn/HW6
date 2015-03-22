<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="NewRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="rpID" DataSourceID="sql_recipe" DefaultMode="Insert" Width="348px">
            <EditItemTemplate>
      
            </EditItemTemplate>
            <InsertItemTemplate>
                <table>
                    <tr>
                        <td style="text-align:right;">
                            Recipe Name:

                        </td>
                            
                        <td style="text-align:left;">
                            
                            <asp:TextBox ID="recipe_nameTextBox" runat="server" Text='<%# Bind("recipe_name") %>' />

                        </td>

                    </tr>
                    <tr>
                        <td>
                            Submitted By:

                        </td>

                        <td>
                              <asp:TextBox ID="recipe_submitterTextBox" runat="server" Text='<%# Bind("recipe_submitter") %>' />

                        </td>

                    </tr>
                    <tr>
                        <td>

                            Ingredient 1:
                        </td>

                        <td>

                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ingredient_1") %>' />

                        </td>

                    </tr>
                    <tr>
                        <td>
                            Ingredient 2:

                        </td>

                        <td>
                            
                             <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ingredient_2") %>' />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            Ingredient 3:

                        </td>

                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ingredient_3") %>' />

                        </td>

                    </tr>
                    <tr>
                        <td>
                            Ingredient 4:

                        </td>

                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ingredient_4") %>' />

                        </td>

                    </tr>
                    <tr>
                        <td>
                            Ingredient 5:

                        </td>

                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ingredient_5") %>' />

                        </td>

                    </tr>
                    <tr>
                        <td>
                            Preparation

                        </td>

                        <td>

                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            Notes

                        </td>

                        <td>

                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("notes") %>' />
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
</body>
</html>
