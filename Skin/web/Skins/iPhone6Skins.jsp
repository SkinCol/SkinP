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
        <title>Dispositivos - Telefonos</title>
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

                <h1 class="my-5 display-4 text-left">iPhone 6</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">
                    <div class="col-lg-4 col-md-6 mb-4">

                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571275/Series/iPhone/iPhone%206/Carbon%20Series/blackcarbon_1_hihhv8.jpg" alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571277/Series/iPhone/iPhone%206/Carbon%20Series/whitecarbon_1_1_qnj5ct.jpg"alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571277/Series/iPhone/iPhone%206/Carbon%20Series/redcarbon_1_2_z2usrt.jpg" alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571277/Series/iPhone/iPhone%206/Carbon%20Series/purplecarbon_1_1_ab4tzb.jpg" alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571277/Series/iPhone/iPhone%206/Carbon%20Series/pinkcarbon_1_1_bntko8.jpg" alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571277/Series/iPhone/iPhone%206/Carbon%20Series/orangecarbon_1_1_beodvx.jpg" alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571277/Series/iPhone/iPhone%206/Carbon%20Series/gunmetalcarbon_1_1_souxmz.jpg" alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571276/Series/iPhone/iPhone%206/Carbon%20Series/greycarbon_1_3_nypn4v.jpg" alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571275/Series/iPhone/iPhone%206/Carbon%20Series/greencarbon_1_1_jlscud.jpg" alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571275/Series/iPhone/iPhone%206/Carbon%20Series/bluecarbon_1_1_oqi2ni.jpg" alt="">
                                    </li>
                                </ul>
                            </div>
                            <div class="card-footer">
                                <h5 class="entry-title p-1">
                                    <a>Carbon Series</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->

                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571288/Series/iPhone/iPhone%206/Wood%20Series/zebra_1_1_npnlox.jpg"alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571287/Series/iPhone/iPhone%206/Wood%20Series/teak_1_1_kxpvpa.jpg" alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571287/Series/iPhone/iPhone%206/Wood%20Series/maple_1_4_pz2bnp.jpg" alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571287/Series/iPhone/iPhone%206/Wood%20Series/maple_1_1_ae6frw.jpg"alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571287/Series/iPhone/iPhone%206/Wood%20Series/mahogany_1_1_mwkh5b.jpg" alt="">
                                    </li>
                                    <li>
                                        <img style="width: 300px; height: 300px;" src="https://res.cloudinary.com/skincol-me/image/upload/v1567571287/Series/iPhone/iPhone%206/Wood%20Series/goldflakeebony_1_1_ke6ngq.jpg" alt="">
                                    </li>
                                </ul>
                            </div>
                            <div class="card-footer">
                                <h5 class="entry-title p-1">
                                    <a>Wood Series</a>
                                </h5>
                            </div>

                        </div>
                        <!--/.Card-->
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571283/Series/iPhone/iPhone%206/Metal%20Series/brushedgold_1_1_1_dsdrpy.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571283/Series/iPhone/iPhone%206/Metal%20Series/brushedsteel_1_1_q1usib.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571283/Series/iPhone/iPhone%206/Metal%20Series/brushedonyx_1_1_1_prh7se.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571283/Series/iPhone/iPhone%206/Metal%20Series/brushedcopper_1_1_1_llvjod.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-footer">
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
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571282/Series/iPhone/iPhone%206/Leather%20Series/whitealligator_1_1_jehvlo.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Leather%20Series/orangeleather_1_1_ztqfw5.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Leather%20Series/brownleather_1_1_szfhlp.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Leather%20Series/blackleather_1_fy90mx.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Leather%20Series/blackalligator_1_1_g4ehsh.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-footer">
                                <h5 class="entry-title p-1">
                                    <a>Leather Series</a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571280/Series/iPhone/iPhone%206/Color%20Series/whitefullbody_1_1_1_hv1gd9.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571278/Series/iPhone/iPhone%206/Color%20Series/blackfullbody_1_1_ihwqgd.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571280/Series/iPhone/iPhone%206/Color%20Series/yellowfullbody_1_1_zrhcmk.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571278/Series/iPhone/iPhone%206/Color%20Series/purplefullbody_1_2_nhorf5.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571278/Series/iPhone/iPhone%206/Color%20Series/orangefullbody_1_1_hca70i.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571278/Series/iPhone/iPhone%206/Color%20Series/pinkfullbody_1_1_l0duna.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571278/Series/iPhone/iPhone%206/Color%20Series/greenfullbody_1_1_nskwho.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567691413/Series/iPhone/iPhone%206/Color%20Series/bluefullbody_1_1_l9xabh.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571280/Series/iPhone/iPhone%206/Color%20Series/whitefullbody_1_1_omfvam.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571278/Series/iPhone/iPhone%206/Color%20Series/blackfullbody_1_1_1_jncm7k.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-footer">
                                <h5 class="entry-title p-1">
                                    <a>Color Sesies</a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                </ul>
                            </div>
                            <div class="card-footer">
                                <h5 class="entry-title p-1">
                                    <a></a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                </ul>
                            </div>
                            <div class="card-footer">
                                <h5 class="entry-title p-1">
                                    <a></a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                </ul>
                            </div>
                            <div class="card-footer">
                                <h5 class="entry-title p-1">
                                    <a></a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                </ul>
                            </div>
                            <div class="card-footer">
                                <h5 class="entry-title p-1">
                                    <a></a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                </ul>
                            </div>
                            <div class="card-footer">
                                <h5 class="entry-title p-1">
                                    <a></a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                </ul>
                            </div>
                            <div class="card-footer">
                                <h5 class="entry-title p-1">
                                    <a></a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                </ul>
                            </div>
                            <div class="card-footer">
                                <h5 class="entry-title p-1">
                                    <a></a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                </ul>
                            </div>
                            <div class="card-footer">
                                <h5 class="entry-title p-1">
                                    <a></a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                    <li><img style="width: 300px; height: 300px;"src=""></li>
                                </ul>
                            </div>
                            <div class="card-footer">
                                <h5 class="entry-title p-1">
                                    <a></a>
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