<%@ Page Title="" Language="C#" MasterPageFile="~/ana.Master" AutoEventWireup="true" CodeBehind="ekle.aspx.cs" Inherits="WebApplication2.ekle" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label1" runat="server" Text="makale başlığı"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp; :

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     <br />
    
    <asp:Label ID="Label2" runat="server" Text="makale içeriği"></asp:Label>
    
    
   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
         
    
   

    <ajaxToolkit:HtmlEditorExtender ID="TextBox2_HtmlEditorExtender" runat="server" BehaviorID="TextBox2_HtmlEditorExtender" TargetControlID="TextBox2" EnableSanitization="False">
</ajaxToolkit:HtmlEditorExtender>
         
    
   

    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ekle" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [makale] WHERE [Makale_id] = @Makale_id" InsertCommand="INSERT INTO [makale] ([makale_baslik], [makale_icerik]) VALUES (@makale_baslik, @makale_icerik)" SelectCommand="SELECT * FROM [makale]" UpdateCommand="UPDATE [makale] SET [makale_baslik] = @makale_baslik, [makale_icerik] = @makale_icerik WHERE [Makale_id] = @Makale_id">
        <DeleteParameters>
            <asp:Parameter Name="Makale_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="makale_baslik" Type="String" />
            <asp:Parameter Name="makale_icerik" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="makale_baslik" Type="String" />
            <asp:Parameter Name="makale_icerik" Type="String" />
            <asp:Parameter Name="Makale_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
         
    
   

</asp:Content>
