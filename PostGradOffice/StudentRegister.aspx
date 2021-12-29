﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="PostGradOffice.StudentRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            <br />
            <asp:TextBox ID="FirstName" runat="server" ></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            <br />
            <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="password"></asp:Label>
            <br />
            <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Faculty"></asp:Label>
            <br />
            <asp:TextBox ID="Faculty" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="email"></asp:Label> <br />

             <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="address"></asp:Label> <br />
             <asp:TextBox ID="address" runat="server"></asp:TextBox>
        </div>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Gucian"></asp:Label> <br />
            <asp:CheckBox ID="Gucian" runat="server"  />
        </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="NonGucian"></asp:Label> <br />
            <asp:CheckBox ID="NonGucian" runat="server" />
        </p>
        <p>
            <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" />
        </p>
    </form>
</body>
</html>