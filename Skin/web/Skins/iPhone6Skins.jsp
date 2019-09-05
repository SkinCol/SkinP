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
            <!-- iPhone -->
            <div class="container">

                <h1 class="my-5 display-4 text-left">iPhone 6</h1>

                <!--Grid row-->
                <div class="row text-center wow fadeIn">
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://www.slickwraps.com/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_6_trio_desidner_southwestern_5.jpg"></li>
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
                            <div class="card-body elegant-color white-text">
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
                            <div class="card-body elegant-color white-text">
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
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571282/Series/iPhone/iPhone%206/Leather%20Series/whitealligator_1_1_jehvlo.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Leather%20Series/orangeleather_1_1_ztqfw5.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Leather%20Series/brownleather_1_1_szfhlp.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Leather%20Series/blackleather_1_fy90mx.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Leather%20Series/blackalligator_1_1_g4ehsh.jpg"></li>
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
                            <div class="card-body elegant-color white-text">
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
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Glitz%20Series/glitterred_1_2_o2kpkm.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571280/Series/iPhone/iPhone%206/Glitz%20Series/glitterpink_1_2_wu9bu0.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571280/Series/iPhone/iPhone%206/Glitz%20Series/glitterpink_1_1_ar3zwh.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571280/Series/iPhone/iPhone%206/Glitz%20Series/glitterorange_1_2_urtlux.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571280/Series/iPhone/iPhone%206/Glitz%20Series/glitterbyzantine_1_3_c7zoc2.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567692985/Series/iPhone/iPhone%206/Glitz%20Series/glitterwhite_1_2_z9bmpj.jpg"></li>
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
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Hemp%20Series/iphone_6_trio_hemp_5_n2azrs.jpg"></li>
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
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571286/Series/iPhone/iPhone%206/Stone%20Series/iphone_6_trio_marble_5_ebhpmm.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571286/Series/iPhone/iPhone%206/Stone%20Series/iphone_6_trio_concrete_1_swpdc3.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571286/Series/iPhone/iPhone%206/Stone%20Series/iphone_6_trio_black-marble_5_mv9dxg.jpg"></li>

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
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571272/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.pool_1_rvmkhh.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571271/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.goya_1_v4jytd.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571271/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.cricket_1_v9sg4b.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571271/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.concrete_1_v3uxqx.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571271/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.bon-bon_1_a8buf7.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571270/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.arancione-papaya_1_ney59z.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571270/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.anthracite_1_i9ku4d.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571270/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.andy_2_elcsn9.jpg"></li>
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
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571275/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo9_1_2_ypt13c.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571275/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo8_1_2_h2xkm3.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571275/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo5_1_2_yejowo.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571274/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo6_1_2_dfyi2x.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571274/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo4_1_2_fgn70p.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571274/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo7_1_2_u4uspy.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571274/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo1_1_2_fzu5o1.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571274/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo3_1_2_vusxch.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571274/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo2_1_2_ki3lbw.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571273/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo10_1_2_igopnz.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Camo Series</a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571285/Series/iPhone/iPhone%206/Natural%20Series/mahogany2_1_axaxbe.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571285/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.zebra.wood_3_veackc.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571285/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.walnut.wood_3_rbawp9.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571285/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.maple.wood_3_er1ugw.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571285/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.tan_3_w1prsa.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571284/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.dark.brown_1_2_jxmgci.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571284/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.cork.wood_3_nldflm.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571283/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.black_3_ea2ki1.jpg"></li>
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571283/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.bamboo.wood_3_ccthsc.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Natural Series</a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571272/Series/iPhone/iPhone%206/Anniversaty%20Edition/anniversary-6_11_rexarn.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Edición Aniversario</a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <ul class="rslides" id="slider3">
                                    <li><img style="width: 300px; height: 300px;"src="https://res.cloudinary.com/skincol-me/image/upload/v1567571273/Series/iPhone/iPhone%206/Apple%20Retro/iphonex-v2-retro_zyegz1.jpg"></li>
                                </ul>
                            </div>
                            <div class="card-body elegant-color white-text">
                                <h5 class="entry-title p-1">
                                    <a>Apple Retro</a>
                                </h5>
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