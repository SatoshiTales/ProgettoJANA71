<%@ page language="java"
	contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.generation.RiservaBellaJANA71.RiservaBella.entities.*" %>
<% Pianta p = (Pianta) request.getAttribute("pianta");%> 

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Dettagli di <%= p.getNome() %></title>
	</head>
	<body>
		<!--	Questa form è simile a quella del create solo che i valori sono presi da quelli esistenti
				per il libro. Una volta sistemati come vogliamo, salviamo i nuovi valori inviando
				tutti i campi dell'input al mapping /modificalibro all'interno di HomeController
		 -->
		<h1>Dettaglio della pianta numero <%= p.getId() %></h1>
		<form action="/modificapianta" method="get">
			ID <input type="text" name="id" value="<%= p.getId() %>" readonly><br>
			NOME <input type="text" name="nome" value="<%= p.getNome() %>"><br>
			FAMIGLIA <input type="text" name="famiglia" value="<%= p.getFamiglia() %>"><br>
			DESCRIZIONE <input type="text" name="descr" value="<%= p.getDescr() %>"><br>
			<input type="submit" value="AGGIORNA">
		</form>
		
		<form method="post" action="uploadImageP" enctype="multipart/form-data">
		<input type="text" name="id" value="<%= p.getId() %>"readonly hidden ="true"><br>
		<input type="file" name="image" value="<%= p.getImg() %>"/> 
		<input type="submit" value="Upload" />
		</form>	
	</body>
</html>