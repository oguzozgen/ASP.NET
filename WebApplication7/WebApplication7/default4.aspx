<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default4.aspx.cs" Inherits="WebApplication7.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <%=Request.Form["textbox1"] %> <br />
        <%=Request.Form["textbox2"] %> <br />
        <%=Request.Form["dropdownlist1"] %>
        <% string sonuc="";
            if (PreviousPage != null)
            {
                sonuc = ((DropDownList)PreviousPage.FindControl("dropdownlist1")).SelectedItem.ToString();
            }
            Response.Write(sonuc);
                %>
    </div>
    </form>
</body>
</html>
