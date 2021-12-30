<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PostGradOffice.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
             .mybtn1
        { width: 10%;
  background-color:forestgreen;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  
        }
            body{
                background-color:antiquewhite;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="Gucians" runat="server" CssClass="mybtn1" OnClick="Button1_Click" Text="Student" />
        <p>
            <asp:Button ID="Supervisor" runat="server"  CssClass="mybtn1" Text="Supervisor" OnClick="Supervisor_Click" />
        </p>
        <p>
            <asp:Button ID="Examiner" runat="server"  CssClass="mybtn1" Text="Examiner" OnClick="Examiner_Click" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
