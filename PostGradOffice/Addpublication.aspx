<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addpublication.aspx.cs" Inherits="PostGradOffice.Addpublication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="--Add publication--"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Title :"></asp:Label>
        </p>
        <asp:TextBox ID="Title" runat="server"></asp:TextBox>
         <p>
            <asp:Label ID="Label3" runat="server" Text="publciation Date :"></asp:Label>
        </p>
        <asp:TextBox ID="Date" TextMode="Date" runat="server"></asp:TextBox>
         <p>
            <asp:Label ID="Label4" runat="server" Text="Host :"></asp:Label>
        </p>
        <asp:TextBox ID="host" runat="server"></asp:TextBox>
         <p>
            <asp:Label ID="Label5" runat="server" Text="Place :"></asp:Label>
        </p>
        <asp:TextBox ID="place" runat="server"></asp:TextBox>
         <p>
            <asp:Label ID="Label7" runat="server" Text="Is accepted"></asp:Label> <br />
            <asp:CheckBox ID="accepted" runat="server"  />
        </p>
        <asp:Button ID="Button1" runat="server" Text="Add publication" OnClick="Button1_Click" />

        <p>
            <asp:Button ID="Button2" runat="server" Text="Return to home" OnClick="Button2_Click" />
        </p>

    </form>
</body>
</html>
