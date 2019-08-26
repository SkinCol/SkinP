<%-- 
    Document   : Index
    Created on : 19/08/2019, 08:47:00 AM
    Author     : Alejandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <script src="https://kit.fontawesome.com/960e8817a0.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/mdb.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" type="image/x-ico" href="favicon.ico" />
        <title>SkinCol</title>
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
            <div class="container">

                <!-- Brand -->
                <a class="navbar-brand" href="index.jsp">
                    <img src="img/Logo Skin.png" style="width:150px" alt="">
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
                        <li class="nav-item">
                            <a class="nav-link" href="Dispositivos.jsp">Dispositivos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ControladorSeries?accion=1">Limitado</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">Series</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Personalizador</a>
                        </li>
                    </ul>

                    <!-- Right -->
                    <ul class="navbar-nav nav-flex-icons">
                        <li class="nav-item">
                            <a href="https://www.facebook.com" class="nav-link" target="_blank">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="https://twitter.com" class="nav-link" target="_blank">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="IncioSesion.html" class="nav-link border border-light rounded waves-effect waves-light" target="_blank">
                                <i class="fas fa-user"></i> Iniciar Sesión
                            </a>
                        </li>
                    </ul>

                </div>

            </div>
        </nav>
        <!-- Navbar -->

        <!--Carousel Wrapper-->
        <div id="carousel-home" class="carousel slide carousel-fade">

            <!--Indicators-->
            <ol class="carousel-indicators">
                <li data-target="#carousel-home" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-home" data-slide-to="1"></li>
                <li data-target="#carousel-home" data-slide-to="2"></li>
            </ol>
            <!--/.Indicators-->

            <!--Slides-->
            <div class="carousel-inner" role="listbox">
                <!--First slide-->
                <div class="carousel-item active">
                    <div class="view col-md-12 col-sm-12"
                         style="background-image: url('img/Limited/ColorShift-Limited.jpg'); background-repeat: no-repeat;
                         background-size: cover;
                         background-position: center center;
                         ">
                    </div>
                </div>
                <!--/First slide-->

                <!--Second slide-->
                <div class="carousel-item">
                    <div class="view"
                         style="background-image: url('img/Limited/Transparent-Limited.jpg'); background-repeat: no-repeat;
                         background-size: cover;
                         background-position: center center;
                         height: 100%;
                         ">
                    </div>
                </div>
                <!--/Second slide-->

                <!--Third slide-->
                <div class="carousel-item">
                    <div class="view"
                         style="background-image: url('img/Limited/Venom-limited.jpg'); background-repeat: no-repeat;
                         background-size: cover;
                         background-position: center center;
                         ">
                    </div>
                </div>
                <!--/Third slide-->
            </div>
            <!--/.Slides-->

            <!--Controles-->
            <a class="carousel-control-prev" href="#carousel-home" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Anterio</span>
            </a>
            <a class="carousel-control-next" href="#carousel-home" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Siguiente</span>
            </a>
            <!--/.Controles-->

        </div>
        <!--/.Carousel Wrapper-->

        <!--Footer-->
        <footer class="page-footer font-small unique-color-dark pt-4">

            <!-- Footer Elementos -->
            <div class="container">

                <!-- Llamar a la accion -->
                <ul class="list-unstyled list-inline text-center">
                    <li class="list-inline-item">
                        <h5>Con el Apoyo de: </h5>
                        <img src="img/Vivelab.png" style="width: 50%;" alt="">
                    </li>
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