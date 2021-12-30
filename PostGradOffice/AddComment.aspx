<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddComment.aspx.cs" Inherits="DataBase_Project.AddComment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
        <asp:Label ID="Label4" runat="server" Text="Add comments for a defense"></asp:Label>
        &nbsp;&nbsp;</p>
        <p>
        <asp:Label ID="Label5" runat="server" Text="ThesisSerialNo"></asp:Label>
        &nbsp;</p>
        <p>
            <asp:TextBox ID="serialno" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label6" runat="server" Text="DefenseDate"></asp:Label>
        &nbsp;</p>
        <p>
            <asp:TextBox ID="defenseDate" runat="server" TextMode="Date" style="margin-bottom: 0px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label7" runat="server" Text="comments"></asp:Label>
        &nbsp;</p>
        <p>
            <asp:TextBox ID="comments" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        </p>
        </div> 
        <asp:Button ID="AddComm" runat="server" Text="AddComm" OnClick="AddComm_Click" />
        
        <br />
        <br />
        <asp:Button ID="Back" runat="server" Text="Back" OnClick="Back_Click" />
        
    </form>
</body>
</html>
