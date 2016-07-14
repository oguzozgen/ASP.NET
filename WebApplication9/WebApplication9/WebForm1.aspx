<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication9.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
        <p>
            rs kodu<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            ders adi
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            sinifi
            <asp:DropDownList ID="DropDownList5" runat="server" SelectedValue='<%# Bind("sinif") %>'>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            donemi
            <asp:DropDownList ID="DropDownList6" runat="server" SelectedValue='<%# Bind("donem") %>'>
                <asp:ListItem Value="g">Güz</asp:ListItem>
                <asp:ListItem Value="b">Bahar</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="kaydet" />
        </p>
    </form>
</body>
</html>
