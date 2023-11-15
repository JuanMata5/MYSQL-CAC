-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2023 a las 14:26:38
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_orador` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apellido` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mail` varchar(320) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tema` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fecha_alta` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
(1, 'Juan', 'Perez', 'juan@example.com', 'Programación', '2023-12-15'),
(2, 'María', 'Gómez', 'maria@example.com', 'Desarrollo Web', '2024-01-17'),
(3, 'Luis', 'Rodríguez', 'luis@example.com', 'Inteligencia Artificial', '2024-01-27'),
(4, 'Ana', 'López', 'ana@example.com', 'Seguridad Informática', '2023-11-30'),
(5, 'Carlos', 'Fernández', 'carlos@example.com', 'Big Data', '2023-12-29'),
(6, 'Laura', 'Martínez', 'laura@example.com', 'Ciberseguridad', '2024-03-20'),
(7, 'Pedro', 'Sánchez', 'pedro@example.com', 'Machine Learning', '2024-03-31'),
(8, 'Sofía', 'González', 'sofia@example.com', 'Diseño UX', '2024-03-21'),
(9, 'Manuel', 'Díaz', 'manuel@example.com', 'Desarrollo Móvil', '2024-02-15'),
(10, 'Elena', 'Ortega', 'elena@example.com', 'Cloud Computing', '2024-05-24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_orador`) USING BTREE,
  ADD UNIQUE KEY `UNIQUE` (`mail`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
