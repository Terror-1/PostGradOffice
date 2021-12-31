<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PostGradOffice.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .mybtn
        { width: 10%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 8px;
  cursor: pointer;
        }
        
        .email{
             
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 12px;
  box-sizing: border-box;
  font-weight:bold;
        }
        div {
  border-radius: 5px;
  background-color: #f2f2f2;
  position:relative;
  
}
        .label{
            color:black;
            font-size : large;
            font-weight:bold
        }
        .label1{
            float:right;
            color:black;
            font-size : large;
            font-weight:bold
        }
        body{
              background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div>
    <form id="form1"  runat="server">
        
        <asp:Label ID="Label1" CssClass="label" runat="server" Text="please Log in"></asp:Label>
        <p>
            <asp:Label ID="Label2" CssClass="label" runat="server" Text="email"></asp:Label>
        </p>
        <asp:TextBox ID="id" CssClass="email"  runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label3" CssClass="label" runat="server" Text="password"></asp:Label>
        </p>
        <asp:TextBox ID="Password" CssClass="email" TextMode="Password" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="signin" CssClass="mybtn" runat="server" Text="Login" OnClick="signin_Click" />
        </p>
        <p>
            <asp:Button ID="signup" CssClass="mybtn" runat="server" Text="Register" OnClick="signup_click" />
        </p>
    </form>
        </div>
    <p>
        <asp:Label ID="Label4" CssClass="label1" runat="server" Text="&copy; At[R]ic GUC team"></asp:Label>
    </p>
</body>
</html>
