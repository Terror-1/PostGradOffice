<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addpublication.aspx.cs" Inherits="PostGradOffice.Addpublication" %>

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
          .label {
                color: black;
                font-size: large;
                font-weight: bold;
            }
    </style>
</head>
<body>
    <h1>Add publication</h1>
    <form id="form1" runat="server">
        
        <p>
            <asp:Label ID="Label2" CssClass="label" runat="server" Text="Title :"></asp:Label>
        </p>
        <asp:TextBox ID="Title" MaxLength="50" CssClass="textbox" runat="server"></asp:TextBox>
         <p>
            <asp:Label ID="Label3" CssClass="label" runat="server" Text="publciation Date :"></asp:Label>
        </p>
        <asp:TextBox ID="Date" CssClass="textbox" TextMode="Date" runat="server"></asp:TextBox>
         <p>
            <asp:Label ID="Label4" CssClass="label" runat="server" Text="Host :"></asp:Label>
        </p>
        <asp:TextBox ID="host" MaxLength="50" CssClass="textbox" runat="server"></asp:TextBox>
         <p>
            <asp:Label ID="Label5" CssClass="label" runat="server" Text="Place :"></asp:Label>
        </p>
        <asp:TextBox ID="place" MaxLength="50" CssClass="textbox" runat="server"></asp:TextBox>
         <p>
            <asp:Label ID="Label7" CssClass="label" runat="server" Text="Is accepted"></asp:Label> <br />
            <asp:CheckBox ID="accepted" runat="server"  />
        </p>
        <asp:Button ID="Button1" CssClass="mybtn" runat="server" Text="Add publication" OnClick="Button1_Click" />

        <p>
            <asp:Button ID="Button2" CssClass="mybtn" runat="server" Text="Return to home" OnClick="Button2_Click" />
        </p>

    </form>
</body>
</html>
