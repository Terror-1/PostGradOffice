<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIssueThesispayment.aspx.cs" Inherits="DBproject.thesis_payment" %>

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
            Thesis Serial Number</p>
        <asp:TextBox ID="thesisSerialNumber" runat="server"></asp:TextBox>
        <p>
            Amount</p>
        <p>
            <asp:TextBox ID="amount" runat="server"></asp:TextBox>
        </p>
        <p>
            Number of Installments</p>
        <asp:TextBox ID="NoofInstallments" runat="server"></asp:TextBox>
        <br />
        <br />
        Fund Percentage<br />
        <asp:TextBox ID="FundPercentage" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Confirm" runat="server" Onclick="Confirmthesis_click" Text="Confirm" />
        </p>
        <p>
            <asp:Button ID="pre" runat="server" Text="previous page" OnClick="pre_Click" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
