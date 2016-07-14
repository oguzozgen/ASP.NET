<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="htmleleman1.aspx.cs" Inherits="WebApplication7.htmleleman" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
  <form  method="post" runat="server" >
      adiniz  <input type="text" id="adi" name="adi" runat="server" /> <br/>
      soyadiniz <input type="text" id="soyadi" name="soyadi" runat="server" /> <br />
        <select name="mezuniyet" id="mezuniyet" runat="server">
            <option>ilkokul </option>
            <option>lise </option>
            <option selected="selected" >Üniversite </option>
            <option>Lisanüstü </option>
           
        </select><br />

       <input type="submit" value="gonder-POST" runat="server" />

    </form>
</body>
</html>
