-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Servidor: 159.89.17.4
-- Tiempo de generación: 26-05-2019 a las 20:40:25
-- Versión del servidor: 10.2.21-MariaDB-1:10.2.21+maria~bionic-log
-- Versión de PHP: 7.0.33-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `howismyl_coches_net`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_matriculas_new`
--

CREATE TABLE `wp_matriculas_new` (
  `fecha` date NOT NULL DEFAULT '0000-00-00',
  `numeros` int(4) DEFAULT NULL,
  `letras` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_matriculas_new`
--

INSERT INTO `wp_matriculas_new` (`fecha`, `numeros`, `letras`) VALUES
('2000-09-30', 9263, 'BBJ'),
('2015-01-31', 402, 'JCK'),
('2015-02-28', 1454, 'JCY'),
('2015-03-31', 7955, 'JDR'),
('2015-04-30', 1892, 'JFG'),
('2015-05-31', 100, 'JFX'),
('2015-06-30', 327, 'JGR'),
('2015-07-31', 5033, 'JHJ'),
('2015-08-31', 6735, 'JHT'),
('2015-09-30', 410, 'JJH'),
('2000-10-31', 3356, 'BCD'),
('2000-11-30', 2736, 'BCY'),
('2000-12-31', 5269, 'BDR'),
('2001-01-31', 4795, 'BFJ'),
('2001-02-28', 3229, 'BGF'),
('2001-03-31', 2731, 'BHG'),
('2001-04-30', 5412, 'BJC'),
('2001-05-31', 6778, 'BKB'),
('2001-06-30', 4874, 'BLC'),
('2001-07-31', 4959, 'BMF'),
('2001-08-31', 2120, 'BMW'),
('2001-09-30', 3430, 'BNL'),
('2001-10-31', 5385, 'BPG'),
('2001-11-30', 592, 'BRB'),
('2001-12-31', 9902, 'BRT'),
('2002-01-31', 6587, 'BSL'),
('2002-02-28', 1647, 'BTF'),
('2002-03-31', 9656, 'BTZ'),
('2002-04-30', 1974, 'BVW'),
('2002-05-31', 503, 'BWT'),
('2002-06-30', 5032, 'BXP'),
('2002-07-31', 9036, 'BYP'),
('2002-08-31', 4663, 'BZF'),
('2002-09-30', 3684, 'BZV'),
('2002-10-31', 7042, 'CBP'),
('2002-11-30', 9549, 'CCH'),
('2002-12-31', 5896, 'CDC'),
('2003-01-31', 2079, 'CDV'),
('2003-02-28', 5301, 'CFM'),
('2003-03-31', 7114, 'CGJ'),
('2003-04-30', 7918, 'CHF'),
('2003-05-31', 1886, 'CJC'),
('2003-06-30', 4989, 'CKB'),
('2003-07-31', 9974, 'CLD'),
('2003-08-31', 2563, 'CLV'),
('2003-09-30', 231, 'CMM'),
('2003-10-31', 879, 'CNK'),
('2003-11-30', 3575, 'CPF'),
('2003-12-31', 1135, 'CRC'),
('2004-01-31', 8436, 'CRV'),
('2004-02-29', 913, 'CSS'),
('2004-03-31', 7282, 'CTT'),
('2004-04-30', 9468, 'CVR'),
('2004-05-31', 300, 'CWR'),
('2004-06-30', 5814, 'CXT'),
('2004-07-31', 1758, 'CYY'),
('2004-08-31', 7243, 'CZP'),
('2004-09-30', 8990, 'DBJ'),
('2004-10-31', 183, 'DCH'),
('2004-11-30', 2594, 'DDG'),
('2004-12-31', 4655, 'DFF'),
('2005-01-31', 6154, 'DFZ'),
('2005-02-28', 4970, 'DGX'),
('2005-03-31', 4167, 'DHZ'),
('2005-04-30', 4187, 'DKB'),
('2005-05-31', 1611, 'DLD'),
('2005-06-30', 7710, 'DMJ'),
('2005-07-31', 4002, 'DNP'),
('2005-08-31', 2141, 'DPK'),
('2005-09-30', 2052, 'DRG'),
('2005-10-31', 4329, 'DSC'),
('2005-11-30', 8241, 'DTB'),
('2005-12-31', 6587, 'DVB'),
('2006-01-31', 8319, 'DVW'),
('2006-02-28', 9757, 'DWT'),
('2006-03-31', 7647, 'DXZ'),
('2006-04-30', 8793, 'DYY'),
('2006-05-31', 8717, 'FBC'),
('2006-06-30', 8944, 'FCJ'),
('2006-07-31', 2356, 'FDP'),
('2006-08-31', 2904, 'FFK'),
('2006-09-30', 4547, 'FGF'),
('2006-10-31', 3960, 'FHD'),
('2006-11-30', 1113, 'FJD'),
('2006-12-31', 535, 'FKC'),
('2007-01-31', 3949, 'FKY'),
('2007-02-28', 9188, 'FLV'),
('2007-03-31', 7446, 'FNB'),
('2007-04-30', 586, 'FNZ'),
('2007-05-31', 9596, 'FRC'),
('2007-06-30', 3693, 'FSJ'),
('2007-07-31', 2263, 'FTP'),
('2007-08-31', 7285, 'FVJ'),
('2007-09-30', 5369, 'FWC'),
('2007-10-31', 5989, 'FXB'),
('2007-11-30', 6382, 'FXY'),
('2007-12-31', 2265, 'FYY'),
('2008-01-31', 9610, 'FZR'),
('2008-02-29', 1153, 'GBN'),
('2008-03-31', 2101, 'GCK'),
('2008-04-30', 2298, 'GDH'),
('2008-05-31', 8201, 'GFC'),
('2008-06-30', 695, 'GFY'),
('2008-07-31', 7106, 'GGV'),
('2008-08-31', 8157, 'GHG'),
('2008-09-30', 7891, 'GHT'),
('2008-10-31', 1517, 'GJJ'),
('2008-11-30', 1647, 'GJV'),
('2008-12-31', 5062, 'GKH'),
('2009-01-31', 4383, 'GKS'),
('2009-02-28', 7185, 'GLC'),
('2009-03-31', 9879, 'GLP'),
('2009-04-30', 2508, 'GMC'),
('2009-05-31', 9809, 'GMN'),
('2009-06-30', 8771, 'GNF'),
('2009-07-31', 3626, 'GNY'),
('2009-08-31', 4877, 'GPJ'),
('2009-09-30', 9050, 'GPW'),
('2009-10-31', 7528, 'GRM'),
('2009-11-30', 1588, 'GSC'),
('2009-12-31', 8384, 'GSR'),
('2010-01-31', 9629, 'GTC'),
('2010-02-28', 5738, 'GTS'),
('2010-03-31', 2900, 'GVM'),
('2010-04-30', 7669, 'GWC'),
('2010-05-31', 3166, 'GWV'),
('2010-06-30', 3138, 'GXP'),
('2010-07-31', 6536, 'GYD'),
('2010-08-31', 1532, 'GYM'),
('2010-09-30', 3091, 'GYX'),
('2010-10-31', 401, 'GZJ'),
('2010-11-30', 9044, 'GZT'),
('2010-12-31', 1048, 'HBG'),
('2011-01-31', 3902, 'HBP'),
('2011-02-28', 2355, 'HCB'),
('2011-03-31', 126, 'HCR'),
('2011-04-30', 7410, 'HDC'),
('2011-05-31', 4434, 'HDR'),
('2011-06-30', 8856, 'HFF'),
('2011-07-31', 6720, 'HFT'),
('2011-08-31', 3618, 'HGC'),
('2011-09-30', 3513, 'HGM'),
('2011-10-31', 6703, 'HGX'),
('2011-11-30', 9121, 'HHH'),
('2011-12-31', 5354, 'HHT'),
('2012-01-31', 6656, 'HJC'),
('2012-02-29', 8733, 'HJM'),
('2012-03-31', 6052, 'HKB'),
('2012-04-30', 1066, 'HKL'),
('2012-05-31', 5749, 'HKX'),
('2012-06-30', 2863, 'HLK'),
('2012-07-31', 2263, 'HLW'),
('2012-08-31', 9979, 'HMD'),
('2012-09-30', 2822, 'HML'),
('2012-10-31', 7453, 'HMT'),
('2012-11-30', 1971, 'HNC'),
('2012-12-31', 6667, 'HNK'),
('2013-01-31', 994, 'HNT'),
('2013-02-28', 3681, 'HPC'),
('2013-03-31', 3671, 'HPN'),
('2013-04-30', 5848, 'HPY'),
('2013-05-31', 7469, 'HRK'),
('2013-06-30', 3651, 'HRX'),
('2013-07-31', 4223, 'HSK'),
('2013-08-31', 421, 'HSS'),
('2013-09-30', 4851, 'HSZ'),
('2013-10-31', 9158, 'HTK'),
('2013-11-30', 2381, 'HTV'),
('2013-12-31', 1481, 'HVF'),
('2014-01-31', 2881, 'HVN'),
('2014-02-28', 909, 'HVZ'),
('2014-03-31', 3816, 'HWM'),
('2014-04-30', 49, 'HXB'),
('2014-05-31', 9245, 'HXN'),
('2014-06-30', 6108, 'HYD'),
('2014-07-31', 768, 'HYT'),
('2014-08-31', 4872, 'HZB'),
('2014-09-30', 6484, 'HZL'),
('2014-10-31', 3987, 'HZZ'),
('2014-11-30', 2431, 'JBL'),
('2014-12-31', 2463, 'JBY'),
('2000-09-18', 0, 'BBB'),
('2015-10-31', 6761, 'JJW'),
('2015-11-30', 9862, 'JKK'),
('2015-12-31', 9874, 'JKZ'),
('2016-01-31', 4258, 'JLN'),
('2016-02-29', 4151, 'JMF'),
('2016-03-31', 2245, 'JMY'),
('2016-04-30', 944, 'JNR'),
('2016-07-30', 2000, 'JRZ'),
('2016-08-31', 5000, 'JSK'),
('2016-09-30', 0, 'JTB'),
('2016-10-31', 9000, 'JTN'),
('2016-12-31', 2997, 'JVZ'),
('2017-01-31', 7901, 'JWN'),
('2017-02-28', 7999, 'JXF'),
('2017-03-31', 6599, 'JYB'),
('2017-04-30', 4594, 'JYT'),
('2017-07-31', 5000, 'KCH'),
('2017-05-31', 5000, 'JZP'),
('2017-06-30', 5000, 'KBM'),
('2016-05-31', 5000, 'JPK'),
('2016-06-30', 5000, 'JRG'),
('2016-11-30', 5000, 'JVH'),
('2017-08-31', 5000, 'KCT'),
('2017-09-30', 5000, 'KDH'),
('2017-10-31', 5000, 'KFC'),
('2017-11-30', 1900, 'KFW'),
('2017-12-31', 750, 'KGN'),
('2018-01-31', 1250, 'KHG'),
('2018-02-28', 9000, 'KHY'),
('2018-03-31', 9750, 'KJV'),
('2018-04-30', 32, 'KKR'),
('2018-05-31', 5088, 'KLN'),
('2018-06-30', 7728, 'KMM'),
('2018-07-31', 7469, 'KNK'),
('2018-08-31', 3160, 'KPD'),
('2018-09-30', 1288, 'KPS'),
('2018-10-31', 5823, 'KRJ'),
('2018-11-30', 5000, 'KRZ'),
('2019-01-31', 5000, 'KTJ'),
('2019-02-28', 5000, 'KVB'),
('2019-03-29', 5000, 'KVX'),
('2018-12-31', 5000, 'KSS'),
('2019-04-30', 5000, 'KWT');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_matriculas_new`
--
ALTER TABLE `wp_matriculas_new`
  ADD UNIQUE KEY `fecha` (`fecha`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;