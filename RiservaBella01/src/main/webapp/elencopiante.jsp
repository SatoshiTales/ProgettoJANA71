<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"  %>    
<%@ page import="com.generation.RiservaBellaJANA71.RiservaBella.entities.Pianta" %>    

<% List<Pianta> piante = (List<Pianta>) request.getAttribute("elencopiante"); %>    


    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Elenco piante</title>
</head>
	<body>
		
		<h1>ELENCO PIANTE</h1>
		<table>
			<tr>
				<th>ID</th>
				<th>NOME</th>
				<th>FAMIGLIA</th>
			</tr>
			<% for(Pianta  p : piante) {%>
				<tr>				
					<td><%= p.getId() %></td>
					<td><%= p.getNome() %></td>
					<td><%= p.getFamiglia() %></td>
					<td> <img alt="" src="<%= p.getImg() %>"> </td>
					
					<!-- These send me to whatever mapping they have in the href, giving the object id to them  -->
					<td><a href="/dettaglipianta?id=<%= p.getId() %>">DETTAGLI</a></td>
					<td><a href="/eliminapianta?id=<%= p.getId() %>">ELIMINA</a></td>
				</tr>
				<%}%>
					
		</table>
	</body>
</html>