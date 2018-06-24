<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Jobs.aspx.cs" Inherits="Jobs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_id" DataSourceID="SqlDataSourceJobs">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="emp_id" HeaderText="emp_id" ReadOnly="True" SortExpression="emp_id" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="minit" HeaderText="minit" SortExpression="minit" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:TemplateField HeaderText="job_id" SortExpression="job_id">
                    <EditItemTemplate>
                        <asp:TextBox ID="textBoxJobId" runat="server" Text='<%# Bind("job_id") %>'></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="requiredFieldValidator" runat="server" ControlToValidate="textBoxJobId" ErrorMessage="Enter a number" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("job_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="job_lvl" SortExpression="job_lvl">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceJobs" DataTextField="job_lvl" DataValueField="job_lvl" SelectedValue='<%# Eval("job_lvl") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("job_lvl") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="pub_id" HeaderText="pub_id" SortExpression="pub_id" />
                <asp:BoundField DataField="hire_date" DataFormatString="{0:d}" HeaderText="hire_date" SortExpression="hire_date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceJobs" runat="server" ConnectionString="<%$ ConnectionStrings:PubsConnectionString %>" DeleteCommand="DELETE FROM [employee] WHERE [emp_id] = @emp_id" InsertCommand="INSERT INTO [employee] ([emp_id], [fname], [minit], [lname], [job_id], [job_lvl], [pub_id], [hire_date]) VALUES (@emp_id, @fname, @minit, @lname, @job_id, @job_lvl, @pub_id, @hire_date)" SelectCommand="SELECT * FROM [employee]" UpdateCommand="UPDATE [employee] SET [fname] = @fname, [minit] = @minit, [lname] = @lname, [job_id] = @job_id, [job_lvl] = @job_lvl, [pub_id] = @pub_id, [hire_date] = @hire_date WHERE [emp_id] = @emp_id">
            <DeleteParameters>
                <asp:Parameter Name="emp_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="emp_id" Type="String" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="minit" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="job_id" Type="Int16" />
                <asp:Parameter Name="job_lvl" Type="Byte" />
                <asp:Parameter Name="pub_id" Type="String" />
                <asp:Parameter Name="hire_date" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="minit" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="job_id" Type="Int16" />
                <asp:Parameter Name="job_lvl" Type="Byte" />
                <asp:Parameter Name="pub_id" Type="String" />
                <asp:Parameter Name="hire_date" Type="DateTime" />
                <asp:Parameter Name="emp_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
