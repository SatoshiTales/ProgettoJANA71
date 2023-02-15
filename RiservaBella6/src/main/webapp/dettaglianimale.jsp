<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.generation.RiservaBellaJANA71.RiservaBella.entities.Animale"%>
<%
Animale a = (Animale) request.getAttribute("animale");
%>
<!-- a.getImg() 
		 	<a href="/dettaglimodificaanimale?id= a.getId() ">MODIFICA</a>  -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gestione Amm. Animali</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>

   
    <script>
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

    <style>

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

#X{
  width: 30px;
  height: 30px;
  font-size: 15px;
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

.updatename {
  border: solid #012e0f;
  border-radius: 10px;
  z-index: 1;
  background-color: rgb(202, 202, 202);
  top: 50%;
  left: 50%;
  width: 26em;
  height: 12em;
  margin-top: -9em;
  margin-left: -15em;
  position: absolute;
  box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset; 
  background: rgb(144,237,139);
  background: radial-gradient(circle, rgba(144,237,139,1) 41%, rgba(33,107,57,1) 93%); 
}

.updateimage {
  border: solid #012e0f;
  border-radius: 10px;
  z-index: 1;
  background-color: rgb(202, 202, 202);
  top: 50%;
  left: 50%;
  width: 26em;
  height: 12em;
  margin-top: -9em;
  margin-left: -15em;
  position: absolute;
  box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset; 
  background: rgb(144,237,139);
  background: radial-gradient(circle, rgba(144,237,139,1) 41%, rgba(33,107,57,1) 93%); 
}

.updatedescr {
  border: solid #012e0f;
  border-radius: 10px;
  z-index: 1;
  background-color: rgb(202, 202, 202);
  top: 50%;
  left: 50%;
  width: 26em;
  height: 12em;
  margin-top: -9em;
  margin-left: -15em;
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
  

 



.rotate-scale-up:hover{
  -webkit-animation: rotate-scale-up 0.65s linear both;
  animation: rotate-scale-up 0.65s linear both;
}

  

/* ----------------------------------------------
 * Generated by Animista on 2023-2-14 17:27:50
 * Licensed under FreeBSD License.
 * See http://animista.net/license for more info. 
 * w: http://animista.net/, t: @cssanimista
 * ---------------------------------------------- */

/**
 * ----------------------------------------
 * animation rotate-scale-up
 * ----------------------------------------
 */
 @-webkit-keyframes rotate-scale-up {
  0% {
    -webkit-transform: scale(1) rotateZ(0);
            transform: scale(1) rotateZ(0);
  }
  50% {
    -webkit-transform: scale(2) rotateZ(180deg);
            transform: scale(2) rotateZ(180deg);
  }
  100% {
    -webkit-transform: scale(1) rotateZ(360deg);
            transform: scale(1) rotateZ(360deg);
  }
}
@keyframes rotate-scale-up {
  0% {
    -webkit-transform: scale(1) rotateZ(0);
            transform: scale(1) rotateZ(0);
  }
  50% {
    -webkit-transform: scale(2) rotateZ(180deg);
            transform: scale(2) rotateZ(180deg);
  }
  100% {
    -webkit-transform: scale(1) rotateZ(360deg);
            transform: scale(1) rotateZ(360deg);
  }
}
    </style>

</head>

<body>

    <div class="container">

        <!--logo della pagina-->
        <div class="row">
            <div class="col-4"></div>

            <div class="col-4" style="text-align: center; margin-top: 10px;">
               
                  <a href="/homeAdm.html">
                    <img  class="rotate-scale-up" id="img" src="img/leone-1.png" alt="" style="height: 200px; width: 200px;">
                  </a> 
            
            </div>

            <div class="col-4"></div>
        </div>
        <!------------------------------------------------->


        <!-- titolo della pagina-->
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6" style="text-align: center;">
                <h1 id="nomeanimale">GESTIONE ANIMALE</h1>
            </div>
        </div>


        <!--div vuoto per creare linea di separazione-->
        <div class="row">
            <div class="col-1"></div>
            <div class="col-10" style="border: solid black 2px"></div>
            <div class="col-1"></div>
        </div>


        <!--nome animale + button modifica nome-->
        <div class="row" style="margin-top: 10px;">
            <div class="col-1"></div>
            <div class="col-2">
                <a href="/elencoanimali"><button class="bottonex">Indietro</button></a>
            </div>
            <div class="col-6" style="text-align: center;">
                <h3 class="gestionea">
                    <%=a.getNome()%>
                </h3>
            </div>
            <div class="col-2">
                <button class="bottoney" onclick="nohide1()">Modifica</button>
            </div>
        </div>


        <!-- immagine animale-->
        <div class="row" style="margin-top: 20px;">
            <div class="col-4"></div>
            <div class="col-4">
                <img class="imggestione" src="<%=a.getImg()%>" width="420px" height="355px" />
            </div>
        </div>


        <!--button modifica immagine-->
        <div class="row" style="margin-top: 20px;">
            <div class="col-4"></div>
            <div class="col-4">
                <button class="bottonex" onclick="nohide2()">Modifica
                    Immagine</button>
            </div>

        </div>


        <!--box descrizione-->
        <div class="row" style="margin-top: 20px;">
            <div class="col-2"></div>
            <div class="col-8" style="border: solid 1px black; word-break: break-all;">
                <p class="pgestione">
                    <%=a.getDescr()%>
                </p>
            </div>
        </div>


        <!--button modifica descrizione-->
        <div class="row" style="margin-top: 20px;">
            <div class="col-4"></div>
            <div class="col-4">
                <button class="bottonex" onclick="nohide3()">Modifica
                    Descrizione</button>
            </div>
            <div class="col-3"></div>
        </div>




        <div class="updatename" id="XX" hidden style="height: 250px; width: 500px;">
            <div class="row">
                <div class="col-2">
                    <button id="X" class="upback" onclick="hide()">X</button>
                </div>
            </div>



            <div class="row">
                <div class="col-2"></div>
                <div class="col-8" style="text-align: center;">
                    <h5>MODIFICA NOME</h5>
                </div>
            </div>

            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">

                    <form action="/modificaanimale" method="get">
                        <input type="text" name="id" value="<%=a.getId()%>" readonly hidden="true"><br>
                        <input type="text" name="nome" value="<%=a.getNome()%>"><br>
                        <input type="text" name="sesso" value="<%=a.getSesso()%>" readonly hidden="true"><br>
                        <input type="text" name="classe" value="<%=a.getClasse()%>" readonly hidden="true"><br>
                        <input type="text" name="descr" value="<%=a.getDescr()%>" readonly hidden="true"><br>
                        <input type="submit" value="AGGIORNA">
                    </form>

                </div>

            </div>
        </div>


        <div class="updateimage" id="XY" hidden="true">

            <div class="row">
                <div class="col-2">
                    <button id="X" class="upback" onclick="hide()">X</button>
                </div>
            </div>

            <div class="row">
                <div class="col-2"></div>
                <div class="col-8" style="text-align: center;">
                    <h5>MODIFICA IMMAGINE</h5>
                </div>
            </div>



            <form method="post" action="uploadImageA" enctype="multipart/form-data">
                <input type="text" name="id" value="<%=a.getId()%>" readonly hidden="true"><br>
                <input id="inputFile" type="file" name="image" value="<%=a.getImg()%>" style="margin-left: 10px;" />
                <input id="upload" type="submit" value="Upload" style="width: 100px;" />
            </form>


        </div>



        <div class="updatedescr" id="YY" hidden style="height: 470px; width: 470px; padding: 20px;">

            <div class="row">
                <div class="col-2">
                    <button id="X" class="upback" onclick="hide()">X</button>
                </div>
            </div>

            <div class="row">
                <div class="col-2"></div>
                <div class="col-8" style="text-align: center;">
                    <h5>
                        MODIFICA DESCRIZIONE
                    </h5>
                </div>
            </div>


            <form action="/modificaanimale" method="get">
                DESCRIZIONE 
              
                <input type="text" name="id" value="<%=a.getId()%>" readonly hidden="true"><br>
                <input type="text" name="nome" value="<%=a.getNome()%>" readonly hidden="true"><br>
                <input type="text" name="sesso" value="<%=a.getSesso()%>" readonly hidden="true"><br>
                <input type="text" name="classe" value="<%=a.getClasse()%>" readonly hidden="true"><br>
                  <textarea name="descr" id="" cols="50" rows="8"  value="<%=a.getDescr()%>" ></textarea>
                <input type="submit" value="AGGIORNA">
            </form>


        </div>
    </div>

</body>

</html>