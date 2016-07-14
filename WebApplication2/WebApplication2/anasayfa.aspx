<%@ Page Title="" Language="C#" MasterPageFile="~/ana.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="WebApplication2.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

      <ItemTemplate>
         <h2><a href="#"> <%#Eval("makale_baslik") %></a></h2>
<div class="articles">
<%#Eval("makale_icerik").ToString().Substring(0,Math.Min(200,Eval("makale_icerik").ToString().Length        -1)) %>
    <a href='<%#Eval("makale_id","makale_detay?id={0}") %>'  >readmore</a>
</div>

      </ItemTemplate>



        <SeparatorTemplate>
            <hr />
        </SeparatorTemplate>

    </asp:Repeater>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [makale] ORDER BY [Makale_id] DESC"></asp:SqlDataSource>


</asp:Content>
