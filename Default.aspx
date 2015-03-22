﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_recipe" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe %>" SelectCommand="SELECT [rpID], [recipe_name], [recipe_submitter] FROM [samkoehn_hw6_recipes]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="rpID" DataSourceID="sql_recipe">
            <Columns>
                <asp:BoundField DataField="rpID" HeaderText="rpID" InsertVisible="False" ReadOnly="True" SortExpression="rpID" />
                <asp:BoundField DataField="recipe_name" HeaderText="recipe_name" SortExpression="recipe_name" />
                <asp:BoundField DataField="recipe_submitter" HeaderText="recipe_submitter" SortExpression="recipe_submitter" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
