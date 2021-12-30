<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddGrade.aspx.cs" Inherits="DataBase_Project.AddGrade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <p>
        <asp:Label ID="Label8" runat="server" Text="Add comments for a defense"></asp:Label>
        &nbsp;&nbsp;</p>
        <p>
        <asp:Label ID="Label9" runat="server" Text="ThesisSerialNo"></asp:Label>
        &nbsp;</p>
        <p>
            <asp:TextBox ID="serialno" runat="server" style="margin-bottom: 0px" ></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label10" runat="server" Text="DefenseDate"></asp:Label>
        &nbsp;</p>
        <p>
            <asp:TextBox ID="defenseDate" runat="server" TextMode="Date" style="margin-bottom: 0px" ></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label11" runat="server" Text="Grade"></asp:Label>
        &nbsp;</p>
        <p>
            <asp:TextBox ID="grade" runat="server" style="margin-bottom: 0px" ></asp:TextBox>
        </p>
        </div>
        <asp:Button ID="AddGrad" runat="server" Text="AddGrad" OnClick="AddGrad_Click" />
        <br />
        <br />
        <asp:Button ID="Back" runat="server" Text="Back" OnClick="Back_Click" />
    </form>
</body>
</html>
