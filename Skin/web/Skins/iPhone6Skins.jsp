<%-- 
    Document   : iPhone6Skins
    Created on : 03-sep-2019, 22:25:52
    Author     : Alejandro
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <script src="https://kit.fontawesome.com/960e8817a0.js"></script>
        <link href="css/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/css/mdb.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/css/style.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/css/estilos.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" type="image/x-ico" href="favicon.ico" />
        <title>Dispositivos - Telefonos</title>
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
            <div class="container">

                <!-- Brand -->
                <a class="navbar-brand" href="index.jsp">
                    <img src="css/img/Logo Skin.png" style="width:150px" alt="">
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
                            <a class="nav-link" href="ControllerLimitado?accion=1">Limitado</a>
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
            <!-- iPhone -->
            <div class="container">

                <h1 class="my-5 display-4 text-left">iPhone 6</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">
                    <script type="text/javascript">
                        var i = 0;
                        var imagenes = [];
                        var time = 300;
                    </script>
                    <ul id="products_list" class="products-grid">
                        <li class="item">
                            <div>
                                <div class="slideshow-container">

                                    <!-- Full-width images with number and caption text -->
                                    <div class="mySlides fade">
                                        <div class="numbertext">1 / 3</div>
                                        <img src="img1.jpg" style="width:100%">
                                        <div class="text">Caption Text</div>
                                    </div>

                                    <div class="mySlides fade">
                                        <div class="numbertext">2 / 3</div>
                                        <img src="img2.jpg" style="width:100%">
                                        <div class="text">Caption Two</div>
                                    </div>

                                    <div class="mySlides fade">
                                        <div class="numbertext">3 / 3</div>
                                        <img src="img3.jpg" style="width:100%">
                                        <div class="text">Caption Three</div>
                                    </div>

                                    <!-- Next and previous buttons -->
                                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                                    <a class="next" onclick="plusSlides(1)">&#10095;</a>
                                </div>
                                <br>

                                <!-- The dots/circles -->
                                <div style="text-align:center">
                                    <span class="dot" onclick="currentSlide(1)"></span> 
                                    <span class="dot" onclick="currentSlide(2)"></span> 
                                    <span class="dot" onclick="currentSlide(3)"></span> 
                                </div>
                            </div>
                        </li>
                    </ul>

                </div>
                <!--Grid row-->

            </div>
            <!-- iPhone -->
        </main>
        <!--Main layout-->

        <!--Footer-->
        <footer class="page-footer font-small unique-color-dark pt-4">

            <!-- Footer Elementos -->
            <div class="container">

                <!-- Llamar a la accion -->
                <ul class="list-unstyled list-inline text-center">
                    <li class="list-inline-item">
                        <h5>Con el Apoyo de: </h5>
                        <img src="css/img/Vivelab.png" style="width: 50%;" alt="">
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
        <script src="css/js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- Bootstrap tooltips -->
        <script src="css/js/popper.min.js" type="text/javascript"></script>
        <!-- Bootstrap core JavaScript -->
        <script src="css/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- MDB core JavaScript -->
        <script src="css/js/mdb.min.js" type="text/javascript"></script>
        <!-- Initializations -->
        <script type="text/javascript">
                                        // Animations initialization
                                        new WOW().init();
        </script>

    </body>
</html>
