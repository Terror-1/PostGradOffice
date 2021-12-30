<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditInfo.aspx.cs" Inherits="DataBase_Project.EditInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Label ID="Label1" runat="server" Text="Edit my personal information"></asp:Label>
        &nbsp;<p>
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        &nbsp;&nbsp;</p>
        <p>
        &nbsp;<asp:TextBox ID="Name" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        </p>
            <p>
        <asp:Button ID="ChangeName" runat="server" Text="ChangeName" OnClick="ChangeName_Click" />
        </p>
        <p>
        <asp:Label ID="Label3" runat="server" Text="field of Work"></asp:Label>
        </p>
        <p>
            &nbsp;
            <asp:TextBox ID="fieldOfwork" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        </p>
        </div>
        <asp:Button ID="ChangeFieldOfwork" runat="server" Text="Change Field Of Work" OnClick="ChangeFieldOfwork_Click" />
        <br />
        <br />
        <asp:Button ID="Back" runat="server" Text="Back" OnClick="Back_Click" />
    </form>
</body>
</html>
