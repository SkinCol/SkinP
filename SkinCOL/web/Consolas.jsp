<%-- 
    Document   : Consolas
    Created on : 16/08/2019, 12:22:56 PM
    Author     : vivelabtunja25
--%>

<<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/960e8817a0.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/mdb.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
            <div class="container">

                <!-- Brand -->
                <a class="navbar-brand" href="home.html" target="_blank">
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
                            <a class="nav-link" href="">Dispositivos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" target="_blank">Limitado</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" target="_blank">Series</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" target="_blank">Personalizador</a>
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
                            <a href="IncioSesion.html" class="nav-link border border-light rounded waves-effect waves-light"
                               target="_blank">
                                <i class="fas fa-user"></i> Iniciar Sesión
                            </a>
                        </li>
                    </ul>

                </div>

            </div>
        </nav>

        <!--Main layout-->
        <main class="mt-5 pt-4">
            <div class="container">

                <h3 class="my-5 h3 text-center">Dispositivos</h3>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">

                    <!--Grid column 1-->
                    <div class="col-lg-3 col-md-6 mb-4">

                        <!--Card-->
                        <div class="card">

                            <!--Card content-->
                            <div class="card-body">

                                <a href="dispositivos - phone.html">
                                    <img src="img/apple-iphone8plus-gold-1-3x.jpg" style="height: 200px;" alt="Foto iPhone" class="mb-2">
                                    <h4 class="entry-title p-1">
                                        <a>Telefonos</a>
                                    </h4>
                                </a>

                            </div>

                        </div>
                        <!--/.Card-->

                    </div>
                    <!--Grid column 1-->

                    <!--Grid column 2-->
                    <div class="col-lg-3 col-md-6 mb-4">

                        <!--Card-->
                        <div class="card">

                            <!--Card content-->
                            <div class="card-body">
                                <a href="dispositivos - tablets.html">
                                    <img src="img/apple_mk9n2ll_a_128gb_ipad_mini_4_1185478.jpg" style="height: 200px;" alt="Foto ipad" class="mb-2">
                                    <h4 class="entry-title p-1">
                                        <a>Tabletas</a>
                                    </h4>
                                </a>
                            </div>

                        </div>
                        <!--/.Card-->

                    </div>
                    <!--Grid column 2-->

                    <!--Grid column 3-->
                    <div class="col-lg-3 col-md-6 mb-4">

                        <!--Card-->
                        <div class="card">

                            <!--Card content-->
                            <div class="card-body">
                                <a href="dispositivos - computers.html">
                                    <img src="img/macbookproret13.png" style="height: 200px;" alt="Foto mackbook" class="mb-2">
                                    <h4 class="entry-title p-1">
                                        <a>Portatiles</a>
                                    </h4>
                                </a>
                            </div>

                        </div>
                        <!--/.Card-->

                    </div>
                    <!--Grid column 3-->

                    <!--Grid column 4-->
                    <div class="col-lg-3 col-md-6 mb-4">

                        <!--Card-->
                        <div class="card">

                            <!--Card content-->
                            <div class="card-body">
                                <a href="dispositivos - gaming.html">
                                    <img src="img/11558330.jpg" style="height: 200px;" alt="Foto XboxOne" class="mb-2">
                                    <h4 class="entry-title p-1">
                                        <a>Consolas</a>
                                    </h4>
                                </a>
                            </div>

                        </div>
                        <!--/.Card-->

                    </div>
                    <!--Grid column 4-->

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