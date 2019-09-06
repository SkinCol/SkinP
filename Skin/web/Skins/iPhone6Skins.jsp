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
        <link href="css/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/css/mdb.min.css" rel="stylesheet" type="text/css" />
        <link href="css/css/style.min.css" rel="stylesheet" type="text/css" />
        <link href="css/css/responsiveslides.css" rel="stylesheet" type="text/css"/>
        <link href="css/css/estilos.css" rel="stylesheet" type="text/css" />
        <link href="css/css/demo.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" type="image/x-ico" href="favicon.ico" />
        <title>iPhone 6 - Skins</title>
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
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
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
                            <a class="nav-link" href="Dispositivos.jsp"><i class="fas fa-mobile-alt"></i> Dispositivos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ControllerLimitado?accion=1"><i class="fab fa-artstation"></i> Limitado</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fas fa-bezier-curve"></i> Personalizador</a>
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
            <!-- Skins Series -->
            <div class="container">

                <h1 class="my-5 display-4 text-left">iPhone 6</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">
                    <!-- Cunstom -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li>
                                        <a>
                                            <img style="width: 300px; height: 300px;"src="https://www.slickwraps.com/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_6_trio_desidner_southwestern_5.jpg">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Personaliza <i class="fas fa-bezier-curve"></i></a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    <!-- Cunstom -->

                    <!-- Carbon Series -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="car" items="${carbon}">
                                        <li>
                                            <a>
                                                <img style="width: 300px; height: 300px;" src="${car.getImagen()}" alt="${car.getNombre()}">
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
                                            <a>
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
                                    <c:forEach var="m" items="${metal}">
                                        <li>
                                            <a>
                                                <img style="width: 300px; height: 300px;" src="${m.getImagen()}" alt="${m.getNombre()}">
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

                    <!-- Piel Series -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="t" items="${leather}">
                                        <li>
                                            <a>
                                                <img style="width: 300px; height: 300px;" src="${t.getImagen()}" alt="${t.getNombre()}">
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Piel Series</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- Piel Series -->

                    <!-- Color Series -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="co" items="${color}">
                                        <li>
                                            <a>
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

                    <!-- Glitz Series -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="g" items="${glitz}">
                                        <li>
                                            <a>
                                                <img style="width: 300px; height: 300px;" src="${g.getImagen()}" alt="${g.getNombre()}">
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Glitz Series</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- Glitz Series -->

                    <!-- Camo Series -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="ca" items="${color}">
                                        <li>
                                            <a>
                                                <img style="width: 300px; height: 300px;" src="${ca.getImagen()}" alt="${ca.getNombre()}">
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Camo Series</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- Camo Series -->

                    <!-- Hemp Series -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="he" items="${hemp}">
                                        <li>
                                            <a>
                                                <img style="width: 300px; height: 300px;" src="${he.getImagen()}" alt="${he.getNombre()}">
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Hemp Series</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- Hemp Series -->

                    <!-- Alcantara Series -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="al" items="${alcantara}">
                                        <li>
                                            <a>
                                                <img style="width: 300px; height: 300px;" src="${al.getImagen()}" alt="${al.getNombre()}">
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Alcantara Series</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- Alcantara Series -->

                    <!-- Natural Series -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="na" items="${natural}">
                                        <li>
                                            <a>
                                                <img style="width: 300px; height: 300px;" src="${na.getImagen()}" alt="${na.getNombre()}">
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Natural Series</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- Natural Series -->

                    <!-- Edicion Aniversario -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="an" items="${aniversario}">
                                        <li>
                                            <a>
                                                <img style="width: 300px; height: 300px;" src="${an.getImagen()}" alt="${an.getNombre()}">
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Edicion Aniversario</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- Edicion Aniversario -->

                    <!-- Apple Retro -->
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <c:forEach var="re" items="${retro}">
                                        <li>
                                            <a>
                                                <img style="width: 300px; height: 300px;" src="${re.getImagen()}" alt="${re.getNombre()}">
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Apple Retro</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <!-- Apple Retro -->

                    <!--Grid row-->
                </div>
                <!-- Skins Series -->

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
        <!-- Initializations -->
        <script>
            $(function () {
                $(".rslides").responsiveSlides();
            });
        </script>
        <script type="text/javascript">
            // Animations initialization
            new WOW().init();
        </script>

    </body>

</html>