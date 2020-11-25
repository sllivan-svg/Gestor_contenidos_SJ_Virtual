-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2020 a las 01:46:32
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sjvirtual`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SB_INGRESOS_TABLA` ()  SELECT * FROM ingresos$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DATOSGRAFICO_BAR` ()  SELECT `fechaingreso` FROM `estudiantes`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DATOS_INGRESOS` ()  SELECT fecha FROM ingresos$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `codigo` varchar(124) NOT NULL,
  `semestre` varchar(122) NOT NULL,
  `jornada` varchar(10) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `id_sede` int(11) NOT NULL DEFAULT 0,
  `fechaingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `apellido`, `codigo`, `semestre`, `jornada`, `carrera`, `id_sede`, `fechaingreso`) VALUES
(1, 'daniel', 'beltran', '05', '1', 'noche', 'ingenieria en sistemas', 1, '2018-06-06'),
(2, 'andres', 'cifuenets', '94', '1', 'noche', 'Diseño de modas', 2, '2019-02-06'),
(3, 'camilo', 'hernandez', '84', '1', 'mañana', 'ingenieria en sistemas', 2, '2018-06-06'),
(4, 'felipe', 'gonzales', '74', '1', 'mañana', 'Diseño de modas', 2, '2018-02-13'),
(5, 'cristian', 'gomez', '64', '1', 'noche', 'ingenieria en sistemas', 1, '2017-02-06'),
(6, 'maicol', 'fernandez', '54', '1', 'mañana', 'Diseño de modas', 2, '2018-11-06'),
(7, 'michel', 'lopez', '55', '1', 'noche', 'Diseño de modas', 1, '2018-02-06'),
(8, 'julio', 'dias', '44', '1', 'noche', 'Diseño de modas', 1, '2017-02-06'),
(9, 'juan', 'perez', '34', '1', 'noche', 'ingenieria en sistemas', 1, '2020-02-06'),
(10, 'hector', 'garcia', '24', '1', 'noche', 'ingenieria en sistemas', 2, '2020-06-06'),
(11, 'valentina', 'romero', '14', '1', 'noche', 'ingenieria en sistemas', 1, '2020-02-06'),
(12, 'esteban', 'sosa', '93', '1', 'mañana', 'ingenieria en sistemas', 2, '2020-02-06'),
(13, 'ruben', 'torres', '83', '1', 'noche', 'ingenieria en sistemas', 2, '2017-06-06'),
(14, 'sebastian', 'ruiz', '73', '1', 'mañana', 'ingenieria en sistemas', 2, '2018-02-06'),
(15, 'leonor', 'alvarez', '63', '1', 'mañana', 'ingenieria en sistemas', 2, '2018-02-06'),
(16, 'willian', 'flores', '53', '1', 'noche', 'Diseño de modas', 2, '2018-06-06'),
(17, 'diana', 'benitez', '43', '1', 'noche', 'ingenieria en sistemas', 2, '2020-02-06'),
(18, 'omar', 'herrera', '33', '1', 'noche', 'ingenieria en sistemas', 2, '2018-02-06'),
(19, 'ruben', 'chica', '23', '1', 'noche', 'ingenieria en sistemas', 2, '2019-02-06'),
(20, 'roberto', 'medina', '13', '1', 'noche', 'ingenieria industrial', 1, '2018-06-06'),
(21, 'ney', 'sanchez', '92', '1', 'mañana', 'ingenieria industrial', 2, '2017-02-06'),
(22, 'angel', 'garcia', '82', '1', 'noche', 'ingenieria en sistemas', 2, '2017-06-06'),
(23, 'carlos', 'gimenez', '72', '1', 'mañana', 'ingenieria industrial', 2, '2018-02-06'),
(24, 'pepe', 'gutierrez', '62', '1', 'mañana', 'administracion de empresas', 2, '2020-02-06'),
(25, 'alison', 'nuñez', '52', '1', 'noche', 'ingenieria en sistemas', 1, '2020-02-06'),
(26, 'giobana', 'ortiz', '42', '1', 'noche', 'ingenieria industrial', 2, '2020-06-06'),
(27, 'giobani', 'castro', '32', '1', 'noche', 'ingenieria industrial', 2, '2017-02-06'),
(28, 'jeiner', 'rojas', '22', '1', 'noche', 'ingenieria en sistemas', 2, '2018-02-06'),
(29, 'jose', 'luna', '105', '1', 'mañana', 'ingenieria en sistemas', 2, '2018-02-06'),
(30, 'sandra', 'suarez', '91', '1', 'noche', 'ingenieria industrial', 1, '2017-06-06'),
(31, 'carmen', 'peralta', '81', '1', 'noche', 'ingenieria industrial', 1, '2020-02-06'),
(32, 'samuel', 'castillo', '71', '1', 'mañana', 'ingenieria en sistemas', 2, '2017-02-06'),
(33, 'samel', 'carrizo', '61', '1', 'noche', 'ingenieria en sistemas', 2, '2020-02-06'),
(34, 'sam', 'castillo', '56', '1', 'noche', 'ingenieria industrial', 2, '2020-02-06'),
(35, 'jana', 'munoz', '41', '1', 'noche', 'ingenieria industrial', 2, '2020-06-06'),
(36, 'fredy', 'rmaos', '31', '1', 'noche', 'ingenieria en sistemas', 2, '2017-02-06'),
(37, 'queen', 'vasques', '21', '1', 'noche', 'ingenieria en sistemas', 1, '2017-02-06'),
(38, 'yair', 'caceres', '11', '1', 'noche', 'ingenieria industrial', 1, '2020-02-06'),
(39, 'sabado', 'figueroa', '45', '1', 'noche', 'administracion de empresas', 2, '2020-06-06'),
(40, 'antonio', 'cordoba', '88', '1', 'mañana', 'administracion de empresas', 2, '2017-02-06'),
(41, 'manuel', 'ariza', '87', '1', 'mañana', 'ingenieria en sistemas', 2, '2020-06-06'),
(42, 'davird', 'miranda', '86', '1', 'mañana', 'ingenieria en sistemas', 2, '2020-02-06'),
(43, 'javier', 'aguero', '65', '1', 'mañana', 'ingenieria en sistemas', 2, '2020-06-06'),
(44, 'edivier', 'guzman', '64', '1', 'mañana', 'ingenieria en sistemas', 1, '2017-02-06'),
(45, 'luis', 'escobar', '69', '1', 'noche', 'ingenieria en sistemas', 2, '2017-06-13'),
(46, 'laura', 'valenxia', '99', '1', 'noche', 'administracion de empresas', 2, '2020-02-06'),
(47, 'maria', 'barrios', '89', '1', 'noche', 'administracion de empresas', 2, '2020-06-06'),
(48, 'carmen', 'bustos', '100', '1', 'noche', 'administracion de empresas', 2, '2017-02-06'),
(49, 'dana', 'rios', '50', '1', 'mañana', 'ingenieria en sistemas', 1, '2017-06-06'),
(50, 'paula', 'mendoza', '51', '1', 'mañana', 'ingenieria en sistemas', 2, '2020-06-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id` int(50) NOT NULL,
  `id_estudiante` varchar(20) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id`, `id_estudiante`, `fecha`) VALUES
(1, '14', '2017-10-01'),
(2, '14', '2016-12-02'),
(3, '21', '2015-10-03'),
(4, '14', '2017-12-04'),
(5, '13', '2019-11-05'),
(6, '13', '2018-10-06'),
(7, '105', '2020-05-07'),
(8, '31', '2017-06-08'),
(9, '31', '2016-07-09'),
(10, '32', '2015-05-10'),
(11, '33', '2016-04-11'),
(12, '34', '2017-02-12'),
(13, '41', '2019-01-13'),
(14, '42', '2020-02-14'),
(15, '42', '2017-03-15'),
(16, '42', '2016-04-16'),
(17, '48', '2015-05-17'),
(18, '46', '2015-08-18'),
(19, '31', '2016-07-19'),
(20, '21', '2019-09-20'),
(21, '11', '2020-10-21'),
(22, '13', '2017-12-22'),
(23, '14', '2016-05-23'),
(24, '55', '2017-02-24'),
(25, '54', '2019-06-25'),
(26, '54', '2020-04-26'),
(27, '53', '2018-03-27'),
(28, '52', '2019-02-28'),
(29, '51', '2018-04-29'),
(30, '56', '2019-05-30'),
(31, '11', '2020-08-21'),
(32, '13', '2017-09-22'),
(33, '21', '2016-10-23'),
(34, '23', '2016-12-24'),
(35, '23', '2018-11-25'),
(36, '24', '2019-10-26'),
(37, '32', '2020-04-27'),
(38, '22', '2017-05-29'),
(39, '21', '2016-06-10'),
(40, '32', '2019-04-02'),
(41, '14', '2019-05-15'),
(42, '32', '2018-12-02'),
(43, '33', '2016-06-01'),
(44, '34', '2017-04-05'),
(45, '22', '2019-05-01'),
(46, '23', '2020-04-02'),
(47, '55', '2018-05-03'),
(48, '56', '2018-02-04'),
(49, '32', '2019-03-05'),
(50, '54', '2017-04-06'),
(51, '32', '2016-05-07'),
(52, '12', '2020-06-08'),
(53, '32', '2019-07-09'),
(54, '81', '2018-08-10'),
(55, '82', '2017-09-11'),
(56, '73', '2016-02-12'),
(57, '32', '2017-04-13'),
(58, '74', '2018-05-15'),
(59, '72', '2019-06-14'),
(60, '69', '2020-04-16'),
(61, '65', '2016-07-18'),
(62, '32', '2017-07-17'),
(63, '87', '2019-11-05'),
(64, '89', '2017-11-02'),
(65, '91', '2016-10-03'),
(66, '32', '2019-12-04'),
(67, '92', '2020-12-08'),
(68, '93', '2019-12-09'),
(69, '32', '2016-12-12'),
(70, '94', '2017-02-11'),
(71, '99', '2018-09-10'),
(72, '84', '2017-10-06'),
(73, '88', '2019-10-05'),
(74, '89', '2020-10-06'),
(75, '21', '2018-12-04'),
(76, '62', '2017-11-09'),
(77, '63', '2018-05-08'),
(78, '63', '2016-06-07'),
(79, '62', '2016-05-06'),
(80, '72', '2016-04-05'),
(81, '73', '2017-05-04'),
(82, '73', '2019-02-03'),
(83, '55', '2020-01-02'),
(84, '89', '2016-10-01'),
(85, '91', '2017-12-10'),
(86, '93', '2019-09-11'),
(87, '100', '2020-09-12'),
(88, '45', '2017-05-13'),
(89, '44', '2016-04-14'),
(90, '43', '2018-06-15'),
(91, '42', '2019-05-16'),
(92, '35', '2016-04-17'),
(93, '32', '2017-06-18'),
(94, '82', '2019-06-19'),
(95, '81', '2018-01-20'),
(96, '83', '2017-02-21'),
(97, '88', '2018-04-22'),
(98, '89', '2019-08-23'),
(99, '87', '2020-09-24'),
(100, '91', '2020-10-25'),
(101, '92', '2017-11-26'),
(102, '94', '2018-12-27'),
(103, '99', '2019-12-28'),
(104, '99', '2016-12-29'),
(105, '98', '2017-10-30'),
(106, '92', '2016-05-06'),
(107, '93', '2019-06-05'),
(108, '86', '2020-08-04'),
(109, '87', '2017-07-02'),
(110, '14', '2017-10-01'),
(111, '14', '2016-12-02'),
(112, '21', '2015-10-03'),
(113, '14', '2017-12-04'),
(114, '13', '2019-11-05'),
(115, '13', '2018-10-06'),
(116, '105', '2020-05-07'),
(117, '31', '2017-06-08'),
(118, '31', '2016-07-09'),
(119, '32', '2015-05-10'),
(120, '33', '2016-04-11'),
(121, '34', '2017-02-12'),
(122, '41', '2019-01-13'),
(123, '42', '2020-02-14'),
(124, '42', '2017-03-15'),
(125, '42', '2016-04-16'),
(126, '48', '2015-05-17'),
(127, '46', '2015-08-18'),
(128, '31', '2016-07-19'),
(129, '21', '2019-09-20'),
(130, '11', '2020-10-21'),
(131, '13', '2017-12-22'),
(132, '14', '2016-05-23'),
(133, '55', '2017-02-24'),
(134, '54', '2019-06-25'),
(135, '54', '2020-04-26'),
(136, '53', '2018-03-27'),
(137, '52', '2019-02-28'),
(138, '51', '2018-04-29'),
(139, '56', '2019-05-30'),
(140, '11', '2020-08-21'),
(141, '13', '2017-09-22'),
(142, '31', '2017-06-08'),
(143, '31', '2016-07-09'),
(144, '32', '2015-05-10'),
(145, '33', '2016-04-11'),
(146, '34', '2017-02-12'),
(147, '41', '2019-01-13'),
(148, '42', '2020-02-14'),
(149, '42', '2017-03-15'),
(150, '42', '2016-04-16'),
(151, '48', '2015-05-17'),
(152, '46', '2015-08-18'),
(153, '31', '2016-07-19'),
(154, '21', '2019-09-20'),
(155, '11', '2020-10-21'),
(156, '13', '2017-12-22'),
(157, '14', '2016-05-23'),
(158, '55', '2017-02-24'),
(159, '54', '2019-06-25'),
(160, '54', '2020-04-26'),
(161, '53', '2018-03-27'),
(162, '52', '2019-02-28'),
(163, '51', '2018-04-29'),
(164, '56', '2019-05-30'),
(165, '11', '2020-08-21'),
(166, '13', '2017-09-22'),
(167, '21', '2016-10-23'),
(168, '23', '2016-12-24'),
(169, '23', '2018-11-25'),
(170, '24', '2019-10-26'),
(171, '32', '2020-04-27'),
(172, '22', '2017-05-29'),
(173, '21', '2016-06-10'),
(174, '32', '2019-04-02'),
(175, '14', '2019-05-15'),
(176, '32', '2018-12-02'),
(177, '33', '2016-06-01'),
(178, '34', '2017-04-05'),
(179, '22', '2019-05-01'),
(180, '23', '2020-04-02'),
(181, '55', '2018-05-03'),
(182, '56', '2018-02-04'),
(183, '32', '2019-03-05'),
(184, '54', '2017-04-06'),
(185, '32', '2016-05-07'),
(186, '12', '2020-06-08'),
(187, '32', '2019-07-09'),
(188, '81', '2018-08-10'),
(189, '82', '2017-09-11'),
(190, '73', '2016-02-12'),
(191, '32', '2017-04-13'),
(192, '74', '2018-05-15'),
(193, '72', '2019-06-14'),
(194, '69', '2020-04-16'),
(195, '65', '2016-07-18'),
(196, '32', '2017-07-17'),
(197, '87', '2019-11-05'),
(198, '89', '2017-11-02'),
(199, '91', '2016-10-03'),
(200, '32', '2019-12-04'),
(201, '92', '2020-12-08'),
(202, '93', '2019-12-09'),
(203, '32', '2016-12-12'),
(204, '94', '2017-02-11'),
(205, '99', '2018-09-10'),
(206, '84', '2017-10-06'),
(207, '84', '2017-10-06'),
(208, '88', '2019-10-05'),
(209, '89', '2020-10-06'),
(210, '21', '2018-12-04'),
(211, '62', '2017-11-09'),
(212, '63', '2018-05-08'),
(213, '63', '2016-06-07'),
(214, '62', '2016-05-06'),
(215, '72', '2016-04-05'),
(216, '73', '2017-05-04'),
(217, '73', '2019-02-03'),
(218, '55', '2020-01-02'),
(219, '89', '2016-10-01'),
(220, '91', '2017-12-10'),
(221, '93', '2019-09-11'),
(222, '100', '2020-09-12'),
(223, '45', '2017-05-13'),
(224, '44', '2016-04-14'),
(225, '43', '2018-06-15'),
(226, '42', '2019-05-16'),
(227, '35', '2016-04-17'),
(228, '32', '2017-06-18'),
(229, '82', '2019-06-19'),
(230, '81', '2018-01-20'),
(231, '83', '2017-02-21'),
(232, '88', '2018-04-22'),
(233, '89', '2019-08-23'),
(234, '87', '2020-09-24'),
(235, '91', '2020-10-25'),
(236, '92', '2017-11-26'),
(237, '94', '2018-12-27'),
(238, '99', '2019-12-28'),
(239, '99', '2016-12-29'),
(240, '88', '2019-10-05'),
(241, '89', '2020-10-06'),
(242, '21', '2018-12-04'),
(243, '62', '2017-11-09'),
(244, '63', '2018-05-08'),
(245, '63', '2016-06-07'),
(246, '62', '2016-05-06'),
(247, '72', '2016-04-05'),
(248, '73', '2017-05-04'),
(249, '73', '2019-02-03'),
(250, '55', '2020-01-02'),
(251, '89', '2016-10-01'),
(252, '91', '2017-12-10'),
(253, '93', '2019-09-11'),
(254, '100', '2020-09-12'),
(255, '45', '2017-05-13'),
(256, '44', '2016-04-14'),
(257, '43', '2018-06-15'),
(258, '42', '2019-05-16'),
(259, '35', '2016-04-17'),
(260, '32', '2017-06-18'),
(261, '82', '2019-06-19'),
(262, '81', '2018-01-20'),
(263, '83', '2017-02-21'),
(264, '88', '2018-04-22'),
(265, '89', '2019-08-23'),
(266, '87', '2020-09-24'),
(267, '91', '2020-10-25'),
(268, '92', '2017-11-26'),
(269, '94', '2018-12-27'),
(270, '99', '2019-12-28'),
(271, '99', '2016-12-29'),
(272, '98', '2017-10-30'),
(273, '92', '2016-05-06'),
(274, '93', '2019-06-05'),
(275, '86', '2020-08-04'),
(276, '87', '2017-07-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `codigo` decimal(10,0) NOT NULL,
  `asignatura` varchar(50) NOT NULL,
  `jornada` varchar(10) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_sede` int(11) NOT NULL DEFAULT 0,
  `fechaingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `nombre`, `apellido`, `codigo`, `asignatura`, `jornada`, `imagen`, `id_sede`, `fechaingreso`) VALUES
(1, 'Juan', 'Perez', '123', 'Programacion', 'noche', 'sdasd', 2, '2020-11-11'),
(2, 'Pepe', 'Puentes', '223', 'Cominicacion', 'noche', 'sdasd', 2, '2020-11-11'),
(3, 'Camilo', 'Velzco', '323', 'Infraestructura', 'noche', 'sdasd', 2, '2020-11-11'),
(4, 'Andres', 'Hernandez', '423', 'Redes', 'noche', 'sdasd', 2, '2020-11-11'),
(5, 'Carlos', 'Lizcano', '523', 'Mantenimiento', 'noche', 'sdasd', 2, '2020-11-11'),
(6, 'Sandra', 'Elles', '623', 'Sistemas operativos', 'noche', 'sdasd', 2, '2020-11-11'),
(7, 'Feliepe', 'Gomez', '723', 'Programacion', 'noche', 'sdasd', 2, '2020-11-11'),
(8, 'Valentina', 'Garzon', '823', 'Bases de datos', 'noche', 'sdasd', 2, '2020-11-11'),
(9, 'Brandon', 'Morales', '923', 'mineria de datos', 'noche', 'sdasd', 2, '2020-11-11'),
(10, 'Santiago', 'Cifuntes', '103', 'Programacion', 'noche', 'sdasd', 2, '2020-11-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`id`, `nombre`, `direccion`) VALUES
(1, 'sede 72', 'calle 72'),
(2, 'sede 63', 'callw 63');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sede` (`id_sede`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiante` (`id_estudiante`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sede` (`id_sede`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`id_sede`) REFERENCES `sede` (`id`);

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`id_sede`) REFERENCES `sede` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
