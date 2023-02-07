<%@ page language="java"
	contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.generation.RiservaBellaJANA71.RiservaBella.entities.Pianta" %>
<% Pianta p = (Pianta) request.getAttribute("pianta");%> 

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Dettagli di <%= p.getNome() %></title>
	</head>
	<body>
		<h1>Dettaglio della pianta numero <%= p.getId() %></h1>
		NOME <%= p.getNome() %><br>
		FAMIGLIA <%= p.getFamiglia() %><br>
		<!-- Per ogni libro creiamo un pulsante che ci rimandi alla pagina di modifica -->
		<a href="/dettaglimodificapianta?id=<%= p.getId() %>">MODIFICA</a>
	</body>
</html>