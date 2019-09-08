<%-- 
    Document   : indexProveedor
    Created on : 18/06/2019, 04:45:34 PM
    Author     : angel
--%>
<%@page import="java.util.Iterator"%>
<%@page import="Model.Proveedor"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProveedorDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>SkinCol | Dashboard</title>

<link rel="shortcut icon" type="" href="favicon.ico" />        
<link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/mdb.min.css">
        <link rel="stylesheet" href="css/style.min.css">
        <!--<link rel="stylesheet" href="css/estilos.css" />-->
        <link rel="shortcut icon" type="" href="favicon.ico" />
        <!-- DATATABLES-->
        <link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
    </head>

    <body>
        <header>
            <!-- Navbar -->
            <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
                <div class="container-fluid">

                    <!-- Brand -->
                    <a class="navbar-brand waves-effect" href="index.html" target="_blank">
                        <img src="img/Logo Skin Black.png" style="width:150px" alt="">
                    </a>
                    <!-- Collapse -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <!-- Links -->
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">

                        <!-- Left -->
                        <ul class="navbar-nav nav.pills mr-auto">
                            <li class="nav-item">
                                <a class="nav-link waves-effect" href="#">Usuarios</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link waves-effect" href="proveedor.php" >Proveedores</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link waves-effect" href="facturainsumos.php">Facturas</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link waves-effect" href="#" >Ventas</a>
                            </li>
                        </ul>

                        <!-- Right -->
                        <div class="navbar-custom-menu">
                            <ul class="nav navbar-nav">

                                <!-- User Account: style can be found in dropdown.less -->
                                <li>
                                    <div class="btn-group">
                                        <a href="#" class="btn btn-white" data-toggle="dropdown">
                                            <span class="hidden-xs"> 
                                                <i class="fas fa-user"> </i> <?php echo $_SESSION["Nombres"] ?> 
                                            </span>  
                                        </a>
                                        <a href="../ajax/usuario.php?op=salir" class="btn btn danger-color"><h5 class="text-white"><i class="fas fa-power-off"></i></h5></a>
                                    </div>
                                </li>
                                <!-- /User Account: style can be found in dropdown.less -->
                            </ul>
                        </div>
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
                            <span>Proveedores</span>
                        </h4>
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
                                <div class="row justify-content-">
                                    <div class="col-md-12 ">
                                        <a class="btn btn-success" href="ProveedorController?accion=add">
                                            <i class="far fa-plus-square"></i> Agregar
                                        </a>
                                    </div>
                                </div>
                                <!-- Table head -->
                                <div id="listadoregistros">
                                    <table id="tbllistado" class="table table-striped">
                                        <thead class="blue-grey lighten-4">
                                            <tr>
                                                <th>Nombre</th>
                                                <th>Nit</th>
                                                <th>Dirección</th>
                                                <th>Correo</th>
                                                <th>Telefono</th>
                                                <th>Opciones</th>
                                            </tr>
                                        </thead>

                                        <%
                                            ProveedorDAO dao = new ProveedorDAO();
                                            List<Proveedor> list = dao.listar();
                                            Iterator<Proveedor> iter = list.iterator();
                                            Proveedor pro = null;

                                            while(iter.hasNext()){
                                                pro=iter.next();
                                        %>

                                            <tr>
                                                <td><%= pro.getNombre()%></td>
                                                <td><%= pro.getNIT()%></td>
                                                <td><%= pro.getDireccion()%></td>
                                                <td><%= pro.getCorreo()%></td>
                                                <td><%= pro.getTelefono()%></td>
                                                <td>
                                                    <a href="ProveedorController?accion=editar&IdProveedor=<%= pro.getIdProveedor()%>" class="btn btn-warning">Editar</a>
                                                    <a onclick="return confirm('Esta seguro?');" href="ProveedorController?accion=eliminar&IdProveedor=<%= pro.getIdProveedor()%>" class="btn btn-danger">Eiminar</a>
                                                </td>
                                            </tr>
                                            <% }%>
                                    </table>
                                </div>
                                <!-- Table head -->
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
        <!-- DATATABLES-->
        <script type="text/javascript" src="DataTables/datatables.min.js"></script>
        <!-- BOOTBOX-->
        <script src="js/bootbox.min.js"></script>
        <!-- Initializations -->
        <script type="text/javascript">
        // Animations initialization
                                        new WOW().init();
        </script>
    </body>
</html>
