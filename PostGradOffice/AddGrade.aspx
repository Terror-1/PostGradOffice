<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddGrade.aspx.cs" Inherits="DataBase_Project.AddGrade" %>

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
  background-color: #98B4D4;
}
   
            .label {
                color: black;
                font-size: large;
                font-weight: bold;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <p>
        <asp:Label ID="Label8" CssClass="label" runat="server" Text="Add grade for a defense"></asp:Label>
        &nbsp;&nbsp;</p>
        <p>
        <asp:Label ID="Label9" CssClass="label" runat="server" Text="ThesisSerialNo"></asp:Label>
        &nbsp;</p>
        <p>
            <asp:TextBox ID="serialno" CssClass="textbox" runat="server" style="margin-bottom: 0px" ></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label10" CssClass="label" runat="server" Text="DefenseDate"></asp:Label>
        &nbsp;</p>
        <p>
            <asp:TextBox ID="defenseDate" CssClass="textbox" runat="server" TextMode="Date" style="margin-bottom: 0px" ></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label11" CssClass="label" runat="server" Text="Grade"></asp:Label>
        &nbsp;</p>
        <p>
            <asp:TextBox ID="grade" CssClass="textbox" runat="server" style="margin-bottom: 0px" ></asp:TextBox>
        </p>
        </div>
        <asp:Button ID="AddGrad" CssClass="mybtn" runat="server" Text="AddGrade" OnClick="AddGrad_Click" />
        <br />
        <br />
        <asp:Button ID="Back" CssClass="mybtn" runat="server" Text="Back" OnClick="Back_Click" />
    </form>
</body>
</html>
