<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="PostGradOffice.Courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <asp:Label ID="Label2" runat="server" Text="My Courses"></asp:Label><br />

        <asp:Label ID="Label3" runat="server" Text="a)courseId--"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="b)CourseCode--"></asp:Label>
        <asp:Label ID="Label1" runat="server" Text="c)grade--"></asp:Label>
        <br />

        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
        <asp:ListBox ID="ListBox2" runat="server"></asp:ListBox>
        <asp:ListBox ID="ListBox3" runat="server"></asp:ListBox>
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="ok" OnClick="Button1_Click" />

        <p>
    </form>
</body>
</html>
