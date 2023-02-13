<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page
	import="com.generation.RiservaBellaJANA71.RiservaBella.entities.Animale"%>

<% List<Animale> animali = (List<Animale>) request.getAttribute("elencoanimali"); %>




<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="style.css">
<script src="script.js" defer></script>



<style type="text/css">

body{
  background: rgb(144,237,139);
  background: radial-gradient(circle, rgba(144,237,139,1) 41%, rgba(33,107,57,1) 93%); 
  font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}

th{
  padding: 50px;
}

button {
    background-color: white; 
  color: black; 
  border: 2px solid #216b39;
  border-radius: 5px;
  width: 100%;
  height: 50px;
  }
  
button:hover {
    background-color: #216b39; /* Green */
    color: white;
 }

 

.scale-down-top {
	-webkit-animation: scale-down-top 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
	        animation: scale-down-top 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
}

/* ----------------------------------------------
 * Generated by Animista on 2023-2-7 16:9:36
 * Licensed under FreeBSD License.
 * See http://animista.net/license for more info. 
 * w: http://animista.net, t: @cssanimista
 * ---------------------------------------------- */

/**
 * ----------------------------------------
 * animation scale-down-top
 * ----------------------------------------
 */
 @-webkit-keyframes scale-down-top {
    0% {
      -webkit-transform: scale(1);
              transform: scale(1);
      -webkit-transform-origin: 50% 0%;
              transform-origin: 50% 0%;
    }
    100% {
      -webkit-transform: scale(0.5);
              transform: scale(0.5);
      -webkit-transform-origin: 50% 0%;
              transform-origin: 50% 0%;
    }
  }
  @keyframes scale-down-top {
    0% {
      -webkit-transform: scale(1);
              transform: scale(1);
      -webkit-transform-origin: 50% 0%;
              transform-origin: 50% 0%;
    }
    100% {
      -webkit-transform: scale(0.5);
              transform: scale(0.5);
      -webkit-transform-origin: 50% 0%;
              transform-origin: 50% 0%;
    }
  }

/* slide fwd table*/

.slide-fwd-top {
	-webkit-animation: slide-fwd-top 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
	        animation: slide-fwd-top 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
}


/**
 * ----------------------------------------
 * animation slide-fwd-top
 * ----------------------------------------
 */
 @-webkit-keyframes slide-fwd-top {
    0% {
      -webkit-transform: translateZ(0) translateY(0);
              transform: translateZ(0) translateY(0);
    }
    100% {
      -webkit-transform: translateZ(160px) translateY(-100px);
              transform: translateZ(160px) translateY(-100px);
    }
  }
  @keyframes slide-fwd-top {
    0% {
      -webkit-transform: translateZ(0) translateY(0);
              transform: translateZ(0) translateY(0);
    }
    100% {
      -webkit-transform: translateZ(160px) translateY(-100px);
              transform: translateZ(160px) translateY(-100px);
    }
  }
  
  
  
  
  
</style>


<title>I nostri animali</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-4"></div>

			<div class="col-4" style="text-align: center; margin-top: 10px;">
				<img id="img" src="img/leone-1.png" alt=""
					style="height: 200px; width: 200px;">
			</div>

			<div class="col-4"></div>
		</div>

		<div class="row">
			<div class="col-4"></div>
			<div class="col-4" style="text-align: center; padding: 10px;">
				<h2>I NOSTRI ANIMALI</h2>

			</div>
		</div>

		<div class="row">
			<div class="col" style="border: solid 1px black;"></div>
		</div>

		<div class="row">
			<div class="col-3"></div>

			<div class="col-6" style="padding: 0; margin-top: 30px;">
				<table class="table align-middle table-dark" id="table"
					align="center" style="text-align: center; margin: 0;">
					
					<% for(Animale a : animali) {%>
					<tr>
						<td><%= a.getId() %></td>
						<td><%= a.getNome() %></td>
						<td><%= a.getSesso() %></td>
						<td><%= a.getClasse() %></td>
						<td><img alt="" src="<%= a.getImg() %>" width="100px" height ="100px"></td>

						<!-- These send me to whatever mapping they have in the href, giving the object id to them  -->
						<td><a href="/dettaglianimale?id=<%= a.getId() %>">DETTAGLI</a></td>
						<td><a href="/eliminaanimale?id=<%= a.getId() %>">ELIMINA</a></td>
					</tr>
					<%}%>
				</table>
			</div>



		</div>

	</div>
	<!--chiusura div container-->


</body>
</html>