<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Myprofile.aspx.cs" Inherits="PostGradOffice.Myprofile" %>

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
     
         .mybtn { 
         width:30%;
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
    <h1>My profile</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label6" CssClass="label" runat="server" Text="ID :  "></asp:Label>
            <asp:Label ID="I" CssClass="label" runat="server" Text=""></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="First" CssClass="label" runat="server" Text="First Name :  "></asp:Label>
            <asp:Label ID="Fn" CssClass="label" runat="server" Text="Not defined yet"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label1" CssClass="label" runat="server" Text="Last Name :  "></asp:Label>
            <asp:Label ID="Ln" CssClass="label" runat="server" Text="Not defined yet"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label7" CssClass="label" runat="server" Text="email :  "></asp:Label>
            <asp:Label ID="mail" CssClass="label" runat="server" Text="Not defined yet"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" CssClass="label"  runat="server" Text="Type  :  "></asp:Label>
            <asp:Label ID="Tp" CssClass="label" runat="server" Text=""></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label3" CssClass="label" runat="server" Text="Faculty :  "></asp:Label>
            <asp:Label ID="facc" CssClass="label" runat="server" Text="Not defined yet"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label4" CssClass="label" runat="server" Text="GPA  :  "></asp:Label>
            <asp:Label ID="Gpa" CssClass="label" runat="server" Text=""></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label5" CssClass="label" runat="server" Text="undergradID  :  "></asp:Label>
            <asp:Label ID="undergrad" CssClass="label" runat="server" Text=""></asp:Label>
        </div>


        <p>
            <asp:Button ID="ok" runat="server" CssClass="mybtn" Text="ReturnToHome" OnClick="ok_Click" />
        </p>


    </form>
</body>
</html>
