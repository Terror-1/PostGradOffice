<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Examiner page.aspx.cs" Inherits="DataBase_Project.Examiner_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color:#98B4D4;
        }
        .mybtn { 
         width=30%;
         border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border-radius: 8px;
            cursor: pointer;
            font-weight:bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Edit" runat="server" CssClass="mybtn" Width="350px" Text="Edit my personal information" OnClick="Edit_Click" />
        &nbsp;<p>
        <asp:Button ID="AddCom" runat="server" CssClass="mybtn" Text="Add comments for a defense" OnClick="AddCom_Click" Width="350px" />
        &nbsp;</p>
        <p>
        <asp:Button ID="AddGra" CssClass="mybtn" runat="server" Text="Add Grade for a defense" OnClick="AddGra_Click" Width="350px" />
        &nbsp;</p>
        <p>
        <asp:Button ID="Search" CssClass="mybtn" runat="server" Text="Search for a thesis" OnClick="Search_Click" Width="350px" />
        &nbsp;</p>
        <p>
        <asp:Button ID="List" CssClass="mybtn" runat="server" Text="See all thesis titels, supervisors and students names I attended defenses for" OnClick="List_Click" />
        &nbsp;</p>
    </form>
</body>
</html>
