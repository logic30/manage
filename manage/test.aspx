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
        .auto-style2 {
            height: 36px;
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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="fClassId" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="fClassId" HeaderText="fClassId" InsertVisible="False" ReadOnly="True" SortExpression="fClassId" />
                            <asp:BoundField DataField="f年級" HeaderText="f年級" SortExpression="f年級" />
                            <asp:BoundField DataField="f班號" HeaderText="f班號" SortExpression="f班號" />
                            <asp:BoundField DataField="f學級年度" HeaderText="f學級年度" SortExpression="f學級年度" />
                            <asp:BoundField DataField="f導師姓名" HeaderText="f導師姓名" SortExpression="f導師姓名" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:letnobookDBConnectionString %>" SelectCommand="SELECT * FROM [tClass]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tClass] WHERE [fClassId] = @original_fClassId AND (([f年級] = @original_f年級) OR ([f年級] IS NULL AND @original_f年級 IS NULL)) AND (([f班號] = @original_f班號) OR ([f班號] IS NULL AND @original_f班號 IS NULL)) AND (([f學級年度] = @original_f學級年度) OR ([f學級年度] IS NULL AND @original_f學級年度 IS NULL)) AND (([f導師姓名] = @original_f導師姓名) OR ([f導師姓名] IS NULL AND @original_f導師姓名 IS NULL))" InsertCommand="INSERT INTO [tClass] ([f年級], [f班號], [f學級年度], [f導師姓名]) VALUES (@f年級, @f班號, @f學級年度, @f導師姓名)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tClass] SET [f年級] = @f年級, [f班號] = @f班號, [f學級年度] = @f學級年度, [f導師姓名] = @f導師姓名 WHERE [fClassId] = @original_fClassId AND (([f年級] = @original_f年級) OR ([f年級] IS NULL AND @original_f年級 IS NULL)) AND (([f班號] = @original_f班號) OR ([f班號] IS NULL AND @original_f班號 IS NULL)) AND (([f學級年度] = @original_f學級年度) OR ([f學級年度] IS NULL AND @original_f學級年度 IS NULL)) AND (([f導師姓名] = @original_f導師姓名) OR ([f導師姓名] IS NULL AND @original_f導師姓名 IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_fClassId" Type="Int32" />
                            <asp:Parameter Name="original_f年級" Type="String" />
                            <asp:Parameter Name="original_f班號" Type="String" />
                            <asp:Parameter Name="original_f學級年度" Type="String" />
                            <asp:Parameter Name="original_f導師姓名" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="f年級" Type="String" />
                            <asp:Parameter Name="f班號" Type="String" />
                            <asp:Parameter Name="f學級年度" Type="String" />
                            <asp:Parameter Name="f導師姓名" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="f年級" Type="String" />
                            <asp:Parameter Name="f班號" Type="String" />
                            <asp:Parameter Name="f學級年度" Type="String" />
                            <asp:Parameter Name="f導師姓名" Type="String" />
                            <asp:Parameter Name="original_fClassId" Type="Int32" />
                            <asp:Parameter Name="original_f年級" Type="String" />
                            <asp:Parameter Name="original_f班號" Type="String" />
                            <asp:Parameter Name="original_f學級年度" Type="String" />
                            <asp:Parameter Name="original_f導師姓名" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="fClassId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="fClassId" HeaderText="班級編號" InsertVisible="False" ReadOnly="True" SortExpression="fClassId" />
                            <asp:BoundField DataField="f年級" HeaderText="年級" SortExpression="f年級" />
                            <asp:BoundField DataField="f班號" HeaderText="班號" SortExpression="f班號" />
                            <asp:BoundField DataField="f學級年度" HeaderText="學級年度" SortExpression="f學級年度" />
                            <asp:BoundField DataField="f導師姓名" HeaderText="導師姓名" SortExpression="f導師姓名" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
