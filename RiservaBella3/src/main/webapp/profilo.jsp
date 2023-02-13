<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Map"%>
<% Map<String, String> admin = (Map<String, String>) request.getAttribute("admin"); %>  
<% Map<String, String> dettuser = (Map<String, String>) request.getAttribute("dettuser"); %> 
<% boolean login = "OK".equalsIgnoreCase((String) request.getAttribute("login")); %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profilo ${admin.get("username")} </title>
</head>
<body>

	<div align="right">
		<a href="/home"><button>Home</button></a>
		
		<% if(login){ %>
			<a href="/admin/logout"><button>Logout</button></a>
		<% } else { %>
			<a href="/login"><button>Login</button></a>
			<a href="/signin"><button>Registrati</button></a>
		<% } %>
		
	</div>

	<table>
        <thead>
        	<tr>
	            <th>Nome</th>
	            <th>Cognome</th>
	            <th>Data di Nascita</th>
	            <th>Email</th>
	            <th>Username</th>
	            <th>Password</th>
            </tr>
        </thead>

        <tbody>
        	<tr>
	            <td> ${dettuser.get("nome")}</td>
	            <td> ${dettuser.get("cognome") }</td>
	            <td> ${dettuser.get("ddn")}</td>
	            <td> ${dettuser.get("email")}</td>
	            <td> ${admin.get("username")}</td>
	            <td> ${admin.get("pass")}</td>
            </tr>
        </tbody>
    </table>



</body>
</html>