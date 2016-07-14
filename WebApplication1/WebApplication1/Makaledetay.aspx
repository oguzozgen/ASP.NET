<%@ Page Title="" Language="C#" MasterPageFile="~/ana.Master" AutoEventWireup="true" CodeBehind="Makaledetay.aspx.cs" Inherits="WebApplication1.Makaledetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <h2><%#Eval("makale_baslik") %> </h2>

        <div class="articles">
        
        <%#Eval("makale_icerik") %> 
        </div>
    </ItemTemplate>
    <SeparatorTemplate>
        <hr />
    </SeparatorTemplate>
    
    </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Makale_Id], [Makale_baslik], [Makale_icerik] FROM [makaleler] WHERE ([Makale_Id] = @Makale_Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Makale_Id" QueryStringField="id" Type="Int32" />
              
             </SelectParameters>



    </asp:SqlDataSource>
  
  
</asp:Content>
