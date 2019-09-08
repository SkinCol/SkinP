<%-- 
    Document   : WoodSeriesiPhone6
    Created on : 6/09/2019, 09:01:03 AM
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
        <link href="css/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/css/mdb.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/css/style.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/css/estilos.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" type="image/x-ico" href="favicon.ico" />
        <title>iPhone 6 - Carbon Series | SkinCol</title>
        <style tipy="text/css">
            .my-custom-scrollbar {
                position: relative;
                width: 100%;
                height: 400px;
                overflow: auto;
            }
        </style>
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
                            <a href="ControllerSkin?accion=Carrito" class="nav-link" target="_blank">
                                <i class="fas fa-shopping-cart"></i><span class="badge badge-pill badge-light">${contador}</span>
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
        <br>
        <br>
        <!--Main layout-->
        <main class="mt-5 pt-4">
            <div class="container-fluid pl-5 pr-5">
                <h1 class="display-3 text-left ml">iPhone 6</h1>
                <hr>
                <!--Content-->
                <div class="p-4">
                    <h1 class="h1-responsive font-weight-bold">CARBON FIBER WRAPS/SKINS FOR IPHONE 6</h1>
                    <ul>
                        <li>Se adapta a: Apple iPhone 6 (4.7 ") </li>
                        <li>Profunda textura y profundidad de carbono: protege de pequeños arañazos y pequeñas gotas</li>
                        <li>Incluye un fondo de pantalla descargable a juego </li>
                        <li>Instalación fácil, sin burbujas y eliminación sin manchas </li>
                        <li>Hecho en Colombia!</li>
                    </ul>
                </div>
                <!--Content-->
                <main>
                    <div class="row text-center wow fadeIn">
                        <c:forEach var="w" items="${wood}">
                            <div class="col-lg-4 col-md-12">
                                <!--Card-->
                                <div class="card card-cascade wider mb-3">

                                    <!--Card image-->
                                    <div class="view view-cascade">
                                        <img src="${w.getImagen()}" class="card-img-top">
                                        <a href="#!">
                                            <div class="mask rgba-white-slight"></div>
                                        </a>
                                    </div>
                                    <!--/Card image-->

                                    <!--Card content-->
                                    <div class="card-body card-body-cascade text-center">
                                        <!--Title-->
                                        <h4 class="card-title"><strong>${w.getNombre()}</strong></h4>
                                        <hr>
                                        <p class="lead">
                                            <span class="mr-1">
                                                $ ${w.getCostoSkin()}
                                            </span>
                                        </p>
                                        <a href="ControllerSkin?accion=AgregarCarrito&IdSkin=${w.getIdSkin()}" class="btn btn-light-green">
                                            <i class="fas fa-cart-arrow-down"></i> Añadir al carrito
                                        </a>
                                    </div>
                                    <!--/.Card content-->

                                </div>
                                <!--/.Card-->
                            </div>
                        </c:forEach>
                    </div>
                </main>
                <hr>
                <!--Grid row-->
                <div class="row d-flex justify-content-center wow fadeIn">
                    <!--Grid column-->
                    <div class="col-md-12 text-center">
                        <h4 class="my-4 h4">Descripción</h4>
                        <p class="text-justify">
                            Con la marca y el diseño superiores del nuevo iPhone 6, la protección y la durabilidad son clave. ¿Y qué dice más duradero que la fibra de carbono? Las envolturas de cuerpo completo de la serie Carbon Fiber para el iPhone 6 son la combinación perfecta de durabilidad y versatilidad. Estas envolturas tienen la misma gran apariencia de fibra de carbono real, con la usabilidad del vinilo. Hecho de material y adhesivo de última generación, las envolturas son removibles y reutilizables, lo que le permite cambiar el estilo cuando lo desee, ¡y le proporcionará a su teléfono la protección de 360 ​​grados que se merece!
                        </p>
                        <p class="text-justify">    
                            Entendemos que los accidentes suceden todo el tiempo. En SkinCol, nos preocupamos por su teléfono tanto como usted. ¡Es por eso que tenemos una política GOOF! Arruinar la instalación, no hay problema! Solo contáctenos dentro de los 30 días para un reemplazo.
                        </p>   
                        <p class="text-justify">
                            Con nuestro diseño y diseño de precisión láser, nuestras máscaras SkinCol han logrado lo que ninguna marca puede rivalizar. Nuestras envolturas ofrecen la mejor sensación de agarre en el mercado al tiempo que ofrecen protección y estilo generales para su iPhone 6. Además, a diferencia de las máscaras del mercado, nuestras envolturas de diseño exclusivo le permiten instalar en su iPhone 6 sin preocupaciones.
                        </p>
                    </div>
                    <!--Grid column-->
                </div>
                <!--Grid row-->
            </div>
        </main>
        <!--Main layout-->
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
        <!-- Initializations -->
        <script type="text/javascript">
            // Animations initialization
            new WOW().init();
        </script>
    </body>
</html>
