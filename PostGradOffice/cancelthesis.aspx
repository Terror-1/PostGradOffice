<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cancelthesis.aspx.cs" Inherits="WebApplication1.cancelthesis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 74px;
            left: 18px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 71px;
            left: 222px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 122px;
            left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        Please enter the ThesisSerialNumber<asp:TextBox ID="serialno" runat="server" CssClass="auto-style1"></asp:TextBox>
        <br />
        <br />
        <p>
            <asp:Button ID="enter" runat="server" CssClass="auto-style2" Text="Enter" 
                OnClick="enter_Click" />
            <asp:Button ID="return" runat="server" CssClass="auto-style3" style="z-index: 1" Text="To The Previous Page" OnClick="return_Click" />
        </p>
    </form>
</body>
</html>
