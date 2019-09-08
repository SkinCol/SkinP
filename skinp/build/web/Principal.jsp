<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>SkinCol</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/mdb.min.css">
        <link rel="stylesheet" href="css/style.min.css">
        <link rel="stylesheet" href="css/estilos.css" />
        <link rel="shortcut icon" type="" href="favicon.ico" />
    </head>


    <body>
        <!-- Navbar -->
    <header>
        <!-- Navbar -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
            <div class="container-fluid">
                <!-- Brand -->
                <a class="navbar-brand waves-effect" href="index.htm" target="_blank">
                    <img src="img/Logo Skin Black.png"  style="width:150px" alt="" />
                </a>

                <!-- Collapse -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Links -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left -->

                    <div class="dropdown mr-auto">
                        <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenu4" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                            Dropdown
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenu4">
                            <a class="dropdown-item" href="DispositivoController?accion=listar">Dispositivos</a>
                            <a class="dropdown-item" href="SkinController?listar=listar">Skins</a>
                            <a class="dropdown-item" href="CategoriaController?accion=listar">Categorias</a>
                            <div class="dropdown-divider"></div> 
                            <a class="dropdown-item" href="indexFactura.htm">Facturas</a>
                            <a class="dropdown-item" href="indexSolicitud.htm">Solicitudes</a>
                            <a class="dropdown-item" href="indexEnvio.htm">Envios</a>
                            <a class="dropdown-item" href="indexUsuario.htm">Usuario</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="FacInsumosController?accion=listar">Facturas Insumos</a>
                            <a class="dropdown-item" href="ProveedorController?accion=listar">Proveedores</a>
                            <a class="dropdown-item" href="MaterialController?accion=listar">Materiales</a>
                            <a class="dropdown-item" href="DeptoController?accion=listar">Departamento</a>
                            <div class="dropdown-divider"></div>
                        </div>

                    </div>

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
                            <div class="btn-group" role="group" aria-label="Basic example">
                                <a href="IncioSesion.html" class="btn btn-white rounded" target="_blank">
                                    <i class="fas fa-user"></i> ${usuario.getNombres()}
                                </a>
                                <form action="Validacion" method="POST">
                                    <button name="accion" class="btn btn-danger text-white rounded waves-effect">
                                        <i class="fas fa-sign-out-alt text-white mb-1 mt-1"></i>
                                    </button>
                                </form>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Navbar -->
    </header>


    <!--/.Carousel Wrapper-->

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

