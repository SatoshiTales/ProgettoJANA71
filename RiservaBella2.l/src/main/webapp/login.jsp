<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% boolean errorLogin = "OK".equalsIgnoreCase((String) request.getAttribute("errorLogin")); %>   
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Accedi</title>
</head>

<body>

	<a href="/homeLOG"><button>Home</button></a>
	<a href="/signin"><button>Registrati</button></a>

	<% if(errorLogin) { %>
		<div style="border: solid 1px; border-color: red;">
	        Invalid Username/Password
	    </div>
    <% } %>

	

    <form action="/user/gologin" method="post">
        <input type="text" name="usr" placeholder="Username">
        <br>
        <input type="password" name="psw" placeholder="Password">
        <br>
        <button>Accedi</button>
    </form>

</body>

</html>