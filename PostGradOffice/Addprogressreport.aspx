<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addprogressreport.aspx.cs" Inherits="PostGradOffice.Addprogressreport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <asp:Label ID="Label1" runat="server" Text="please choose a thesis serial number you want to add progress report in it
            "></asp:Label>
        <br />

        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="" Enabled ="false">Please Select</asp:ListItem>  
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="enter a progress Report Date " ></asp:Label>

        <p>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
        </p>
         <br />
        <asp:Label ID="Label3" runat="server" Text="enter a progress Report Number " ></asp:Label>

        <p>
            <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
        </p>

        <p>
            <asp:Button ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click" Height="35px" Width="67px" />
        </p>

        <p>
            <asp:Button ID="Button2" runat="server" Text="ReturnToHome" OnClick="Button2_Click" />
        </p>

    </form>
</body>
</html>
