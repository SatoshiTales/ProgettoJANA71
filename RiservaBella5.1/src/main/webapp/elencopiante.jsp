<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page
	import="com.generation.RiservaBellaJANA71.RiservaBella.entities.Pianta"%>

<% List<Pianta> piante = (List<Pianta>) request.getAttribute("elencopiante"); %>




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

<script type="text/javascript">
/*------------------ PAGINATION ------------------------------*/

var rowsPerPage = 5;
var table;
var curPage = 1;
var numPerPage = 5;
var numRows;
var numPages;

function pagination(){
	
	
   if (i == (<%= piante.size() %> - 1)) {
    // We have reached the end of the data, so we need to add
    // additional empty rows if necessary.
    var remainingRows = rowsPerPage - (<%= piante.size() %>  % rowsPerPage);
    for (var j = 0; j < remainingRows; j++) {
      
      var emptyRow = document.createElement("tr");
      var emptyCell1 = document.createElement("td");
      var emptyCell2 = document.createElement("td");
      var emptyCell3 = document.createElement("td");
      var emptyCell4 = document.createElement("td");
      emptyCell1.innerHTML = "-";
      emptyCell2.innerHTML = "-";
      emptyCell3.innerHTML = "-";
      emptyCell4.innerHTML = "-";
      emptyRow.appendChild(emptyCell1);
      emptyRow.appendChild(emptyCell2);
      emptyRow.appendChild(emptyCell3);
      emptyRow.appendChild(emptyCell4);
      table.appendChild(emptyRow);
    }
 }
    table = document.getElementById("myTable");
	numRows = table.rows.length;
	numPages = Math.ceil(numRows / numPerPage);






   

    // Nasconde tutte le righe della tabella tranne quelle della prima pagina
    for (var i = 1; i < numRows; i++) {
      table.rows[i].style.display = "none";
    }

    // Mostra solo le righe per la prima pagina
    for (var i = 0; i < numPerPage; i++) {
      table.rows[i].style.display = "table-row";
    }

    // Crea la navigazione della pagina
    var paginationControls = document.createElement("div");
    paginationControls.className = "paginationControls";
    document
      .getElementById("myTable")
      .parentNode.insertBefore(paginationControls, table);
}

    // Crea i bottoni "Precedente" e "Successivo"
    function prev() {
      if (curPage > 1) {
        curPage--;
        displayRows();
      }
    };
    paginationControls.appendChild(prev());

   
    function next() {
      if (curPage < numPages) {
        curPage++;
        displayRows();
      }
    };
    paginationControls.appendChild(next());

    // Mostra solo le righe per la pagina corrente
    function displayRows() {
      for (var i = 0; i < numRows; i++) {
        if (i >= (curPage - 1) * numPerPage && i < curPage * numPerPage) {
          table.rows[i].style.display = "table-row";
        } else {
          table.rows[i].style.display = "none";
        }
      }
    }

    /* funzioni popup */

    function nohide4() {
      document.getElementById("ZZ").hidden = false;
    }
    function hide4a() {
      document.getElementById("ZZ").hidden = true;
    }

    function hide5a() {
      document.getElementById("ZX").hidden = true;
    }

    function nohide5() {
      document.getElementById("ZX").hidden = false;
    }
    
    function clean() {
        document.getElementById("name-a").value = "";
        document.getElementById("sex-a").value = "";
        document.getElementById("class-a").value = "";
      }
</script>

<style type="text/css">
body{
  background: rgb(144,237,139);
  background: radial-gradient(circle, rgba(144,237,139,1) 41%, rgba(33,107,57,1) 93%); 
  font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}

th{
  padding: 50px;
}

input[text]{
  border-radius: 50px;
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

 #inputPopup{
  background-color: white; 
  color: black; 
  border: 2px solid #216b39;
  border-radius: 5px;
  width: 100%;
  height: 35px;
  font-size: 20px;
 }

 #inputPopup:hover {
  background-color: #216b39; /* Green */
  color: white;
 }


 #upload{
  background-color: white; 
  color: black; 
  border: 2px solid #216b39;
  border-radius: 5px;
  width: 15%;
  height: 35px;
  font-size: 20px;
  margin-bottom: 15px;
 }

 #upload:hover {
  background-color: #216b39; /* Green */
  color: white;
}

#X:hover{
  background-color: #d12b2b; /* Green */
  color: white;
}

#inputFile{
  background-color: white; 
  color: black; 
  border: 2px solid #216b39;
  border-radius: 5px;
  width: 50%;
  height: 39px;
  font-size: 20px;
  margin-bottom: 15px;
  margin-right: 40px;
}





 #divRegistrazione{
  box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset; }

  #divLogin{
    box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset; }
  
 

a{
  text-decoration: none;
}

#buttonRegistrati{
  background-color: #216b39;
}

#buttonModifica{
  height: 30px;
}
#buttonElimina{
  height: 30px;
}


#buttonModifica{
  font-size: 15px;
}

#buttonElimina{
  font-size: 15px;
}

#buttonIndietro{
  font-size: 15px;
}

#buttonAvanti{
  font-size: 15px;
}

.create {
  border: solid #216b39;
  border-radius: 20px;
  z-index: 1;
  background-color: rgb(202, 202, 202);
  top: 50%;
  left: 50%;
  width: 40em;
  height: 25em;
  margin-top: -10em;
  margin-left: -21em;
  position: absolute;
  box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset; 
  background: rgb(144,237,139);
  background: radial-gradient(circle, rgba(144,237,139,1) 41%, rgba(33,107,57,1) 93%); 
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

/* ----------------------------------------------
 * Generated by Animista on 2023-2-7 17:34:52
 * Licensed under FreeBSD License.
 * See http://animista.net/license for more info. 
 * w: http://animista.net, t: @cssanimista
 * ---------------------------------------------- */

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
<body onload="pagination()">

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
				<h2>LE NOSTRE PIANTE</h2>
			</div>
		</div>

		<div class="row">
			<div class="col" style="border: solid 1px black;"></div>
		</div>

		<div class="row">
			<div class="col-4"></div>
			<div class="col-4" style="margin-top: 10px;">
				<button onclick="nohide5()">AGGIUNGI NUOVA</button>
			</div>
		</div>

		<!-- Tabella -->
		<div class="row">
			<div class="col-1"></div>
			<div class="col-10" style="padding: 0; margin-top: 30px;">
				<table class="table align-middle table-dark" id="render"
					align="center" style="text-align: center; margin: 0;">
					<!--render table-->
					<thead>
						<tr>
							<td>ID</td>
							<td>NOME</td>
							<td>FAMIGLIA</td>
							<td></td>
							<td></td>
							<td>IMMAGINE</td>
						</tr>
					</thead>

					<tbody id="myTable">
						<% for(Pianta p : piante) {%>
						<tr>
							<td><%= p.getId() %></td>
							<td><%= p.getNome() %></td>
							<td><%= p.getFamiglia() %></td>
							<!-- These send me to whatever mapping they have in the href, giving the object id to them  -->
							<td><a href="/dettaglipianta?id=<%= p.getId() %>"><button
										id='buttonModifica'>Modifica</button></a></td>
							<td><a href="/eliminapianta?id=<%= p.getId() %>"><button
										id='buttonElimina'>Elimina</button></a></td>
							<td><img alt="" src="<%= p.getImg() %>" width="100px"
								height="100px"></td>

						</tr>
						<%}%>
					</tbody>

				</table>

				<!-- Bottoni avanti e indietro-->
				<div class="row">

					<div class="col-2">
						<button id="buttonIndietro" onclick="prev()" style="height: 30px;">
							<<<<</button>
					</div>
					<div class="col-8"></div>
					<div class="col-2">

						<button id="buttonAvanti" onclick="next()" style="height: 30px;">
							>>>></button>
					</div>

				</div>



			</div>

			<div style="border-radius: 5px;" class="create" id="ZX" hidden = "true">
				<table>
					<tr>
						<button id="X" style="width: 10%;" class="upback"
							onclick="hide5a()">X</button>
					</tr>
				</table>



				<div style="margin-top: 0.5cm" id="tabella animali" align="center">
					<h5 style="margin-bottom: 30px;">INSERISCI PIANTA</h5>
					<div></div>
					<form action="/nuovapianta" method="get" style="margin-right: 10px;">
					<table class="createanimal">
						<thead>
							<tr>
								<td>INSERISCI NOME</td>
								<td><input style="border: 2px solid #216b39;" type="text"
									id="name-a" name="nome" value="" /></td>
							</tr>
							<tr>
								<td>INSERISCI FAMIGLIA</td>
								<td><input style="border: 2px solid #216b39;" type="text"
									id="sex-a" name="famiglia" value="" /></td>
							</tr>
								<tr>
								<td><input style="border: 2px solid #216b39;" type="text"
									id="class-a" name="img" value="img/Amogus.png" hidden ="true" readonly/></td>
							</tr>
							<tr>
								<td><input style="border: 2px solid #216b39;" type="text"
									name="descr" id="desc-a" value="Descrizione Placeholder" hidden="true" readonly/><br />
								</td>
							</tr>
						</thead>
					</table>

					<div style="margin-top: 20px" align="center">
						<table>
							<tr>
								<td>
										<input id="inputPopup" class="Ds" type="submit"
											value="CONFERMA" onclick="nohide6()" />
								</td>
								<td><input id="inputPopup" style="margin-left: 10px;"
									class="Ds" type="button" value="PULISCI" onclick="clean()" />
								</td>
							</tr>
						</table>
						</form>
					</div>

				</div>

			</div>

		</div>
	</div>
		<!--chiusura div container-->
</body>
</html>