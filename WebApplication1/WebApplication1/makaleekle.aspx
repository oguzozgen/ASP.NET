<%@ Page Title="" Language="C#" MasterPageFile="~/ana.Master" AutoEventWireup="true" CodeBehind="makaleekle.aspx.cs" Inherits="WebApplication1.hakkinda" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="makale_id"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:Label ID="Label2" runat="server" Text="makale başlığı"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="makale içeriği"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Height="117px" TextMode="MultiLine" Width="195px"></asp:TextBox>
        <ajaxToolkit:HtmlEditorExtender ID="TextBox3_HtmlEditorExtender" runat="server" BehaviorID="TextBox3_HtmlEditorExtender" EnableSanitization="False" TargetControlID="TextBox3">
        </ajaxToolkit:HtmlEditorExtender>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ekle" />
&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="sql data source kullan" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [makaleler] WHERE [Makale_Id] = @Makale_Id" InsertCommand="INSERT INTO [makaleler] ([Makale_Id], [Makale_baslik], [Makale_icerik]) VALUES (@Makale_Id, @Makale_baslik, @Makale_icerik)" SelectCommand="SELECT * FROM [makaleler]" UpdateCommand="UPDATE [makaleler] SET [Makale_baslik] = @Makale_baslik, [Makale_icerik] = @Makale_icerik WHERE [Makale_Id] = @Makale_Id">
            <DeleteParameters>
                <asp:Parameter Name="Makale_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Makale_Id" Type="Int32" />
                <asp:Parameter Name="Makale_baslik" Type="String" />
                <asp:Parameter Name="Makale_icerik" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Makale_baslik" Type="String" />
                <asp:Parameter Name="Makale_icerik" Type="String" />
                <asp:Parameter Name="Makale_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </form>

</asp:Content>
