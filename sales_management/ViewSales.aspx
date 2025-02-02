﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSales.aspx.cs" Inherits="sales_management.ViewSales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" DataKeyNames="sales_id" DataSourceID="SqlDataSource1" Width="489px">
                <Columns>
                    <asp:BoundField DataField="sales_id" HeaderText="sales_id" InsertVisible="False" ReadOnly="True" SortExpression="sales_id" />
                    <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                    <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                    <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [sales_table]"
                DeleteCommand="Delete from [sales_table] where [sales_id]=@sales_id"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back to homepage" />
        </div>
    </form>
</body>
</html>
