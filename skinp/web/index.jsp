<%-- 
    Document   : login
    Created on : 18/08/2019, 02:36:10 PM
    Author     : angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Inicio de sesión del cliente</title>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" />
  
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
  <link href="css/style.min.css" rel="stylesheet" type="text/css"/>
  <link href="css/mdb.min.css" rel="stylesheet" type="text/css"/>
  <link href="css/InicioSesion.css" rel="stylesheet" type="text/css"/>

  <link rel="shortcut icon" type="image/x-ico" href="favicon.ico"  />
</head>

<body class="view">
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
    <div class="container">
      <a class="navbar-brand" href="home.html" target="_blank">
        <img src="img/Logo Skin.png" style="width:150px" alt="" />
      </a>

      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

    </div>
  </nav>

  <div class="container">
    <div class="mask rgba-gradient align-items-center">
      <div class="row mb-3 fooro">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
            <div class="card-body">
              <h1 class="display-4 text-center text-white mb-4">Inicio de Sesión</h1>
              <form class="form-signin" action="Validacion" method="POST">
                <div class="form-label-group mt-0">
                  <input type="email" id="inputEmail" class="form-control" placeholder="Email address"  name="Email" 
                    autofocus >
                  <label for="inputEmail">Correo Electronico</label>
                </div>

                <div class="form-label-group">
                  <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="Contrasena" >
                  <label for="inputPassword">Contraseña</label>
                </div>

                <div class="custom-control custom-checkbox mb-3">
                  <input type="checkbox" class="custom-control-input" id="customCheck1">
                </div>
                <div class="btn-group col-12" role="group">
                    <button type="submit" name="accion" value="Ingresar" class="btn btn-lg btn-primary btn-block"  >Iniciar Sesión</button>
                    
                </div>
                <hr class="my-4 text-white">
                <a class="btn btn-block btn-white" href="olvido.html">¿Olvidaste tu contraseña?</a>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>



  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
  <!-- Bootstrap tooltips -->
  <script src="js/popper.min.js" type="text/javascript"></script>
  <!-- Bootstrap core JavaScript -->
  <script src="js/bootstrap.min.js" type="text/javascript"></script>
  <!-- MDB core JavaScript -->
  <script src="js/mdb.min.js" type="text/javascript"></script>
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
    new WOW().init();
  </script>
</body>

</html>
