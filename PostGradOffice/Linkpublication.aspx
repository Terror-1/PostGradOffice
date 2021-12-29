<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Linkpublication.aspx.cs" Inherits="PostGradOffice.Linkpublication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="--Link publication--"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="please enter publication ID :"></asp:Label>
        <p>
            <asp:TextBox ID="pub" runat="server" Width="98px"></asp:TextBox>
        </p>
         <asp:Label ID="Label3" runat="server" Text="please enter a thesis serial number:"></asp:Label>
        <p>
            <asp:TextBox ID="serial" runat="server" Width="98px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Link" runat="server" Text="Link thesis" OnClick="Link_Click" />
        </p>
        <p>
            <asp:Button ID="Return" runat="server" Text="ReturnTohome" OnClick="Return_Click" />
        </p>
    </form>
</body>
</html>
