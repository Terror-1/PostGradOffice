<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fillprogress.aspx.cs" Inherits="PostGradOffice.Fillprogress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
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
              .textbox{
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
          .label {
                color: black;
                font-size: large;
                font-weight: bold;
            }
    </style>
</head>
<body>
    <h1>Fill progress Report</h1>
    <form id="form1" runat="server">
        
        <br />
        <br/>
        <asp:Label ID="Label2" CssClass="label" runat="server" Text="enter a thesis serial number :"></asp:Label>
        <p>
            <asp:TextBox ID="serial" CssClass="textbox" runat="server"  Width="179px"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" CssClass="label" Text="enter a progress report number :"></asp:Label>
        <p>
            <asp:TextBox ID="prgrssnumm" CssClass="textbox" runat="server"  Width="179px" ></asp:TextBox>
        </p>
          
        <asp:Label ID="Label4" CssClass="label" runat="server" Text="enter a state :"></asp:Label>
        <p>
            <asp:TextBox ID="state" CssClass="textbox" runat="server"  Width="179px"></asp:TextBox>
        </p>
         
        <asp:Label ID="Label5" CssClass="label" runat="server" Text="enter the description :"></asp:Label>
        <p>
            <asp:TextBox ID="desc" MaxLength="200" CssClass="textbox" runat="server"  Width="179px"></asp:TextBox>
        </p>
        <asp:Button ID="fill" CssClass="mybtn" runat="server" Text="fill" Height="51px" OnClick="fill_Click" Width="179px" />
        <p>
            <asp:Button ID="Button1" CssClass="mybtn" runat="server" Height="51px"  Text="ReturnToHome" OnClick="Button1_Click" Width="179px" />
        </p>
    </form>
</body>
</html>
