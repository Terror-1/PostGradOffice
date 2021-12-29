<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Myprofile2.aspx.cs" Inherits="PostGradOffice.Myprofile2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <asp:Label ID="Label6" runat="server" Text="ID :  "></asp:Label>
            <asp:Label ID="I" runat="server" Text=""></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="First" runat="server" Text="First Name :  "></asp:Label>
            <asp:Label ID="Fn" runat="server" Text="Not defined yet"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="Last Name :  "></asp:Label>
            <asp:Label ID="Ln" runat="server" Text="Not defined yet"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label7" runat="server" Text="email :  "></asp:Label>
            <asp:Label ID="mail" runat="server" Text="Not defined yet"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Type  :  "></asp:Label>
            <asp:Label ID="Tp" runat="server" Text=""></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="Faculty :  "></asp:Label>
            <asp:Label ID="facc" runat="server" Text="Not defined yet"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label4" runat="server" Text="GPA  :  "></asp:Label>
            <asp:Label ID="Gpa" runat="server" Text=""></asp:Label>
        </div>
        <p>
            <asp:Button ID="ok" runat="server" Text="ok" OnClick="ok_Click" />
        </p>

    </form>
</body>
</html>
