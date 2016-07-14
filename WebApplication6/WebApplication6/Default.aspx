<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication6.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="ankara" Value="06"></asp:ListItem>
            <asp:ListItem Text="istanbul" Value="34"></asp:ListItem>
            <asp:ListItem Text="sivas" Value="58"></asp:ListItem>
            
        </asp:DropDownList>

        <asp:TextBox runat="server" id="TextBox1"></asp:TextBox>
        <asp:Button runat="server" Text="postbackurl" OnClick="Unnamed1_Click" PostBackUrl="~/default2.aspx" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="redirect" />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="server transfer" />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default5.aspx">HyperLink</asp:HyperLink>
    </form>
</body>
</html>
