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

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571254/Series/iPhone/iPhone%205/Carbon%20Series/sw-aip5-cfwht-2_1_tffp6a.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571253/Series/iPhone/iPhone%205/Carbon%20Series/sw-aip5-cfpur-2_1_ux2bs6.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571253/Series/iPhone/iPhone%205/Carbon%20Series/sw-aip5-cfslv-2_1_ewteda.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571253/Series/iPhone/iPhone%205/Carbon%20Series/sw-aip5-cfred-2_mpaqh9.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571253/Series/iPhone/iPhone%205/Carbon%20Series/sw-aip5-cfpink-2_1_bw66vc.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571253/Series/iPhone/iPhone%205/Carbon%20Series/sw-aip5-cflime-2_2_ax8fnv.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571253/Series/iPhone/iPhone%205/Carbon%20Series/sw-aip5-cforg-2_1_ecdict.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571252/Series/iPhone/iPhone%205/Carbon%20Series/sw-aip5-cfblue-2_1_vohqd6.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571252/Series/iPhone/iPhone%205/Carbon%20Series/sw-aip5-cfgun-2_1_wdhfik.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571252/Series/iPhone/iPhone%205/Carbon%20Series/sw-aip5-cfblk-2_2_1_qj7ccg.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Carbon Series</a>
                                </h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571255/Series/iPhone/iPhone%205/Color%20Series/sw-aip5-ccyellow-2_1_wa1eqv.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571255/Series/iPhone/iPhone%205/Color%20Series/sw-aip5-ccorg-2_1_1_kjbqtq.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571255/Series/iPhone/iPhone%205/Color%20Series/sw-aip5-ccwht-2_1_1_m3aeql.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571255/Series/iPhone/iPhone%205/Color%20Series/sw-aip5-ccprpl-2_1_2_fcezyg.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571255/Series/iPhone/iPhone%205/Color%20Series/sw-aip5-ccred-2_1_1_g6yysn.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571255/Series/iPhone/iPhone%205/Color%20Series/sw-aip5-ccpink-2_1_1_l9yqgc.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571255/Series/iPhone/iPhone%205/Color%20Series/sw-aip5-ccgreen-2_1_1_rmxm3h.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571254/Series/iPhone/iPhone%205/Color%20Series/sw-aip5-ccblue-2_1_nzvzwe.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571254/Series/iPhone/iPhone%205/Color%20Series/sw-aip5-ccblk-2_1_1_snev6s.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Color Series</a>
                                </h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571254/Series/iPhone/iPhone%205/Color%20Series/sw-aip5-ccblk-2_1_1_snev6s.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571256/Series/iPhone/iPhone%205/Metal%20Series/sw-aip5-msonyx-3_1_y44fyv.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571256/Series/iPhone/iPhone%205/Metal%20Series/sw-aip5-msgold-3_1_tofoyp.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571255/Series/iPhone/iPhone%205/Metal%20Series/sw-aip5-mscopper-3_1_nvy17m.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Metal Series</a>
                                </h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571257/Series/iPhone/iPhone%205/Wood%20Series/sw-aip5-wszebra-3_2_ucpnsj.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571257/Series/iPhone/iPhone%205/Wood%20Series/sw-aip5-wsmaple-3_1_kscygo.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571257/Series/iPhone/iPhone%205/Wood%20Series/sw-aip5-wsmahogany-3_2_yt6eoi.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571257/Series/iPhone/iPhone%205/Wood%20Series/sw-aip5-wsgfebony-3_2_f2psvj.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571257/Series/iPhone/iPhone%205/Wood%20Series/sw-aip5-wsebony-3_1_ugpdyt.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Wood Series</a>
                                </h5>
                            </div>
                        </div>
                    </div>
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
