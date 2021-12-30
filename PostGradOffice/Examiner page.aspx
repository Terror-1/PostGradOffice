<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Examiner page.aspx.cs" Inherits="DataBase_Project.Examiner_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Edit" runat="server" Text="Edit my personal information" OnClick="Edit_Click" />
        &nbsp;<p>
        <asp:Button ID="AddCom" runat="server" Text="Add comments for a defense" OnClick="AddCom_Click" />
        &nbsp;</p>
        <p>
        <asp:Button ID="AddGra" runat="server" Text="Add Grade for a defense" OnClick="AddGra_Click" />
        &nbsp;</p>
        <p>
        <asp:Button ID="Search" runat="server" Text="Search for a thesis" OnClick="Search_Click" />
        &nbsp;</p>
        <p>
        <asp:Button ID="List" runat="server" Text="See all thesis titels, supervisors and students names I attended defenses for" OnClick="List_Click" />
        &nbsp;</p>
    </form>
</body>
</html>
