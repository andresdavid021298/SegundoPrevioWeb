<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro Equipo</title>
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
				<a class="nav-item nav-link active" href="registarParticipante.jsp">Registrar
					Participante </a> <a class="nav-item nav-link"
					href="registrarEquipo.jsp">Registrar Equipo</a> <a
					class="nav-item nav-link" href="listarParticipantes.jsp">Ver
					Participantes</a>
			</div>
		</div>
	</nav>
	<h1>Registro Equipo</h1>
	<form method="POST" action="RegistroEquipoController">
		<div class="form-group">
			<!-- Full Name -->
			<label for="full_name_id" class="control-label">Nombre del
				Equipo</label> <input type="text" class="form-control" id="full_name_id"
				name="nombre" placeholder="Equipo 1">
		</div>
		<div class="form-group">
			<label for="state_id" class="control-label">Couch</label> <select
				id="input" class="form-control" id="sel1" name="participante">
				<jsp:useBean id="pDao" class="Dao.ParticipanteDao" scope="request"></jsp:useBean>
				<c:forEach var="participante" items="${pDao.list()}">
					<option value="${participante.id}"><c:out value="${participante.nombre}"></c:out>
					</option>
				</c:forEach>
			</select>
		</div>

		<div class="form-group">
			<label for="state_id" class="control-label">Universidad</label> <select
				id="input" class="form-control" id="sel1" name="universidad">
				<jsp:useBean id="uDao" class="Dao.UniversidadDao" scope="request"></jsp:useBean>
				<c:forEach var="universidad" items="${uDao.list()}">
					<option value="${universidad.id}"><c:out value="${universidad.nombre}"></c:out>
					</option>
				</c:forEach>
			</select>
		</div>
		<div class="form-group">
			<!-- Submit Button -->
			<button type="submit" class="btn btn-primary">Registrar</button>
		</div>
	</form>
	<center>
		<footer>
			<em>Derechos Reservados 2019</em>
		</footer>
	</center>
</body>
</html>