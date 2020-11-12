-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2020 a las 00:58:48
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_galeria` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditor`
--

CREATE TABLE `auditor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_estudiante` int(11) NOT NULL DEFAULT 0,
  `id_profesor` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula`
--

CREATE TABLE `aula` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `id_galeria` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `imagen` varchar(50) NOT NULL,
  `id_sede` int(11) NOT NULL DEFAULT 0,
  `fechaingreso` date NOT NULL,
  `fechasalida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `apellido`, `codigo`, `semestre`, `jornada`, `carrera`, `imagen`, `id_sede`, `fechaingreso`, `fechasalida`) VALUES
(0, 'hg', 'beltran', '51', '6', 'noche', 'ingenieria en sistemas', 'sdasd', 2, '2020-11-25', '2020-11-12'),
(2, 'Pan mantequilla', 'beltran', '4554', '2', 'noche', 'ingenieria en sistemas', 'sdasd', 2, '2020-11-13', '2020-11-20'),
(45, 'camilo', 'beltran', '4554', '4', 'noche', 'ingenieria en sistemas', 'sdasd', 2, '2020-11-12', '2020-11-12'),
(46, 'daniel', 'cifuentes', '4554', '4', 'noche', 'ingenieria en sistemas', 'sdasd', 2, '2020-11-12', '2020-11-12'),
(47, 'pepe', 'morales', '454', '4', 'noche', 'ingenieria en sistemas', 'sdasd', 2, '2020-11-12', '2020-11-12'),
(515, 'salchichon', 'beltran', '5151', '9', 'noche', 'modas', '', 2, '2020-11-12', '2020-11-12'),
(1234, 'alinson', 'beltran', '1514', '1', 'noche', 'modas', '', 1, '2020-11-12', '2020-11-12'),
(1002124564, 'teffy', 'beltran', '4557', '5', 'noche', 'ingenieria en sistemas', 'sdasd', 2, '2020-11-13', '2020-11-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_sede` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `fechaingreso` date NOT NULL,
  `fechasalida` date NOT NULL,
  `horaingreso` time NOT NULL,
  `horasalida` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'sede 72', 'dsad'),
(2, 'sede 63', 'hola');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_galeria` (`id_galeria`);

--
-- Indices de la tabla `auditor`
--
ALTER TABLE `auditor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_galeria` (`id_galeria`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sede` (`id_sede`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sede` (`id_sede`);

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
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`id_galeria`) REFERENCES `galeria` (`id`);

--
-- Filtros para la tabla `auditor`
--
ALTER TABLE `auditor`
  ADD CONSTRAINT `auditor_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `auditor_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id`);

--
-- Filtros para la tabla `aula`
--
ALTER TABLE `aula`
  ADD CONSTRAINT `aula_ibfk_1` FOREIGN KEY (`id_galeria`) REFERENCES `galeria` (`id`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`id_sede`) REFERENCES `sede` (`id`);

--
-- Filtros para la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD CONSTRAINT `galeria_ibfk_1` FOREIGN KEY (`id_sede`) REFERENCES `sede` (`id`);

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`id_sede`) REFERENCES `sede` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
