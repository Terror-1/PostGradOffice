<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIssueInstallPayment.aspx.cs" Inherits="DBproject.installment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Please Enter installment details"></asp:Label>
        &nbsp;</p>
        <p>
            Payment ID</p>
        <asp:TextBox ID="Payment" runat="server"></asp:TextBox>
        <br />
        Installment start date (please enter the date in the correct format DD/MM/YYYY)<p>
            <asp:TextBox ID="InstallStartDate" TextMode="Date" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Confirm" runat="server" Onclick="Confirm_click" Text="Confirm" />
        <br />
        <br />
        <asp:Button ID="pre" runat="server" Text="previous page" OnClick="pre_Click" />
    </form>
</body>
</html>
