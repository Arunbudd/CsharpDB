<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Discount.aspx.cs" Inherits="Discount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PubsConnectionString %>" SelectCommand="SELECT * FROM [discounts] WHERE ([stor_id] = @stor_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="stor_id" QueryStringField="store" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Height="50px" Width="191px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <EmptyDataTemplate>
                <span style="font-size:14.0pt;line-height:115%;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:SimSun;
mso-fareast-theme-font:minor-fareast;mso-ansi-language:EN-US;mso-fareast-language:
ZH-CN;mso-bidi-language:AR-SA">This store does not have a discount</span>
            </EmptyDataTemplate>
            <Fields>
                <asp:BoundField DataField="discounttype" HeaderText="Discount Type" SortExpression="discounttype" />
                <asp:BoundField DataField="stor_id" HeaderText="Store ID" SortExpression="stor_id" />
                <asp:BoundField DataField="lowqty" HeaderText="Low Quantity" SortExpression="lowqty" />
                <asp:BoundField DataField="highqty" HeaderText="High Quantity" SortExpression="highqty" />
                <asp:BoundField DataField="discount" HeaderText="Discount" SortExpression="discount" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
