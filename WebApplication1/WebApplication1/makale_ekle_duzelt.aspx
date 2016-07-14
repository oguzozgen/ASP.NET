<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="makale_ekle_duzelt.aspx.cs" Inherits="WebApplication1.makale_ekle_duzelt" ValidateRequest="false"%>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 


    <asp:Label ID="Label1" runat="server" Text="makale_id"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    makale_baslık<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    makale_içerik
    <asp:TextBox ID="TextBox3" runat="server" Width="500px" Height="300px"></asp:TextBox>
    <br />
    <ajaxToolkit:HtmlEditorExtender ID="TextBox3_HtmlEditorExtender" runat="server" BehaviorID="TextBox3_HtmlEditorExtender" EnableSanitization="False" TargetControlID="TextBox3">
    </ajaxToolkit:HtmlEditorExtender>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ekle" />
&nbsp;

 
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

    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Makale_Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/delete.png" EditImageUrl="~/images/edit.png" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Makale_Id" HeaderText="Makale_Id" ReadOnly="True" SortExpression="Makale_Id" />
            <asp:BoundField DataField="Makale_baslik" HeaderText="Makale_baslik" SortExpression="Makale_baslik" />
            <asp:TemplateField HeaderText="Makale_icerik" SortExpression="Makale_icerik">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Makale_icerik") %>'></asp:TextBox>
                    <ajaxToolkit:HtmlEditorExtender ID="TextBox1_HtmlEditorExtender" runat="server" BehaviorID="TextBox1_HtmlEditorExtender" EnableSanitization="False" TargetControlID="TextBox1">
                    </ajaxToolkit:HtmlEditorExtender>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Makale_icerik") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="seç">
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [makaleler] WHERE [Makale_Id] = @Makale_Id" InsertCommand="INSERT INTO [makaleler] ([Makale_Id], [Makale_baslik], [Makale_icerik]) VALUES (@Makale_Id, @Makale_baslik, @Makale_icerik)" SelectCommand="SELECT * FROM [makaleler]" UpdateCommand="UPDATE [makaleler] SET [Makale_baslik] = @Makale_baslik, [Makale_icerik] = @Makale_icerik WHERE [Makale_Id] = @Makale_Id">
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

</asp:Content>

