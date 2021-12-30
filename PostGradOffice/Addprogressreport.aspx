<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addprogressreport.aspx.cs" Inherits="PostGradOffice.Addprogressreport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
            body {
  background-color: linen;
}
        h1 {
    width:600px;
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
    <h1> Add progress report</h1>
    <form id="form1" runat="server">
       <div>

       </div>
        <br />
        <br />

        <asp:Label ID="Label1" CssClass="label" runat="server"  Text="please choose a thesis serial number you want to add progress report to it
            "></asp:Label>
        <br />

        <asp:DropDownList ID="DropDownList1" Width="179px" BackColor="#F6F1DB" ForeColor="#7d6754"   runat="server">
            <asp:ListItem Value="" >Please Select</asp:ListItem>  
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label2" CssClass="label" runat="server" Text="enter a progress Report Date " ></asp:Label>

        <p>
            <asp:TextBox ID="TextBox1" CssClass="textbox" runat="server" TextMode="Date"></asp:TextBox>
        </p>
         <br />
        <asp:Label ID="Label3" CssClass="label" runat="server" Text="enter a progress Report Number " ></asp:Label>

        <p>
            <asp:TextBox ID="TextBox2" CssClass="textbox" runat="server" ></asp:TextBox>
        </p>

        <p>
            <asp:Button ID="Button1" CssClass="mybtn" runat="server" Text="ADD" OnClick="Button1_Click" Height="59px" Width="179px" />
        </p>

        <p>
            <asp:Button ID="Button2" CssClass="mybtn" runat="server" Text="ReturnToHome" OnClick="Button2_Click" Height="56px" Width="179px" />
        </p>

    </form>
</body>
</html>
