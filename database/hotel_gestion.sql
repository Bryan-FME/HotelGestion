-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2026 a las 08:01:40
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
-- Base de datos: `hotel_gestion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dpi` varchar(20) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `dpi`, `telefono`, `email`, `direccion`, `fecha_registro`) VALUES
(1, 'Bryan', 'Mejia', '3363265211908', '33542298', '', '', '2026-10-21 06:32:17'),
(2, 'eduardo', 'gomez', '1234567891011', '12345678', '', 'test 2', '2026-10-24 16:48:30'),
(3, 'Kenny', 'Guachin', '3001998640101', '33542278', '', '', '2026-10-24 21:42:09'),
(4, 'Elman', 'Escobar', '3363265210101', '33542298', '', '', '2026-10-29 05:13:11'),
(5, 'Sucely', 'Escobar', '3363265210105', '33542298', '', '', '2026-10-29 06:02:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id` int(11) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `precio_noche` decimal(10,2) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL DEFAULT 'Disponible',
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id`, `numero`, `tipo`, `precio_noche`, `capacidad`, `estado`, `descripcion`) VALUES
(1, '101', 'Individual', 250.00, 1, 'Disponible', 'Habitación individual con una cama'),
(2, '102', 'Doble', 400.00, 2, 'Disponible', 'Habitación doble con dos camas'),
(3, '103', 'Matrimonial', 450.00, 2, 'Disponible', 'Habitación con cama matrimonial'),
(4, '201', 'Familiar', 650.00, 4, 'Disponible', 'Habitación familiar para cuatro personas'),
(5, '202', 'Suite', 900.00, 3, 'Disponible', 'Suite con sala y dormitorio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `reserva_id` int(11) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha_pago` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `reserva_id`, `monto`, `fecha_pago`) VALUES
(1, 3, 150.00, '2026-10-28 23:13:52'),
(2, 4, 1400.00, '2026-10-28 23:15:45'),
(3, 5, 1200.00, '2026-10-28 23:17:04'),
(4, 6, 325.00, '2026-10-29 00:02:45'),
(5, 7, 150.00, '2026-10-29 00:03:11'),
(6, 8, 100.00, '2026-10-29 00:10:13'),
(7, 9, 300.00, '2026-10-29 00:20:22'),
(8, 8, 500.00, '2026-10-29 00:21:36'),
(9, 5, 600.00, '2026-10-29 00:22:03'),
(10, 7, 250.00, '2026-10-29 00:22:05'),
(11, 8, 300.00, '2026-10-29 00:22:07'),
(12, 6, 425.00, '2026-10-29 00:22:46'),
(13, 9, 1000.00, '2026-10-29 00:22:47'),
(14, 10, 600.00, '2026-10-29 00:37:00'),
(15, 10, 500.00, '2026-10-29 00:39:11'),
(16, 10, 200.00, '2026-10-29 00:39:47'),
(17, 10, 0.00, '2026-10-29 00:40:19'),
(18, 11, 100.00, '2026-10-29 00:49:12'),
(19, 11, 100.00, '2026-10-29 00:50:07'),
(20, 11, 50.00, '2026-10-29 00:50:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `habitacion_id` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `numero_personas` int(11) NOT NULL,
  `anticipo` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `estado` varchar(30) NOT NULL DEFAULT 'Pendiente',
  `fecha_reserva` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `cliente_id`, `habitacion_id`, `fecha_entrada`, `fecha_salida`, `numero_personas`, `anticipo`, `total`, `estado`, `fecha_reserva`) VALUES
(1, 1, 1, '2026-10-22', '2026-10-23', 1, 0.00, 250.00, 'Finalizada', '2026-10-21 06:42:26'),
(2, 3, 4, '2026-10-24', '2026-10-25', 1, 0.00, 650.00, 'Finalizada', '2026-10-24 21:42:45'),
(3, 4, 5, '2026-10-29', '2026-10-30', 4, 0.00, 900.00, 'Finalizada', '2026-10-29 05:13:52'),
(4, 1, 5, '2026-10-30', '2026-11-02', 1, 0.00, 2700.00, 'Finalizada', '2026-10-29 05:15:45'),
(5, 1, 5, '2026-10-30', '2026-11-01', 3, 0.00, 1800.00, 'Finalizada', '2026-10-29 05:17:04'),
(6, 5, 1, '2026-10-29', '2026-11-01', 3, 0.00, 750.00, 'Finalizada', '2026-10-29 06:02:45'),
(7, 5, 2, '2026-10-30', '2026-10-31', 1, 0.00, 400.00, 'Finalizada', '2026-10-29 06:03:11'),
(8, 1, 3, '2026-10-30', '2026-11-01', 1, 0.00, 900.00, 'Finalizada', '2026-10-29 06:10:13'),
(9, 1, 4, '2026-10-30', '2026-11-01', 1, 0.00, 1300.00, 'Finalizada', '2026-10-29 06:20:21'),
(10, 1, 4, '2026-10-30', '2026-11-01', 1, 0.00, 1300.00, 'Finalizada', '2026-10-29 06:37:00'),
(11, 3, 1, '2026-10-29', '2026-10-30', 1, 0.00, 250.00, 'Finalizada', '2026-10-29 06:49:12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_clientes_dpi` (`dpi`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_habitaciones_numero` (`numero`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pagos_reserva` (`reserva_id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reservas_cliente` (`cliente_id`),
  ADD KEY `fk_reservas_habitacion` (`habitacion_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `fk_pagos_reserva` FOREIGN KEY (`reserva_id`) REFERENCES `reservas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `fk_reservas_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reservas_habitacion` FOREIGN KEY (`habitacion_id`) REFERENCES `habitaciones` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
