-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-08-2020 a las 00:22:13
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prestamos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cedula` varchar(50) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idcliente`, `nombre`, `cedula`, `direccion`, `telefono`, `estado`) VALUES
(5, 'ACOSTA ROMINA', '32.499.679', 'B.2 DE ABRIL MZ 42 CSA 13 SECTOR E', '3704-805897', 1),
(6, 'AGUILAR DESIDERIA', '23.589.848', 'B. ANTENOR GAUNA MZ 39 CSA 47', '3704-664704', 1),
(7, 'ALFONZO RITO OSBALDO', '11.752.610', 'B.CONO SUR MZ 79 CSA 12', '3704-624692', 1),
(8, 'AMARILLA CILVIA CAROLINA', '29.857.878', 'B.LIBORSI -EGIDEO TASSONE 679', '3704-826498', 1),
(9, 'BARRIOS MARIA GISEL', '33.544.437', 'AV. NAPOLEON  URIBURU 569- S. MARTIN', '3704-592964', 1),
(10, 'BENITEZ GERARDO DANIEL', '36.669.688', 'B-FONTANA ( HECHEGARAY 325)', '3704-551921', 1),
(11, 'CACERES CARMEN BEATRIZ', '33.587.606', 'B. ANTENOR GAUNA MZ 39 CSA 47', '3704-824322', 1),
(12, 'CACERES MARCELO ADRIAN', '34.598.624', 'AV.NAPOLEON URIBURU 777 B. S.MARTIN', '3704-059068', 1),
(13, 'CAJE MIRTA CRISTINA', '25.849.862', 'B-J.DOMINGO PERON MZ56 CSA 1', '3704-825597', 1),
(14, 'DAVICHI ANGEL IVAN', '35.038.614', 'B-OBRERO -SALTA 2468', '3704-210457', 1),
(15, 'DAVID ALBERTO ARGENTINO', '17.560.265', 'B-EVA PERON MZ 51 CSA 39', '', 1),
(16, 'ESCOBAR ROSALIA ANAHI', '38.379.063', 'J.JOSE SILVA 2145 - FONTANA', '3704-629006', 1),
(17, 'FIGUEROA FERNANDO', '31.400.353', 'J', '3704-668787', 1),
(18, 'GALEANO DIEGO', '30.352.248', 'B. ANTENOR GAUNA MZ 39 CSA 47', '3704-904298', 1),
(19, 'GAUNA ANDREA JIMENA', '36.669.637', 'B-REPUBLICA ARGENTINA MZ 59 CSA 4', '3704-209496', 1),
(20, 'GAVILAN GISEL EDITH', '34.394.486', 'B-OBRERO -P.FREITA 1375', '3704-680915', 1),
(21, 'GUDIÑO MARIANA AGOSTINA', '40.212.654', 'B-FONTANA -J.JOSE SILVA 2062', '3704-845778', 1),
(22, 'GUIMENEZ DEBORA CECILIA', '29.752.477', 'B.2 DE ABRIL MZ 58 CSA 10', '3704-044461', 1),
(23, 'LLOPIZ MARIA ALEJANDRA VALERIA', '33.988.133', 'S.CALLE S.N 0 -VILLA DEL CARMEN', '3704-', 1),
(24, 'MERETA CINTIA SOLEDAD', '36.020.754', 'B.SIMON BOLIVAR MZ 40 CSA 33', '3704-856110', 1),
(25, 'NIGUITORI SEBASTIAN MARTIN', '35.625.431', 'VICENTE L.1265 B.VILLA DEL ROSARIO', '3704843854', 1),
(26, 'ORTIZ RAUL', '37.910.593', 'ECHEGARAY 1450 B-OBRERO', '3704-584506', 1),
(27, 'PEÑA CLAUDIA BEATRIZ', '31.562.457', 'CORONEL BOGADO 1785 B-S.PEDRO', '3704-285810', 1),
(28, 'ROJAS GONZALO DE JESUS', '39.719.254', 'B-INDEPENDENCIA-JUNNIN 1660', '3704-267382', 1),
(29, 'ROMERO FRANCO FABIAN', '37.588.060', 'B.EVA PERON MZ 71 CSA 26', '3704-544340', 1),
(30, 'SAUCEDO VERONICA NOEMI', '27.283.240', 'B.JUAN PABLO 2DA MZ 4 CSA 5', '3704-331868', 1),
(31, 'SOSA BRENDA JACQUELINA', '38.541.843', 'B.MARADONA Y 3RA ( PALOMAR )', '3705-046911', 1),
(32, 'VAZQUES MARCELO ARIEL', '28.698.413', 'B.S.AGUSTIN ( MASAFERRO 427 )', '3704-059068', 1),
(33, 'VERA ADELA ROSAURA', '27.339.373', 'B.MARIANO MORENO ( AZCUEGANA 1335 )', '3704-305771', 1),
(34, 'VILLALVA ANA ELIZABETH', '35.239.606', 'B.EL POR VENIR MZ 71 CSA 3', '', 1),
(35, 'ZALAZAR EVARISTA', '22.713.791', 'B.REPUBLICA ARGENTINA MZ 71 CSA 3', '3704-038810', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `idgasto` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `concepto` varchar(50) NOT NULL,
  `gasto` decimal(16,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `idpago` int(11) NOT NULL,
  `idprestamo` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  `cuota` decimal(16,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` int(11) NOT NULL,
  `permiso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `permiso`) VALUES
(1, 'Escritorio'),
(2, 'Clientes'),
(3, 'Prestamos'),
(4, 'Pagos'),
(5, 'Usuarios'),
(6, 'Gastos'),
(7, 'Consultas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `idprestamo` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `fprestamo` datetime NOT NULL,
  `monto` decimal(16,2) NOT NULL,
  `interes` decimal(16,2) NOT NULL,
  `saldo` decimal(16,2) NOT NULL,
  `formapago` varchar(20) DEFAULT NULL,
  `fpago` datetime DEFAULT NULL,
  `plazo` varchar(20) DEFAULT NULL,
  `fplazo` datetime DEFAULT NULL,
  `estado` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`idprestamo`, `idcliente`, `usuario`, `fprestamo`, `monto`, `interes`, `saldo`, `formapago`, `fpago`, `plazo`, `fplazo`, `estado`) VALUES
(1, 5, 7, '2020-08-05 00:00:00', '10.00', '40.00', '1400.00', 'Quincenal', '2020-07-05 00:00:00', 'Semana', '2020-08-05 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariopermiso`
--

CREATE TABLE `usuariopermiso` (
  `idusuariopermiso` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idpermiso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuariopermiso`
--

INSERT INTO `usuariopermiso` (`idusuariopermiso`, `idusuario`, `idpermiso`) VALUES
(82, 5, 1),
(83, 5, 2),
(84, 5, 3),
(85, 5, 4),
(86, 5, 5),
(87, 5, 6),
(88, 5, 7),
(89, 8, 1),
(90, 8, 2),
(91, 8, 3),
(92, 8, 4),
(93, 8, 5),
(94, 8, 6),
(95, 7, 1),
(96, 7, 2),
(97, 7, 3),
(98, 7, 4),
(99, 7, 5),
(100, 7, 6),
(101, 7, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `clave` varchar(64) NOT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombre`, `direccion`, `telefono`, `login`, `clave`, `imagen`, `estado`) VALUES
(5, 'Ariel Martin Cacerez', 'Pringles 662', '3704 019453', 'ArielMcacerez', 'd1420d266fe9147c8261f7ddf27e90dbce67096db73407e1fdd96e525c6612f9', '1595245376.png', 1),
(7, 'Martin Toledo', 'B° Rca Agentina', '3704814655', 'MartinT', '6ee3e817c4cafab1e736863750e436b5e903dc5da193b16bda4b20798b6c467d', '', 1),
(8, 'ADMIN', 'ADMIN', '11111111', 'admin', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`),
  ADD UNIQUE KEY `idclientes_UNIQUE` (`idcliente`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`idgasto`),
  ADD UNIQUE KEY `idgasto_UNIQUE` (`idgasto`),
  ADD KEY `fkgastosusuarios_idx` (`idusuario`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`idpago`),
  ADD KEY `fkPrestamos_idx` (`idprestamo`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`idprestamo`),
  ADD KEY `fkClientes_idx` (`idcliente`),
  ADD KEY `fkusuarios_idx` (`usuario`);

--
-- Indices de la tabla `usuariopermiso`
--
ALTER TABLE `usuariopermiso`
  ADD PRIMARY KEY (`idusuariopermiso`),
  ADD UNIQUE KEY `idusuariopermiso_UNIQUE` (`idusuariopermiso`),
  ADD KEY `fkPermiso_idx` (`idpermiso`),
  ADD KEY `fkUsuario_idx` (`idusuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `idusuario_UNIQUE` (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `idgasto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `idpago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `idprestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuariopermiso`
--
ALTER TABLE `usuariopermiso`
  MODIFY `idusuariopermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD CONSTRAINT `fkgastosusuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `fkPrestamos` FOREIGN KEY (`idprestamo`) REFERENCES `prestamos` (`idprestamo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `fkClientes` FOREIGN KEY (`idcliente`) REFERENCES `clientes` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkusuarios` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuariopermiso`
--
ALTER TABLE `usuariopermiso`
  ADD CONSTRAINT `usuariopermiso_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`),
  ADD CONSTRAINT `usuariopermiso_ibfk_2` FOREIGN KEY (`idpermiso`) REFERENCES `permisos` (`idpermiso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
