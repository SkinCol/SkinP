<%-- 
    Document   : iPhone5Skins
    Created on : 5/09/2019, 10:15:56 AM
    Author     : alejandro
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
        <link href="css/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/css/mdb.min.css" rel="stylesheet" type="text/css" />
        <link href="css/css/style.min.css" rel="stylesheet" type="text/css" />
        <link href="css/css/responsiveslides.css" rel="stylesheet" type="text/css"/>
        <link href="css/css/estilos.css" rel="stylesheet" type="text/css" />
        <link href="css/css/demo.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" type="image/x-ico" href="favicon.ico" />
        <title>iPhone 5 - Skins</title>
        <script type="text/javascript">
            // You can also use "$(window).load(function() {"
            $(function () {

                // Slideshow 1
                $("#slider1").responsiveSlides({
                    maxwidth: 800,
                    speed: 800
                });

                // Slideshow 2
                $("#slider2").responsiveSlides({
                    auto: false,
                    pager: true,
                    speed: 300,
                    maxwidth: 540
                });

                // Slideshow 3
                $("#slider3").responsiveSlides({
                    manualControls: '#slider3-pager',
                    maxwidth: 540
                });

                // Slideshow 4
                $("#slider4").responsiveSlides({
                    auto: false,
                    pager: false,
                    nav: true,
                    speed: 500,
                    namespace: "callbacks",
                    before: function () {
                        $('.events').append("<li>before event fired.</li>");
                    },
                    after: function () {
                        $('.events').append("<li>after event fired.</li>");
                    }
                });

            });
        </script>
    </head>

    <body>
        <!-- Navbar -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar bg-dark">
            <div class="container">

                <!-- Brand -->
                <a class="navbar-brand" href="index.jsp">
                    <img src="css/img/Logo Skin.png" style="width:150px" alt="">
                </a>

                <!-- Collapse -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Links -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <!-- Left -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link h5" href="Dispositivos.jsp"><i class="fas fa-mobile-alt"></i> Dispositivos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link h5" href="ControllerLimitado?accion=1"><i class="fab fa-artstation"></i> Limitado</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link h5" href="#"><i class="fas fa-bezier-curve"></i> Personalizador</a>
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

        <!--Main layout-->
        <main class="mt-5 pt-4">
            <!-- iPhone -->
            <div class="container">

                <h1 class="my-5 display-4 text-left">iPhone 5</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://www.slickwraps.com/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/s/w/sw-aip5s-ds-3.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Personaliza <i class="fas fa-bezier-curve"></i></a>
                                </h5>
                            </div>
                        </div>
                    </div>

                    <!-- Carbon Series -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="ca" items="${carbon}">
                                        <li>
                                            <a href="ControllerSkiniPhone5?accion=carbon">
                                                <img style="width: 300px; height: 300px;" src="${ca.getImagen()}" alt="${ca.getNombre()}">
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Carbon Series</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- Carbon Series -->
                    
                    <!-- Wood Series -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="w" items="${wood}">
                                        <li>
                                            <a href="ControllerSkiniPhone5?accion=wood">
                                                <img style="width: 300px; height: 300px;" src="${w.getImagen()}" alt="${w.getNombre()}">
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Wood Series</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- Wood Series -->
                    
                    <!-- Metal Series -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="me" items="${metal}">
                                        <li>
                                            <a href="ControllerSkiniPhone5?accion=metal">
                                                <img style="width: 300px; height: 300px;" src="${me.getImagen()}" alt="${me.getNombre()}">
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Metal Series</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- Metal Series -->
                    
                    <!-- Color Series -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="co" items="${color}">
                                        <li>
                                            <a href="ControllerSkiniPhone5?accion=color">
                                                <img style="width: 300px; height: 300px;" src="${co.getImagen()}" alt="${co.getNombre()}">
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Color Series</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- Color Series -->
                    
                    <!-- Board Series -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="bo" items="${board}">
                                        <li>
                                            <a href="ControllerSkiniPhone5?accion=board">
                                                <img style="width: 300px; height: 300px;" src="${bo.getImagen()}" alt="${bo.getNombre()}">
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Board Series</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- Board Series -->
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
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script src="css/js/responsiveslides.min.js" type="text/javascript"></script>


        <script>
            $(function () {
                $(".rslides").responsiveSlides();
            });
        </script>
        <!-- Initializations -->
        <script type="text/javascript">
            // Animations initialization
            new WOW().init();
        </script>

    </body>

</html>
