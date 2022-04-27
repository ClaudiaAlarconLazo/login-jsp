<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="cl.talentodigital.*"%>
	<%@page import="java.util.ArrayList"%>
	
	<%ArrayList<Persona> personas = (ArrayList)session.getAttribute("listaGlobal"); %>


	
	<% if(request.getParameter("nombre") == null){
		out.print("No has iniciado sesión.");
	} else {
			out.print("Bienvenido: " + request.getParameter("nombre"));
	} %>
	
	<a href="/Login/login.jsp">Login</a>
		
	<%session.setAttribute("nombre", request.getParameter("nombre"));%>
	

	
	<%if(personas != null ){
		for(int i = 0; i < personas.size(); i++){
			out.print(personas.get(i).getNombre());
			out.print(personas.get(i).getApellido());
			out.print(personas.get(i).getEdad());
		}		
	} else {
		out.print("No hya datos.");
	}
 %>
	
	

</body>
</html>