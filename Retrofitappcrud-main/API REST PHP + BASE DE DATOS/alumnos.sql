-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-04-2023 a las 07:27:50
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela`
--

CREATE DATABASE escuela; 
USE escuela;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) NOT NULL,
  `edad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `edad`) VALUES
(1, 'Juan', 'González', 20),
(2, 'María', 'Martínez', 21),
(3, 'Pedro', 'Sánchez', 22),
(4, 'Luis', 'Rodríguez', 23),
(5, 'Ana', 'Pérez', 24),
(6, 'Carlos', 'García', 25),
(7, 'Lucía', 'Hernández', 26),
(8, 'Miguel', 'López', 27),
(9, 'Sara', 'Flores', 28),
(10, 'Andrés', 'Jiménez', 29),
(11, 'Paula', 'Ruiz', 30),
(12, 'Fernando', 'Gómez', 31),
(13, 'Lucas', 'Torres', 32),
(14, 'Elena', 'Vega', 33),
(15, 'Jorge', 'Ramírez', 34),
(16, 'Isabel', 'Díaz', 35),
(17, 'Antonio', 'Álvarez', 36),
(18, 'Marta', 'Fernández', 37),
(19, 'Rafael', 'Moreno', 38),
(20, 'Carmen', 'Castillo', 39),
(21, 'Diego', 'Ortega', 40),
(22, 'Natalia', 'Gutiérrez', 41),
(23, 'Alejandro', 'Navarro', 42),
(24, 'Cristina', 'Romero', 43),
(25, 'Mario', 'Santos', 44),
(26, 'Laura', 'Estévez', 45),
(27, 'Francisco', 'Blanco', 46),
(28, 'Sandra', 'Molina', 47),
(29, 'Juan Carlos', 'Suárez', 48),
(30, 'Raquel', 'Castro', 49),
(31, 'Javier', 'Ortiz', 50),
(32, 'Beatriz', 'Soria', 51),
(33, 'David', 'Márquez', 52),
(34, 'Patricia', 'Vázquez', 53),
(35, 'Emilio', 'Santiago', 54),
(36, 'Celia', 'Benítez', 55),
(37, 'Adrián', 'Collado', 56),
(38, 'Luciana', 'Núñez', 57),
(39, 'Víctor', 'Gallego', 58),
(40, 'Alicia', 'Soto', 59),
(41, 'Roberto', 'Lara', 60),
(42, 'Esther', 'Delgado', 61),
(43, 'Rubén', 'Lorenzo', 62),
(44, 'Eva', 'Otero', 63),
(45, 'Manuel', 'Rivas', 64),
(46, 'Marina', 'Morales', 65),
(47, 'Ángela', 'Carrasco', 66),
(48, 'Óscar', 'Guerrero', 67),
(49, 'Cristina', 'Pascual', 68),
(50, 'Jesús', 'Moya', 69),
(51, 'María José', 'Calvo', 70),
(52, 'Ignacio', 'Iglesias', 71),
(53, 'Clara', 'Gallardo', 72),
(54, 'Sergio', 'Herrera', 73),
(55, 'Olivia', 'Durán', 74),
(56, 'Federico', 'Vidal', 75),
(57, 'Lidia', 'Ramos', 76),
(58, 'Guillermo', 'Ibáñez', 77),
(59, 'Inés', 'Reyes', 78),
(60, 'Pablo', 'Alonso', 79),
(61, 'Julio', 'Guzmán', 80),
(62, 'Lorena', 'Cruz', 81),
(63, 'Gonzalo', 'Prieto', 82),
(64, 'Marcela', 'Álvarez', 83),
(65, 'Simón', 'Hidalgo', 84),
(66, 'Luciana', 'Vera', 85),
(67, 'Federico', 'Dominguez', 86),
(68, 'Julieta', 'Luna', 87),
(69, 'Diego', 'Sosa', 88),
(70, 'Natalia', 'Mansilla', 89),
(71, 'Hernán', 'Acosta', 90),
(72, 'María Belén', 'Correa', 91),
(73, 'Damián', 'Ríos', 92),
(74, 'Candela', 'Moretti', 93),
(75, 'Lucas', 'Soto', 94),
(76, 'Sofía', 'Rey', 95),
(77, 'Luisina', 'Chaves', 96),
(78, 'Esteban', 'Giménez', 97),
(79, 'Camila', 'Vargas', 98),
(80, 'Lautaro', 'Ledesma', 99),
(81, 'Jazmín', 'Peralta', 100),
(82, 'Matías', 'Aguirre', 21),
(83, 'Sol', 'Romano', 22),
(84, 'Lucas', 'Rojas', 23),
(85, 'Luna', 'Villalba', 24),
(86, 'Agustín', 'López', 25),
(87, 'Martina', 'Castro', 26),
(88, 'Juan Pablo', 'Giménez', 27),
(89, 'Julieta', 'Martínez', 28),
(90, 'Tomás', 'Pérez', 29),
(91, 'Valentina', 'García', 30),
(92, 'Santiago', 'Rodríguez', 31),
(93, 'Camila', 'Díaz', 32),
(94, 'Facundo', 'Sánchez', 33),
(95, 'Ailín', 'Luna', 34),
(96, 'Gastón', 'Rivas', 35),
(97, 'Mía', 'Hernández', 36),
(98, 'Emiliano', 'Moreno', 37),
(99, 'Florencia', 'Gómez', 38),
(100, 'Maximiliano', 'Ortega', 39),
(101, 'Renata', 'Peralta', 40);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
