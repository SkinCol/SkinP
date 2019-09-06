<%-- 
    Document   : Telefonos
    Created on : 28/08/2019, 12:01:49 PM
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

                <h1 class="my-5 display-4 text-left">Apple</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">

                    <!--Grid column 1-->
                    <c:forEach var="i" items="${iphone}">
                        <div class="col-lg-3 col-md-6 mb-4">

                            <!--Card-->
                            <div class="card">

                                <!--Card content-->
                                <div class="card-body">
                                    <a href="ControllerSkin?accion=${i.getEnlace()}">
                                        <div class="mask rgba-white-slight">
                                            <img src="${i.getImagen()}" style="height: 200px; width: 200px;" class="mb-2">
                                        </div>
                                    </a>
                                </div>
                                <div class="card-footer">
                                    <h5 class="entry-title p-1">
                                        <a>${i.getModelo()}</a>
                                    </h5>
                                </div>

                            </div>
                            <!--/.Card-->

                        </div>
                    </c:forEach>                 
                    <!--Grid column 1-->

                </div>
                <!--Grid row-->

            </div>
            <!-- iPhone -->

            <!-- Samsung -->
            <div class="container">

                <h1 class="my-5 display-4 text-left">Samsung</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">

                    <!--Grid column 1-->
                    <c:forEach var="sa" items="${samsung}">
                        <div class="col-lg-3 col-md-6 mb-4">

                            <!--Card-->
                            <div class="card">

                                <!--Card content-->
                                <div class="card-body">
                                    <a href="">
                                        <img src="${sa.getImagen()}" style="height: 200px; width: 200px;" class="mb-2">
                                    </a>
                                </div>
                                <div class="card-footer">
                                    <h5 class="entry-title p-1">
                                        <a>${sa.getMarca()}</a>
                                    </h5>
                                </div>

                            </div>
                            <!--/.Card-->

                        </div>
                    </c:forEach>                 
                    <!--Grid column 1-->

                </div>
                <!--Grid row-->

            </div>
            <!-- Samsung -->

            <!-- Google -->
            <div class="container">

                <h1 class="my-5 display-4 text-left">Google</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">

                    <!--Grid column 1-->
                    <c:forEach var="g" items="${google}">
                        <div class="col-lg-3 col-md-6 mb-4">

                            <!--Card-->
                            <div class="card">

                                <!--Card content-->
                                <div class="card-body">
                                    <a href="">
                                        <img src="${g.getImagen()}" style="height: 200px; width: 200px;" class="mb-2">
                                    </a>
                                </div>
                                <div class="card-footer">
                                    <h5 class="entry-title p-1">
                                        <a>${g.getMarca()}</a>
                                    </h5>
                                </div>

                            </div>
                            <!--/.Card-->

                        </div>
                    </c:forEach>                 
                    <!--Grid column 1-->

                </div>
                <!--Grid row-->

            </div>
            <!-- Goole -->

            <!-- HTC -->
            <div class="container">

                <h1 class="my-5 display-4 text-left">HTC</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">

                    <!--Grid column 1-->
                    <c:forEach var="h" items="${htc}">
                        <div class="col-lg-3 col-md-6 mb-4">

                            <!--Card-->
                            <div class="card">

                                <!--Card content-->
                                <div class="card-body">
                                    <a href="">
                                        <img src="${h.getImagen()}" style="height: 200px; width: 200px;" class="mb-2">
                                    </a>
                                </div>
                                <div class="card-footer">
                                    <h5 class="entry-title p-1">
                                        <a>${h.getMarca()}</a>
                                    </h5>
                                </div>

                            </div>
                            <!--/.Card-->

                        </div>
                    </c:forEach>                 
                    <!--Grid column 1-->

                </div>
                <!--Grid row-->

            </div>
            <!-- HTC -->

            <!-- LG -->
            <div class="container">

                <h1 class="my-5 display-4 text-left">LG</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">

                    <!--Grid column 1-->
                    <c:forEach var="lg" items="${lg}">
                        <div class="col-lg-3 col-md-6 mb-4">

                            <!--Card-->
                            <div class="card">

                                <!--Card content-->
                                <div class="card-body">
                                    <a href="">
                                        <img src="${lg.getImagen()}" style="height: 200px; width: 200px;" class="mb-2">
                                    </a>
                                </div>
                                <div class="card-footer">
                                    <h5 class="entry-title p-1">
                                        <a>${lg.getMarca()}</a>
                                    </h5>
                                </div>

                            </div>
                            <!--/.Card-->

                        </div>
                    </c:forEach>                 
                    <!--Grid column 1-->

                </div>
                <!--Grid row-->

            </div>
            <!-- LG -->

            <!-- Motorola -->
            <div class="container">

                <h1 class="my-5 display-4 text-left">Motorola</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">

                    <!--Grid column 1-->
                    <c:forEach var="m" items="${motorola}">
                        <div class="col-lg-3 col-md-6 mb-4">

                            <!--Card-->
                            <div class="card">

                                <!--Card content-->
                                <div class="card-body">
                                    <a href="">
                                        <img src="${m.getImagen()}" style="height: 200px; width: 200px;" class="mb-2">
                                    </a>
                                </div>
                                <div class="card-footer">
                                    <h5 class="entry-title p-1">
                                        <a>${m.getMarca()}</a>
                                    </h5>
                                </div>

                            </div>
                            <!--/.Card-->

                        </div>
                    </c:forEach>                 
                    <!--Grid column 1-->

                </div>
                <!--Grid row-->

            </div>
            <!-- Motorola -->

            <!-- Sony -->
            <div class="container">

                <h1 class="my-5 display-4 text-left">Sony</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">

                    <!--Grid column 1-->
                    <c:forEach var="s" items="${sony}">
                        <div class="col-lg-3 col-md-6 mb-4">

                            <!--Card-->
                            <div class="card">

                                <!--Card content-->
                                <div class="card-body">
                                    <a href="">
                                        <img src="${s.getImagen()}" style="height: 200px; width: 200px;" class="mb-2">
                                    </a>
                                </div>
                                <div class="card-footer">
                                    <h5 class="entry-title p-1">
                                        <a>${s.getMarca()}</a>
                                    </h5>
                                </div>

                            </div>
                            <!--/.Card-->

                        </div>
                    </c:forEach>                 
                    <!--Grid column 1-->

                </div>
                <!--Grid row-->

            </div>
            <!-- Sony -->

            <!-- Huawei -->
            <div class="container">

                <h1 class="my-5 display-4 text-left">Huawei</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">

                    <!--Grid column 1-->
                    <c:forEach var="ha" items="${huawei}">
                        <div class="col-lg-3 col-md-6 mb-4">

                            <!--Card-->
                            <div class="card">

                                <!--Card content-->
                                <div class="card-body">
                                    <a href="">
                                        <img src="${ha.getImagen()}" style="height: 200px; width: 200px;" class="mb-2">
                                    </a>
                                </div>
                                <div class="card-footer">
                                    <h5 class="entry-title p-1">
                                        <a>${ha.getMarca()}</a>
                                    </h5>
                                </div>

                            </div>
                            <!--/.Card-->

                        </div>
                    </c:forEach>                 
                    <!--Grid column 1-->

                </div>
                <!--Grid row-->

            </div>
            <!-- Huawei -->

            <!-- Xioami -->
            <div class="container">

                <h1 class="my-5 display-4 text-left">Xioami</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">

                    <!--Grid column 1-->
                    <c:forEach var="x" items="${xiaomi}">
                        <div class="col-lg-3 col-md-6 mb-4">

                            <!--Card-->
                            <div class="card">

                                <!--Card content-->
                                <div class="card-body">
                                    <a href="">
                                        <img src="${x.getImagen()}" style="height: 200px; width: 200px;" class="mb-2">
                                    </a>
                                </div>
                                <div class="card-footer">
                                    <h5 class="entry-title p-1">
                                        <a>${x.getMarca()}</a>
                                    </h5>
                                </div>

                            </div>
                            <!--/.Card-->

                        </div>
                    </c:forEach>                 
                    <!--Grid column 1-->

                </div>
                <!--Grid row-->

            </div>
            <!-- Xioami -->
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
