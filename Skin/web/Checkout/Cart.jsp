<%-- 
    Document   : Cart
    Created on : 6/09/2019, 05:49:24 AM
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
        <title>Carrito de Compras</title>
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
                            <a href="IncioSesion.html" class="nav-link border border-light rounded waves-effect waves-light">
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
                <div class="row">
                    <div class="col-sm-9">
                        <!-- Editable table -->
                        <div class="card">
                            <h3 class="card-header text-center font-weight-bold text-uppercase py-4">Tu Carrito  <a class="btn btn-success btn-sm" href="Dispositivos.jsp">
                                    <i class="fas fa-cart-plus"></i> <span>Seguir Comprando</span>
                                </a></h3> 
                            <div class="card-body">
                                <div id="table" class="table-editable">
                                    <table class="table table-bordered table-responsive-md table-striped text-center">
                                        <thead>
                                            <tr>
                                                <th class="text-center">Item</th>
                                                <th class="text-center">Imagen</th>
                                                <th class="text-center">Producto</th>
                                                <th class="text-center">Precio</th>
                                                <th class="text-center">Cantidad</th>
                                                <th class="text-center">SubTotal</th>
                                                <th class="text-center"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="cart" items="${carrito}">
                                                <tr>
                                                    <td class="pt-3-half pt-5" >${cart.getItem()}</td>
                                                    <td class="pt-3-half" ><img src="${cart.getImagen()}" width="100" height="100"></td>
                                                    <td class="pt-3-half pt-5" >${cart.getNombre()}</td>
                                                    <td class="pt-3-half pt-5" >${cart.getPrecioCompra()}</td>
                                                    <td class="pt-3-half pt-5" >${cart.getCantidad()}</td>
                                                    <td class="pt-3-half pt-5" >${cart.getSubTotal()}</td>
                                                    <td class="pt-3-half pt-5" >
                                                        <span id="idskin" style="display: none;">${cart.getIdSkin()}</span>
                                                        <a class="text-danger h4" id="btnDelete"><i class="far fa-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- Editable table -->
                    </div>
                    <div class="col-lg-3 col-sm-12">
                        <!-- Card -->
                        <div class="card">
                            <div class="card-header">
                                <h4><a>Generar Comprar</a></h4>
                            </div>

                            <!-- Card image -->
                            <!-- <img class="card-img-top" src="https://res.cloudinary.com/skincol-me/image/upload/v1566554303/Limited/aStickerBomb_LimitedPage.jpg.pagespeed.ic.W-EDgX1GtZ_b9ekia.webp" alt="Card image cap">

                            <!-- Card content -->
                            <div class="card-body">

                                <!-- Title -->

                                <!-- Text -->
                                <label>Subtotal:</label>
                                <input type="text" value="${totalPagar}" readonly="" class="form-control">
                                <label>Total a Pagar:</label>
                                <input type="text" value="${totalPagar}" readonly="" class="form-control">
                                <br>

                                <!-- Button -->
                                <a href="#" class="btn btn-primary btn-sm btn-block">PASAR POR LA CAJA</a>
                                <hr>
                                <a href="#" class="btn btn-light btn-sm btn-block">GENERAR COMPRA</a>
                            </div>

                        </div>
                        <!-- Card -->
                    </div>


                </div>

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
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script src="css/js/popper.min.js" type="text/javascript"></script>
        <!-- Bootstrap core JavaScript -->
        <script src="css/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- MDB core JavaScript -->
        <script src="css/js/mdb.min.js" type="text/javascript"></script>
        <!-- Functions -->
        <script src="css/js/Alert.js" type="text/javascript"></script>
        <!-- SweetAlert2-->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <!-- Initializations -->
        <script type="text/javascript">
            // Animations initialization
            new WOW().init();
        </script>
    </body>
</html>
