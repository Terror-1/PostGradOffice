<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fillprogress.aspx.cs" Inherits="PostGradOffice.Fillprogress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="--Fill progress report--"></asp:Label>
        <br />
        <br/>
        <asp:Label ID="Label2" runat="server" Text="enter a thesis serial number :"></asp:Label>
        <p>
            <asp:TextBox ID="serial" runat="server"  Width="68px"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="enter a progress report number :"></asp:Label>
        <p>
            <asp:TextBox ID="prgrssnumm" runat="server"  Width="68px"></asp:TextBox>
        </p>
          
        <asp:Label ID="Label4" runat="server" Text="enter a state :"></asp:Label>
        <p>
            <asp:TextBox ID="state" runat="server"  Width="68px"></asp:TextBox>
        </p>
         
        <asp:Label ID="Label5" runat="server" Text="enter the description :"></asp:Label>
        <p>
            <asp:TextBox ID="desc" runat="server"  Width="68px"></asp:TextBox>
        </p>
        <asp:Button ID="fill" runat="server" Text="fill" Height="33px" OnClick="fill_Click" Width="106px" />
        <p>
            <asp:Button ID="Button1" runat="server" Height="34px" style="margin-top: 21px" Text="ReturnToHome" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
