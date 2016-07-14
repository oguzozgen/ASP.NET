<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="makale_ekle_duzelt.aspx.cs" Inherits="WebApplication2.makale_ekle_duzelt" ValidateRequest="false" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="makale_baslik" DataValueField="Makale_id">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [makale]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Makale_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Makale_id" HeaderText="Makale_id" InsertVisible="False" ReadOnly="True" SortExpression="Makale_id" />
            <asp:BoundField DataField="makale_baslik" HeaderText="makale_baslik" SortExpression="makale_baslik" />
            <asp:BoundField DataField="makale_icerik" HeaderText="makale_icerik" SortExpression="makale_icerik" />
        </Columns>
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" Text="ekle" OnClick="Button1_Click" />

    <br />
    <br />
    <br />

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />

    <asp:Label ID="Label2" runat="server" Text="içerik"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Height="300px" Width="500px"></asp:TextBox>
    <ajaxToolkit:HtmlEditorExtender ID="TextBox2_HtmlEditorExtender" runat="server" BehaviorID="TextBox2_HtmlEditorExtender" EnableSanitization="False" TargetControlID="TextBox2">
    </ajaxToolkit:HtmlEditorExtender>
    <br />

    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [makale] WHERE [Makale_id] = @Makale_id" InsertCommand="INSERT INTO [makale] ([makale_baslik], [makale_icerik]) VALUES (@makale_baslik, @makale_icerik)" SelectCommand="SELECT * FROM [makale] WHERE ([Makale_id] = @Makale_id)" UpdateCommand="UPDATE [makale] SET [makale_baslik] = @makale_baslik, [makale_icerik] = @makale_icerik WHERE [Makale_id] = @Makale_id">
        <DeleteParameters>
            <asp:Parameter Name="Makale_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="makale_baslik" Type="String" />
            <asp:Parameter Name="makale_icerik" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="Makale_id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="makale_baslik" Type="String" />
            <asp:Parameter Name="makale_icerik" Type="String" />
            <asp:Parameter Name="Makale_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
