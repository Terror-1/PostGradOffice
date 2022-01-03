<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListSup.aspx.cs" Inherits="PostGradOffice.ListSup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <asp:Button ID="pre" runat="server" Text="previous page" OnClick="pre_Click" />
            <br />
        </div>
    </form>
</body>
</html>
