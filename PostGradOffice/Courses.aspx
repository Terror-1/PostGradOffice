<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="PostGradOffice.Courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <asp:Label ID="Label2" runat="server" Text="My Courses"></asp:Label><br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="Course Id" />
                <asp:BoundField ItemStyle-Width="150px" DataField="fees" HeaderText="Course Fee" />
                <asp:BoundField ItemStyle-Width="150px" DataField="creditHours" HeaderText="Credit Hours" />
                <asp:BoundField ItemStyle-Width="150px" DataField="code" HeaderText="Course Code" />
                <asp:BoundField ItemStyle-Width="150px" DataField="grade" HeaderText="Course grade" />
  
            </Columns>
            <EditRowStyle BackColor="#999999"></EditRowStyle>

            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
        </asp:GridView>

        <asp:Button ID="Button1" runat="server" Text="ok" OnClick="Button1_Click" />

        <p>
    </form>
</body>
</html>
