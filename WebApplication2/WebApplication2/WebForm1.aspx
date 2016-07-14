<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ne haber<br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:TextBox ID="TextBox1" runat="server" Text="ne haber"> </asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>anakara</asp:ListItem>
            <asp:ListItem>istanbul</asp:ListItem>
            <asp:ListItem>bursa</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
