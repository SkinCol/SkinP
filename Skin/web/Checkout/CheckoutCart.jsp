<%-- 
    Document   : CheckoutCart
    Created on : 11/09/2019, 10:51:32 AM
    Author     : alejandro
--%>

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
        <link href="css/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/css/mdb.min.css" rel="stylesheet" type="text/css" />
        <link href="css/css/style.min.css" rel="stylesheet" type="text/css" />
        <link href="css/css/estilos.css" rel="stylesheet" type="text/css" />
        <link href="css/assets/css/styles.css" rel="stylesheet">
        <link rel="shortcut icon" type="image/x-ico" href="favicon.ico" />
        <title>Carrito de Compras</title>
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
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
                            <a class="nav-link" href="ControllerLimitado?accion=1"><i class="fab fa-artstation"></i>
                                Limitado</a>
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
                            <a href="IncioSesion.html"
                               class="nav-link border border-light rounded waves-effect waves-light">
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
                    <div class="col-sm-12 col-lg-4">
                        <p class="h3">Revisa</p>
                        <p class="h3">1. FACTURACIÓN</p>
                        <span>¿Ya registrado? <a href="#" class="h6">Haga clic aquí</a> para iniciar sesión.</span>
                        <!-- Default form register -->
                        <form class="text-center border border-light p-3" action="#!">
                            <div class="form-row mb-2">
                                <div class="col-lg-6 col-sm-12">
                                    <!-- First name -->
                                    <label for="defaultRegisterFormFirstName">Nombres*</label>
                                    <input type="text" id="defaultRegisterFormFirstName" class="form-control"
                                           placeholder="Nombres">
                                </div>
                                <div class="col-lg-6 col-sm-12">
                                    <!-- Last name -->
                                    <label for="defaultRegisterFormFirstName">Apellidos*</label>
                                    <input type="text" id="defaultRegisterFormLastName" class="form-control"
                                           placeholder="Apellidos">
                                </div>
                            </div>

                            <div class="form-row mb-2">
                                <div class="col-lg-6 col-sm-12">
                                    <!-- Direccion Correo -->
                                    <label for="defaultRegisterFormFirstName">Correo Electronico*</label>
                                    <input type="text" id="defaultRegisterFormEmail" class="form-control"
                                           placeholder="E-mail">
                                </div>
                                <div class="col-lg-6 col-sm-12">
                                    <!-- Telefono -->
                                    <label for="defaultRegisterFormFirstName">Telefono*</label>
                                    <input type="text" id="defaultRegisterFormTelefono" class="form-control"
                                           placeholder="Telefono">
                                </div>
                            </div>

                            <!-- Domicilio -->
                            <label for="defaultRegisterFormFirstName">Domicilio*</label>
                            <input type="text" id="defaultRegisterFormDire" class="form-control mb-2"
                                   placeholder="Domicilio">
                            <input type="text" id="defaultRegisterFormDire2" class="form-control mb-2"
                                   placeholder="Domicilio">

                            <div class="form-row mb-2">
                                <div class="col">
                                    <!-- Pais -->
                                    <label for="defaultRegisterFormFirstName">Estado*</label>
                                    <select class="form-control" id="state_id">
                                        <option value="AL">Alabama</option>
                                        <option value="AK">Alaska</option>
                                        <option value="AZ">Arizona</option>
                                        <option value="AR">Arkansas</option>
                                        <option value="CA">California</option>
                                        <option value="CO">Colorado</option>
                                        <option value="CT">Connecticut</option>
                                        <option value="DE">Delaware</option>
                                        <option value="DC">District Of Columbia</option>
                                        <option value="FL">Florida</option>
                                        <option value="GA">Georgia</option>
                                        <option value="HI">Hawaii</option>
                                        <option value="ID">Idaho</option>
                                        <option value="IL">Illinois</option>
                                        <option value="IN">Indiana</option>
                                        <option value="IA">Iowa</option>
                                        <option value="KS">Kansas</option>
                                        <option value="KY">Kentucky</option>
                                        <option value="LA">Louisiana</option>
                                        <option value="ME">Maine</option>
                                        <option value="MD">Maryland</option>
                                        <option value="MA">Massachusetts</option>
                                        <option value="MI">Michigan</option>
                                        <option value="MN">Minnesota</option>
                                        <option value="MS">Mississippi</option>
                                        <option value="MO">Missouri</option>
                                        <option value="MT">Montana</option>
                                        <option value="NE">Nebraska</option>
                                        <option value="NV">Nevada</option>
                                        <option value="NH">New Hampshire</option>
                                        <option value="NJ">New Jersey</option>
                                        <option value="NM">New Mexico</option>
                                        <option value="NY">New York</option>
                                        <option value="NC">North Carolina</option>
                                        <option value="ND">North Dakota</option>
                                        <option value="OH">Ohio</option>
                                        <option value="OK">Oklahoma</option>
                                        <option value="OR">Oregon</option>
                                        <option value="PA">Pennsylvania</option>
                                        <option value="RI">Rhode Island</option>
                                        <option value="SC">South Carolina</option>
                                        <option value="SD">South Dakota</option>
                                        <option value="TN">Tennessee</option>
                                        <option value="TX">Texas</option>
                                        <option value="UT">Utah</option>
                                        <option value="VT">Vermont</option>
                                        <option value="VA">Virginia</option>
                                        <option value="WA">Washington</option>
                                        <option value="WV">West Virginia</option>
                                        <option value="WI">Wisconsin</option>
                                        <option value="WY">Wyoming</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-row mb-2">
                                <div class="col">
                                    <!-- Ciudad -->
                                    <label for="defaultRegisterFormFirstName">Ciudad*</label>
                                    <input type="text" id="defaultRegisterFormLastName" class="form-control"
                                           placeholder="Ciudad">
                                </div>
                                <div class="col">
                                    <!-- Pais -->
                                    <label for="defaultRegisterFormFirstName">Codigo Postal*</label>
                                    <input type="text" id="defaultRegisterFormFirstName" class="form-control"
                                           placeholder="">
                                </div>
                            </div>

                            <div class="form-row mb-2">
                                <div class="col">
                                    <!-- Pais -->
                                    <label for="defaultRegisterFormFirstName">Empresa*</label>
                                    <input type="text" id="defaultRegisterFormFirstName" class="form-control"
                                           placeholder="">
                                </div>
                                <div class="col">
                                    <!-- Ciudad -->
                                    <label for="defaultRegisterFormFirstName">Fax*</label>
                                    <input type="text" id="defaultRegisterFormLastName" class="form-control" placeholder="">
                                </div>
                            </div>
                            <hr>
                            <!-- Newsletter -->
                            <div class="custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultRegisterFormNewsletter">
                                <label class="custom-control-label" for="defaultRegisterFormNewsletter">Crear una cuenta
                                    para su uso posterior</label>
                            </div>
                            <div class="custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultRegister">
                                <label class="custom-control-label" for="defaultRegisterr">Enviar a una dirección
                                    diferente</label>
                            </div>
                        </form>
                        <!-- Default form register -->
                    </div>
                    
                    <div class="col-sm-12 col-lg-4">
                        <br>
                        <br>
                        <p class="h3">2. MÉTODO DE ENVÍO</p>
                        <h3>Opcion de Envio</h3>
                        <h5>Expreso internacional con seguimiento <strong>$ 6.00</strong></h5>
                        <br>
                        <p class="h3">3. PAGO</p>

                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
                                   aria-controls="pills-home" aria-selected="true">PayPal</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab"
                                   aria-controls="pills-profile" aria-selected="false">Tarjeta de crédito</a>
                            </li>
                        </ul>
                        <div class="tab-content pt-2 pl-1" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                            </div>
                            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                <form>
                                    <div class="form-group owner">
                                        <label for="owner">Titular Tarjeta</label>
                                        <input type="text" class="form-control" id="owner">
                                    </div>
                                    <div class="form-row mb-2">
                                        <div class="col-9">
                                            <div class="form-group" id="card-number-field">
                                                <label for="cardNumber">Número de tarjeta</label>
                                                <input type="text" class="form-control" id="cardNumber">
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="form-group CVV">
                                                <label for="cvv">CVV</label>
                                                <input type="text" class="form-control" id="cvv">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group form-row mb-2" id="expiration-date">
                                        <div class="col-8">
                                            <label>Mes*</label>
                                            <select class="form-control">
                                                <option value="01">January</option>
                                                <option value="02">February </option>
                                                <option value="03">March</option>
                                                <option value="04">April</option>
                                                <option value="05">May</option>
                                                <option value="06">June</option>
                                                <option value="07">July</option>
                                                <option value="08">August</option>
                                                <option value="09">September</option>
                                                <option value="10">October</option>
                                                <option value="11">November</option>
                                                <option value="12">December</option>
                                            </select>
                                        </div>
                                        <div class="col-4">
                                            <label>Año*</label>
                                            <select class="form-control">
                                                <option value="16"> 2016</option>
                                                <option value="17"> 2017</option>
                                                <option value="18"> 2018</option>
                                                <option value="19"> 2019</option>
                                                <option value="20"> 2020</option>
                                                <option value="21"> 2021</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group" id="credit_cards">
                                        <img src="css/assets/images/visa.jpg" id="visa">
                                        <img src="css/assets/images/mastercard.jpg" id="mastercard">
                                        <img src="css/assets/images/amex.jpg" id="amex">
                                    </div>
                                    <div class="form-group" id="pay-now">
                                        <button type="submit" class="btn btn-info btn-sm btn-block" id="confirm-purchase">Confirm</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-12 col-lg-4">
                        <br>
                        <p class="h3">4. REVISIÓN</p>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="css/assets/js/jquery.payform.min.js" type="text/javascript"></script>
        <script src="css/assets/js/script.js" type="text/javascript"></script>
        <script type="text/javascript">
            // Animations initialization
            new WOW().init();
        </script>
    </body>

</html>