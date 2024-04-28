-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-04-2024 a las 03:59:21
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
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Id_cliente` varchar(255) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `ap1_cliente` varchar(255) NOT NULL,
  `ap2_cliente` varchar(255) NOT NULL,
  `contrasena_cliente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Id_cliente`, `nombre_cliente`, `ap1_cliente`, `ap2_cliente`, `contrasena_cliente`) VALUES
('bclements1', 'Bonnie', 'Stiebler', 'Clements', 'jP0{&WrB3'),
('cflips0', 'Christina', 'McAlester', 'Flips', 'bD0\"N)k'),
('epetrushka3', 'Eugine', 'Ditch', 'Petrushka', 'yL5&9j#%'),
('mhachette4', 'Marietta', 'Hockell', 'Hachette', 'qJ5+bL9M``Y'),
('wwestnage2', 'Westleigh', 'Barhem', 'Westnage', 'xD0?Z~Mh!G');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Productos`
--

CREATE TABLE `Productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Productos`
--

INSERT INTO `Productos` (`id`, `nombre`, `precio`) VALUES
(1, 'Cafe', 100.00),
(2, 'Soda', 200.00),
(3, 'Donas', 300.00),
(4, 'Pollo', 400.00),
(5, 'Tortilla', 500.00),
(6, 'Huevo', 600.00),
(7, 'Aguacate', 700.00),
(8, 'Platanos', 800.00),
(9, 'Manzana', 900.00),
(10, 'Jamon', 1000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_usuario` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `ap1_usuario` varchar(255) NOT NULL,
  `ap2_usuario` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_usuario`, `nombre_usuario`, `ap1_usuario`, `ap2_usuario`, `contrasena`) VALUES
('bhucker0', 'Benjie', 'Greir', 'Hucker', 'bD4&2D\"l'),
('blamputt4', 'Brita', 'Filchakov', 'Lamputt', 'aI8@<9<t6ZC<pC'),
('idugdale3', 'Ivett', 'Jeandet', 'Dugdale', 'hB4\'ukVbRxNM'),
('kcasiero1', 'Karlotte', 'Harry', 'Casiero', 'pF4!q{&F6gZBR'),
('ltredwell2', 'Linnet', 'Pancast', 'Tredwell', 'fP2@3LU@');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD UNIQUE KEY `Id_cliente` (`Id_cliente`);

--
-- Indices de la tabla `Productos`
--
ALTER TABLE `Productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `Id_usuario` (`Id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;