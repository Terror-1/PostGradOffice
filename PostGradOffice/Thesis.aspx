<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thesis.aspx.cs" Inherits="PostGradOffice.Thesis" %>

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
    </style>
</head>
<body>
    <h1>My Thesis</h1>
    <form id="form1" runat="server">
     <br />
        <br />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="serialNumber" HeaderText="Thesis Serial Number" />
                <asp:BoundField ItemStyle-Width="150px" DataField="field" HeaderText="Field" />
                <asp:BoundField ItemStyle-Width="150px" DataField="type" HeaderText="Type" />
                <asp:BoundField ItemStyle-Width="150px" DataField="title" HeaderText="Title" />
                <asp:BoundField ItemStyle-Width="150px" DataField="startDate" HeaderText="Start Date" />
                <asp:BoundField ItemStyle-Width="150px" DataField="endDate" HeaderText="End Date" />
                <asp:BoundField ItemStyle-Width="150px" DataField="defenseDate" HeaderText="Defense Date" />
                <asp:BoundField ItemStyle-Width="150px" DataField="years" HeaderText="Years" />
                <asp:BoundField ItemStyle-Width="150px" DataField="grade" HeaderText="Grade" />
                <asp:BoundField ItemStyle-Width="150px" DataField="payment_id" HeaderText="Payment Id" />
                <asp:BoundField ItemStyle-Width="150px" DataField="noOfExtensions" HeaderText="No Of Extensions" />
            </Columns>
            <EditRowStyle BackColor="#999999"></EditRowStyle>

            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
        </asp:GridView>
        <p>
            <asp:Button ID="Button1" CssClass="mybtn" runat="server" Text="ReturnToHome" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
