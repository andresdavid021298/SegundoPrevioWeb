<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Participante</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<h4>Programacion Competitiva</h4>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="registarParticipante.jsp">Registrar Participante
				</a> 
				<a class="nav-item nav-link" href="registrarEquipo.jsp">Registrar Equipo</a> 
				<a class="nav-item nav-link" href="listarParticipantes.jsp">Ver Participantes</a>
			</div>
		</div>
	</nav>
	<h1>Registro Participante</h1>
	<form method="POST" action="RegistroParticipanteController">
		<div class="form-group">
			<label for="full_name_id" class="control-label">Nombre</label> <input
				type="text" class="form-control" id="full_name_id" name="nombre"
				placeholder="Nombre del Participante">
		</div>

		<div class="form-group">
			<label for="street1_id" class="control-label">Correo</label> <input
				type="email" class="form-control" id="street1_id" name="correo"
				placeholder="Correo Electronico">
		</div>

		<div class="form-group">
			<label for="street2_id" class="control-label">Clave</label> <input
				type="password" class="form-control" id="street2_id" name="clave"
				placeholder="Contraseña" maxlength="4">
		</div>

		<div class="form-group">
			<label for="city_id" class="control-label">Telefono</label> <input
				type="text" class="form-control" id="city_id" name="telefono"
				placeholder="3001234567">
		</div>

		<div class="form-group">
			<label for="state_id" class="control-label">Genero</label> <select
				class="form-control" id="state_id" name="genero">
				<option value="M">Mujer</option>
				<option value="H">Hombre</option>
			</select>
		</div>
		<div class="form-group">
			<!-- Submit Button -->
			<button type="submit" class="btn btn-primary">Registrar</button>
		</div>
	</form>
	<center><footer><em>Derechos Reservados 2019</em></footer></center>
</body>
</html>