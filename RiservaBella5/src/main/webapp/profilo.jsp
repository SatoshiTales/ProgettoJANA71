<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Map"%>
<%
Map<String, String> user = (Map<String, String>) request.getAttribute("user");
%>
<%
boolean login = "OK".equalsIgnoreCase((String) request.getAttribute("login"));
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Scheda Pagina Utente</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="style.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous" />

<style type="text/css">
body {
	background: rgb(144, 237, 139);
	background: radial-gradient(circle, rgba(144, 237, 139, 1) 41%,
		rgba(33, 107, 57, 1) 93%);
	font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
		sans-serif;
}

button {
	background-color: white;
	color: black;
	border: 2px solid #216b39;
	border-radius: 5px;
	width: 100%;
	height: 50px;
	font-size: 30px;
}

button:hover {
	background-color: #216b39; /* Green */
	color: white;
}

#buttonRegistrati {
	background-color: #216b39;
}

#buttonModifica {
	height: 30px;
}

#buttonElimina {
	height: 30px;
}

#buttonModifica {
	font-size: 15px;
}

#buttonElimina {
	font-size: 15px;
}

#buttonIndietro {
	font-size: 15px;
}

#buttonAvanti {
	font-size: 15px;
}

.scale-down-top {
	-webkit-animation: scale-down-top 0.5s
		cubic-bezier(0.25, 0.46, 0.45, 0.94) both;
	animation: scale-down-top 0.5s cubic-bezier(0.25, 0.46, 0.45, 0.94) both;
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
@
-webkit-keyframes scale-down-top { 0% {
	-webkit-transform: scale(1);
	transform: scale(1);
	-webkit-transform-origin: 50% 0%;
	transform-origin: 50% 0%;
}

100


%
{
-webkit-transform


:


scale
(


0
.5


)
;


transform


:


scale
(


0
.5


)
;


-webkit-transform-origin


:


50
%


0
%;


transform-origin


:


50
%


0
%;


}
}
@
keyframes scale-down-top { 0% {
	-webkit-transform: scale(1);
	transform: scale(1);
	-webkit-transform-origin: 50% 0%;
	transform-origin: 50% 0%;
}

100


%
{
-webkit-transform


:


scale
(


0
.5


)
;


transform


:


scale
(


0
.5


)
;


-webkit-transform-origin


:


50
%


0
%;


transform-origin


:


50
%


0
%;


}
}

/* slide fwd table*/
.slide-fwd-top {
	-webkit-animation: slide-fwd-top 0.5s
		cubic-bezier(0.25, 0.46, 0.45, 0.94) both;
	animation: slide-fwd-top 0.5s cubic-bezier(0.25, 0.46, 0.45, 0.94) both;
}

* /
 @-webkit-keyframes slide-fwd-top { 0% {
	-webkit-transform: translateZ(0) translateY(0);
	transform: translateZ(0) translateY(0);
}

100


%
{
-webkit-transform


:


translateZ
(


160px


)


translateY
(


-100px


)
;


transform


:


translateZ
(


160px


)


translateY
(


-100px


)
;


}
}
@
keyframes slide-fwd-top { 0% {
	-webkit-transform: translateZ(0) translateY(0);
	transform: translateZ(0) translateY(0);
}

100


%
{
-webkit-transform


:


translateZ
(


160px


)


translateY
(


-100px


)
;


transform


:


translateZ
(


160px


)


translateY
(


-100px


)
;


}
}

/*┌──────────────────────────────────────────────────────────────────────┐*/
/*│INIZIO PARTE PAGINE SCHEDA STANDARD E AMMINISTRATORE ANIMALI E PIANTE │*/
/*└──────────────────────────────────────────────────────────────────────┘*/
.box {
	display: block;
	position: -ms-page;
}

#nomeanimale {
	text-align: center;
	font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
		sans-serif;
}

.gestionea {
	margin-top: 1cm;
	font-size: auto;
	width: auto;
}

.imgleo {
	position: -ms-page;
	height: 6cm;
}

.imgstandard {
	border: dotted 5px #1b4428;
	width: 350px;
	margin-top: 2cm;
	margin-left: 0;
	margin-right: 0;
	height: 220px;
}

.imggestione {
	border: dotted 5px #1b4428;
	width: 350px;
	margin-top: 1.5cm;
	margin-right: 3cm;
	margin-bottom: 1cm;
	height: 220px;
}

.ptitle {
	text-align: center;
	font-size: 40px;
	position: relative;
	bottom: 20px;
}

.pstandard {
	background-color: rgba(169, 169, 169, 0.438);
	border: solid 1px rgb(255, 255, 255);
	color: #012e0f;
	width: 380px;
	height: 220px;
	overflow-y: scroll;
	word-break: break-all;
	font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
		sans-serif;
}

.pgestione {
	background-color: rgba(169, 169, 169, 0.438);
	border: solid 1px rgb(255, 255, 255);
	color: #012e0f;
	width: 380px;
	height: 220px;
	position: relative;
	left: 40px;
	bottom: 20px;
	overflow-y: scroll;
	word-break: break-all;
	font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
		sans-serif;
}

.bottonex {
	text-align: center;
	width: 4.6cm;
	border-radius: 7px;
	border-color: #1b4428;
	height: 28px;
}

.bottonez {
	background-color: aqua;
	text-align: center;
	width: 1cm;
	border-radius: 7px;
	border-color: #1b4428;
	height: 28px;
}

.bottonez a {
	color: palevioletred;
}

.bottoney {
	text-align: center;
	width: 4.6cm;
	border-radius: 7px;
	border-color: #1b4428;
	position: relative;
	top: 35px;
	left: 0;
	height: 28px;
}

.updatename {
	border: solid #012e0f;
	border-radius: 20px;
	z-index: 1;
	background-color: rgb(202, 202, 202);
	top: 50%;
	left: 50%;
	width: 26em;
	height: 12em;
	margin-top: -9em;
	margin-left: -15em;
	position: absolute;
}

.updateimage {
	border: solid #012e0f;
	border-radius: 20px;
	z-index: 1;
	background-color: rgb(202, 202, 202);
	top: 50%;
	left: 50%;
	width: 26em;
	height: 12em;
	margin-top: -9em;
	margin-left: -15em;
	position: absolute;
}

.updatedescr {
	border: solid #012e0f;
	border-radius: 20px;
	z-index: 1;
	background-color: rgb(202, 202, 202);
	top: 50%;
	left: 50%;
	width: 26em;
	height: 12em;
	margin-top: -9em;
	margin-left: -15em;
	position: absolute;
}

table .update {
	margin-top: 1cm;
	margin-right: 1cm;
	margin-left: 1cm;
}

table .update td {
	position: relative;
	bottom: 0.6cm;
	color: #012e0f;
	font-size: 20px;
	text-align: center;
	font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
		sans-serif;
}

.update #B {
	width: 8cm;
}

.update #C {
	margin-top: 2px;
	border-radius: 10px;
	border: #012e0f solid;
	color: #012e0f;
	font-size: 20px;
	text-align: center;
	font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
		sans-serif;
}

.upback {
	width: 1cm;
	height: 25px;
	border-radius: 50%;
	text-align: center;
}

/*┌────────────────────────────────────────────┐*/
/*│INIZIO PARTE INERENTE LE TABELLE CON PAGINA │*/
/*└────────────────────────────────────────────┘*/
.taba {
	color: #000000;
	font-size: 20px;
	line-height: 20px;
	width: 900px;
	margin: 50px auto;
	border: solid 3px rgb(219, 219, 219);
}

.tabo {
	color: #000000;
	font-size: 20px;
	line-height: 20px;
	width: 900px;
	margin: 50px auto;
	border: solid 3px rgb(219, 219, 219);
}

.taba thead {
	height: 1cm;
	background-color: #1b4428;
}

.taba td {
	font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
		sans-serif;
	color: #000000;
	font-size: 20px;
	width: 6cm;
	text-align: center;
}

.tabo tbody tr {
	background-color: #d3d3d300;
}

.taba tbody tr {
	background-color: transparent;
}

.taba tbody tr:hover:not(th) {
	background-color: #216b39;
}

.taba input[type="button"] {
	transition: all .3s;
	border: 2px solid #ddd;
	text-decoration: none;
	border-radius: 50px;
	font-size: 20px;
}

.tabo button {
	text-align: center;
	width: 4.6cm;
	border-radius: 7px;
	border-color: #1b4428;
	height: 28px;
	margin-left: 3.6cm;
}

.taba .bottoni {
	position: relative;
	left: 9.4cm;
}

.taba .lastrow {
	background-color: #000000
}

.taba #buttons {
	background-color: #1b4428;
	width: 402%;
}

.tab1 {
	height: 9cm;
}

.tab2 {
	position: relative;
	bottom: 3.5cm;
	height: 9cm;
}

/*┌──────────────────────────────────────────┐*/
/*│FINE PARTE INERENTE LE TABELLE CON PAGINA │*/
/*└──────────────────────────────────────────┘*/
</style>
<script type="text/javascript">
	/*
	INIZIO PARTE PAGINE SCHEDA STANDARD E AMMINISTRATORE ANIMALI E PIANTE
	 */

	function nohide1() {
		document.getElementById("XX").hidden = false;
		document.getElementById("XY").hidden = true;
		document.getElementById("YY").hidden = true;
	}
	function hide() {
		document.getElementById("XX").hidden = true;
		document.getElementById("XY").hidden = true;
		document.getElementById("YY").hidden = true;
	}
	function nohide2() {
		document.getElementById("XY").hidden = false;
		document.getElementById("XX").hidden = true;
		document.getElementById("YY").hidden = true;
	}

	function nohide3() {
		document.getElementById("YY").hidden = false;
		document.getElementById("XX").hidden = true;
		document.getElementById("XY").hidden = true;
	}
</script>

</head>
<body>

    <div class="container">

        <!--logo della pagina-->
        <div class="row">
            <div class="col-4"></div>

            <div class="col-4" style="text-align: center; margin-top: 10px;">
                <img id="img" src="img/leone-1.png" alt="" style="height: 200px; width: 200px;">
            </div>

            <div class="col-4"></div>
        </div>
        <!------------------------------------------------->

        <!--h2 titolo della pagina-->
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4">
                <h1>PAGINA UTENTE</h1>
            </div>
        </div>


        <div class="row">
            <div class="col" style="border: solid black 2px"></div>  <!--linea di divisione fatta con un container vuoto-->
           
        </div>



        <div class="row">
            <div class="col-4" style="margin-top: 10px">
                <h3>Benvenuto ${user.get("username")}</h3>
            </div>
            <div class="col-6"></div>
            <div class="col-2" style="margin-top: 10px">
                <a href="/user/logout"><button style="font-size: 20px; height: 35px;">LOGOUT</button></a> <!--button logout-->
            </div>
        </div>




        <!--tabella dati utente-->
        <div class="row">
            <div class="col-1"></div>
            <div class="col-10" style="padding: 0; margin-top: 30px;">
                
                <table class="table align-middle table-dark" id="render" align="center"
                    style="text-align: center; margin: 0;">
                    <!--render table-->
                    <thead>
                        <tr>
                            <td>NOME</td>
                            <td>COGNOME</td>
                            <td>DDN</td>
                            <td>EMAIL</td>
                        </tr>
                    </thead>

                    <tbody id="tableUser">
                        <tr>
                            <td>${user.get("nome")}</td>
                            <td>${user.get("cognome")}</td>
                            <td>${user.get("ddn")}</td>
                            <td>${user.get("email")}</td>
                        </tr>
                    </tbody>

                </table>

            </div>

        </div>


        <!--button lista adozioni -->
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4" style="margin-top: 10px;">
                <a href="/user/listaadozioni"><button style="font-size: 20px">LISTA ADOZIONI</button></a>
            </div>

        </div>


    </div>

</body>

</html>
