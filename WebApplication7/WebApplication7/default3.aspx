<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default3.aspx.cs" Inherits="WebApplication7.default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 
      adi  <asp:TextBox ID="TextBox1" value="ne haber" runat="server"></asp:TextBox> <br />
       soyaadi <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> <br />
        
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="ankara" Value="06"></asp:ListItem>
            <asp:ListItem Text="istanbul" Value="34"></asp:ListItem>
            <asp:ListItem Text="sivas" Value="58"></asp:ListItem>

        </asp:DropDownList>

    
        <br />

    
        <asp:Button ID="Button1" runat="server" Text="Button postback" OnClick="Button1_Click" />
        <br />
&nbsp;<asp:Button ID="Button2" runat="server" PostBackUrl="default4.aspx" Text="Button postbackurl baska sayfa" />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Server transfer" />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button reponse.redirect" />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default6.aspx?x=merhabe">HyperLink</asp:HyperLink>
      
    </form>
    <a  href="default6.aspx?x="> normal html link  </a>
</body>
</html>
