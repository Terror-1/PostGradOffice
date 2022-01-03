<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Publication.aspx.cs" Inherits="WebApplication1.Publication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 46px;
            left: 8px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 93px;
            left: 8px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 89px;
            left: 247px;
            z-index: 1;
        }
        .auto-style4 {
            width: 232px;
            height: 152px;
            position: absolute;
            top: 160px;
            left: 9px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 5px;
            left: 245px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Please enter the student's id"></asp:Label>
            <asp:Button ID="return" runat="server" CssClass="auto-style5" Text="To The Previous Page" OnClick="return_Click" />
            <br />
            <asp:TextBox ID="sid" runat="server" CssClass="auto-style2"></asp:TextBox>
            <asp:Button ID="view" runat="server" CssClass="auto-style3" Text="View Puplication" OnClick="view_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style4">
            </asp:GridView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
