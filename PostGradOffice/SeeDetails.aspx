<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeeDetails.aspx.cs" Inherits="DataBase_Project.SeeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Back" runat="server" Text="Back" OnClick="Back_Click" />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="ThesisTitle" HeaderText="Thesis Title" />
                <asp:BoundField ItemStyle-Width="150px" DataField="SupervisorName" HeaderText="Supervisor Name" />
                <asp:BoundField ItemStyle-Width="150px" DataField="StudentFirstName" HeaderText="Student First Name" />
                <asp:BoundField ItemStyle-Width="150px" DataField="StudentLastName" HeaderText="Student Last Name" />
            </Columns>

            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#FFCC66" ForeColor="#333333"></PagerStyle>

            <RowStyle BackColor="#FFFBD6" ForeColor="#333333"></RowStyle>

            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
        </asp:GridView>
    </form>
</body>
</html>
