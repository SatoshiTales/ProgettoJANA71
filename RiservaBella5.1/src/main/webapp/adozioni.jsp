<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>

<%@ page
	import="com.generation.RiservaBellaJANA71.RiservaBella.entities.Animale"%>
<%@ page
	import="com.generation.RiservaBellaJANA71.RiservaBella.entities.Pianta"%>
<% List<Animale> animali = (List<Animale>) session.getAttribute("animali"); %>
<% List<Pianta> piante = (List<Pianta>) session.getAttribute("piante"); %>
<%boolean login = "OK".equalsIgnoreCase((String) request.getAttribute("login"));%>



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Scheda Lista Adozioni</title>
    
    
    <style type="text/css">
      body {
        background: rgb(144, 237, 139);
        background: radial-gradient(
          circle,
          rgba(144, 237, 139, 1) 41%,
          rgba(33, 107, 57, 1) 93%
        );
        font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
          sans-serif;
      }
      .ptitle {
        text-align: center;
        font-size: 40px;
        position: relative;
        bottom: 20px;
      }
      .imgleo {
        position: -ms-page;

        height: 6cm;
      }
      #next {
        float: right;
        margin-right: 5cm;
      }
      #prev {
        position: relative;
        margin-left: 5cm;
      }
      #render1 td {
        width: 600px;
        word-break: break-all;
      }
      #render2 td {
        width: 600px;
        word-break: break-all;
      }
      .paginationControls {
        background-color: rgb(33, 37, 41);
        border-bottom: solid #64ff95 4px;
      }
      .paginationControls2 {
        background-color: rgb(33, 37, 41);
        border-bottom: solid #64ff95 4px;
      }
      
      
      
    </style>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <div class="row">
      <div class="col-5"></div>
      <div class="col-2">
        <img class="imgleo" src="img/leone-1.png" />
      </div>
      <div class="col-5"></div>
    </div>
    <div class="row" style="height: 1cm">
      <div class="col12">
        <p class="ptitle">LISTA ADOZIONI</p>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-1"></div>
        <div class="col-10" style="border: solid black 3px"></div>
        <div class="col-1"></div>
      </div>
    </div>
    <div class="container" style="margin-top: 1cm">
      <!-- INIZIO PRIMA TABELLA (ANIMALI) -->
      <div class="row">
        <div class="col1"></div>
        <div class="col10">
          <table
            class="table align-middle table-dark"
            id="render1"
            align="center"
            style="text-align: center; margin: 0"
          >
            <thead style="border-top: solid #64ff95 4px; font-size: 35px">
              <tr>
                <td>NOME</td>
                <td>SESSO</td>
                <td>CLASSE</td>
                <td>IMMAGINE</td>
              </tr>
            </thead>
            <tbody id="animali" style="font-size: 20px">
            	<% for(Animale a : animali) {%>
					<tr>
						<td><%= a.getNome() %></td>
						<td><%= a.getSesso() %></td>
						<td><%= a.getClasse() %></td>
						<td><img alt="" src="<%= a.getImg() %>" width="150px"
							height="150px"></td>

					</tr>
					<%}%>
            </tbody>
          </table>
        </div>
        <div class="col1"></div>
      </div>
      <!-- FINE PRIMA TABELLA (ANIMALI) -->
      <div class="container">
        <div class="row" style="margin-top: 20px; margin-bottom: 20px">
          <div class="col-1"></div>
          <div class="col-10" style="border: solid black 3px"></div>
          <div class="col-1"></div>
        </div>
      </div>
      <!-- INIZIO SECONDA TABELLA (PIANTE) -->
      <div class="row">
        <div class="col1"></div>
        <div class="col10">
          <table
            class="table align-middle table-dark"
            id="render2"
            align="center"
            style="text-align: center; margin: 0"
          >
            <thead style="border-top: solid #64ff95 4px">
              <tr>
                <td>NOME</td>
                <td>FAMIGLIA</td>
                <td>IMMAGINE</td>
              </tr>
            </thead>
            <tbody id="piante">
            <% for(Pianta p : piante) {%>
					<tr>
						<td><%= p.getNome() %></td>
						<td><%= p.getFamiglia() %></td>
						<td><img alt="" src="<%= p.getImg() %>" width="100px"
							height="100px"></td>

					</tr>
					<%}%>
            </tbody>
          </table>
        </div>
        <div class="col1"></div>
      </div>
      <!-- FINE SECONDA TABELLA (PIANTE) -->
    </div>
  </body>
  <script>
  

    pag1();
    pag2();

    function pag1() {
      var rowsPerPage = 5;
      var table = document.getElementById("animali");

      for (var i = 0; i < animali.length; i++) {
        var row = document.createElement("tr");
        var nomeCell = document.createElement("td");
        var sessoCell = document.createElement("td");
        var classeCell = document.createElement("td");
        var imgCell = document.createElement("td");

        nomeCell.innerHTML = animali[i].nome;
        sessoCell.innerHTML = animali[i].sesso;
        classeCell.innerHTML = animali[i].classe;
        imgCell.innerHTML = animali[i].immagine;

        row.appendChild(nomeCell);
        row.appendChild(sessoCell);
        row.appendChild(classeCell);
        row.appendChild(imgCell);

        table.appendChild(row);

        if (i == animali.length - 1) {
          // We have reached the end of the data, so we need to add
          // additional empty rows if necessary.
          var remainingRows = rowsPerPage - (animali.length % rowsPerPage);
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
      }

      var table = document.getElementById("animali"),
        curPage = 1,
        numPerPage = 5,
        numRows = table.rows.length,
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
      paginationControls.className = "paginationControls2";
      document
        .getElementById("render1")
        .parentNode.appendChild(paginationControls);

      // Crea i bottoni "Precedente" e "Successivo"
      var prev = document.createElement("button");
      prev.id = "prev";
      prev.innerHTML = "Precedente";
      prev.onclick = function () {
        if (curPage > 1) {
          curPage--;
          displayRows();
        }
      };
      paginationControls.appendChild(prev);

      var next = document.createElement("button");
      next.id = "next";
      next.innerHTML = "Successivo";
      next.onclick = function () {
        if (curPage < numPages) {
          curPage++;
          displayRows();
        }
      };
      paginationControls.appendChild(next);

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
    }

    function pag2() {
      var rowsPerPage = 5;
      var table = document.getElementById("piante");

      for (var i = 0; i < piante.length; i++) {
        var row = document.createElement("tr");
        var nomeCell = document.createElement("td");
        var familyCell = document.createElement("td");
        var imgCell = document.createElement("td");

        nomeCell.innerHTML = piante[i].nomep;
        familyCell.innerHTML = piante[i].famigliap;
        imgCell.innerHTML = piante[i].immaginep;

        row.appendChild(nomeCell);
        row.appendChild(familyCell);
        row.appendChild(imgCell);

        table.appendChild(row);

        if (i == piante.length - 1) {
          // We have reached the end of the data, so we need to add
          // additional empty rows if necessary.
          var remainingRows = rowsPerPage - (piante.length % rowsPerPage);
          for (var j = 0; j < remainingRows; j++) {
            var emptyRow = document.createElement("tr");
            var emptyCell1 = document.createElement("td");
            var emptyCell2 = document.createElement("td");
            var emptyCell3 = document.createElement("td");

            emptyCell1.innerHTML = "-";
            emptyCell2.innerHTML = "-";
            emptyCell3.innerHTML = "-";

            emptyRow.appendChild(emptyCell1);
            emptyRow.appendChild(emptyCell2);
            emptyRow.appendChild(emptyCell3);
            table.appendChild(emptyRow);
          }
        }
      }

      var table = document.getElementById("piante"),
        curPage = 1,
        numPerPage = 5,
        numRows = table.rows.length,
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
        .getElementById("render2")
        .parentNode.appendChild(paginationControls);

      // Crea i bottoni "Precedente" e "Successivo"
      var prev = document.createElement("button");
      prev.id = "prev";
      prev.innerHTML = "Precedente";
      prev.onclick = function () {
        if (curPage > 1) {
          curPage--;
          displayRows();
        }
      };
      paginationControls.appendChild(prev);

      var next = document.createElement("button");
      next.id = "next";
      next.innerHTML = "Successivo";
      next.onclick = function () {
        if (curPage < numPages) {
          curPage++;
          displayRows();
        }
      };
      paginationControls.appendChild(next);

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
    }
  </script>
</html>
