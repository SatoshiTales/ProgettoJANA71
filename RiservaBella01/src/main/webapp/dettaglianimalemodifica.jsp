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
		<h1>Dettagli dell'animale# <%= a.getId() %></h1>
		
		<!-- Form where I'll change values -->
		<form action="/modificaanimale" method="get">
			ID <input type="text" name="id" value="<%= a.getId() %>" readonly><br>
			NOME <input type="text" name="nome" value="<%= a.getNome() %>"><br>
			SESSO <input type="text" name="sesso" value="<%= a.getSesso() %>"><br>
			CLASSE <input type="text" name="titolo" value="<%= a.getClasse() %>"><br>
			<input type="submit" value="AGGIORNA">
		</form>
	</body>
</html>