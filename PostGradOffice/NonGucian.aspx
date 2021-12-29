<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NonGucian.aspx.cs" Inherits="PostGradOffice.NonGucian" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div>
            <asp:Label ID="Label1" runat="server" Text="My Profile"></asp:Label>
        </div>
        <asp:Button ID="profile" runat="server" Text="View My profile" OnClick="profile_Click" />
        <p>
            <asp:Label ID="Label2" runat="server" Text="My Thesis"></asp:Label>
        </p>

        <p>
            <asp:Button ID="Thesis" runat="server" Text="View My Thesis" OnClick="Thesis_Click" />
        </p>
         <p>
            <asp:Label ID="Label7" runat="server" Text="My courses"></asp:Label>
        </p>
           <p>
            <asp:Button ID="Courses" runat="server" Text="View My Courses" OnClick="Courses_Click"  />
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Add progress report"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Add" runat="server" Text="Add progress report" OnClick="Add_Click" />
        </p>
         <p>
            <asp:Label ID="Label4" runat="server" Text="Fill progress report"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Fill" runat="server" Text="Fill progress report" OnClick="Fill_Click" />
        </p>
         <p>
            <asp:Label ID="Label5" runat="server" Text="Add publication"></asp:Label>
        </p>
        <p>
            <asp:Button ID="publication" runat="server" Text="Add publication" OnClick="publication_Click" />
        </p>
         <p>
            <asp:Label ID="Label6" runat="server" Text="Link publication to a thesis"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Link" runat="server" Text="Link publication" OnClick="Link_Click" />
        </p>
           <p>
            <asp:Label ID="Label8" runat="server" Text="Add mobile"></asp:Label>
        </p>
        <p>
            <asp:Button ID="mobile" runat="server" Text="Add mobile number" OnClick="mobile_Click"  />
        </p>
              <p>
            <asp:Button ID="logour" runat="server" Text="LogOut" OnClick="logour_Click"  />
        </p>
    </form>
</body>
</html>
