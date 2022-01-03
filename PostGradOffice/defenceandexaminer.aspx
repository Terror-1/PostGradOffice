<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="defenceandexaminer.aspx.cs" Inherits="WebApplication1.defenceandexaminer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 121px;
            left: 11px;
            z-index: 1;
            right: 1404px;
        }
        .auto-style2 {
            position: absolute;
            top: 120px;
            left: 244px;
            z-index: 1;
            }
        .auto-style3 {
            position: absolute;
            top: 121px;
            z-index: 1;
            left: 471px;
        }
        .auto-style10 {
            position: absolute;
            top: 309px;
            left: 189px;
            z-index: 1;
            }
        .auto-style16 {
            position: absolute;
            top: 266px;
            left: 4px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 269px;
            left: 200px;
            z-index: 1;
            right: 1215px;
        }
        .auto-style18 {
            position: absolute;
            top: 268px;
            left: 387px;
            z-index: 1;
            right: 1028px;
        }
        .auto-style19 {
            position: absolute;
            top: 269px;
            left: 595px;
            z-index: 1;
            right: 820px;
        }
        .auto-style20 {
            position: absolute;
            top: 306px;
            left: 314px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 169px;
            left: 10px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 116px;
            left: 695px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 355px;
            left: 10px;
        }
        .auto-style25 {
            position: absolute;
            top: 15px;
            left: 10px;
        }
        .auto-style26 {
            position: absolute;
            top: 81px;
            left: 10px;
        }
        .auto-style27 {
            position: absolute;
            top: 82px;
            left: 265px;
            z-index: 1;
            right: 1075px;
        }
        .auto-style28 {
            position: absolute;
            top: 83px;
            left: 490px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 226px;
            left: 10px;
        }
        .auto-style30 {
            position: absolute;
            top: 226px;
            left: 239px;
            z-index: 1;
        }
        .auto-style31 {
            position: absolute;
            top: 227px;
            left: 430px;
            z-index: 1;
        }
        .auto-style32 {
            position: absolute;
            top: 226px;
            left: 626px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 308px;
            left: 10px;
        }
         .auto-style34 {
            position: absolute;
            top: 265px;
            left: 800px;
        }
        .auto-style35 {
            position: absolute;
            top: 226px;
            left: 835px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label7" runat="server" CssClass="auto-style25" Style="z-index: 1" Text="Add Defence (Please enter the following)"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="serialno" runat="server" CssClass="auto-style1"></asp:TextBox>
        <asp:TextBox ID="location" runat="server" CssClass="auto-style3"></asp:TextBox>
        <asp:Button ID="AddDefense" runat="server" CssClass="auto-style22" Text="Add Defense"
            OnClick="AddDefense_Click" />
        <br />
        <asp:TextBox ID="defensedate" TextMode="Date" runat="server" CssClass="auto-style2"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" CssClass="auto-style26" style="z-index: 1" Text="Thesis Serial Number"></asp:Label>
        <asp:Label ID="Label9" runat="server" CssClass="auto-style27" Text="Defense Date"></asp:Label>
        <asp:Label ID="Label10" runat="server" CssClass="auto-style28" Text="Defense Location"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" CssClass="auto-style21" Text="Add Examiner For A Defense"></asp:Label>
        <br />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            
            <asp:Label ID="Label11" runat="server" CssClass="auto-style29" style="z-index: 1" Text="Thesis Serial Number"></asp:Label>
            <asp:Label ID="Label12" runat="server" CssClass="auto-style30" Text="Defense Date"></asp:Label>
            <asp:Label ID="Label13" runat="server" CssClass="auto-style31" Text="Examiner Name"></asp:Label>
            <asp:Label ID="Label14" runat="server" CssClass="auto-style32" Text="Field Of Work"></asp:Label>
            <asp:Label ID="pass" runat="server" CssClass="auto-style35" style="z-index: 1" Text="Password"></asp:Label>

        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label15" runat="server" CssClass="auto-style33" style="z-index: 1" Text="National (Leave if no)"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:CheckBox ID="Yes" runat="server" CssClass="auto-style10" />
            <asp:TextBox ID="password" runat="server" CssClass="auto-style34"></asp:TextBox>
            <asp:TextBox ID="serialno1" runat="server" CssClass="auto-style16"></asp:TextBox>
            <asp:TextBox ID="examinername" runat="server" CssClass="auto-style18"></asp:TextBox>
            <asp:TextBox ID="defensedate1" TextMode="Date" runat="server" CssClass="auto-style17"></asp:TextBox>
            <asp:TextBox ID="fieldofwork" runat="server" CssClass="auto-style19"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="return" runat="server" CssClass="auto-style24" style="z-index: 1" Text="To The Previous Page" OnClick="return_Click" />
        </p>
        <asp:Button ID="AddExaminer" runat="server" CssClass="auto-style20" 
            Text="Add Examiner" OnClick="AddExaminer_Click" />
    </form>
</body>
</html>
