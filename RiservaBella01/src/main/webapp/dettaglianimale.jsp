<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.generation.RiservaBellaJANA71.RiservaBella.entities.Animale"%>
<% Animale a = (Animale) request.getAttribute("animale");%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dettagli</title>
</head>
	<body>
		 <%= a.getImg() %> <br>
		 <%= a.getNome() %><br>
		 <%= a.getSesso() %><br>
		 <%= a.getClasse() %><br>
		 
		
		<!-- Making a button in here that sends me to the update page -->
		<a href="/dettaglimodificaanimale?id=<%= a.getId() %>">MODIFICA</a>
		
	</body>
</html>