<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addmobile.aspx.cs" Inherits="PostGradOffice.Addmobile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="--Add mobile number--"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Mobile number :"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="add" runat="server" Text="Add" OnClick="add_Click" />
        <p>
            <asp:Button ID="Button1" runat="server" Height="34px" style="margin-top: 21px" Text="ReturnToHome" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
