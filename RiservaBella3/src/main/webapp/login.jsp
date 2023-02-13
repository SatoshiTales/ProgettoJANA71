<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% boolean errorLogin = "OK".equalsIgnoreCase((String) request.getAttribute("errorLogin")); %>   
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>


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

 #divRegistrazione{
  box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset; }

  #divLogin{
    box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset; }
  
 

a{
  text-decoration: none;
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


    <title>Login</title>
</head>	

<body>

    <div class="container">

        <!--logo riserva bella-->
        <div class="row">
            <div class="col-4"></div>

            <div class="col-4" style="text-align: center; margin-top: 10px;">
                <img id="img" src="img/leone-1.png" alt="" style="height: 200px; width: 200px;">
            </div>

            <!------------------------------------------------------>

            <div class="container" style="margin-top: 50px;">
                <div class="row">
                    <div class="col-3"></div>

                    <div id="divLogin" class="col-6" style="padding: 30px; border-radius: 5px;" align="center">
						<% if(errorLogin) { %>
							<div style="border: solid 1px; border-color: red;">
						        Invalid Username/Password
						    </div>
					    <% } %>
                        <!--Questo e' il div che contiene il form -->

                        <form class="row g-3" method="post" action="/user/gologin">


                            <!--input username-->
                            <div class="row">
                                <div class="col-3"></div>
                                <div class="col-md-6">
                                    <div class="form-outline">
                                        <input style="border: 2px solid #216b39;" type="text" class="form-control"
                                            name="username" id="validationDefault02" value="" required />
                                        <label for="validationDefault02" class="form-label">Username</label>
                                    </div>
                                </div>
                            </div>



                            <!--input password-->
                            <div class="row">
                                <div class="col-3"></div>
                                <div class="col-md-6">
                                    <div class="form-outline">
                                        <input style="border: 2px solid #216b39;" type="text" class="form-control"
                                            name="pass" id="validationDefault02" value="" required />
                                        <label for="validationDefault02" class="form-label">Password</label>
                                    </div>
                                </div>
                            </div>


                            <!--input accedi-->
                            <div class="row">
                                <div class="col-2"></div>
                                <div class="col-8">
                                
                                    <button type="submit">Accedi</button>
                                </div>
                            </div>


                            <!--non ai un account-->
                            <div class="row">
                                <div class="col-4"></div>
                                <div class="col-4" style="text-align: center; margin-top: 20px;">
                                    <p>Non hai un account?</p>
                                </div>
                            </div>


                            <!--href registrati-->
                            <div class="row">
                                <div class="col-4"></div>
                                <div class="col-4" style="text-align: center;"><a
                                        href="signin">Registrati</a></div>
                            </div>



                        </form> <!--chiusura form-->


                    </div> <!--chiusura div contenente il form-->
                </div>
            </div>

        </div>
    </div> <!--chiusura div container principale-->


</body>
</html>