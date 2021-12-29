<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PostGradOffice.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="please Log in"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="email"></asp:Label>
        </p>
        <asp:TextBox ID="id" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label3" runat="server" Text="password"></asp:Label>
        </p>
        <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="signin" runat="server" Text="Login" OnClick="signin_Click" />
        </p>
        <p>
            <asp:Button ID="signup" runat="server" Text="Register" OnClick="signup_click" />
        </p>
    </form>
</body>
</html>
