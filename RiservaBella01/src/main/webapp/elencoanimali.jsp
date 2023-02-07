<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"  %>    
<%@ page import="com.generation.RiservaBellaJANA71.RiservaBella.entities.Animale" %>    

<% List<Animale> animali = (List<Animale>) request.getAttribute("elencoanimali"); %>    


    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Elenco animali</title>
</head>
	<body>
		
		<h1>ELENCO ANIMALI</h1>
		<table>
			<tr>
				<th>ID</th>
				<th>NOME</th>
				<th>SESSO</th>
				<th>CLASSE</th>
			</tr>
			<% for(Animale a : animali) {%>
				<tr>				
					<td><%= a.getId() %></td>
					<td><%= a.getNome() %></td>
					<td><%= a.getSesso() %></td>
					<td><%= a.getClasse() %></td>
					<td> <img alt="" src="<%= a.getImg() %>"> </td>
					
					<!-- These send me to whatever mapping they have in the href, giving the object id to them  -->
					<td><a href="/dettaglianimale?id=<%= a.getId() %>">DETTAGLI</a></td>
					<td><a href="/eliminaanimale?id=<%= a.getId() %>">ELIMINA</a></td>
				</tr>
				<%}%>
					
		</table>
	</body>
</html>