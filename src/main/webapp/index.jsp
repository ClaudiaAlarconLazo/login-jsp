<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	
	<% if(request.getParameter("nombre") == null){
		out.print("No has iniciado sesión.");
	} else {
			out.print("Bienvenido: " + request.getParameter("nombre"));
	} %>
	
	<a href="/Login/login.jsp">Login</a>
		
	<%session.setAttribute("nombre", request.getParameter("nombre"));%>

</body>
</html>