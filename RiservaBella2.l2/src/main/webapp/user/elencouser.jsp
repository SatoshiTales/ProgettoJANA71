<!--	L'intestazione serve a specificare il tipo di linguaggio usato (in questo caso JAVA) all'interno
		della pagina. Il tag < %@ si utilizza nelle sezioni di configurazione -->
<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 	Iniziamo importando nella JSP le librerie JAVA che ci torneranno utili -->
<%@ page import="java.util.List"%>
<%@ page import="com.generation.RiservaBellaJANA71.RiservaBella.entities.User"%>
 <% List<User> userList = (List<User>) request.getAttribute("elencouser"); %>
<% boolean login = "OK".equalsIgnoreCase((String) request.getAttribute("login")); %>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Elenco degli User</title>
	</head>
	<body>
		<div align="right">
			<a href="/home"><button>Home</button></a>
			
			<% if(login){ %>
				<a href="/admin/profilo"><button>Profilo</button></a>
				<a href="/admin/logout"><button>Logout</button></a>
			<% } else { %>
				<a href="/login"><button>Login</button></a>
				<a href="/signin"><button>Registrati</button></a>
			<% } %>
			
		</div>
	
		<h1>ELENCO DEGLI USER</h1>
		
		<table>
			<tr>
				<th>ID</th>
				<th>Nome</th>
	            <th>Cognome</th>
	            <th>Data di Nascita</th>
	            <th>EMAIL</th>
			</tr>
			<%	for(User u : userList) {%>
			<tr>
				<td><%= u.getId() %></td>
				<td><%= u.getNome() %></td>
				<td><%= u.getCognome() %></td>
				<td><%= u.getDdn() %></td>
				<td><%= u.getEmail() %></td>
				
			</tr>
			<%}%>
		</table>
	</body>
</html>