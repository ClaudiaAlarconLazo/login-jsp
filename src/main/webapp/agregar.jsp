<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
<div class="container">
<div class="row">
<div class="col-10 col-offset-2">

<form class="p-3" action="AddPersona" method="post">
<div class="mb-3">
<label for="nombre" class="form-label">Nombre</label>
<input type="text" class="form-control" name="nombreForm">
</div>
<div class="mb-3">
<label for="apellido" class="form-label">Apellido</label>
<input type="text" class="form-control" name="apellidoForm">
</div>
<div class="mb-3">
<label for="edad" class="form-label">Edad</label>
<input type="text" class="form-control" name="edadForm">
</div>


<button type="submit" class="btn btn-primary">Submit</button>
</form>

</div>
</div>

</div>

</body>
</html>