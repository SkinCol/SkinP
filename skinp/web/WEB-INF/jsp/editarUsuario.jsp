<%-- 
    Document   : editarUsuario
    Created on : 18/07/2019, 02:21:00 PM
    Author     : angel
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>SkinCol | Dashboard</title>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" />
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <link rel="stylesheet" href="css/mdb.min.css" />
  <link rel="stylesheet" href="css/style.min.css" />
  <!--<link rel="stylesheet" href="css/estilos.css" />-->
  <link rel="shortcut icon" type="" href="favicon.ico" />
</head>

<body>
  <header>
    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
      <div class="container-fluid">
        <!-- Brand -->
        <a class="navbar-brand waves-effect" href="home.html" target="_blank">
          <img src="img/Logo Skin Black.png" style="width:150px" alt="" />
        </a>

        <!-- Collapse -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- Left -->
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link waves-effect" href="#">Dashboard</a>
            </li>
            <li class="nav-item">
              <a class="nav-link waves-effect" href="#" target="_blank">Perfil</a>
            </li>
            <li class="nav-item">
              <a class="nav-link waves-effect" href="#" target="_blank">Tablas</a>
            </li>
            <li class="nav-item">
              <a class="nav-link waves-effect" href="#" target="_blank">Ordenes</a>
            </li>
          </ul>

          <!-- Right -->
          <ul class="navbar-nav nav-flex-icons">
            <li class="nav-item">
              <a href="https://www.facebook.com" class="nav-link waves-effect" target="_blank">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="nav-item">
              <a href="https://twitter.com" class="nav-link waves-effect" target="_blank">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="nav-item">
              <a href="IncioSesion.html" class="nav-link border border-light rounded waves-effect" target="_blank">
                <i class="fas fa-user"></i>Usuario
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Navbar -->
  </header>

  <!--Main layout-->
  <main class="pt-5 mx-lg-5">
    <div class="container-fluid mt-5">
      <!-- Heading -->
      <div class="card mb-4 wow fadeIn">
        <!--Card content-->
        <div class="card-body d-sm-flex justify-content-between">
          <h4 class="mb-2 mb-sm-0 pt-1">
            <a href="index.html" target="_blank">SkinCol</a>
            <span>/</span>
            <span>Usuario</span>
          </h4>

          <form class="d-flex justify-content-center">
            <!-- Default input -->
            <input type="search" placeholder="Buscar" aria-label="Search" class="form-control" />
            <button class="btn btn-primary btn-sm my-0 p" type="submit">
              <i class="fas fa-search"></i>
            </button>
          </form>
        </div>
      </div>
      <!-- Heading -->

      <!--Grid row-->
      <div class="row wow fadeIn">
        <!--Grid column-->
        <div class="col-md-12 mb-4">
          <!--Card-->
          <div class="card">
            <!--Card content-->
            <div class="card-body">
              <!-- Form -->
              <div class="panel-body" id="formularioregistros">
                <div class="card">

                  <h5 class="card-header info-color white-text text-center py-4">
                    <strong>Editar Usuario</strong>
                  </h5>

                  <div class="card-body px-lg-5 pt-5">

                    <form class="mb-3 pb-1" name="formulario" id="formulario" method="POST">
                        

                      <label for="select">Ciudad</label>                     
                      <select class="browser-default custom-select mb-4" name="IdCiudad" id="IdCiudad">
                            <c:forEach var="dato" items="${listaC}">
                                <c:if test="${dato.IdUser != lista[0].IdCiudad}">
                                    <option value="${dato.IdCiudad}">
                                        ${dato.Nombre}
                                    </option>
                                </c:if>
                                    <c:if test="${dato.IdUser == lista[0].IdCiudad}">
                                        <option value="${dato.IdCiudad}" selected="true">
                                        ${dato.Nombre}
                                        </option>                                                                          
                                </c:if>
                            </c:forEach>
                        </select>
                        
                        <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="defaultUnchecked">
                        <label class="custom-control-label" for="defaultUnchecked">Tipo</label>
                      </div>
                                        
                       <label for="nombre">Nombres</label>
                       <input type="text" name="Nombres" id="nombre" class="form-control" placeholder="" value="${lista[0].Nombres}">
                        
                        <label for="nombre">Apellidos</label>
                        <input type="text" name="Apellidos" id="nombre" class="form-control" placeholder="" value="${lista[0].Apellidos}">
                        
                        <label for="nombre">Documento</label>
                        <input type="text" name="Documento" id="nombre" class="form-control" placeholder="" value="${lista[0].Documento}">
                        
                        <label for="nombre">Telefono</label>
                        <input type="text" name="Telefono" id="nombre" class="form-control" placeholder="" value="${lista[0].Telefono}">
                        
                        <label for="nombre">Direccion</label>
                        <input type="text" name="Direccion" id="nombre" class="form-control" placeholder="" value="${lista[0].Direccion}">
                        
                        <label for="nombre">Email</label>
                        <input type="Email" name="Email" id="nombre" class="form-control" placeholder="" value="${lista[0].Email}">
                        
                        <label for="nombre">Contraseña</label>
                        <input type="password" name="Contrasena" id="nombre" class="form-control" placeholder="" value="${lista[0].Contrasena}">



                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="defaultUnchecked">
                        <label class="custom-control-label" for="defaultUnchecked">Estado</label>
                      </div>

                      <hr>
                      <button class="btn btn-outline-success btn-block" type="submit"><i
                          class="fa fa-save"></i> Guardar</button>
                      <a class="btn btn-outline-danger btn-block" href="indexUsuario.html"><i
                          class="fa fa-arrow-alt-circle-left"></i> Cancelar</a>

                    </form>
                  </div>
                </div>
              </div>
            </div>
            <!-- Form -->
          </div>
        </div>
        <!--/.Card-->
      </div>
      <!--Grid column-->
    </div>
    <!--Grid row-->
    </div>
  </main>
  <!--Main layout-->

  <!--Footer-->
  <footer class="page-footer font-small unique-color-dark pt-4">
    <!-- Footer Elementos -->
    <div class="container">
      <!-- Llamar a la accion -->
      <ul class="list-unstyled list-inline text-center py-2">
        <li class="list-inline-item">
          <h5 class="mb-1">Regístrate Gratis</h5>
        </li>
        <li class="list-inline-item">
          <a href="#!" class="btn btn-outline-white btn-rounded">Regístrate!</a>
        </li>
      </ul>
      <!-- Llamar a la accion -->
    </div>
    <!-- Footer Elementos -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">
      <span>Made in Colombia</span> | © 2019 Copyright: SkinCol
    </div>
    <!-- Copyright -->
  </footer>
  <!--/.Footer-->
  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
    new WOW().init();
  </script>
</body>

</html>
