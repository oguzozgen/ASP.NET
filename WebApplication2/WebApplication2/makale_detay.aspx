<%@ Page Title="" Language="C#" MasterPageFile="~/ana.Master" AutoEventWireup="true" CodeBehind="makale_detay.aspx.cs" Inherits="WebApplication2.makale__detay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

      <ItemTemplate>
         <h2><a href="#"> <%#Eval("makale_baslik") %></a></h2>
<div class="articles">
<%#Eval("makale_icerik") %>
   
</div>

      </ItemTemplate>



        <SeparatorTemplate>
            <hr />
        </SeparatorTemplate>

    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [makale] WHERE ([Makale_id] = @Makale_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Makale_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
