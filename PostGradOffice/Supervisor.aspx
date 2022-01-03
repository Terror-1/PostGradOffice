<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Supervisor.aspx.cs" Inherits="WebApplication1.Supervisor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            position: absolute;
            top: 50px;
            z-index: 1;
            left: 523px;
        }
        .auto-style5 {
            position: absolute;
            top: 95px;
            left: 521px;
            right: 880px;
            z-index: 1;
            height: 28px;
        }
        .auto-style6 {
            position: absolute;
            top: 137px;
            left: 520px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 178px;
            left: 520px;
            z-index: 1;
            right: 970px;
        }
        .auto-style8 {
            position: absolute;
            top: 15px;
            left: 10px;
        }
        .auto-style9 {
            position: absolute;
            top: 56px;
            left: 10px;
        }
        .auto-style10 {
            position: absolute;
            top: 97px;
            left: 10px;
        }
        .auto-style11 {
            position: absolute;
            top: 138px;
            left: 10px;
        }
        .auto-style12 {
            position: absolute;
            top: 179px;
            left: 10px;
        }
        .auto-style13 {
            position: absolute;
            top: 220px;
            left: 10px;
        }
        .auto-style14 {
            position: absolute;
            top: 217px;
            left: 519px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Style="z-index: 1" Text=" Hello Sir"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Style="z-index: 1" Text=" View students' names and years spent in the thesis"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="View Student" />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style5" OnClick="Button2_Click" Text="View Publication" />
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Style="z-index: 1" Text="Publications of a student"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style11" Style="z-index: 1" Text="Add a defense for a thesis and add examiner(s) for the defense"></asp:Label>
            <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Text="Add" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" CssClass="auto-style7" Text="Evaluate" OnClick="Button4_Click" />
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style12" Style="z-index: 1" Text="Evaluate a progress report"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style13" style="z-index: 1" Text="Cancel A Thesis With 0 On The Last two Progress Reports"></asp:Label>
            <asp:Button ID="cancel" runat="server" CssClass="auto-style14" Text="cancel" OnClick="cancel_Click" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
