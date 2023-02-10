<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Map"%>
<% Map<String, String> admin = (Map<String, String>) request.getAttribute("admin"); %>   
<% boolean login = "OK".equalsIgnoreCase((String) request.getAttribute("login")); %>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>
</head>
<body>

	<h1>Benvenuto ${admin.get("username")} </h1>
	<div align="right">
		<% if(login){ %>
			<a href="/admin/profilo"><button>Profilo</button></a>
			<a href="/admin/logout"><button>Logout</button></a>
		<% } else { %>
			<a href="/login"><button>Login</button></a>
			<a href="/signin"><button>Registrati</button></a>
		<% } %>
	</div>
	<a href="/user/elencouser"><button>Elenco Users</button></a>
	

</body>
</html>