<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="htmleleman.aspx.cs" Inherits="WebApplication7.htmleleman" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
  <form action="htmleleman.aspx" method="post" >
      adiniz  <input type="text" name="adi" /> <br/>
      soyadiniz <input type="text" name="soyadi" /> <br />
        <select name="mezuniyet">
            <option>ilkokul </option>
            <option>lise </option>
            <option selected="selected" >Üniversite </option>
            <option>Lisanüstü </option>
            <input type="submit" value="gonder-POST" />
        </select>



    </form>
</body>
</html>
