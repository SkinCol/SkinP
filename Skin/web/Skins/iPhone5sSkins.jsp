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
        <title>iPhone 5S - Skins</title>
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

                <h1 class="my-5 display-4 text-left">iPhone 5S</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://www.slickwraps.com/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/s/w/sw-aip5s-ds-10.jpg"></li>
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
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571261/Series/iPhone/iPhone%205S/Carbon%20Series/sw-aip5s-cfwht-3_nsnxn9.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571261/Series/iPhone/iPhone%205S/Carbon%20Series/sw-aip5s-cfslv-3_kxsdgk.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571260/Series/iPhone/iPhone%205S/Carbon%20Series/sw-aip5s-cfred-3_cvcoer.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571260/Series/iPhone/iPhone%205S/Carbon%20Series/sw-aip5s-cfprp-3_y3vaxw.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571260/Series/iPhone/iPhone%205S/Carbon%20Series/sw-aip5s-cforg-3_od8rso.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571260/Series/iPhone/iPhone%205S/Carbon%20Series/sw-aip5s-cfpink-3_zn13e5.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571259/Series/iPhone/iPhone%205S/Carbon%20Series/sw-aip5s-cfgrn-3_erqicw.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571259/Series/iPhone/iPhone%205S/Carbon%20Series/sw-aip5s-cfgm-3_xwts6t.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571259/Series/iPhone/iPhone%205S/Carbon%20Series/sw-aip5s-cfblu-3_i3btzc.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571259/Series/iPhone/iPhone%205S/Carbon%20Series/sw-aip5s-cfblk-3_2_k4g7bz.jpg"></li>
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
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571264/Series/iPhone/iPhone%205S/Leather%20Series/sw-aip5s-lsorg-5_hjxhpb.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571264/Series/iPhone/iPhone%205S/Leather%20Series/sw-aip5s-lsbrn-3_zct6u9.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571264/Series/iPhone/iPhone%205S/Leather%20Series/sw-aip5s-lsblk-3_ouvscj.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571264/Series/iPhone/iPhone%205S/Leather%20Series/sw-aip5s-lawht-3_ckwcih.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571264/Series/iPhone/iPhone%205S/Leather%20Series/sw-aip5s-lablk-3_2_uowcc9.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
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
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571266/Series/iPhone/iPhone%205S/Metal%20Series/sw-aip5s-mssteel-3_1_rixkzr.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571266/Series/iPhone/iPhone%205S/Metal%20Series/sw-aip5s-msony-3_a7snz1.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571266/Series/iPhone/iPhone%205S/Metal%20Series/sw-aip5s-msgold-3_xbu7ze.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571265/Series/iPhone/iPhone%205S/Metal%20Series/sw-aip5s-mscop-5_cdvqkb.jpg"></li>
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
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571270/Series/iPhone/iPhone%205S/Wood%20Series/sw-aip5s-wszeb-3_azmv4q.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571270/Series/iPhone/iPhone%205S/Wood%20Series/sw-aip5s-wsmap-5_1_plg1hr.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571270/Series/iPhone/iPhone%205S/Wood%20Series/sw-aip5s-wsmah-3_szgxuh.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571269/Series/iPhone/iPhone%205S/Wood%20Series/sw-aip5s-wseby-3_t1aqtj.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571270/Series/iPhone/iPhone%205S/Wood%20Series/sw-aip5s-wsteak-2_vjvzio.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571270/Series/iPhone/iPhone%205S/Wood%20Series/sw-aip5s-wsgfe-2_sjwgtv.jpg"></li>

                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Wood Series</a>
                                </h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571262/Series/iPhone/iPhone%205S/Color%20Series/sw-aip5s-ccylw-3_eyyjld.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571262/Series/iPhone/iPhone%205S/Color%20Series/sw-aip5s-ccwht-3_qeiggg.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571262/Series/iPhone/iPhone%205S/Color%20Series/sw-aip5s-ccred-3_1_t3um07.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571262/Series/iPhone/iPhone%205S/Color%20Series/sw-aip5s-ccpur-3_2_f1geym.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571261/Series/iPhone/iPhone%205S/Color%20Series/sw-aip5s-ccpink-3_fudgee.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571261/Series/iPhone/iPhone%205S/Color%20Series/sw-aip5s-ccorg-3_wkamnl.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571261/Series/iPhone/iPhone%205S/Color%20Series/sw-aip5s-ccgrn-3_uwp0gg.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571261/Series/iPhone/iPhone%205S/Color%20Series/sw-aip5s-ccblu-3_rl5bre.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571261/Series/iPhone/iPhone%205S/Color%20Series/sw-aip5s-ccblk-3_kt8smp.jpg"></li>
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
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571263/Series/iPhone/iPhone%205S/Glitz%20Series/sw-aip5s-glsvio-3_uq9thv.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571263/Series/iPhone/iPhone%205S/Glitz%20Series/sw-aip5s-glswht-3_bjtxbv.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571263/Series/iPhone/iPhone%205S/Glitz%20Series/sw-aip5s-glsorg-3_yah1oh.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571263/Series/iPhone/iPhone%205S/Glitz%20Series/sw-aip5s-glsred-3_rgwhfn.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571263/Series/iPhone/iPhone%205S/Glitz%20Series/sw-aip5s-glspnk-3_mq9qbt.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571263/Series/iPhone/iPhone%205S/Glitz%20Series/sw-aip5s-glsblu-3_1_omawze.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Glitz Series</a>
                                </h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571259/Series/iPhone/iPhone%205S/Alcantara%20Series/iphone-se_view1_alcantara_pool_1_s0b53z.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571259/Series/iPhone/iPhone%205S/Alcantara%20Series/iphone-se_view1_alcantara_goya_1_dhtgwz.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571259/Series/iPhone/iPhone%205S/Alcantara%20Series/iphone-se_view1_alcantara_cricket_1_bldzow.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571258/Series/iPhone/iPhone%205S/Alcantara%20Series/iphone-se_view1_alcantara_concrete_1_b1lev3.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571258/Series/iPhone/iPhone%205S/Alcantara%20Series/iphone-se_view1_alcantara_bon-bon_1_zglavp.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571258/Series/iPhone/iPhone%205S/Alcantara%20Series/iphone-se_view1_alcantara_arancione-papaya_1_fg5ir0.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571257/Series/iPhone/iPhone%205S/Alcantara%20Series/iphone-se_view1_alcantara_anthracite_1_nblntm.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571257/Series/iPhone/iPhone%205S/Alcantara%20Series/iphone-se_view1_alcantara_andy_1_mzrnzm.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Alcantara Series</a>
                                </h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571257/Series/iPhone/iPhone%205S/Alcantara%20Series/iphone-se_view1_alcantara_andy_1_mzrnzm.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Stone Series</a>
                                </h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571264/Series/iPhone/iPhone%205S/Hemp%20Series/iphone-se_view1_hemp_1_u9lmkr.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Hemp Series</a>
                                </h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571269/Series/iPhone/iPhone%205S/Natural%20Series/reall.wood.skins.iphone.se9_1_hv93vz.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571268/Series/iPhone/iPhone%205S/Natural%20Series/reall.wood.skins.iphone.se8_1_yr9gyv.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571267/Series/iPhone/iPhone%205S/Natural%20Series/reall.wood.skins.iphone.se7_1_e48vda.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571267/Series/iPhone/iPhone%205S/Natural%20Series/reall.wood.skins.iphone.se6_1_dgg8b1.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571266/Series/iPhone/iPhone%205S/Natural%20Series/reall.wood.skins.iphone.se5_1_wedyow.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571266/Series/iPhone/iPhone%205S/Natural%20Series/reall.wood.skins.iphone.se4_1_qqxoys.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571266/Series/iPhone/iPhone%205S/Natural%20Series/reall.wood.skins.iphone.se3_1_cjm4w5.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571266/Series/iPhone/iPhone%205S/Natural%20Series/reall.wood.skins.iphone.se2_1_reyfkj.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571266/Series/iPhone/iPhone%205S/Natural%20Series/reall.wood.skins.iphone.se1_1_j04mrw.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Natural Series</a>
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
