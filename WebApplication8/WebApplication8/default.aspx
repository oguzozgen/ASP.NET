<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication8._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="bolum_name" DataValueField="Bolum_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [bolum]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ders_id" DataSourceID="SqlDataSource2" style="margin-right: 0px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ders_id" HeaderText="ders_id" InsertVisible="False" ReadOnly="True" SortExpression="ders_id" />
                <asp:BoundField DataField="ders_kod" HeaderText="ders_kod" SortExpression="ders_kod" />
                <asp:BoundField DataField="ders_adi" HeaderText="ders_adi" SortExpression="ders_adi" />
                <asp:BoundField DataField="sinif" HeaderText="sinif" SortExpression="sinif" />
                <asp:TemplateField HeaderText="donem" SortExpression="donem">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem Value="g">Güz</asp:ListItem>
                            <asp:ListItem Value="b">Bahar</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("donem") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="bolum_name" SortExpression="bolum_name">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="bolum_name" DataValueField="Bolum_id" SelectedValue='<%# Bind("Bolum_id") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("bolum_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [dersler] WHERE [ders_id] = @original_ders_id AND (([ders_kod] = @original_ders_kod) OR ([ders_kod] IS NULL AND @original_ders_kod IS NULL)) AND (([ders_adi] = @original_ders_adi) OR ([ders_adi] IS NULL AND @original_ders_adi IS NULL)) AND (([Bolum_id] = @original_Bolum_id) OR ([Bolum_id] IS NULL AND @original_Bolum_id IS NULL)) AND (([sinif] = @original_sinif) OR ([sinif] IS NULL AND @original_sinif IS NULL)) AND (([donem] = @original_donem) OR ([donem] IS NULL AND @original_donem IS NULL))" InsertCommand="INSERT INTO [dersler] ([ders_kod], [ders_adi], [Bolum_id], [sinif], [donem]) VALUES (@ders_kod, @ders_adi, @Bolum_id, @sinif, @donem)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT ders_id, ders_kod, ders_adi, Bolum_id, sinif, donem, (SELECT bolum_name FROM bolum AS y WHERE (x.Bolum_id = Bolum_id)) AS bolum_name FROM dersler AS x WHERE (Bolum_id = @Bolum_id)" UpdateCommand="UPDATE [dersler] SET [ders_kod] = @ders_kod, [ders_adi] = @ders_adi, [Bolum_id] = @Bolum_id, [sinif] = @sinif, [donem] = @donem WHERE [ders_id] = @original_ders_id AND (([ders_kod] = @original_ders_kod) OR ([ders_kod] IS NULL AND @original_ders_kod IS NULL)) AND (([ders_adi] = @original_ders_adi) OR ([ders_adi] IS NULL AND @original_ders_adi IS NULL)) AND (([Bolum_id] = @original_Bolum_id) OR ([Bolum_id] IS NULL AND @original_Bolum_id IS NULL)) AND (([sinif] = @original_sinif) OR ([sinif] IS NULL AND @original_sinif IS NULL)) AND (([donem] = @original_donem) OR ([donem] IS NULL AND @original_donem IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ders_id" Type="Int32" />
                <asp:Parameter Name="original_ders_kod" Type="String" />
                <asp:Parameter Name="original_ders_adi" Type="String" />
                <asp:Parameter Name="original_Bolum_id" Type="Int32" />
                <asp:Parameter Name="original_sinif" Type="Int32" />
                <asp:Parameter Name="original_donem" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ders_kod" Type="String" />
                <asp:Parameter Name="ders_adi" Type="String" />
                <asp:Parameter Name="Bolum_id" Type="Int32" />
                <asp:Parameter Name="sinif" Type="Int32" />
                <asp:Parameter Name="donem" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Bolum_id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ders_kod" Type="String" />
                <asp:Parameter Name="ders_adi" Type="String" />
                <asp:Parameter Name="Bolum_id" Type="Int32" />
                <asp:Parameter Name="sinif" Type="Int32" />
                <asp:Parameter Name="donem" Type="String" />
                <asp:Parameter Name="original_ders_id" Type="Int32" />
                <asp:Parameter Name="original_ders_kod" Type="String" />
                <asp:Parameter Name="original_ders_adi" Type="String" />
                <asp:Parameter Name="original_Bolum_id" Type="Int32" />
                <asp:Parameter Name="original_sinif" Type="Int32" />
                <asp:Parameter Name="original_donem" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label3" runat="server" Text="derskodu"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="dersadi"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        dönemi<asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem Value="g">Güz</asp:ListItem>
            <asp:ListItem Value="b">Bahar</asp:ListItem>
        </asp:DropDownList>
        <br />
        sınıf
        <asp:DropDownList ID="DropDownList5" runat="server" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-top: 14px" Text="Button" />
    
    </div>
    </form>
</body>
</html>
