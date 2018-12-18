<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="manage.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="f學生編號" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="f學生編號" HeaderText="f學生編號" InsertVisible="False" ReadOnly="True" SortExpression="f學生編號" />
                            <asp:BoundField DataField="f姓名" HeaderText="f姓名" SortExpression="f姓名" />
                            <asp:BoundField DataField="f生日" HeaderText="f生日" SortExpression="f生日" />
                            <asp:BoundField DataField="f密碼" HeaderText="f密碼" SortExpression="f密碼" />
                            <asp:CheckBoxField DataField="f性別" HeaderText="f性別" SortExpression="f性別" />
                            <asp:BoundField DataField="fClassId" HeaderText="fClassId" SortExpression="fClassId" />
                            <asp:BoundField DataField="f身份區分" HeaderText="f身份區分" SortExpression="f身份區分" />
                            <asp:BoundField DataField="f家庭編號" HeaderText="f家庭編號" SortExpression="f家庭編號" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:letnobookDBConnectionString %>" SelectCommand="SELECT * FROM [tStudent]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
