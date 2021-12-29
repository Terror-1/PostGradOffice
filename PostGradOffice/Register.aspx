<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PostGradOffice.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="Gucians" runat="server" OnClick="Button1_Click" Text="Student" />
        <p>
            <asp:Button ID="Supervisor" runat="server" Text="Supervisor" OnClick="Supervisor_Click" />
        </p>
        <p>
            <asp:Button ID="Examiner" runat="server" Text="Examiner" OnClick="Examiner_Click" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
