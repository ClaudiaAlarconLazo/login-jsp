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
	<%@page import="cl.talentodigital.*"%>
	<%@page import="java.util.ArrayList"%>
	
	<%@include file="includes/menu.jsp" %>
	
	<%ArrayList<Persona> personas = (ArrayList)application.getAttribute("listaGlobal"); %>


	<div class="container">
	<div class="row">
	<div class="col-10 offset-2">
	<% if(session.getAttribute("nombreSession") == null){%>
		
		<h4>No has iniciado sesión.</h4>

	<%} else {%>
	
		<h4>Bienvenido: <%=session.getAttribute("nombreSession")%></h4>

	<%}%>
	
	
	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Nombre</th>
	      <th scope="col">Apellido</th>
	      <th scope="col">edad</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%if(personas != null ){
		for(int i = 0; i < personas.size(); i++){%>
	    <tr>
	      <th><%=personas.get(i).getId()%></th>
	      <td><%=personas.get(i).getNombre()%></td>
	      <td><%=personas.get(i).getApellido()%></td>
	      <td><%=personas.get(i).getEdad()%></td>
	    </tr>
	  </tbody>
	  <%} %>
	</table>
	
	<% } else {%>
		
		<h5>No hay datos.</h5>

	<%}%>
	
	</div>
	</div>
	</div>

</body>
</html>