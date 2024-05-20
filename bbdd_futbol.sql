-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2024 a las 20:37:51
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bbdd_futbol`
--
CREATE DATABASE IF NOT EXISTS `bbdd_futbol` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bbdd_futbol`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campeonatos`
--

CREATE TABLE `campeonatos` (
  `id_campeonato` int(11) NOT NULL,
  `competicion` int(11) NOT NULL,
  `temporada` int(11) NOT NULL,
  `equipo_campeon` int(11) NOT NULL,
  `equipo_subcampeon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `campeonatos`
--

INSERT INTO `campeonatos` (`id_campeonato`, `competicion`, `temporada`, `equipo_campeon`, `equipo_subcampeon`) VALUES
(16, 4, 1, 14, 5),
(17, 5, 2, 7, 2),
(18, 5, 3, 7, NULL),
(19, 5, 4, 2, 7),
(20, 5, 5, 2, 7),
(21, 5, 6, 2, 14),
(22, 5, 7, 2, 15),
(23, 5, 8, 16, 11),
(24, 5, 9, 7, 17),
(25, 5, 10, 5, 18),
(26, 5, 11, 7, 11),
(27, 5, 11, 5, 19),
(28, 5, 12, 36, 7),
(29, 5, 12, 5, 3),
(30, 5, 13, 7, 20),
(31, 5, 14, 7, 11),
(32, 5, 15, 7, 2),
(33, 5, 16, 2, 13),
(34, 5, 17, 12, 2),
(35, 5, 18, 13, 5),
(36, 5, 19, 5, 7),
(37, 5, 20, 7, 6),
(38, 5, 21, 5, 12),
(39, 5, 22, 7, 21),
(40, 5, 23, 12, 2),
(41, 5, 24, 5, 13),
(42, 5, 25, 5, 6),
(43, 5, 26, 12, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competiciones`
--

CREATE TABLE `competiciones` (
  `id_competicion` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `competiciones`
--

INSERT INTO `competiciones` (`id_competicion`, `nombre`) VALUES
(9, 'Copa de Europa'),
(11, 'Copa de Ferias'),
(4, 'Copa de la Coronacion'),
(12, 'Copa de la UEFA'),
(7, 'Copa de S. E. El Generalismo'),
(5, 'Copa de S. M. el Rey'),
(6, 'Copa del Presidente de la República'),
(15, 'Copa Intercontinental'),
(13, 'Europa League'),
(3, 'Liga española'),
(16, 'Mundiales de Clubes'),
(10, 'Recopa'),
(14, 'Super copa de Europa'),
(8, 'Supercopa de España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id_equipo`, `nombre`, `pais`) VALUES
(1, 'Real Zaragoza', 120),
(2, 'Real Madrid', 120),
(3, 'Real Sociedad', 120),
(4, 'Real Betis Balompié', 120),
(5, 'Fútbol Club Barcelona', 120),
(6, 'Atlético de Madrid', 120),
(7, 'Athletic Club de Bilbao', 120),
(8, 'Valencia Club de Fútbol', 120),
(9, 'Sevilla Fútbol Club', 120),
(10, 'Real Club Deportivo de la Coruña', 120),
(11, 'Real Club Deportivo Español de Barcelona', 120),
(12, 'Real Unión Club de Irún', 120),
(13, 'Arenas Club de Guecho', 120),
(14, 'Vizcaya', 120),
(15, 'Vigo Sporting', 120),
(16, 'Club Ciclista de San Sebastián', 120),
(17, 'Basconia', 120),
(18, 'Club Español de Madrid', 120),
(19, 'Gimnástica', 120),
(20, 'España', 120),
(21, 'Europa', 120),
(22, 'Sabadell', 120),
(23, 'Racing Club de Ferrol', 120),
(24, 'Real Club Celta de Vigo', 120),
(25, 'Real Valladolid', 120),
(26, 'Granada', 120),
(27, 'Elche', 120),
(28, 'Club Deportivo Castellón', 120),
(29, 'Unión Deportiva Las Palmas', 120),
(30, 'Castilla Club de Fútbol', 120),
(31, 'Sporting de Gijón', 120),
(32, 'Real Club Deportivo Mallorca', 120),
(33, 'Real Club Recreativo de Huelva', 120),
(34, 'Club Atlético Osasuna', 120),
(35, 'Getafe Club de Fútbol', 120),
(36, 'Racing de Irún', 120),
(37, 'Racing de Santander', 120),
(38, 'Atlético Aviación', 120),
(39, 'Villareal Club de Fútbol', 120),
(40, 'A.C.F. Fiorentina', 165),
(41, 'Glasgow Rangers', 117),
(42, 'Sporting de Lisboa', 217),
(43, 'MTK Budapest', 148),
(44, 'West Ham United', 151),
(45, 'TSV Munich', 273),
(46, 'Borussia Dortmund', 273),
(47, 'Liverpool', 151),
(48, 'Bayern Munich', 273),
(49, 'A.C. Milan', 165),
(50, 'Hamburgo SV', 273),
(51, 'Slovan Bratislava', 220),
(52, 'Górnik Zabrze', 216),
(53, 'Chelsea', 151),
(54, 'Dinamo Moscú', 226),
(55, 'Leeds United', 151),
(56, 'F.C. Magdeburgo', 273),
(57, 'Dinamo Kiev', 226),
(58, 'Ferencváros', 148),
(59, 'Anderlecht', 22),
(60, 'Austria Viena', 16),
(61, 'Fortuna Düsseldorf', 273),
(62, 'Arsenal', 151),
(63, 'Dinamo Tbilisi', 226),
(64, 'Carl Zeiss Jena', 273),
(65, 'Standard Lieja', 22),
(66, 'Aberdeen', 117),
(67, 'Juventus', 165),
(68, 'Oporto', 217),
(69, 'Everton', 151),
(70, 'Rapid Viena', 16),
(71, 'Ajax', 209),
(72, 'Lokomotiv Leipzig', 273),
(73, 'K.V. Mechelen', 22),
(74, 'Sampdoria', 165),
(75, 'Manchester United', 151),
(76, 'Werder Bremen', 273),
(77, 'A.S. Mónaco', 127),
(78, 'Parma', 165),
(79, 'Amberes', 22),
(80, 'París Saint-Germain', 127),
(81, 'VfB Stuttgart', 273),
(82, 'Lazio', 165);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id_pais` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `abreviatura` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id_pais`, `nombre`, `abreviatura`) VALUES
(1, 'Angola', 'ANG'),
(2, 'Andorra', 'AND'),
(8, 'Anguila', 'AIA'),
(9, 'Antigua y Barbuda', 'ATG'),
(10, 'Arabia Saudita', 'KSA'),
(11, 'Argelia', 'ALG'),
(12, 'Argentina', 'ARG'),
(13, 'Armenia', 'ARM'),
(14, 'Aruba', 'ARU'),
(15, 'Australia', 'AUS'),
(16, 'Austria', 'AUT'),
(17, 'Azerbaiyan', 'AZE'),
(18, 'Bahamas', 'BAH'),
(19, 'Banglades', 'BAN'),
(20, 'Barbados', 'BRB'),
(21, 'Barein', 'BHR'),
(22, 'Belgica', 'BEL'),
(23, 'Belice', 'BLZ'),
(24, 'Benin', 'BEN'),
(25, 'Bermudas', 'BER'),
(26, 'Bielorrusia', 'BLR'),
(27, 'Birmania', 'MYA'),
(28, 'Bolivia', 'BOL'),
(29, 'Bonaire', 'BOE'),
(30, 'Bosnia y Herzegovina	', 'BIH'),
(31, 'Botsuana', 'BOT'),
(32, 'Brasil', 'BRA'),
(33, 'Brunéi', 'BRU'),
(34, 'Bulgaria', 'BUL'),
(35, 'Burkina Faso', 'BFA'),
(36, 'Burundi', 'BDI'),
(37, 'Bután', 'BHU'),
(38, 'Cabo Verde', 'CPV'),
(39, 'Camboya', 'CAM'),
(40, 'Camerún', 'CMR'),
(41, 'Canadá', 'CAN'),
(42, 'Catar', 'QAT'),
(43, 'Chad', 'CHA'),
(44, 'Chile', 'CHI'),
(45, 'China', 'CHN'),
(46, 'China Taipéi', 'TPE'),
(47, 'Chipre', 'CYP'),
(48, 'Chipre del Norte', 'NCY'),
(49, 'Colombia', 'COL'),
(50, 'Comoras', 'COM'),
(51, 'Corea del Norte', 'PRK'),
(52, 'Corea del Sur', 'KOR'),
(53, 'Costa de Marfil', 'CIV'),
(54, 'Costa Rica', 'CRC'),
(55, 'Croacia', 'CRO'),
(105, 'Cuba', 'CUB'),
(109, 'Curazao', 'CUW'),
(110, 'Dinamarca', 'DEN'),
(111, 'Dominica', 'DMA'),
(112, 'Ecuador', 'ECU'),
(113, 'Egipto', 'EGY'),
(114, 'El Salvador', 'SLV'),
(115, 'Emiratos Árabes Unidos', 'UAE'),
(116, 'Eritrea', 'ERI'),
(117, 'Escocia', 'SCO'),
(118, 'Eslovaquia', 'SVK'),
(119, 'Eslovenia', 'SVN'),
(120, 'España', 'ESP'),
(121, 'Estados Unidos', 'USA'),
(122, 'Estonia', 'EST'),
(123, 'Etiopía', 'ETH'),
(124, 'Filipinas', 'PHI'),
(125, 'Finlandia', 'FIN'),
(126, 'Fiyi', 'FIJ'),
(127, 'Francia', 'FRA'),
(131, 'Gabón', 'GAB'),
(132, 'Gales', 'WAL'),
(133, 'Gambia', 'GAM'),
(134, 'Georgia', 'GEO'),
(135, 'Ghana', 'GHA'),
(136, 'Gibraltar', 'GIB'),
(137, 'Granada', 'GRN'),
(138, 'Grecia', 'GRE'),
(139, 'Guam', 'GUM'),
(140, 'Guatemala', 'GUA'),
(141, 'Guadalupe', 'GLP'),
(142, 'Guinea-Bisáu', 'GNB'),
(143, 'Guinea Ecuatorial', 'EQG'),
(144, 'Guyana', 'GUY'),
(145, 'Haití', 'HAI'),
(146, 'Honduras', 'HON'),
(147, 'Hong Kong', 'HKG'),
(148, 'Hungría', 'HUN'),
(149, 'India', 'IND'),
(150, 'Indonesia', 'IDN'),
(151, 'Inglaterra', 'ENG'),
(152, 'Irak', 'IRQ'),
(153, 'Irán', 'IRN'),
(154, 'Irlanda', 'IRL'),
(155, 'Irlanda del Norte	', 'NIR'),
(156, 'Islandia', 'ISL'),
(157, 'Islas Caimán', 'CAY'),
(158, 'Islas Cook', 'COK'),
(159, 'Islas Feroe', 'FRO'),
(160, 'Islas Salomón', 'SOL'),
(161, 'Islas Turcas y Caicos', 'TCA'),
(162, 'Islas Vírgenes Británicas', 'VGB'),
(163, 'Islas Vírgenes Estadounidenses', 'VIR'),
(164, 'Israel', 'ISR'),
(165, 'Italia', 'ITA'),
(166, 'Jamaica', 'JAM'),
(167, 'Japón', 'JPN'),
(168, 'Jordania', 'JOR'),
(169, 'Kazajistán', 'KAZ'),
(170, 'Kenia', 'KEN'),
(171, 'Kirguistán', 'KGZ'),
(172, 'Kosovo', 'KOS'),
(173, 'Kuwait', 'KUW'),
(174, 'Laos', 'LAO'),
(175, 'Lesoto', 'LES'),
(176, 'Letonia', 'LVA'),
(177, 'Líbano', 'LBN'),
(178, 'Liberia', 'LBR'),
(179, 'Libia', 'LBY'),
(180, 'Liechtenstein', 'LIE'),
(181, 'Lituania', 'LTU'),
(182, 'Luxemburgo', 'LUX'),
(183, 'Macao', 'MAC'),
(184, 'Macedonia del Norte', 'MKD'),
(185, 'Madagascar', 'MAD'),
(186, 'Malasia', 'MAS'),
(187, 'Malaui', 'MWI'),
(188, 'Maldivas', 'MDV'),
(189, 'Malí', 'MLI'),
(190, 'Malta', 'MLT'),
(191, 'Marruecos', 'MAR'),
(192, 'Mauricio', 'MRI'),
(193, 'Mauritania', 'MTN'),
(194, 'México', 'MEX'),
(195, 'Moldavia', 'MDA'),
(196, 'Mongolia', 'MNG'),
(197, 'Montenegro', 'MNE'),
(198, 'Montserrat', 'MSR'),
(199, 'Mozambique', 'MOZ'),
(200, 'Namibia', 'NAM'),
(201, 'Nepal', 'NEP'),
(202, 'Nicaragua', 'NCA'),
(203, 'Níger', 'NIG'),
(204, 'Nigeria', 'NGA'),
(205, 'Noruega', 'NOR'),
(206, 'Nueva Caledonia', 'NCL'),
(207, 'Nueva Zelanda', 'NZL'),
(208, 'Omán', 'OMA'),
(209, 'Países Bajos', 'NED'),
(210, 'Pakistán', 'PAK'),
(211, 'Palestina', 'PLE'),
(212, 'Panamá', 'PAN'),
(213, 'Papúa Nueva Guinea', 'PNG'),
(214, 'Paraguay', 'PAR'),
(215, 'Perú', 'PER'),
(216, 'Polonia', 'POL'),
(217, 'Portugal', 'POR'),
(218, 'Puerto Rico', 'PUR'),
(219, 'República Centroafricana', 'CTA'),
(220, 'República Checa', 'CZE'),
(221, 'República del Congo', 'CGO'),
(222, 'República Democrática del Congo', 'COD'),
(223, 'República Dominicana', 'DOM'),
(224, 'Ruanda', 'RWA'),
(225, 'Rumania', 'ROU'),
(226, 'Rusia', 'RUS'),
(227, 'Samoa', 'SAM'),
(228, 'Samoa Americana', 'ASA'),
(229, 'San Cristóbal y Nieves', 'SKN'),
(230, 'San Marino', 'SMR'),
(231, 'San Vicente y las Granadinas', 'VIN'),
(232, 'Santa Lucía', 'LCA'),
(233, 'Santo Tomé y Príncipe', 'STP'),
(234, 'Senegal', 'SEN'),
(235, 'Serbia', 'SRB'),
(236, 'Seychelles', 'SEY'),
(237, 'Sierra Leona', 'SLE'),
(238, 'Singapur', 'SGP'),
(239, 'Siria', 'SYR'),
(240, 'Somalia', 'SOM'),
(241, 'Sri Lanka', 'SRI'),
(242, 'Suazilandia', 'SWZ'),
(243, 'Sudáfrica', 'RSA'),
(244, 'Sudán', 'SDN'),
(247, 'Sudán del Sur', 'SSD'),
(248, '	Suecia', 'SWE'),
(249, '	Suiza', 'SUI'),
(250, 'Surinam', 'SUR'),
(251, 'Tahití', 'TAH'),
(252, 'Tailandia', 'THA'),
(253, 'Tanzania', 'TAN'),
(254, 'Tayikistán', 'TJK'),
(255, 'Timor Oriental', 'TLS'),
(256, 'Togo', 'TOG'),
(257, 'Tonga', 'TGA'),
(258, 'Trinidad y Tobago', 'TRI'),
(259, 'Túnez', 'TUN'),
(260, 'Turkmenistán', 'TKM'),
(261, 'Turquía', 'TUR'),
(262, 'Ucrania', 'UKR'),
(263, 'Uganda', 'UGA'),
(264, 'Uruguay', 'URU'),
(265, 'Uzbekistán', 'UZB'),
(266, 'Vanuatu', 'VAN'),
(267, 'Venezuela', 'VEN'),
(268, 'Vietnam', 'VIE'),
(269, 'Yemen', 'YEM'),
(270, 'Yibuti', 'DJI'),
(271, 'Zambia', 'ZAM'),
(272, 'Zimbabue', 'ZIM'),
(273, 'Alemania', 'GER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporadas`
--

CREATE TABLE `temporadas` (
  `id_temporada` int(11) NOT NULL,
  `anyo_inicio` year(4) NOT NULL,
  `anyo_fin` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `temporadas`
--

INSERT INTO `temporadas` (`id_temporada`, `anyo_inicio`, `anyo_fin`) VALUES
(1, '1904', '1905'),
(2, '1905', '1906'),
(3, '1906', '1907'),
(4, '1907', '1908'),
(5, '1908', '1909'),
(6, '1909', '1910'),
(7, '1910', '1911'),
(8, '1911', '1912'),
(9, '1912', '1913'),
(10, '1913', '1914'),
(11, '1914', '1915'),
(12, '1915', '1916'),
(13, '1916', '1917'),
(14, '1917', '1918'),
(15, '1918', '1919'),
(16, '1919', '1920'),
(17, '1920', '1921'),
(18, '1921', '1922'),
(19, '1922', '1923'),
(20, '1923', '1924'),
(21, '1924', '1925'),
(22, '1925', '1926'),
(23, '1926', '1927'),
(24, '1927', '1928'),
(25, '1928', '1929'),
(26, '1929', '1930'),
(27, '1930', '1931'),
(28, '1931', '1932'),
(29, '1932', '1933'),
(30, '1933', '1934'),
(31, '1934', '1935'),
(32, '1935', '1936'),
(33, '1938', '1939'),
(34, '1939', '1940'),
(35, '1940', '1941'),
(36, '1941', '1942'),
(37, '1942', '1943'),
(38, '1943', '1944'),
(39, '1944', '1945'),
(40, '1945', '1946'),
(41, '1946', '1947'),
(42, '1947', '1948'),
(43, '1948', '1949'),
(44, '1949', '1950'),
(45, '1950', '1951'),
(46, '1951', '1952'),
(47, '1952', '1953'),
(48, '1953', '1954'),
(49, '1954', '1955'),
(50, '1955', '1956'),
(51, '1956', '1957'),
(52, '1957', '1958'),
(53, '1958', '1959'),
(54, '1959', '1960'),
(55, '1960', '1961'),
(56, '1961', '1962'),
(57, '1962', '1963'),
(58, '1963', '1964'),
(59, '1964', '1965'),
(60, '1965', '1966'),
(61, '1966', '1967'),
(62, '1967', '1968'),
(63, '1968', '1969'),
(64, '1969', '1970'),
(65, '1970', '1971'),
(66, '1971', '1972'),
(67, '1972', '1973'),
(68, '1973', '1974'),
(69, '1974', '1975'),
(70, '1975', '1976'),
(71, '1976', '1977'),
(72, '1977', '1978'),
(73, '1978', '1979'),
(74, '1979', '1980'),
(75, '1980', '1981'),
(76, '1981', '1982'),
(77, '1982', '1983'),
(78, '1983', '1984'),
(79, '1984', '1985'),
(80, '1985', '1986'),
(81, '1986', '1987'),
(82, '1987', '1988'),
(83, '1988', '1989'),
(84, '1989', '1990'),
(85, '1990', '1991'),
(86, '1991', '1992'),
(87, '1992', '1993'),
(88, '1993', '1994'),
(89, '1994', '1995'),
(90, '1995', '1996'),
(91, '1996', '1997'),
(92, '1997', '1998'),
(93, '1998', '1999'),
(94, '1999', '2000'),
(95, '2000', '2001'),
(96, '2001', '2002'),
(97, '2002', '2003'),
(98, '2003', '2004'),
(99, '2004', '2005'),
(100, '2005', '2006'),
(101, '2006', '2007'),
(102, '2007', '2008'),
(103, '2008', '2009'),
(104, '2009', '2010'),
(105, '2010', '2011');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `campeonatos`
--
ALTER TABLE `campeonatos`
  ADD PRIMARY KEY (`id_campeonato`),
  ADD KEY `fk_competicion` (`competicion`),
  ADD KEY `fk_temporada` (`temporada`),
  ADD KEY `fk_equipoCampeon` (`equipo_campeon`),
  ADD KEY `fk_equipoSubcampeon` (`equipo_subcampeon`);

--
-- Indices de la tabla `competiciones`
--
ALTER TABLE `competiciones`
  ADD PRIMARY KEY (`id_competicion`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id_equipo`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `fk_pais` (`pais`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id_pais`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD UNIQUE KEY `abreviatura` (`abreviatura`);

--
-- Indices de la tabla `temporadas`
--
ALTER TABLE `temporadas`
  ADD PRIMARY KEY (`id_temporada`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campeonatos`
--
ALTER TABLE `campeonatos`
  MODIFY `id_campeonato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `competiciones`
--
ALTER TABLE `competiciones`
  MODIFY `id_competicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id_pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT de la tabla `temporadas`
--
ALTER TABLE `temporadas`
  MODIFY `id_temporada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `campeonatos`
--
ALTER TABLE `campeonatos`
  ADD CONSTRAINT `fk_competicion` FOREIGN KEY (`competicion`) REFERENCES `competiciones` (`id_competicion`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_equipoCampeon` FOREIGN KEY (`equipo_campeon`) REFERENCES `equipos` (`id_equipo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_equipoSubcampeon` FOREIGN KEY (`equipo_subcampeon`) REFERENCES `equipos` (`id_equipo`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_temporada` FOREIGN KEY (`temporada`) REFERENCES `temporadas` (`id_temporada`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `fk_pais` FOREIGN KEY (`pais`) REFERENCES `paises` (`id_pais`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
