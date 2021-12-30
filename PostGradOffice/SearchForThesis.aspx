<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchForThesis.aspx.cs" Inherits="DataBase_Project.SearchForThesis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <p>
        <asp:Label ID="Label12" runat="server" Text="Search for a thesis"></asp:Label>
        &nbsp;</p>
        <p>
            <asp:TextBox ID="title" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" />
        </p>
        </div>
            <asp:Button ID="Back" runat="server" Text="Back" OnClick="Back_Click" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="serialNumber" HeaderText="Thesis Serial Number" />
                <asp:BoundField ItemStyle-Width="150px" DataField="field" HeaderText="Field" />
                <asp:BoundField ItemStyle-Width="150px" DataField="type" HeaderText="Type" />
                <asp:BoundField ItemStyle-Width="150px" DataField="title" HeaderText="Title" />
                <asp:BoundField ItemStyle-Width="150px" DataField="startDate" HeaderText="Start Date" />
                <asp:BoundField ItemStyle-Width="150px" DataField="endDate" HeaderText="End Date" />
                <asp:BoundField ItemStyle-Width="150px" DataField="defenseDate" HeaderText="Defense Date" />
                <asp:BoundField ItemStyle-Width="150px" DataField="years" HeaderText="Years" />
                <asp:BoundField ItemStyle-Width="150px" DataField="grade" HeaderText="Grade" />
                <asp:BoundField ItemStyle-Width="150px" DataField="payment_id" HeaderText="Payment Id" />
                <asp:BoundField ItemStyle-Width="150px" DataField="noOfExtensions" HeaderText="No Of Extensions" />
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
    </form>
</body>
</html>
