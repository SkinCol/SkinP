-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-09-2019 a las 05:47:06
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `skincol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `IdCiudad` int(11) NOT NULL,
  `IdDepartamento` int(11) NOT NULL,
  `Nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`IdCiudad`, `IdDepartamento`, `Nombre`) VALUES
(1, 1, 'Tunja'),
(2, 2, 'Bogota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `IdDepartamento` int(11) NOT NULL,
  `Nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`IdDepartamento`, `Nombre`) VALUES
(1, 'Boyaca'),
(2, 'Cundinamarca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dispositivo`
--

CREATE TABLE `dispositivo` (
  `IdDispositivo` int(11) NOT NULL,
  `Modelo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Marca` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Tipo` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `Imagen` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Enlace` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `dispositivo`
--

INSERT INTO `dispositivo` (`IdDispositivo`, `Modelo`, `Marca`, `Tipo`, `Imagen`, `Enlace`) VALUES
(1, 'iPhone XS max', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566081/Dispositivos/Phone/Apple/iPhoneXS_MAX_1_ufxxfy.webp', NULL),
(2, 'iPhone XS', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566082/Dispositivos/Phone/Apple/iPhonexs_1_bowd3q.jpg', NULL),
(3, 'iPhone XR', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566080/Dispositivos/Phone/Apple/iPhonexr_1_gnomh8.jpg', NULL),
(4, 'iPhone X', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566081/Dispositivos/Phone/Apple/iphonex_2_hmrjmv.jpg', NULL),
(5, 'iPhone 8 Plus', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566080/Dispositivos/Phone/Apple/iphone8plus_jsvxmi.jpg', NULL),
(6, 'iPhone 8', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566081/Dispositivos/Phone/Apple/iphone8_1_ltr6bo.jpg', NULL),
(7, 'iPhone 7 Plus', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566081/Dispositivos/Phone/Apple/i7P_3_zefgwc.jpg', NULL),
(8, 'iPhone 7', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566080/Dispositivos/Phone/Apple/iphonex_7_1_k20zop.jpg', NULL),
(9, 'iPhone 6S Plus', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566082/Dispositivos/Phone/Apple/6s_plus_2_ut8gfq.jpg', NULL),
(10, 'iPhone 6s', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566082/Dispositivos/Phone/Apple/iphone6s_1_q4bvuv.jpg', NULL),
(11, 'iPhone SE', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566080/Dispositivos/Phone/Apple/iphone_se_1_hweiqo.jpg', NULL),
(12, 'iPhone 6 Plus', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566083/Dispositivos/Phone/Apple/6plus_1_don6yt.jpg', NULL),
(13, 'Galaxy S7 Edge', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxy7edge_a8skac.jpg', NULL),
(14, 'Galaxy S7', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxyS7_mtgg6d.jpg', NULL),
(15, 'Galaxy S8', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568480/Dispositivos/Phone/Samsung/galaxys8_sbixds.jpg', NULL),
(16, 'Galaxy S8 Plus', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxys8plus_dvixzg.jpg', NULL),
(17, 'Galaxy Note 8', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/Note-8_Cases_Thumbnail_ohd3ec.jpg', NULL),
(18, 'Galaxy S9', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxys9_re7wix.jpg', NULL),
(19, 'Galaxy S9 Plus', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxys9plus_w4uxhi.jpg', NULL),
(20, 'Galaxy Note 9', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/Galaxy-Note-9-280_zoui8q.jpg', NULL),
(21, 'Galaxy S10e', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/s10e_ijt0am.jpg', NULL),
(22, 'Galaxy S10', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxys10-1_1_di4era.jpg', NULL),
(23, 'Galaxy S10 Plus', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxys10plus-1_1_kgep9h.jpg', NULL),
(24, 'Galaxy S10 5G', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxys10_5G_ezu5y6.jpg', NULL),
(25, 'Galaxy Fold', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568480/Dispositivos/Phone/Samsung/galaxyFold_i7vdyd.png', NULL),
(37, 'Nexus 5X', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566159/Dispositivos/Phone/Google/nexus5x_iey5uh.jpg', NULL),
(38, 'Nexus 6P', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566159/Dispositivos/Phone/Google/nexus6p_ofkpqd.jpg', NULL),
(39, 'Pixel XL', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566158/Dispositivos/Phone/Google/pixel_huyfpo.jpg', NULL),
(40, 'Pixel', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566159/Dispositivos/Phone/Google/pixel_small_psweqi.jpg', NULL),
(41, 'Pixel 2 XL', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566159/Dispositivos/Phone/Google/pixelxl2_product_floszu.jpg', NULL),
(42, 'Pixel 2', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566158/Dispositivos/Phone/Google/pixel2_product_aywlev.jpg', NULL),
(43, 'Pixel 3 XL', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566159/Dispositivos/Phone/Google/pixel3xl_sw_azoqm7.jpg', NULL),
(44, 'Pixel 3', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566159/Dispositivos/Phone/Google/pixel3_sw_xvb58y.jpg', NULL),
(45, 'HTC One M7', 'HTC', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566203/Dispositivos/Phone/HTC/m7_pgrrje.jpg', NULL),
(46, 'HTC One M8', 'HTC', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566203/Dispositivos/Phone/HTC/m8_4_byeoy1.jpg', NULL),
(47, 'HTC One M9', 'HTC', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566203/Dispositivos/Phone/HTC/m9hd_s3fcch.jpg', NULL),
(48, 'HTC 10', 'HTC', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566203/Dispositivos/Phone/HTC/htc10_a9iuvx.jpg', NULL),
(49, 'HTC U Ultra', 'HTC', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566203/Dispositivos/Phone/HTC/htc_u_ultra_r9vvi5.jpg', NULL),
(50, 'HTC U11', 'HTC', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566203/Dispositivos/Phone/HTC/htcu11_ycjvx3.jpg', NULL),
(51, 'LG G3', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568413/Dispositivos/Phone/LG/g3_7_nxagl2.jpg', NULL),
(52, 'LG G4', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568413/Dispositivos/Phone/LG/lgg4.wraps.skins_1_ba0tza.jpg', NULL),
(53, 'LG G5', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568413/Dispositivos/Phone/LG/lgg5_xbhuha.jpg', NULL),
(54, 'LG V20', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568413/Dispositivos/Phone/LG/lgv20_iyvk5t.jpg', NULL),
(55, 'LG G6', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568413/Dispositivos/Phone/LG/lgg6_gjinyo.jpg', NULL),
(56, 'LG V30', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568414/Dispositivos/Phone/LG/v30_zff1tj.jpg', NULL),
(57, 'LG G7', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568414/Dispositivos/Phone/LG/g7_b9qg4m.jpg', NULL),
(58, 'LG V40 ThinQ', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568413/Dispositivos/Phone/LG/v40_b3ne9k.jpg', NULL),
(59, 'Moto X', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568448/Dispositivos/Phone/Motorola/motox_adqvep.jpg', NULL),
(60, 'Moto X 2nd Gen', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568448/Dispositivos/Phone/Motorola/motox2nd_enp7wi.jpg', NULL),
(61, 'Moto G 2nd Gen', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568447/Dispositivos/Phone/Motorola/motog_sfde3i.jpg', NULL),
(62, 'Moto G 3rd Gen', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568448/Dispositivos/Phone/Motorola/motog3rd_erjtxj.jpg', NULL),
(63, 'Moto X Pure Edition', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568448/Dispositivos/Phone/Motorola/motoxpure_spxs9c.jpg', NULL),
(64, 'Moto Z Force', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568447/Dispositivos/Phone/Motorola/moto-z-force_htjmy0.jpg', NULL),
(65, 'Moto Z', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568447/Dispositivos/Phone/Motorola/moto-z_eqp9hp.jpg', NULL),
(66, 'Moto X4', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568448/Dispositivos/Phone/Motorola/motox4_kxrgis.jpg', NULL),
(90, 'Sony Xperia Z1', 'Sony', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568591/Dispositivos/Phone/Sony/z2_1_1_ixkwbv.jpg', NULL),
(91, 'Sony Xperia Z2', 'Sony', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568591/Dispositivos/Phone/Sony/z2_ori_lhsuef.jpg', NULL),
(92, 'Sony Xperia Z3 Compact', 'Sony', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568591/Dispositivos/Phone/Sony/z3compact_yb7mci.jpg', NULL),
(93, 'Sony Xperia Z3', 'Sony', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568591/Dispositivos/Phone/Sony/z3_yghqud.jpg', NULL),
(94, 'Sony Xperia Z5', 'Sony', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568591/Dispositivos/Phone/Sony/z5_lmhn0e.jpg', NULL),
(95, 'Huawei P9', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568377/Dispositivos/Phone/Huawei/P9_xkervv.jpg', NULL),
(96, 'Honor 7X', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568377/Dispositivos/Phone/Huawei/Honor7x_vevnwx.jpg', NULL),
(97, 'Mate 10', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568377/Dispositivos/Phone/Huawei/Mate10_uexrre.jpg', NULL),
(98, 'Mate 10 Pro', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568377/Dispositivos/Phone/Huawei/Mate10pro_ttvo1j.jpg', NULL),
(99, 'Huawei P20 Pro', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568378/Dispositivos/Phone/Huawei/P20Pro_lkusqh.jpg', NULL),
(100, 'Huawei Mate 20 Pro', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568377/Dispositivos/Phone/Huawei/MateP20Pro_qruybn.jpg', NULL),
(101, 'Huawei P30', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568377/Dispositivos/Phone/Huawei/p30_nav_blue_vhexxs.jpg', NULL),
(102, 'Huawei P30 Pro', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568378/Dispositivos/Phone/Huawei/p30pro_nav_orange_eaoxfo.jpg', NULL),
(103, 'Xiaomi Mi 5', 'Xiaomi', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568658/Dispositivos/Phone/Xioami/mi5_jhzewg.jpg', NULL),
(104, 'Xiaomi Redmi Note 3', 'Xiaomi', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568658/Dispositivos/Phone/Xioami/note3-1_qolkhr.jpg', NULL),
(105, 'Xiaomi Redmi Note 4', 'Xiaomi', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568658/Dispositivos/Phone/Xioami/mi_note4_1_txo7ao.jpg', NULL),
(106, 'Xiaomi Pocophone F1', 'Xiaomi', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568658/Dispositivos/Phone/Xioami/pocophonef1_duhgxx.jpg', NULL),
(107, 'Amazon Kindle Fire', 'Amazon', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568990/Dispositivos/Tablets/kindle_tjialj.jpg', NULL),
(108, 'Nexus 7', 'Google', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568987/Dispositivos/Tablets/nexus7_1_jy6uzo.jpg', NULL),
(109, 'Nexus 9', 'Google', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568986/Dispositivos/Tablets/nexus9_b17ndz.jpg', NULL),
(110, 'iPad Mini', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568985/Dispositivos/Tablets/mini_1_wsa483.jpg', NULL),
(111, 'iPad Mini Retina', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568996/Dispositivos/Tablets/mini_retina_1_zb1iau.jpg', NULL),
(112, 'iPad Mini 3', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568985/Dispositivos/Tablets/mini_1_wsa483.jpg', NULL),
(113, 'iPad Mini 4', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568986/Dispositivos/Tablets/mini4_bzlpg2.jpg', NULL),
(114, 'iPad Mini 5', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568991/Dispositivos/Tablets/mini5_efjm14.jpg', NULL),
(115, 'iPad Air', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568986/Dispositivos/Tablets/air_rnqshd.jpg', NULL),
(116, 'iPad Air 2', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568995/Dispositivos/Tablets/ipadair2_mtx3s3.jpg', NULL),
(117, 'iPad Air 3', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568996/Dispositivos/Tablets/iPad_Air_3-Product_Image_ilgqrb.jpg', NULL),
(118, 'iPad 2', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568987/Dispositivos/Tablets/ipad2th_kpjrjv.jpg', NULL),
(119, 'iPad 3rd Gen', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568988/Dispositivos/Tablets/ipad3th_x6boce.jpg', NULL),
(120, 'iPad 4th Gen', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568991/Dispositivos/Tablets/ipad4th_ne913a.jpg', NULL),
(121, 'iPad Pro 9.7 (2018)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568992/Dispositivos/Tablets/ipad2018_vearq2.jpg', NULL),
(122, 'iPad Pro 9.7 (2015)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568985/Dispositivos/Tablets/ipadpro97_a74ab0.jpg', NULL),
(123, 'iPad Pro 12.9 (2015)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568987/Dispositivos/Tablets/ipadpro_aena4j.jpg', NULL),
(124, 'iPad Pro 12.9 (2017)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568991/Dispositivos/Tablets/ipadpro129_kkddb6.jpg', NULL),
(125, 'iPad Pro 10.5 (2017)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568991/Dispositivos/Tablets/ipadpro105_1_brhwvm.jpg', NULL),
(126, 'iPad Pro 12.9 (2018)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568990/Dispositivos/Tablets/ipadpro129-2018_sp4n0u.jpg', NULL),
(127, 'iPad Pro 11 (2018)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568986/Dispositivos/Tablets/ipadpro11-2018_uvbqic.jpg', NULL),
(128, 'Macbook Air 11\" (2012 - 2017)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568746/Dispositivos/Computer/Laptos/air11_1_bv4n8k.jpg', NULL),
(129, 'Macbook Air 13\" (2018)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568746/Dispositivos/Computer/Laptos/NEW_macbookair13_hbenek.jpg', NULL),
(130, 'Macbook Pro 15\" (Retina 2012 - 2016)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568745/Dispositivos/Computer/Laptos/pro15_yzpbvy.jpg', NULL),
(131, 'Macbook Pro 13· (Retina 2012 - 2016)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568745/Dispositivos/Computer/Laptos/retina13_ovuqj9.jpg', NULL),
(132, 'Macbook 12\" (2015)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568745/Dispositivos/Computer/Laptos/macbook_p6tuoa.jpg', NULL),
(133, 'Macbook Pro 15\" (Touch Bar)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568745/Dispositivos/Computer/Laptos/NEW_macbook15_ggk70p.jpg', NULL),
(134, 'Macbook Pro 13\" (Touch Bar)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568745/Dispositivos/Computer/Laptos/NEW_macbook13_fnfrmb.jpg', NULL),
(135, 'Macbook Pro 13 (No Touch Bar)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568745/Dispositivos/Computer/Laptos/NEW_macbook13_1_zaixdq.jpg', NULL),
(136, 'Magic Trackpad', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568768/Dispositivos/Computer/Laptos/trackpad_j5dzpq.jpg', NULL),
(137, 'Magic Trackpad 2', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568769/Dispositivos/Computer/Laptos/magictrackpad2_1_u3ro9q.jpg', NULL),
(138, 'Wired Keyboard', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568768/Dispositivos/Computer/Laptos/wired_mcdaml.jpg', NULL),
(139, 'Wireless Keyboard', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568768/Dispositivos/Computer/Laptos/wireless_v6kcil.jpg', NULL),
(140, 'Magic Keyboard', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568768/Dispositivos/Computer/Laptos/wireles00s_frrg1c.jpg', NULL),
(141, 'Magic Mouse', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568768/Dispositivos/Computer/Laptos/mouse_1-1_ow0obd.jpg', NULL),
(142, 'Magic Mouse 2', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568768/Dispositivos/Computer/Laptos/mouse_1-1_ow0obd.jpg', NULL),
(143, 'Nintendo 3DS/XL', 'Nintendo', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568914/Dispositivos/Gaming/Nintendo/3ds_1_opu58m.jpg', NULL),
(144, 'New Nintendo 3DSL XL', 'Nintendo', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568914/Dispositivos/Gaming/Nintendo/new3ds_gkrywo.jpg', NULL),
(145, 'Switch Pro Dualshock', 'Nintendo', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568914/Dispositivos/Gaming/Nintendo/procont_x7bj1e.jpg', NULL),
(146, 'Nintendo Switch', 'Nintendo', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568914/Dispositivos/Gaming/Nintendo/switch_buyvah.jpg', NULL),
(147, 'Xbox 360 Dualshock', 'Xbox', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568864/Dispositivos/Gaming/Xbox/x360_xepjsn.jpg', NULL),
(148, 'Xbox Elite Dualshock', 'Xbox', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568864/Dispositivos/Gaming/Xbox/elite_oj7ysb.jpg', NULL),
(149, 'Xbox One S Dualshock', 'Xbox', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568864/Dispositivos/Gaming/Xbox/xboxones_1_sfp9pr.jpg', NULL),
(150, 'Xbox One', 'Xbox', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568864/Dispositivos/Gaming/Xbox/xbox_nologo_1_e40mn9.jpg', NULL),
(151, 'Xbox One S', 'Xbox', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568864/Dispositivos/Gaming/Xbox/xboxones_hcoe7t.jpg', NULL),
(152, 'Xbox One X', 'Xbox', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568864/Dispositivos/Gaming/Xbox/xboxonex_1_xlquip.jpg', NULL),
(153, 'PS3 Dualshock', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568942/Dispositivos/Gaming/PlayStation/ps3_cont_kaea9f.jpg', NULL),
(154, 'PS4 Dualshock', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568942/Dispositivos/Gaming/PlayStation/ps4_cont_vgqape.jpg', NULL),
(155, 'PS Vita', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568943/Dispositivos/Gaming/PlayStation/ps_vita_ughzlg.jpg', NULL),
(156, 'PlayStation VR', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568942/Dispositivos/Gaming/PlayStation/ps4_VR_zxvsks.jpg', NULL),
(157, 'PlayStation 4', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568943/Dispositivos/Gaming/PlayStation/ps4_new_vogttu.jpg', NULL),
(158, 'PlayStation 4 Slim', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568942/Dispositivos/Gaming/PlayStation/ps4_newslim_feezgc.jpg', NULL),
(159, 'PlayStation 4 Pro', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568942/Dispositivos/Gaming/PlayStation/ps4_pro_new_1_gs9d0j.jpg', NULL),
(160, 'iPhone 6', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566082/Dispositivos/Phone/Apple/iphone6_k7dmq7.jpg', '1'),
(161, 'iPhone 5S', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566082/Dispositivos/Phone/Apple/iphone_5s_1_pa1mwi.jpg', '2'),
(162, 'iPhone 5C', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566081/Dispositivos/Phone/Apple/iphone5c_bdllkd.jpg', NULL),
(163, 'iPhone 5', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566082/Dispositivos/Phone/Apple/iphone5_ugbyaa.jpg', '3'),
(164, 'iPhone 4/4s', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566083/Dispositivos/Phone/Apple/iphone4_1_laepo1.jpg', '4'),
(165, 'Nintendo Switch Lite', 'Nintendo', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1567305964/Dispositivos/Gaming/Nintendo/switch-lite_1_zl6ado.jpg', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio`
--

CREATE TABLE `envio` (
  `IdEnvio` int(11) NOT NULL,
  `IdUsurio` int(11) NOT NULL,
  `IdFactura` int(11) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `IdFactura` int(11) NOT NULL,
  `IdSolicitud` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturainsumos`
--

CREATE TABLE `facturainsumos` (
  `IdFacturaInsumos` int(11) NOT NULL,
  `IdProveedor` int(11) NOT NULL,
  `IdMaterial` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Costo` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `facturainsumos`
--

INSERT INTO `facturainsumos` (`IdFacturaInsumos`, `IdProveedor`, `IdMaterial`, `Cantidad`, `Costo`) VALUES
(1, 1, 1, 5, '1500000'),
(2, 2, 2, 5, '200000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `limitado`
--

CREATE TABLE `limitado` (
  `IdLimitado` int(11) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `Imagen` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Enlace` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `limitado`
--

INSERT INTO `limitado` (`IdLimitado`, `Nombre`, `Imagen`, `Enlace`) VALUES
(1, 'Venom Series', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554572/Limited/aVenom-limited.jpg.pagespeed.ic.jt9mwBPCGV_elrcm3.webp', '2'),
(2, 'Trasparente Series', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554450/Limited/aTransparent-Limited.jpg.pagespeed.ic.ycCVXpZSkU_oxid9d.webp', '3'),
(3, 'Alcantara Series', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554742/Limited/aLimited-Collections-Alcantara.jpg.pagespeed.ic.amVsun7Fyp_hcecpb.webp', '4'),
(4, 'Hemp Series', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554702/Limited/aLimited-Collections-Hemp.jpg.pagespeed.ic.H9Cl-tC8md_nzgvu9.webp', '5'),
(5, 'Mosaico Series', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554669/Limited/aLimited-Collections-Mosaic.jpg.pagespeed.ic.bFWZyC0BJj_caqt9j.webp', '6'),
(6, 'Stale Series', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554643/Limited/aLimited-Collections-Slate.jpg.pagespeed.ic.1wTem7186h_bzya4v.webp', '7'),
(7, 'Charred Robot Series', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554619/Limited/aCharred-Robot-Limited-Banner2.jpg.pagespeed.ic.1Ylc1Ws9nz_yw1nbt.webp', '8'),
(8, 'Woven Metal Series', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554595/Limited/aLimited-Collections-Woven-Metal.jpg.pagespeed.ic.HgMqNHdV9a_nh6rlg.webp', '9'),
(9, 'Matrix Series', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554549/Limited/aMatrix-Limited.jpg.pagespeed.ic.X3cYmdAdNy_gikmu2.webp', '10'),
(10, 'Color Shifting Serie', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554525/Limited/aColorShift-Limited.jpg.pagespeed.ic.Y7T0wvyflC_db7m9e.webp', '11'),
(11, 'Sloth Series', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554501/Limited/aLimited-Collections-Sloth.jpg.pagespeed.ic.pAg4Ray5_X_pkit5x.webp', '12'),
(12, 'Shade ', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554464/Limited/Shade_limited.jpg.pagespeed.ce.ImAXJpIJh4_j9uwfg.jpg', '13'),
(13, 'Honey Comb ', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554422/Limited/aLimited-Collections-Honeycomb.jpg.pagespeed.ic.sQ13-YYAvZ_anyan4.webp', '14'),
(14, 'Edición Aniversario', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554411/Limited/aAnniversary-Limited-Banner.jpg.pagespeed.ic.LrasdiB7E8_wde9dy.webp', '15'),
(15, 'Retro', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554397/Limited/aLimited-Collections-Retro.jpg.pagespeed.ic.n_AvjPnR58_arj6uj.webp', '16'),
(16, 'Retro Black', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554377/Limited/aBlack_Apple_Retro_limited_banner.jpg.pagespeed.ic.QnCg1oZZJE_qiqx92.webp', '17'),
(17, 'Dark Matter', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554360/Limited/aDarkMatter_LimitedPage_03.jpg.pagespeed.ic.QJKDgCTgZ-_gosjjq.webp', '18'),
(18, 'Pride Cork', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554345/Limited/aPrideCork_LimitedPage_Crop_05.jpg.pagespeed.ic.f7p3xNCugt_yifvbe.webp', '19'),
(19, 'Marbol Series', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554326/Limited/aMarbleSeries_Limited_v2.jpg.pagespeed.ic.B2itfM5iMx_xyzg3l.webp', '20'),
(20, 'Sticker Bomb', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554303/Limited/aStickerBomb_LimitedPage.jpg.pagespeed.ic.W-EDgX1GtZ_b9ekia.webp', '21'),
(21, 'Moon Series', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554193/Limited/aMoonWrap_LimitedPage_02.jpg.pagespeed.ic.w5LbsjQUY6_ccbrtm.webp', '22'),
(22, 'Forged Carbon', 'https://res.cloudinary.com/skincol-me/image/upload/v1566554096/Limited/aForged_Carbon-Limited.jpg.pagespeed.ic.xIsKG8XU33_jn2zng.webp', '23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `IdMaterial` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Descripcion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`IdMaterial`, `Nombre`, `Descripcion`) VALUES
(1, 'Vinilo', 'Prueba'),
(2, 'Resina', 'Prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `IdProveedor` int(11) NOT NULL,
  `Nombre` varchar(80) COLLATE utf8_spanish2_ci NOT NULL,
  `NIT` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Direccion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Correo` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Telefono` varchar(15) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`IdProveedor`, `Nombre`, `NIT`, `Direccion`, `Correo`, `Telefono`) VALUES
(1, 'Empresa 1', '1049652045', 'Calle lola No. 5 ', 'User@mail.com', '1234456'),
(2, 'Empresa 2', '1069724413-8', 'Calle 4 no 4 - 1', 'Mail@user.com', '255 9822');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Serie`
--

CREATE TABLE `Serie` (
  `IdSerie` int(11) NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `Serie`
--

INSERT INTO `Serie` (`IdSerie`, `Nombre`) VALUES
(1, 'Carbon Series'),
(2, 'Color Series'),
(3, 'Camo Series'),
(4, 'Glitz Series'),
(5, 'Wood Series'),
(6, 'Metal Series'),
(7, 'Natural Series'),
(8, 'Piel Series'),
(9, 'Stone Series');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skin`
--

CREATE TABLE `skin` (
  `IdSkin` int(11) NOT NULL,
  `IdSerie` int(11) DEFAULT NULL,
  `IdLimitado` int(11) DEFAULT NULL,
  `IdDispositivo` int(11) NOT NULL,
  `Nombre` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `Imagen` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Stock` int(11) DEFAULT 1,
  `CostoSkin` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `skin`
--

INSERT INTO `skin` (`IdSkin`, `IdSerie`, `IdLimitado`, `IdDispositivo`, `Nombre`, `Imagen`, `Stock`, `CostoSkin`) VALUES
(3, 1, NULL, 160, 'Carbon Black', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571275/Series/iPhone/iPhone%206/Carbon%20Series/blackcarbon_1_hihhv8.jpg', 1, '78087'),
(4, 2, NULL, 160, 'Color Skin Yellow', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571280/Series/iPhone/iPhone%206/Color%20Series/yellowfullbody_1_1_zrhcmk.jpg', 1, '78087'),
(5, 1, NULL, 160, 'Carbon White', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571277/Series/iPhone/iPhone%206/Carbon%20Series/whitecarbon_1_1_qnj5ct.jpg', 1, '78087'),
(6, 1, NULL, 160, 'Carbon Red', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571277/Series/iPhone/iPhone%206/Carbon%20Series/redcarbon_1_2_z2usrt.jpg', 1, '78087'),
(7, 1, NULL, 160, 'Carbon Purple', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571277/Series/iPhone/iPhone%206/Carbon%20Series/purplecarbon_1_1_ab4tzb.jpg', 1, '78087'),
(8, 1, NULL, 160, 'Carbon Pink ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571277/Series/iPhone/iPhone%206/Carbon%20Series/pinkcarbon_1_1_bntko8.jpg', 1, '78087'),
(9, 1, NULL, 160, 'Carbon Orange', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571277/Series/iPhone/iPhone%206/Carbon%20Series/orangecarbon_1_1_beodvx.jpg', 1, '78087'),
(10, 1, NULL, 160, 'Carbon Metal', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571277/Series/iPhone/iPhone%206/Carbon%20Series/gunmetalcarbon_1_1_souxmz.jpg', 1, '78087'),
(11, 1, NULL, 160, 'Carbon Grey', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571276/Series/iPhone/iPhone%206/Carbon%20Series/greycarbon_1_3_nypn4v.jpg', 1, '78087'),
(12, 1, NULL, 160, 'Carbon Green', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571275/Series/iPhone/iPhone%206/Carbon%20Series/greencarbon_1_1_jlscud.jpg', 1, '78087'),
(13, 1, NULL, 160, 'Carbon Blue', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571275/Series/iPhone/iPhone%206/Carbon%20Series/bluecarbon_1_1_oqi2ni.jpg', 1, '78087'),
(14, 2, NULL, 160, 'Color Skin Blue', 'https://res.cloudinary.com/skincol-me/image/upload/v1567691413/Series/iPhone/iPhone%206/Color%20Series/bluefullbody_1_1_l9xabh.jpg', 1, '78087'),
(15, 2, NULL, 160, 'Color Skin Matte White', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571280/Series/iPhone/iPhone%206/Color%20Series/whitefullbody_1_1_1_hv1gd9.jpg', 1, '78087'),
(16, 2, NULL, 160, 'Color Skin White', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571280/Series/iPhone/iPhone%206/Color%20Series/whitefullbody_1_1_omfvam.jpg', 1, '78087'),
(17, 1, NULL, 160, 'Color Skin Purple', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571278/Series/iPhone/iPhone%206/Color%20Series/purplefullbody_1_2_nhorf5.jpg', 1, '78087'),
(18, 2, NULL, 160, 'Color Skin Orange', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571278/Series/iPhone/iPhone%206/Color%20Series/orangefullbody_1_1_hca70i.jpg', 1, '78087'),
(19, 2, NULL, 160, 'Color Skin Pink', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571278/Series/iPhone/iPhone%206/Color%20Series/pinkfullbody_1_1_l0duna.jpg', 1, '78087'),
(20, 2, NULL, 160, 'Color Skin Matte Black', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571278/Series/iPhone/iPhone%206/Color%20Series/blackfullbody_1_1_ihwqgd.jpg', 1, '78087'),
(21, 2, NULL, 160, 'Color Skin Black', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571278/Series/iPhone/iPhone%206/Color%20Series/blackfullbody_1_1_1_jncm7k.jpg', 1, '78087'),
(22, 2, NULL, 160, 'Color Skin Green', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571278/Series/iPhone/iPhone%206/Color%20Series/greenfullbody_1_1_nskwho.jpg', 1, '78087'),
(23, 3, NULL, 160, 'Camo Tradicional', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571274/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo6_1_2_dfyi2x.jpg', 1, '84892'),
(24, 3, NULL, 160, 'Camo Ghost', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571274/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo4_1_2_fgn70p.jpg', 1, '84892'),
(25, 3, NULL, 160, 'Camo Orange', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571274/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo1_1_2_fzu5o1.jpg', 1, '84892'),
(26, 3, NULL, 160, 'Camo Pink ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571274/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo3_1_2_vusxch.jpg', 1, '84892'),
(27, 3, NULL, 160, 'Camo Red', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571274/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo2_1_2_ki3lbw.jpg', 1, '84892'),
(28, 3, NULL, 160, 'Camo Red Green', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571275/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo5_1_2_yejowo.jpg', 1, '84892'),
(29, 3, NULL, 160, 'Camo Blue', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571274/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo7_1_2_u4uspy.jpg', 1, '84892'),
(30, 3, NULL, 160, 'Camo Urban Digital ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571275/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo8_1_2_h2xkm3.jpg', 1, '84892'),
(31, 3, NULL, 160, 'Camo Ocean Digital ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571273/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo10_1_2_igopnz.jpg', 1, '84892'),
(32, 3, NULL, 160, 'Camo Desert Digital ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571275/Series/iPhone/iPhone%206/Camo%20Series/iphone_6_trio_camo_camo9_1_2_ypt13c.jpg', 1, '84892'),
(33, 5, NULL, 160, 'Skin Arce', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571287/Series/iPhone/iPhone%206/Wood%20Series/maple_1_4_pz2bnp.jpg', 1, '78087'),
(34, 5, NULL, 160, 'Skin Escama de Oro ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571287/Series/iPhone/iPhone%206/Wood%20Series/goldflakeebony_1_1_ke6ngq.jpg', 1, '78087'),
(35, 5, NULL, 160, 'Skin Caoba', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571287/Series/iPhone/iPhone%206/Wood%20Series/mahogany_1_1_mwkh5b.jpg', 1, '78087'),
(36, 5, NULL, 160, 'Skin Teca', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571287/Series/iPhone/iPhone%206/Wood%20Series/teak_1_1_kxpvpa.jpg', 1, '78087'),
(37, 5, NULL, 160, 'Skin Cebra', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571288/Series/iPhone/iPhone%206/Wood%20Series/zebra_1_1_npnlox.jpg', 1, '78087'),
(38, 6, NULL, 160, 'Cobre Cepillado', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571283/Series/iPhone/iPhone%206/Metal%20Series/brushedcopper_1_1_1_llvjod.jpg', 1, '78087'),
(39, 6, NULL, 160, 'Oro Cepillado ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571283/Series/iPhone/iPhone%206/Metal%20Series/brushedgold_1_1_1_dsdrpy.jpg', 1, '78087'),
(40, 6, NULL, 160, 'Onyx Pulido', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571283/Series/iPhone/iPhone%206/Metal%20Series/brushedonyx_1_1_1_prh7se.jpg', 1, '78087'),
(41, 6, NULL, 160, 'Acero Pulido', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571283/Series/iPhone/iPhone%206/Metal%20Series/brushedsteel_1_1_q1usib.jpg', 1, '78087'),
(42, 8, NULL, 160, 'Piel de Cocodrilo Negra', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Leather%20Series/blackalligator_1_1_g4ehsh.jpg', 1, '78087'),
(43, 8, NULL, 160, 'Piel Negra', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Leather%20Series/blackleather_1_fy90mx.jpg', 1, '78087'),
(44, 8, NULL, 160, 'Cuero Maron ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Leather%20Series/brownleather_1_1_szfhlp.jpg', 1, '78087'),
(45, 8, NULL, 160, 'Piel de Cocodrillo Blanca', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571282/Series/iPhone/iPhone%206/Leather%20Series/whitealligator_1_1_jehvlo.jpg', 1, '78087'),
(46, 8, NULL, 160, 'Piel Naranja ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Leather%20Series/orangeleather_1_1_ztqfw5.jpg', 1, '78087'),
(47, 4, NULL, 160, 'Glitz Pink', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571280/Series/iPhone/iPhone%206/Glitz%20Series/glitterpink_1_2_wu9bu0.jpg', 1, '78087'),
(48, 4, NULL, 160, 'Glitz Purple', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571280/Series/iPhone/iPhone%206/Glitz%20Series/glitterbyzantine_1_3_c7zoc2.jpg', 1, '78087'),
(49, 4, NULL, 160, 'Glitz White', 'https://res.cloudinary.com/skincol-me/image/upload/v1567692985/Series/iPhone/iPhone%206/Glitz%20Series/glitterwhite_1_2_z9bmpj.jpg', 1, '78087'),
(50, 4, NULL, 160, 'Glitz Blue', 'https://res.cloudinary.com/skincol-me/image/upload/v1567734664/Series/iPhone/iPhone%206/Glitz%20Series/glitterfjordblue_1_1_1_bvtdux.jpg', 1, '78087'),
(51, 4, NULL, 160, 'Glitz Red', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Glitz%20Series/glitterred_1_2_o2kpkm.jpg', 1, '78087'),
(52, 4, NULL, 160, 'Glitz Orange', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571280/Series/iPhone/iPhone%206/Glitz%20Series/glitterorange_1_2_urtlux.jpg', 1, '78087'),
(53, 9, NULL, 160, 'Hormigon', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571286/Series/iPhone/iPhone%206/Stone%20Series/iphone_6_trio_concrete_1_swpdc3.jpg', 1, '84892'),
(54, 9, NULL, 160, 'Marmol Blanco', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571286/Series/iPhone/iPhone%206/Stone%20Series/iphone_6_trio_marble_5_ebhpmm.jpg', 1, '84892'),
(55, 9, NULL, 160, 'Marmol Negro', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571286/Series/iPhone/iPhone%206/Stone%20Series/iphone_6_trio_black-marble_5_mv9dxg.jpg', 1, '84892'),
(56, NULL, 4, 160, 'Hemp Skin', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571281/Series/iPhone/iPhone%206/Hemp%20Series/iphone_6_trio_hemp_5_n2azrs.jpg', 1, '84892'),
(57, NULL, 3, 160, 'Andy', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571270/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.andy_2_elcsn9.jpg', 1, '98502'),
(58, NULL, 3, 160, 'Antracita', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571270/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.anthracite_1_i9ku4d.jpg', 1, '98502'),
(59, NULL, 3, 160, 'Arancione Papaya', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571270/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.arancione-papaya_1_ney59z.jpg', 1, '98502'),
(60, NULL, 3, 160, 'Bon Bon', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571271/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.bon-bon_1_a8buf7.jpg', 1, '98502'),
(61, NULL, 3, 160, 'Hormigón ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571271/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.concrete_1_v3uxqx.jpg', 1, '98502'),
(62, NULL, 3, 160, 'Goya', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571271/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.goya_1_v4jytd.jpg', 1, '98502'),
(63, NULL, 3, 160, 'Piscina', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571272/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.pool_1_rvmkhh.jpg', 1, '98502'),
(64, NULL, 3, 160, 'Grillo', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571271/Series/iPhone/iPhone%206/Alcantara%20Series/580x580xiphone6.natural.series.wraps.skins.alcantara.cricket_1_v9sg4b.jpg', 1, '98502'),
(65, 7, NULL, 160, 'Bambú Real', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571283/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.bamboo.wood_3_ccthsc.jpg', 1, '91697'),
(66, 7, NULL, 160, 'Cuero Negro ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571283/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.black_3_ea2ki1.jpg', 1, '91697'),
(67, 7, NULL, 160, 'Corcho Real', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571284/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.cork.wood_3_nldflm.jpg', 1, '91697'),
(68, 7, NULL, 160, 'Marrón Oscuro ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571284/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.dark.brown_1_2_jxmgci.jpg', 1, '91697'),
(69, 7, NULL, 160, 'Arce Canadiense ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571285/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.maple.wood_3_er1ugw.jpg', 1, '91697'),
(70, 7, NULL, 160, 'Cuero Bronceado Desgastado ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571285/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.tan_3_w1prsa.jpg', 1, '91697'),
(71, 7, NULL, 160, 'Corona de Nogal Real', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571285/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.walnut.wood_3_rbawp9.jpg', 1, '91697'),
(72, 7, NULL, 160, 'Madera de Cebrea Real', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571285/Series/iPhone/iPhone%206/Natural%20Series/iphone6.natural.series.wraps.skins.zebra.wood_3_veackc.jpg', 1, '91697'),
(73, 7, NULL, 160, 'Caoba Real', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571285/Series/iPhone/iPhone%206/Natural%20Series/mahogany2_1_axaxbe.jpg', 1, '91697'),
(74, NULL, 14, 160, 'Edición de Aniversario Apple Skin ', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571272/Series/iPhone/iPhone%206/Anniversaty%20Edition/anniversary-6_11_rexarn.jpg', 1, '84892'),
(75, NULL, 15, 160, 'Apple Retro Skin', 'https://res.cloudinary.com/skincol-me/image/upload/v1567571273/Series/iPhone/iPhone%206/Apple%20Retro/iphonex-v2-retro_zyegz1.jpg', 1, '67505');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudskin`
--

CREATE TABLE `solicitudskin` (
  `IdSolicitud` int(11) NOT NULL,
  `IdSkin` int(11) NOT NULL,
  `IdDispositivo` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdAdmin` int(11) NOT NULL,
  `CostoPedido` decimal(11,0) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IdUser` int(11) NOT NULL,
  `IdCiudad` int(11) DEFAULT NULL,
  `Nivel` int(1) NOT NULL DEFAULT 1,
  `Nombres` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Apellidos` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Documento` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Telefono` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Direccion` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Email` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Contrasena` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IdUser`, `IdCiudad`, `Nivel`, `Nombres`, `Apellidos`, `Documento`, `Telefono`, `Direccion`, `Email`, `Contrasena`, `Estado`) VALUES
(1, 1, 1, 'Alejandro', 'Sorza', '1049652045', '3232011929', 'Calle 22 - 45', 'alejo@sorza.com', '1234', 1),
(2, 2, 2, 'Angélica ', 'Gomez', '1917289179', '3115711574', 'Calle 45 - 34', 'user@mail.com', '12345', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`IdCiudad`),
  ADD KEY `IdDepartamento` (`IdDepartamento`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`IdDepartamento`);

--
-- Indices de la tabla `dispositivo`
--
ALTER TABLE `dispositivo`
  ADD PRIMARY KEY (`IdDispositivo`);

--
-- Indices de la tabla `envio`
--
ALTER TABLE `envio`
  ADD PRIMARY KEY (`IdEnvio`),
  ADD KEY `IdFactura` (`IdFactura`),
  ADD KEY `IdUsurio` (`IdUsurio`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`IdFactura`),
  ADD KEY `IdSkin` (`IdSolicitud`),
  ADD KEY `IdUser` (`IdUser`);

--
-- Indices de la tabla `facturainsumos`
--
ALTER TABLE `facturainsumos`
  ADD PRIMARY KEY (`IdFacturaInsumos`),
  ADD KEY `IdProveedor` (`IdProveedor`),
  ADD KEY `IdMaterial` (`IdMaterial`);

--
-- Indices de la tabla `limitado`
--
ALTER TABLE `limitado`
  ADD PRIMARY KEY (`IdLimitado`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`IdMaterial`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`IdProveedor`);

--
-- Indices de la tabla `Serie`
--
ALTER TABLE `Serie`
  ADD PRIMARY KEY (`IdSerie`);

--
-- Indices de la tabla `skin`
--
ALTER TABLE `skin`
  ADD PRIMARY KEY (`IdSkin`),
  ADD KEY `IdCategoria` (`IdLimitado`),
  ADD KEY `IdDispositivo` (`IdDispositivo`),
  ADD KEY `IdSerie` (`IdSerie`);

--
-- Indices de la tabla `solicitudskin`
--
ALTER TABLE `solicitudskin`
  ADD PRIMARY KEY (`IdSolicitud`),
  ADD KEY `IdUser` (`IdUser`),
  ADD KEY `User_IdUser` (`IdAdmin`),
  ADD KEY `IdSkin` (`IdSkin`),
  ADD KEY `IdDispositivo` (`IdDispositivo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUser`),
  ADD KEY `IdCiudad` (`IdCiudad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `IdCiudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `IdDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `dispositivo`
--
ALTER TABLE `dispositivo`
  MODIFY `IdDispositivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT de la tabla `envio`
--
ALTER TABLE `envio`
  MODIFY `IdEnvio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `IdFactura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturainsumos`
--
ALTER TABLE `facturainsumos`
  MODIFY `IdFacturaInsumos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `limitado`
--
ALTER TABLE `limitado`
  MODIFY `IdLimitado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `IdMaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `IdProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Serie`
--
ALTER TABLE `Serie`
  MODIFY `IdSerie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `skin`
--
ALTER TABLE `skin`
  MODIFY `IdSkin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `solicitudskin`
--
ALTER TABLE `solicitudskin`
  MODIFY `IdSolicitud` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`IdDepartamento`) REFERENCES `departamento` (`IdDepartamento`);

--
-- Filtros para la tabla `envio`
--
ALTER TABLE `envio`
  ADD CONSTRAINT `envio_ibfk_1` FOREIGN KEY (`IdFactura`) REFERENCES `factura` (`IdFactura`),
  ADD CONSTRAINT `envio_ibfk_2` FOREIGN KEY (`IdUsurio`) REFERENCES `usuario` (`IdUser`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`IdSolicitud`) REFERENCES `solicitudskin` (`IdSolicitud`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`IdUser`) REFERENCES `usuario` (`IdUser`);

--
-- Filtros para la tabla `facturainsumos`
--
ALTER TABLE `facturainsumos`
  ADD CONSTRAINT `facturainsumos_ibfk_1` FOREIGN KEY (`IdProveedor`) REFERENCES `proveedor` (`IdProveedor`),
  ADD CONSTRAINT `facturainsumos_ibfk_2` FOREIGN KEY (`IdMaterial`) REFERENCES `material` (`IdMaterial`);

--
-- Filtros para la tabla `skin`
--
ALTER TABLE `skin`
  ADD CONSTRAINT `skin_ibfk_1` FOREIGN KEY (`IdLimitado`) REFERENCES `limitado` (`IdLimitado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skin_ibfk_2` FOREIGN KEY (`IdDispositivo`) REFERENCES `dispositivo` (`IdDispositivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skin_ibfk_3` FOREIGN KEY (`IdSerie`) REFERENCES `Serie` (`IdSerie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitudskin`
--
ALTER TABLE `solicitudskin`
  ADD CONSTRAINT `solicitudskin_ibfk_1` FOREIGN KEY (`IdDispositivo`) REFERENCES `dispositivo` (`IdDispositivo`),
  ADD CONSTRAINT `solicitudskin_ibfk_2` FOREIGN KEY (`IdUser`) REFERENCES `usuario` (`IdUser`),
  ADD CONSTRAINT `solicitudskin_ibfk_3` FOREIGN KEY (`IdAdmin`) REFERENCES `usuario` (`IdUser`),
  ADD CONSTRAINT `solicitudskin_ibfk_4` FOREIGN KEY (`IdSkin`) REFERENCES `skin` (`IdSkin`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`IdCiudad`) REFERENCES `ciudad` (`IdCiudad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
