<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Registrati</title>
</head>

<body>
	
	<a href="/homeLOG"><button>Home</button></a>
	<a href="/login"><button>Login</button></a>

    <form action="/user/gosignin" method="post">
        <input type="text" name="username" placeholder="Username">
        <br>
        <input type="password" name="pass" placeholder="Password">
        <br>
        <button>Registrati</button>
    </form>

</body>

</html>