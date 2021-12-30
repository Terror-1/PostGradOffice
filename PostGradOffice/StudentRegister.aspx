<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="PostGradOffice.StudentRegister" %>

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
            .label{
            color:black;
            font-size : large;
            font-weight:bold
        }
             .textbox{
             width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 8px;
  box-sizing: border-box;
  font-weight:bold;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" CssClass="label" runat="server" Text="First Name"></asp:Label>
            <br />
            <asp:TextBox ID="FirstName" CssClass="textbox" runat="server" ></asp:TextBox>
            <br />
            <asp:Label ID="Label2" CssClass="label" runat="server" Text="Last Name"></asp:Label>
            <br />
            <asp:TextBox ID="LastName" CssClass="textbox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" CssClass="label" runat="server" Text="password"></asp:Label>
            <br />
            <asp:TextBox ID="password" CssClass="textbox" TextMode="Password" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" CssClass="label" runat="server" Text="Faculty"></asp:Label>
            <br />
            <asp:TextBox ID="Faculty" CssClass="textbox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" CssClass="label" runat="server" Text="email"></asp:Label> <br />

             <asp:TextBox ID="email" CssClass="textbox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" CssClass="label" runat="server" Text="address"></asp:Label> <br />
             <asp:TextBox ID="address" CssClass="textbox" runat="server"></asp:TextBox>
        </div>
        <p>
            <asp:Label ID="Label7" runat="server"  CssClass="label" Text="Gucian"></asp:Label> <br />
            <asp:CheckBox ID="Gucian" runat="server"  />
        </p>
        <p>
            <asp:Label ID="Label8" runat="server"  CssClass="label"  Text="NonGucian"></asp:Label> <br />
            <asp:CheckBox ID="NonGucian" runat="server" />
        </p>
        <p>
            <asp:Button ID="Register" CssClass="mybtn1" runat="server" Text="Register" OnClick="Register_Click" />
        </p>
    </form>
</body>
</html>
