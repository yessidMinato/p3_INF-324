-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2023 a las 16:51:44
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mibaseyessid`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `codInscripcion` int(11) NOT NULL,
  `ciEstudiante` int(11) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `nota1` int(11) DEFAULT NULL,
  `nota2` int(11) DEFAULT NULL,
  `nota3` int(11) DEFAULT NULL,
  `notaFinal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`codInscripcion`, `ciEstudiante`, `sigla`, `nota1`, `nota2`, `nota3`, `notaFinal`) VALUES
(1, 12894713, 'INF111', 90, 90, 90, 90),
(2, 12894713, 'INF131', 100, 90, 95, 95),
(3, 12894713, 'INF161', 100, 99, 98, 99),
(4, 12894713, 'INF152', 70, 70, 70, 70),
(5, 12131415, 'MAT114', 65, 65, 65, 65),
(6, 12131415, 'MAT115', 70, 82, 70, 74),
(7, 12131415, 'MAT116', 51, 51, 51, 51),
(8, 9566435, 'MAT114', 55, 55, 55, 55),
(9, 9566435, 'MAT115', 30, 51, 75, 52),
(10, 9566435, 'MAT116', 70, 70, 70, 70),
(11, 989596, 'INF111', 68, 68, 68, 68),
(12, 989596, 'INF121', 30, 51, 75, 52),
(13, 989596, 'INF131', 80, 80, 86, 82),
(14, 989596, 'INF143', 100, 100, 100, 100),
(15, 4685426, 'EST133', 72, 72, 72, 72),
(16, 4685426, 'EST145', 30, 51, 75, 52),
(17, 4685426, 'EST155', 90, 90, 96, 92),
(18, 8546156, 'EST133', 68, 68, 68, 68),
(19, 8546156, 'EST145', 51, 80, 76, 69),
(20, 8546156, 'EST155', 80, 80, 86, 82),
(21, 7894561, 'EST133', 65, 65, 65, 65),
(22, 7894561, 'EST145', 70, 82, 70, 74),
(23, 7894561, 'EST155', 51, 51, 51, 51),
(24, 868686, 'INF111', 30, 51, 75, 52),
(25, 868686, 'INF121', 30, 51, 75, 52),
(26, 868686, 'INF131', 72, 72, 72, 72),
(27, 868686, 'INF143', 80, 80, 86, 82),
(28, 666555, 'MAT114', 72, 72, 72, 72),
(29, 666555, 'MAT115', 30, 51, 75, 52),
(30, 666555, 'MAT116', 90, 90, 96, 92),
(31, 123456789, 'INF111', 100, 100, 100, 100),
(32, 123456789, 'INF121', 90, 90, 90, 90),
(33, 123456789, 'INF131', 80, 80, 80, 80),
(34, 123456789, 'INF143', 51, 51, 51, 51);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ci` int(11) NOT NULL,
  `nombreCompleto` varchar(100) NOT NULL,
  `fechaNaci` date NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `departamento` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ci`, `nombreCompleto`, `fechaNaci`, `telefono`, `departamento`) VALUES
(2, 'homero44', '2023-04-12', '12334', 'LP'),
(1234, 'homero2', '2023-04-09', '12334', 'LP'),
(44444, 'car', '2023-04-16', '12334', 'LP'),
(77777, 'leni ', '2023-04-19', '12334123', 'CB'),
(666555, 'Mateo Suarez', '2023-04-15', '1233', 'LP'),
(868686, 'Lucas Loza', '1994-11-20', '(591)75757577', 'SC'),
(888888, 'armado estebanquito', '2023-04-06', '(123)325464', 'SC'),
(989596, 'Daniel Sanchez', '2001-12-25', '(591)75757578', 'CB'),
(4685426, 'Sandra Ramirez', '2000-10-17', '(591)75757579', 'CB'),
(7894561, 'Pedro Perez', '1985-08-05', '(591)75757580', 'LP'),
(8546156, 'Dina Vargas', '1999-11-20', '(591)75757581', 'SC'),
(9566435, 'Camila Rocha', '2000-08-05', '(591)75757582', 'LP'),
(12131415, 'Antonio Banderas', '1985-01-05', '(591)75757583', 'SC'),
(12894713, 'Yessid Miranda Villca', '2000-10-03', '(591)67304698', 'LP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `usuario`, `password`) VALUES
(666555, 'mateo', '123456'),
(868686, 'lucas', '123456'),
(989596, 'daniel', '123456'),
(4685426, 'sandra', '123456'),
(7894561, 'pedro', '123456'),
(8546156, 'dina', '123456'),
(9566435, 'camila', '123456'),
(10935816, 'antonio', '123456'),
(12131415, 'andres', '123456'),
(12894713, 'yessid', '123456'),
(123456789, 'silvestre', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`codInscripcion`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
