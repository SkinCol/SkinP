<%-- 
    Document   : indexFacInsumos
    Created on : 27/06/2019, 05:18:59 PM
    Author     : angel
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Model.FacInsumos"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.FacInsumosDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>SkinCol | Dashboard</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" />
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/mdb.min.css" />
        <link rel="stylesheet" href="css/style.min.css" />
        <!--<link rel="stylesheet" href="css/estilos.css" />-->
        <link rel="shortcut icon" type="" href="favicon.ico" />
    </head>

    <body>
        <header>
            <!-- Navbar -->
            <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
                <div class="container-fluid">
                    <!-- Brand -->
                    <a class="navbar-brand waves-effect" href="home.html" target="_blank">
                        <img src="img/Logo Skin Black.png" style="width:150px" alt="" />
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
                            <li class="nav-item active">
                                <a class="nav-link waves-effect" href="#">Dashboard</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link waves-effect" href="#" target="_blank">Perfil</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link waves-effect" href="#" target="_blank">Tablas</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link waves-effect" href="#" target="_blank">Ordenes</a>
                            </li>
                        </ul>

                        <!-- Right -->
                        <ul class="navbar-nav nav-flex-icons">
                            <li class="nav-item">
                                <a href="https://www.facebook.com" class="nav-link waves-effect" target="_blank">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="https://twitter.com" class="nav-link waves-effect" target="_blank">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="IncioSesion.html" class="nav-link border border-light rounded waves-effect" target="_blank">
                                    <i class="fas fa-user"></i>Usuario
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Navbar -->
        </header>

        <!--Main layout-->
        <main class="pt-5 mx-lg-5">
            <div class="container-fluid mt-5">
                <!-- Heading -->
                <div class="card mb-4 wow fadeIn">
                    <!--Card content-->
                    <div class="card-body d-sm-flex justify-content-between">
                        <h4 class="mb-2 mb-sm-0 pt-1">
                            <a href="index.html" target="_blank">SkinCol</a>
                            <span>/</span>
                            <span>Factura Insumos</span>
                        </h4>

                        <form class="d-flex justify-content-center">
                            <!-- Default input -->
                            <input type="search" placeholder="Buscar" aria-label="Search" class="form-control" />
                            <button class="btn btn-primary btn-sm my-0 p" type="submit">
                                <i class="fas fa-search"></i>
                            </button>
                        </form>
                    </div>
                </div>
                <!-- Heading -->

                <!--Grid row-->
                <div class="row wow fadeIn">
                    <!--Grid column-->
                    <div class="col-md-12 mb-4">
                        <!--Card-->
                        <div class="card">
                            <!--Card content-->
                            <div class="card-body">
                                <!-- Table  -->
                                <div class="row justify-content-end">
                                    <div class="col-md-12 ">
                                        <a class="btn btn-success" href="agregarFacInsumos.htm">
                                            <i class="far fa-plus-square"></i> Agregar
                                        </a>
                                    </div>
                                </div>

                                <table class="table table-hover">
                                    <!-- Table head -->
                                    <div id="listadoregistros">
                                        <table id="tbllistado" class="table table-striped">
                                            <thead class="blue-grey lighten-4">
                                                <tr>              
                                                    <th>No.</th>
                                                    <th>Proveedor</th>
                                                    <th>Material</th>
                                                    <th>Cantidad</th>
                                                    <th>Costo</th>
                                                    <th>Opciones</th>
                                                </tr>
                                            </thead>
                                            <%
                                                FacInsumosDAO dao = new FacInsumosDAO();
                                                List<FacInsumos> list = dao.listar();
                                                Iterator<FacInsumos> iter = list.iterator();
                                                FacInsumos fi = null;

                                                while (iter.hasNext()) {
                                                    fi = iter.next();
                                            %>


                                            <tr>
                                                <td><%= fi.getIdFacturaInsumos()%></td> 
                                                <td><%= fi.getIdProveedor()%></td>
                                                <td><%= fi.getIdMaterial()%></td>
                                                <td><%= fi.getCantidad()%></td>
                                                <td><%= fi.getCosto()%></td>
                                                <td>
                                                    <a href="editarFacInsumos.htm?IdFacturaInsumos=${dato.IdFacturaInsumos}" class="btn btn-warning">Editar</a>
                                                    <a onclick="return confirm('Esta seguro?');" href="deleteFacInsumos.htm?IdFacturaInsumos=${dato.IdFacturaInsumos}" class="btn btn-danger">Eiminar</a>
                                                </td>
                                            </tr>

                                            <% }%>
                                        </table>
                                    </div>
                                    <!-- Table head -->
                                </table>
                                <!-- Table  -->
                            </div>
                        </div>
                        <!--/.Card-->
                    </div>
                    <!--Grid column-->
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
        <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Initializations -->
        <script type="text/javascript">
                                                        // Animations initialization
                                                        new WOW().init();
        </script>
    </body>

</html>