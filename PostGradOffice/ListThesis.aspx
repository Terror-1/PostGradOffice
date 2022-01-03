<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListThesis.aspx.cs" Inherits="PostGradOffice.ListThesis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="count" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />
            <asp:Button ID="pre" runat="server" Text="previous page" OnClick="pre_Click" />
        </div>
    </form>
</body>
</html>
