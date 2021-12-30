<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Linkpublication.aspx.cs" Inherits="PostGradOffice.Linkpublication" %>

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
    <h1>Link publication</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        
        <br />
        <asp:Label ID="Label2" CssClass="label" runat="server" Text="please enter publication ID :"></asp:Label>
        <p>
            <asp:TextBox ID="pub" CssClass="textbox" runat="server" Width="179px"></asp:TextBox>
        </p>
         <asp:Label ID="Label3" CssClass="label" runat="server" Text="please enter a thesis serial number:"></asp:Label>
        <p>
            <asp:TextBox ID="serial" CssClass="textbox" runat="server" Width="179px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Link" CssClass="mybtn" runat="server" Text="Link thesis" OnClick="Link_Click" Width="197px" />
        </p>
        <p>
            <asp:Button ID="Return" CssClass="mybtn" runat="server" Text="ReturnTohome" OnClick="Return_Click" Width="197px" />
        </p>
    </form>
</body>
</html>
