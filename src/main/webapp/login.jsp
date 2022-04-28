<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>

	<%@include file="includes/menu.jsp" %>
	
	<%Object mensaje = session.getAttribute("mensaje");
	if(mensaje != null){
		out.print(mensaje.toString());
		session.invalidate();
	}
	%>
	
	<form action="/Login/Session" method="post">
  		User Name:<input type="text" name="nombre"/><br/>
  		Password:<input type="password" name="password"/><br/>
  		<input type="submit" value="submit"/>
	</form>

</body>
</html>