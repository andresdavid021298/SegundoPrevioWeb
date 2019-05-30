<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Participantes</title>
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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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
	<h2>Lista de Participantes</h2>
	<c:out value="${lista}"></c:out>
	<table class="table table-striped">
		<jsp:useBean id="partDao" class="Dao.ParticipanteDao" scope="request"></jsp:useBean>
		<thead>
			<tr>
				<th scope="col">Nombre</th>
				<th scope="col">Correo</th>
				<th scope="col">Telefono</th>
				<th scope="col">Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="lista" scope="page" value=""></c:set>
			<c:forEach var="participante" items="${partDao.list() }">
				<tr>
					<c:set var="uno" scope="page" value="${participante.nombre}"></c:set>
					<td><c:out value="${participante.nombre}" /></td>
					<td><c:out value="${participante.correo}" /></td>
					<td><c:out value="${participante.telefono}" /></td>
					<td><a
						href="EliminarParticipanteController?idPart=${participante.id}">Eliminar</a>
						<a
						href="ActualizarParticipanteController?id=${participante.id}">Editar</a></td>
				</tr>
			</c:forEach>
			<center>
				<footer>
					<em>Derechos Reservados 2019</em>
				</footer>
			</center>
</body>
</html>