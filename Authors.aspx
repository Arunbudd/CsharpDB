<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Authors.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="authorsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PubsConnectionString %>" SelectCommand="SELECT [au_id], [au_fname], [au_lname] FROM [authors]"></asp:SqlDataSource>
    
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="authorsDataSource" DataTextField="au_lname" DataValueField="au_id"     AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="au_id" DataSourceID="selectedAuthorDataSource">
            <Columns>
                <asp:BoundField DataField="au_id" HeaderText="au_id" ReadOnly="True" SortExpression="au_id" />
                <asp:BoundField DataField="au_lname" HeaderText="au_lname" SortExpression="au_lname" />
                <asp:BoundField DataField="au_fname" HeaderText="au_fname" SortExpression="au_fname" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
                <asp:CheckBoxField DataField="contract" HeaderText="contract" SortExpression="contract" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="selectedAuthorDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PubsConnectionString %>" SelectCommand="SELECT * FROM [authors] WHERE ([au_id] = @au_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="au_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
