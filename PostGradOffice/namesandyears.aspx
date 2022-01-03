<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="namesandyears.aspx.cs" Inherits="WebApplication1.namesandyears" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 232px;
            height: 152px;
            position: absolute;
            top: 71px;
            left: 10px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 15px;
            left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1">
            </asp:GridView>
            <asp:Button ID="return" runat="server" CssClass="auto-style2" style="z-index: 1" Text="To The Previous Page" OnClick="return_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
