-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-09-2019 a las 00:12:05
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.1.31

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
  `Imagen` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `dispositivo`
--

INSERT INTO `dispositivo` (`IdDispositivo`, `Modelo`, `Marca`, `Tipo`, `Imagen`) VALUES
(1, 'iPhone XS max', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566081/Dispositivos/Phone/Apple/iPhoneXS_MAX_1_ufxxfy.webp'),
(2, 'iPhone XS', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566082/Dispositivos/Phone/Apple/iPhonexs_1_bowd3q.jpg'),
(3, 'iPhone XR', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566080/Dispositivos/Phone/Apple/iPhonexr_1_gnomh8.jpg'),
(4, 'iPhone X', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566081/Dispositivos/Phone/Apple/iphonex_2_hmrjmv.jpg'),
(5, 'iPhone 8 Plus', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566080/Dispositivos/Phone/Apple/iphone8plus_jsvxmi.jpg'),
(6, 'iPhone 8', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566081/Dispositivos/Phone/Apple/iphone8_1_ltr6bo.jpg'),
(7, 'iPhone 7 Plus', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566081/Dispositivos/Phone/Apple/i7P_3_zefgwc.jpg'),
(8, 'iPhone 7', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566080/Dispositivos/Phone/Apple/iphonex_7_1_k20zop.jpg'),
(9, 'iPhone 6S Plus', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566082/Dispositivos/Phone/Apple/6s_plus_2_ut8gfq.jpg'),
(10, 'iPhone 6', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566082/Dispositivos/Phone/Apple/iphone6s_1_q4bvuv.jpg'),
(11, 'iPhone SE', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566080/Dispositivos/Phone/Apple/iphone_se_1_hweiqo.jpg'),
(12, 'iPhone 6 Plus', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566083/Dispositivos/Phone/Apple/6plus_1_don6yt.jpg'),
(13, 'Galaxy S7 Edge', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxy7edge_a8skac.jpg'),
(14, 'Galaxy S7', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxyS7_mtgg6d.jpg'),
(15, 'Galaxy S8', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568480/Dispositivos/Phone/Samsung/galaxys8_sbixds.jpg'),
(16, 'Galaxy S8 Plus', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxys8plus_dvixzg.jpg'),
(17, 'Galaxy Note 8', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/Note-8_Cases_Thumbnail_ohd3ec.jpg'),
(18, 'Galaxy S9', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxys9_re7wix.jpg'),
(19, 'Galaxy S9 Plus', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxys9plus_w4uxhi.jpg'),
(20, 'Galaxy Note 9', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/Galaxy-Note-9-280_zoui8q.jpg'),
(21, 'Galaxy S10e', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/s10e_ijt0am.jpg'),
(22, 'Galaxy S10', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxys10-1_1_di4era.jpg'),
(23, 'Galaxy S10 Plus', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxys10plus-1_1_kgep9h.jpg'),
(24, 'Galaxy S10 5G', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568479/Dispositivos/Phone/Samsung/galaxys10_5G_ezu5y6.jpg'),
(25, 'Galaxy Fold', 'Samsung', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568480/Dispositivos/Phone/Samsung/galaxyFold_i7vdyd.png'),
(37, 'Nexus 5X', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566159/Dispositivos/Phone/Google/nexus5x_iey5uh.jpg'),
(38, 'Nexus 6P', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566159/Dispositivos/Phone/Google/nexus6p_ofkpqd.jpg'),
(39, 'Pixel XL', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566158/Dispositivos/Phone/Google/pixel_huyfpo.jpg'),
(40, 'Pixel', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566159/Dispositivos/Phone/Google/pixel_small_psweqi.jpg'),
(41, 'Pixel 2 XL', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566159/Dispositivos/Phone/Google/pixelxl2_product_floszu.jpg'),
(42, 'Pixel 2', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566158/Dispositivos/Phone/Google/pixel2_product_aywlev.jpg'),
(43, 'Pixel 3 XL', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566159/Dispositivos/Phone/Google/pixel3xl_sw_azoqm7.jpg'),
(44, 'Pixel 3', 'Google', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566159/Dispositivos/Phone/Google/pixel3_sw_xvb58y.jpg'),
(45, 'HTC One M7', 'HTC', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566203/Dispositivos/Phone/HTC/m7_pgrrje.jpg'),
(46, 'HTC One M8', 'HTC', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566203/Dispositivos/Phone/HTC/m8_4_byeoy1.jpg'),
(47, 'HTC One M9', 'HTC', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566203/Dispositivos/Phone/HTC/m9hd_s3fcch.jpg'),
(48, 'HTC 10', 'HTC', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566203/Dispositivos/Phone/HTC/htc10_a9iuvx.jpg'),
(49, 'HTC U Ultra', 'HTC', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566203/Dispositivos/Phone/HTC/htc_u_ultra_r9vvi5.jpg'),
(50, 'HTC U11', 'HTC', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566203/Dispositivos/Phone/HTC/htcu11_ycjvx3.jpg'),
(51, 'LG G3', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568413/Dispositivos/Phone/LG/g3_7_nxagl2.jpg'),
(52, 'LG G4', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568413/Dispositivos/Phone/LG/lgg4.wraps.skins_1_ba0tza.jpg'),
(53, 'LG G5', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568413/Dispositivos/Phone/LG/lgg5_xbhuha.jpg'),
(54, 'LG V20', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568413/Dispositivos/Phone/LG/lgv20_iyvk5t.jpg'),
(55, 'LG G6', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568413/Dispositivos/Phone/LG/lgg6_gjinyo.jpg'),
(56, 'LG V30', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568414/Dispositivos/Phone/LG/v30_zff1tj.jpg'),
(57, 'LG G7', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568414/Dispositivos/Phone/LG/g7_b9qg4m.jpg'),
(58, 'LG V40 ThinQ', 'LG', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568413/Dispositivos/Phone/LG/v40_b3ne9k.jpg'),
(59, 'Moto X', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568448/Dispositivos/Phone/Motorola/motox_adqvep.jpg'),
(60, 'Moto X 2nd Gen', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568448/Dispositivos/Phone/Motorola/motox2nd_enp7wi.jpg'),
(61, 'Moto G 2nd Gen', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568447/Dispositivos/Phone/Motorola/motog_sfde3i.jpg'),
(62, 'Moto G 3rd Gen', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568448/Dispositivos/Phone/Motorola/motog3rd_erjtxj.jpg'),
(63, 'Moto X Pure Edition', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568448/Dispositivos/Phone/Motorola/motoxpure_spxs9c.jpg'),
(64, 'Moto Z Force', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568447/Dispositivos/Phone/Motorola/moto-z-force_htjmy0.jpg'),
(65, 'Moto Z', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568447/Dispositivos/Phone/Motorola/moto-z_eqp9hp.jpg'),
(66, 'Moto X4', 'Motorola', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568448/Dispositivos/Phone/Motorola/motox4_kxrgis.jpg'),
(90, 'Sony Xperia Z1', 'Sony', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568591/Dispositivos/Phone/Sony/z2_1_1_ixkwbv.jpg'),
(91, 'Sony Xperia Z2', 'Sony', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568591/Dispositivos/Phone/Sony/z2_ori_lhsuef.jpg'),
(92, 'Sony Xperia Z3 Compact', 'Sony', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568591/Dispositivos/Phone/Sony/z3compact_yb7mci.jpg'),
(93, 'Sony Xperia Z3', 'Sony', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568591/Dispositivos/Phone/Sony/z3_yghqud.jpg'),
(94, 'Sony Xperia Z5', 'Sony', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568591/Dispositivos/Phone/Sony/z5_lmhn0e.jpg'),
(95, 'Huawei P9', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568377/Dispositivos/Phone/Huawei/P9_xkervv.jpg'),
(96, 'Honor 7X', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568377/Dispositivos/Phone/Huawei/Honor7x_vevnwx.jpg'),
(97, 'Mate 10', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568377/Dispositivos/Phone/Huawei/Mate10_uexrre.jpg'),
(98, 'Mate 10 Pro', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568377/Dispositivos/Phone/Huawei/Mate10pro_ttvo1j.jpg'),
(99, 'Huawei P20 Pro', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568378/Dispositivos/Phone/Huawei/P20Pro_lkusqh.jpg'),
(100, 'Huawei Mate 20 Pro', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568377/Dispositivos/Phone/Huawei/MateP20Pro_qruybn.jpg'),
(101, 'Huawei P30', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568377/Dispositivos/Phone/Huawei/p30_nav_blue_vhexxs.jpg'),
(102, 'Huawei P30 Pro', 'Huawei', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568378/Dispositivos/Phone/Huawei/p30pro_nav_orange_eaoxfo.jpg'),
(103, 'Xiaomi Mi 5', 'Xiaomi', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568658/Dispositivos/Phone/Xioami/mi5_jhzewg.jpg'),
(104, 'Xiaomi Redmi Note 3', 'Xiaomi', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568658/Dispositivos/Phone/Xioami/note3-1_qolkhr.jpg'),
(105, 'Xiaomi Redmi Note 4', 'Xiaomi', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568658/Dispositivos/Phone/Xioami/mi_note4_1_txo7ao.jpg'),
(106, 'Xiaomi Pocophone F1', 'Xiaomi', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568658/Dispositivos/Phone/Xioami/pocophonef1_duhgxx.jpg'),
(107, 'Amazon Kindle Fire', 'Amazon', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568990/Dispositivos/Tablets/kindle_tjialj.jpg'),
(108, 'Nexus 7', 'Google', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568987/Dispositivos/Tablets/nexus7_1_jy6uzo.jpg'),
(109, 'Nexus 9', 'Google', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568986/Dispositivos/Tablets/nexus9_b17ndz.jpg'),
(110, 'iPad Mini', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568985/Dispositivos/Tablets/mini_1_wsa483.jpg'),
(111, 'iPad Mini Retina', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568996/Dispositivos/Tablets/mini_retina_1_zb1iau.jpg'),
(112, 'iPad Mini 3', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568985/Dispositivos/Tablets/mini_1_wsa483.jpg'),
(113, 'iPad Mini 4', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568986/Dispositivos/Tablets/mini4_bzlpg2.jpg'),
(114, 'iPad Mini 5', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568991/Dispositivos/Tablets/mini5_efjm14.jpg'),
(115, 'iPad Air', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568986/Dispositivos/Tablets/air_rnqshd.jpg'),
(116, 'iPad Air 2', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568995/Dispositivos/Tablets/ipadair2_mtx3s3.jpg'),
(117, 'iPad Air 3', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568996/Dispositivos/Tablets/iPad_Air_3-Product_Image_ilgqrb.jpg'),
(118, 'iPad 2', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568987/Dispositivos/Tablets/ipad2th_kpjrjv.jpg'),
(119, 'iPad 3rd Gen', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568988/Dispositivos/Tablets/ipad3th_x6boce.jpg'),
(120, 'iPad 4th Gen', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568991/Dispositivos/Tablets/ipad4th_ne913a.jpg'),
(121, 'iPad Pro 9.7 (2018)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568992/Dispositivos/Tablets/ipad2018_vearq2.jpg'),
(122, 'iPad Pro 9.7 (2015)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568985/Dispositivos/Tablets/ipadpro97_a74ab0.jpg'),
(123, 'iPad Pro 12.9 (2015)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568987/Dispositivos/Tablets/ipadpro_aena4j.jpg'),
(124, 'iPad Pro 12.9 (2017)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568991/Dispositivos/Tablets/ipadpro129_kkddb6.jpg'),
(125, 'iPad Pro 10.5 (2017)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568991/Dispositivos/Tablets/ipadpro105_1_brhwvm.jpg'),
(126, 'iPad Pro 12.9 (2018)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568990/Dispositivos/Tablets/ipadpro129-2018_sp4n0u.jpg'),
(127, 'iPad Pro 11 (2018)', 'Apple', 'Tablets', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568986/Dispositivos/Tablets/ipadpro11-2018_uvbqic.jpg'),
(128, 'Macbook Air 11\" (2012 - 2017)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568746/Dispositivos/Computer/Laptos/air11_1_bv4n8k.jpg'),
(129, 'Macbook Air 13\" (2018)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568746/Dispositivos/Computer/Laptos/NEW_macbookair13_hbenek.jpg'),
(130, 'Macbook Pro 15\" (Retina 2012 - 2016)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568745/Dispositivos/Computer/Laptos/pro15_yzpbvy.jpg'),
(131, 'Macbook Pro 13· (Retina 2012 - 2016)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568745/Dispositivos/Computer/Laptos/retina13_ovuqj9.jpg'),
(132, 'Macbook 12\" (2015)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568745/Dispositivos/Computer/Laptos/macbook_p6tuoa.jpg'),
(133, 'Macbook Pro 15\" (Touch Bar)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568745/Dispositivos/Computer/Laptos/NEW_macbook15_ggk70p.jpg'),
(134, 'Macbook Pro 13\" (Touch Bar)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568745/Dispositivos/Computer/Laptos/NEW_macbook13_fnfrmb.jpg'),
(135, 'Macbook Pro 13 (No Touch Bar)', 'Apple', 'Portatiles', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568745/Dispositivos/Computer/Laptos/NEW_macbook13_1_zaixdq.jpg'),
(136, 'Magic Trackpad', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568768/Dispositivos/Computer/Laptos/trackpad_j5dzpq.jpg'),
(137, 'Magic Trackpad 2', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568769/Dispositivos/Computer/Laptos/magictrackpad2_1_u3ro9q.jpg'),
(138, 'Wired Keyboard', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568768/Dispositivos/Computer/Laptos/wired_mcdaml.jpg'),
(139, 'Wireless Keyboard', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568768/Dispositivos/Computer/Laptos/wireless_v6kcil.jpg'),
(140, 'Magic Keyboard', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568768/Dispositivos/Computer/Laptos/wireles00s_frrg1c.jpg'),
(141, 'Magic Mouse', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568768/Dispositivos/Computer/Laptos/mouse_1-1_ow0obd.jpg'),
(142, 'Magic Mouse 2', 'Apple', 'Otros', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568768/Dispositivos/Computer/Laptos/mouse_1-1_ow0obd.jpg'),
(143, 'Nintendo 3DS/XL', 'Nintendo', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568914/Dispositivos/Gaming/Nintendo/3ds_1_opu58m.jpg'),
(144, 'New Nintendo 3DSL XL', 'Nintendo', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568914/Dispositivos/Gaming/Nintendo/new3ds_gkrywo.jpg'),
(145, 'Switch Pro Dualshock', 'Nintendo', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568914/Dispositivos/Gaming/Nintendo/procont_x7bj1e.jpg'),
(146, 'Nintendo Switch', 'Nintendo', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568914/Dispositivos/Gaming/Nintendo/switch_buyvah.jpg'),
(147, 'Xbox 360 Dualshock', 'Xbox', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568864/Dispositivos/Gaming/Xbox/x360_xepjsn.jpg'),
(148, 'Xbox Elite Dualshock', 'Xbox', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568864/Dispositivos/Gaming/Xbox/elite_oj7ysb.jpg'),
(149, 'Xbox One S Dualshock', 'Xbox', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568864/Dispositivos/Gaming/Xbox/xboxones_1_sfp9pr.jpg'),
(150, 'Xbox One', 'Xbox', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568864/Dispositivos/Gaming/Xbox/xbox_nologo_1_e40mn9.jpg'),
(151, 'Xbox One S', 'Xbox', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568864/Dispositivos/Gaming/Xbox/xboxones_hcoe7t.jpg'),
(152, 'Xbox One X', 'Xbox', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568864/Dispositivos/Gaming/Xbox/xboxonex_1_xlquip.jpg'),
(153, 'PS3 Dualshock', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568942/Dispositivos/Gaming/PlayStation/ps3_cont_kaea9f.jpg'),
(154, 'PS4 Dualshock', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568942/Dispositivos/Gaming/PlayStation/ps4_cont_vgqape.jpg'),
(155, 'PS Vita', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568943/Dispositivos/Gaming/PlayStation/ps_vita_ughzlg.jpg'),
(156, 'PlayStation VR', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568942/Dispositivos/Gaming/PlayStation/ps4_VR_zxvsks.jpg'),
(157, 'PlayStation 4', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568943/Dispositivos/Gaming/PlayStation/ps4_new_vogttu.jpg'),
(158, 'PlayStation 4 Slim', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568942/Dispositivos/Gaming/PlayStation/ps4_newslim_feezgc.jpg'),
(159, 'PlayStation 4 Pro', 'PlayStation', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1566568942/Dispositivos/Gaming/PlayStation/ps4_pro_new_1_gs9d0j.jpg'),
(160, 'iPhone 6', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566082/Dispositivos/Phone/Apple/iphone6_k7dmq7.jpg'),
(161, 'iPhone 5S', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566082/Dispositivos/Phone/Apple/iphone_5s_1_pa1mwi.jpg'),
(162, 'iPhone 5C', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566081/Dispositivos/Phone/Apple/iphone5c_bdllkd.jpg'),
(163, 'iPhone 5', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566082/Dispositivos/Phone/Apple/iphone5_ugbyaa.jpg'),
(164, 'iPhone 4/4s', 'Apple', 'phone', 'https://res.cloudinary.com/skincol-me/image/upload/v1566566083/Dispositivos/Phone/Apple/iphone4_1_laepo1.jpg'),
(165, 'Nintendo Switch Lite', 'Nintendo', 'Consolas', 'https://res.cloudinary.com/skincol-me/image/upload/v1567305964/Dispositivos/Gaming/Nintendo/switch-lite_1_zl6ado.jpg');

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
  `IdUser` int(11) NOT NULL
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
  `Imagen` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

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
-- Estructura de tabla para la tabla `skin`
--

CREATE TABLE `skin` (
  `IdSkin` int(11) NOT NULL,
  `IdLimitado` int(11) DEFAULT NULL,
  `Imagen` longblob DEFAULT NULL,
  `Disponible` tinyint(1) DEFAULT NULL,
  `ImgUsuario` varchar(1000) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CostoSkin` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

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
  `CostoPedido` decimal(11,0) NOT NULL
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
  `Fecha` date DEFAULT NULL,
  `Estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IdUser`, `IdCiudad`, `Nivel`, `Nombres`, `Apellidos`, `Documento`, `Telefono`, `Direccion`, `Email`, `Contrasena`, `Fecha`, `Estado`) VALUES
(1, 1, 1, 'Alejandro', 'Sorza', '1049652045', '3232011929', 'Calle 22 - 45', 'alejo@sorza.com', '1234', NULL, 1),
(2, 2, 2, 'Angélica ', 'Gomez', '1917289179', '3115711574', 'Calle 45 - 34', 'user@mail.com', '12345', NULL, 1);

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
-- Indices de la tabla `skin`
--
ALTER TABLE `skin`
  ADD PRIMARY KEY (`IdSkin`),
  ADD KEY `IdCategoria` (`IdLimitado`);

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
  MODIFY `IdLimitado` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `skin`
--
ALTER TABLE `skin`
  MODIFY `IdSkin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  ADD CONSTRAINT `skin_ibfk_1` FOREIGN KEY (`IdLimitado`) REFERENCES `limitado` (`IdLimitado`) ON DELETE CASCADE ON UPDATE CASCADE;

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
