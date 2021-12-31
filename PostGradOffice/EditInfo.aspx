<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditInfo.aspx.cs" Inherits="DataBase_Project.EditInfo" %>

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
        <asp:Label ID="Label1" CssClass="label" runat="server" Text="Edit my personal information"></asp:Label>
        &nbsp;<p>
        <asp:Label ID="Label2" CssClass="label" runat="server" Text="Name"></asp:Label>
        &nbsp;&nbsp;</p>
        <p>
        &nbsp;<asp:TextBox ID="Name" CssClass="textbox" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        </p>
            <p>
        <asp:Button ID="ChangeName" CssClass="mybtn" runat="server" Text="ChangeName" OnClick="ChangeName_Click" />
        </p>
        <p>
        <asp:Label ID="Label3" CssClass="label" runat="server" Text="field of Work"></asp:Label>
        </p>
        <p>
            &nbsp;
            <asp:TextBox ID="fieldOfwork" CssClass="textbox" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        </p>
        </div>
        <asp:Button ID="ChangeFieldOfwork" CssClass="mybtn" runat="server" Text="Change Field Of Work" OnClick="ChangeFieldOfwork_Click" />
        <br />
        <br />
        <asp:Button ID="Back" CssClass="mybtn" runat="server" Text="Back" OnClick="Back_Click" />
    </form>
</body>
</html>
