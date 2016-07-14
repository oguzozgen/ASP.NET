<%@ Page Title="" Language="C#" MasterPageFile="~/ana.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="WebApplication1.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <form id="form1" runat="server">
  
          <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <h2><%#Eval("makale_baslik") %> </h2>

        <div class="articles">
        
        <%#Eval("makale_icerik").ToString().Substring(0,Math.Min(100,Eval("makale_icerik").ToString().Length-1)) %> <a href="<%#Eval("makale_id","makaledetay.aspx?id={0}") %>">devamı oku...</a>
        </div>
    </ItemTemplate>
    <SeparatorTemplate>
        <hr />
    </SeparatorTemplate>
    
    </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Makale_Id], [Makale_baslik], [Makale_icerik] FROM [makaleler] ORDER BY [Makale_Id] DESC">



    </asp:SqlDataSource>
  
   

</form>

</asp:Content>
