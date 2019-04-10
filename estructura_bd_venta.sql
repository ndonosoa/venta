-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-04-2019 a las 22:48:07
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `venta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`id_client`, `name`, `last_name`) VALUES
(3, 'Ima Gorczany', 'Jillian Zemlak'),
(4, 'Geovanni Volkman', 'Leila Kohler'),
(5, 'Meaghan Lakin', 'Vivianne Wuckert'),
(6, 'Roel Monahan', 'Brian Gerlach'),
(7, 'Prof. Granville Stokes', 'Tianna Tillman'),
(8, 'Esther Runolfsson', 'Keeley Morar II'),
(9, 'Ms. Carolanne Fritsch DVM', 'Elise Morar MD'),
(10, 'Dr. Kennith Gutkowski III', 'Abner Flatley DVM'),
(11, 'Verona Connelly', 'Giles Cummerata'),
(12, 'Marlene Hegmann', 'Mrs. Kiana Barrows Sr.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detail`
--

CREATE TABLE `detail` (
  `id_detail` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detail`
--

INSERT INTO `detail` (`id_detail`, `product_id`, `quantity`, `price`, `sub_total`, `sale_id`) VALUES
(4, 13, 6, 912, 441, 10),
(5, 32, 2, 3869, 4435, 9),
(6, 30, 9, 2034, 150, 7),
(7, 3, 1, 4308, 4105, 11),
(8, 7, 8, 659, 1025, 10),
(9, 22, 5, 2287, 3590, 12),
(10, 8, 10, 2102, 1942, 4),
(11, 15, 2, 4362, 4925, 9),
(12, 15, 3, 795, 1018, 6),
(13, 20, 7, 1878, 2749, 6),
(14, 27, 10, 464, 3067, 11),
(15, 12, 8, 268, 2171, 6),
(16, 29, 8, 4571, 3625, 12),
(17, 9, 10, 3629, 2590, 4),
(18, 26, 6, 1244, 2081, 9),
(19, 20, 3, 720, 1808, 11),
(20, 4, 4, 3050, 2953, 6),
(21, 3, 4, 3452, 4105, 10),
(22, 3, 4, 137, 2784, 12),
(23, 11, 6, 258, 3417, 9),
(24, 9, 9, 1452, 2413, 12),
(25, 14, 7, 3485, 946, 8),
(26, 6, 9, 3049, 1608, 5),
(27, 15, 2, 4216, 438, 4),
(28, 3, 3, 4075, 1057, 11),
(29, 11, 7, 4744, 3758, 7),
(30, 19, 4, 4632, 3279, 7),
(31, 14, 2, 564, 1337, 6),
(32, 22, 8, 1588, 2008, 10),
(33, 16, 5, 4187, 3577, 8),
(34, 8, 4, 2212, 3400, 8),
(35, 24, 9, 2381, 866, 4),
(36, 28, 2, 3316, 2895, 11),
(37, 21, 9, 1342, 1062, 12),
(38, 26, 1, 3736, 3736, 11),
(39, 16, 4, 2171, 503, 7),
(40, 29, 6, 3702, 2051, 6),
(41, 13, 5, 4851, 2396, 5),
(42, 30, 9, 3909, 1962, 10),
(43, 3, 7, 2007, 828, 12),
(44, 14, 2, 1784, 3818, 9),
(45, 26, 4, 4431, 1251, 12),
(46, 30, 10, 1618, 2953, 11),
(47, 16, 5, 2308, 816, 5),
(48, 3, 10, 667, 363, 9),
(49, 6, 9, 278, 3656, 6),
(50, 8, 6, 1155, 1314, 11),
(51, 13, 8, 518, 1562, 4),
(52, 18, 8, 488, 2629, 12),
(53, 13, 9, 1720, 2500, 8),
(54, 28, 1, 3421, 3298, 3),
(55, 30, 5, 2855, 4817, 5),
(56, 21, 9, 3464, 1561, 8),
(57, 12, 9, 3718, 533, 8),
(58, 8, 4, 1150, 3976, 9),
(59, 4, 4, 2722, 3294, 10),
(60, 22, 6, 4417, 909, 8),
(61, 16, 9, 4490, 3564, 6),
(62, 16, 10, 1546, 2929, 11),
(63, 28, 6, 4520, 4687, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id_product`, `name`) VALUES
(3, 'Nettie Schumm'),
(4, 'Dr. Omari Friesen'),
(5, 'Kristopher Hills'),
(6, 'Alivia Kemmer'),
(7, 'Syble O\'Conner'),
(8, 'Robbie Schumm'),
(9, 'Miss Hildegard Bins I'),
(10, 'Prof. Columbus Blick DVM'),
(11, 'Ayden Feest'),
(12, 'Prof. Litzy Schmitt'),
(13, 'Jeff Swaniawski III'),
(14, 'Mr. Jedidiah Kuvalis'),
(15, 'Dr. Khalid Green'),
(16, 'Paris Sawayn'),
(17, 'Shane Lehner'),
(18, 'Cornelius Cartwright'),
(19, 'Prof. Layla Jacobs DDS'),
(20, 'Riley Stoltenberg'),
(21, 'Mrs. Lilla Ward III'),
(22, 'Tatyana Beahan'),
(23, 'Mrs. Lucinda Fisher DVM'),
(24, 'Dr. Adrain Quitzon DDS'),
(25, 'Miss Corine Bashirian IV'),
(26, 'Miss Eldridge Schulist'),
(27, 'Jeffery Kling V'),
(28, 'Jaclyn Stroman'),
(29, 'Shyann Will'),
(30, 'Mya Walker'),
(31, 'Buford Schroeder'),
(32, 'Deondre Mosciski');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sale`
--

INSERT INTO `sale` (`id`, `client_id`, `total`) VALUES
(3, 3, 1186525132),
(4, 4, 1800696640),
(5, 5, 1931397066),
(6, 6, 1746584724),
(7, 7, 1955521228),
(8, 8, 1774511218),
(9, 9, 656049447),
(10, 10, 1164318244),
(11, 11, 153644992),
(12, 12, 396908874);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indices de la tabla `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indices de la tabla `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `detail`
--
ALTER TABLE `detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
