<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Map"%>
<% Map<String, String> user = (Map<String, String>) request.getAttribute("user"); %>  
<% Map<String, String> dettuser = (Map<String, String>) request.getAttribute("dettuser"); %> 
<% boolean login = "OK".equalsIgnoreCase((String) request.getAttribute("login")); %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profilo ${user.get("username")} </title>
</head>
<body>

	<div align="right">
		<a href="/homeLOG"><button>Home</button></a>
		
		<% if(login){ %>
			<a href="/user/logout"><button>Logout</button></a>
		<% } else { %>
			<a href="/login"><button>Login</button></a>
			<a href="/signin"><button>Registrati</button></a>
		<% } %>
		
	</div>

	<table>
        <thead>
        	<tr>
	            <th>Username</th>
	            <th>Password</th>
            </tr>
        </thead>

        <tbody>
        	<tr>
	            <td> ${dettuser.get("username")}</td>
	            <td> ${dettuser.get("password") }</td>
            </tr>
        </tbody>
    </table>



</body>
</html>