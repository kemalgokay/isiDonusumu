<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
<style> 
.flex-container {
    display: -webkit-flex;
    display: flex;  
    -webkit-flex-flow: row wrap;
    flex-flow: row wrap;
    text-align: center;
}
.flex-container > * {
    padding: 15px;
    -webkit-flex: 1 100%;
    flex: 1 100%;
}
.article {
    text-align: left;
}
header {background: red;color:white;}
footer {background: #aaa;color:white;}
.nav {background:#eee;}
.nav ul {
    list-style-type: none;
    padding: 0;
}
.nav ul a {
    text-decoration: none;
}
@media all and (min-width: 768px) {
    .nav {text-align:left;-webkit-flex: 1 auto;flex:1 auto;-webkit-order:1;order:1;}
    .article {-webkit-flex:5 0px;flex:5 0px;-webkit-order:2;order:2;}
    footer {-webkit-order:3;order:3;}
}

div{
	border-style:solid;
	backgraound: black;color:white;
}

body{background: gray; color:white}
</style>
</head>
<body >

<div class="flex-container">
<header>
  <h1>Temperature</h1>${serverTime }
</header>


<form method="post" action='<s:url value="/change/update"></s:url>'>
<br>
  <input type="text" class="text-field" name="temp" placeholder="Sicaklik Giriniz">
  <br>
  
  <select name="secim">
  <option value="Celcius">Celcius</option>
  <option value="fahrenheit">Fahrenheit</option>
  <option value="kelvin">Kelvin</option>

</select>
</br>

   <select name="secim2">
  <option value="Celcius">Celcius</option>
  <option value="Fahrenheit">Fahrenheit</option>
  <option value="Kelvin">Kelvin</option>

</select>
 </br> 
<input type="submit" value="Change">

</br>

  <input type="text" name="Sonuc" value="${yazdirma}">
  
</form>

</div>

</body>
</html>