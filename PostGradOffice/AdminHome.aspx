<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="PostGradOffice.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="List Supervisors" OnClick="Button1_Click" />
            <br />

        </div>
      
        <br/>
        <asp:Button ID="Button2" runat="server" Text="List thesis" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Text="Issue Thesis payment" OnClick="Button5_Click" />
        <p>
            <asp:Button ID="Button4" runat="server" Text="Issue installment" OnClick="Button4_Click" />
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" Text="update NumberOf thesis" OnClick="Button3_Click" />
        </p>
    </form>
</body>
</html>
