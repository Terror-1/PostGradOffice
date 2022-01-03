<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addmobile.aspx.cs" Inherits="PostGradOffice.Addmobile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
               
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
     body {
  background-color: linen;
}
        h1 {
    width:400px;
    margin: 0 auto;
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    background: gray;
    text-align: center;
}
            .label {
                color: black;
                font-size: large;
                font-weight: bold;
            }
    </style>
</head>
<body>
    <h1>Add Mobile number</h1>
    <form id="form1" runat="server">
       
        <p class="label">
            <asp:Label ID="Label2" runat="server"  Text="Mobile number :"></asp:Label>
        </p>
        
        <asp:TextBox ID="mobile" MaxLength="50" CssClass="textbox" runat="server"></asp:TextBox>
        <br />
        <br />
        
        <asp:Button ID="add" CssClass="mybtn" runat="server" Text="Add" OnClick="add_Click" />
        <br />
       <asp:Button ID="Button1" CssClass="mybtn" runat="server" Height="55px" style="margin-top: 21px" Text="ReturnToHome" OnClick="Button1_Click" Width="179px" />
        
    </form>
</body>
</html>
