<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NonGucian.aspx.cs" Inherits="PostGradOffice.NonGucian" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
body {
  background-color: linen;
}
     .mybtn
        { border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border-radius: 8px;
            cursor: pointer;
        }
       .mybtn1
        { width: 10%;
  background-color:red;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 8px;
  cursor: pointer;
        }

h1 {
    width:600px;
    margin: 0 auto;
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    background-color:ghostwhite;
    text-align: center;
     border-radius:8px;
}
 .label{
            color:black;
            font-size : large;
            font-weight:bold
        }
</style>
</head>
<body>
    <form id="form1" runat="server">
         <h1>Welcome to The home page</h1>
            <div>
            <asp:Label ID="Label1" runat="server" CssClass="label" Text="My Profile"></asp:Label>
        </div>
        <asp:Button ID="profile" runat="server" CssClass="mybtn" Text="View My profile" OnClick="profile_Click" Width="260px" />
        <p>
            <asp:Label ID="Label2" runat="server" CssClass="label" Text="My Thesis"></asp:Label>
        </p>

        <p>
            <asp:Button ID="Thesis" runat="server" CssClass="mybtn" Text="View My Thesis" OnClick="Thesis_Click" Width="260px" />
        </p>
         <p>
            <asp:Label ID="Label7" runat="server" CssClass="label" Text="My courses"></asp:Label>
        </p>
           <p>
            <asp:Button ID="Courses" runat="server" CssClass="mybtn" Text="View My Courses" OnClick="Courses_Click" Width="260px"  />
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" CssClass="label" Text="Add progress report"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Add" runat="server" CssClass="mybtn" Text="Add progress report" OnClick="Add_Click" Width="260px" />
        </p>
         <p>
            <asp:Label ID="Label4" runat="server" CssClass="label" Text="Fill progress report"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Fill" runat="server" CssClass="mybtn" Text="Fill progress report" OnClick="Fill_Click" Width="260px" />
        </p>
         <p>
            <asp:Label ID="Label5" runat="server" CssClass="label" Text="Add publication"></asp:Label>
        </p>
        <p>
            <asp:Button ID="publication" runat="server" CssClass="mybtn"  Text="Add publication" OnClick="publication_Click" Width="260px" />
        </p>
         <p>
            <asp:Label ID="Label6" runat="server" CssClass="label" Text="Link publication to a thesis"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Link" runat="server" CssClass="mybtn" Text="Link publication" OnClick="Link_Click" Width="260px" />
        </p>
           <p>
            <asp:Label ID="Label8" runat="server" CssClass="label" Text="Add mobile"></asp:Label>
        </p>
        <p>
            <asp:Button ID="mobile" runat="server" CssClass="mybtn" Text="Add mobile number" OnClick="mobile_Click" Width="210px"  />
        </p>
              <p>
            <asp:Button ID="logour" runat="server" CssClass="mybtn1" Text="LogOut" OnClick="logour_Click"  />
        </p>
    </form>
</body>
</html>
