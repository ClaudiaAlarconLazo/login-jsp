<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="index.jsp">Lista global</a>
        </li>
                <li class="nav-item">
          <a class="nav-link" aria-current="page" href="lista-privada.jsp">Lista privada</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="agregar.jsp">Agregar persona</a>
        </li>
      </ul>
      <div class="d-flex">
		<%if(session.getAttribute("nombreSession") == null) {%>
		<a class="btn btn-info" href="login.jsp">Ingresar</a>
		<%} else { %>
		<a class="btn btn-danger" href="logout.jsp">Cerrar sesión</a>
		<%} %>
	  </div>
    </div>
  </div>
</nav>