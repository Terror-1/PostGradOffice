<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="evaluatereport.aspx.cs" Inherits="WebApplication1.evaluatereport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 98px;
            left: 264px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 95px;
            left: 22px;
            z-index: 1;
            bottom: 159px;
        }
        .auto-style4 {
            position: absolute;
            top: 102px;
            left: 438px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 148px;
            left: 17px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 148px;
            left: 244px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 146px;
            left: 464px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 145px;
            left: 707px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 49px;
            left: 20px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 179px;
            left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="thesisSerialNo"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="progressReportNo"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text="evaluation(Between 0 and 3)"></asp:Label>
        <p>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style10" Text="Please enter the following"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="return" runat="server" CssClass="auto-style11" style="z-index: 1" Text="To The Previous Page" OnClick="return_Click" />
        </p>
        <p>
        <asp:TextBox ID="progressno" runat="server" CssClass="auto-style6"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <asp:TextBox ID="serialno" runat="server" CssClass="auto-style7"></asp:TextBox>
        <asp:TextBox ID="eval" runat="server" CssClass="auto-style8"></asp:TextBox>
        <asp:Button ID="evaluate" runat="server" CssClass="auto-style9" Text="Evaluate" 
            OnClick="evaluate_Click" />
    </form>
</body>
</html>
