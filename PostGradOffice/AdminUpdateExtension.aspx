<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUpdateExtension.aspx.cs" Inherits="DBproject.AdminUpdateExtension" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            Thesis Serial Number</p>
        <p>
            <asp:TextBox ID="ThesisSerialNumber" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Confirm" runat="server" OnClick="Confirm_update" Text="Confirm" />
        <br />
        <br />
        <asp:Button ID="pre" runat="server" Text="previous page" OnClick="pre_Click" />
    </form>
</body>
</html>
