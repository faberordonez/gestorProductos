-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2021 a las 03:31:43
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `productosbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exitos`
--

CREATE TABLE `exitos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lns`
--

CREATE TABLE `lns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombreMarca` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombreMarca`, `created_at`, `updated_at`) VALUES
(1, 'Logitech', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_06_025355_create_productos_table', 1),
(4, '2019_08_28_020429_create_marcas_table', 1),
(5, '2019_08_28_022716_create_tipo_productos_table', 1),
(6, '2019_08_28_023121_create_mls_table', 1),
(7, '2019_08_28_023159_create_lns_table', 1),
(8, '2019_08_28_023339_create_tps_table', 1),
(9, '2019_08_28_023509_create_exitos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mls`
--

CREATE TABLE `mls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `nPublicacion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `npProd` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreProd` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcionProd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mejorasProd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precioDistProd` int(11) DEFAULT NULL,
  `precioUsrProd` int(11) DEFAULT NULL,
  `precioMlProd` int(11) DEFAULT NULL,
  `precioLnProd` int(11) DEFAULT NULL,
  `precioExProd` int(11) DEFAULT NULL,
  `inventarioProd` int(11) DEFAULT NULL,
  `tipoProducto_id` int(11) DEFAULT NULL,
  `marca_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `npProd`, `nombreProd`, `descripcionProd`, `mejorasProd`, `precioDistProd`, `precioUsrProd`, `precioMlProd`, `precioLnProd`, `precioExProd`, `inventarioProd`, `tipoProducto_id`, `marca_id`, `created_at`, `updated_at`) VALUES
(1, '980-000910', 'ADAPTADOR BLUETOOTH', '', '', 60000, 70000, 70000, 70000, 0, 16, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '910-001354', 'R400 PRESENTADOR O APUNTADOR', '', '', 95000, 105000, 109000, 109000, 0, 8, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '910-005333', 'R500 PRESENTADOR, BLUETOOTH, MAC', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '910-001350', 'R800 PRESENTADOR O APUNTADOR ', '', '', 130000, 149000, 165000, 169000, 0, 5, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '960-000880', 'CAMARA C170, RESOLUCION 480P', '', '', 55000, 60000, 60000, 59900, 0, 8, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '960-000694', 'CAMARA C270, RESOLUCION 720HD', '', '', 92000, 99000, 99000, 99000, 0, 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '960-000715', 'CAMARA C525, RESOLUCION 8 MPX, 720P', '', '', 125000, 129000, 129000, 129000, 0, 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '960-000764', 'CAMARA C920, RESOLUCION 1920 x 1080', '', '', 199000, 219000, 198900, 215000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '960-001087', 'CAMARA WEB C922 Pro Stream', '', '', 269000, 285000, 299000, 289000, 0, 15, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '960-000971', 'CAMARA C930e, RESOLUCION 15 MPX', '', '', 255000, 269000, 279000, 279000, 0, 11, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '960-001105', 'CAMARA BRIO 4K', '', '', 539000, 569000, 579900, 579900, 0, 13, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '960-000866', 'CAMARA BCC950 ConferenceCam', '', '', 699000, 739000, 779000, 779000, 0, 6, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '910-004053', 'MOUSE M90 USB', '', '', 10200, 15000, 12500, 12500, 0, 573, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '910-005493  ', 'MOUSE M110 NEGRO', '', '', 13000, 15000, 15000, 15000, 0, 70, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '910-004800', 'MOUSE M170 INALAMBRICO AZUL', '', '', 22000, 29000, 24900, 24900, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '910-004941', 'MOUSE M170 INALAMBRICO ROJO', '', '', 22000, 29000, 24900, 24900, 0, 69, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '910-004940', 'MOUSE M170 INALAMBRICO NEGRO', '', '', 22000, 25000, 25500, 24900, 0, 647, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '910-005334', 'MOUSE M170 INALAMBRICO PLATA', '', '', 23000, 25000, 24900, 24900, 0, 71, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '910-002225', 'MOUSE M185 INALAMBRICO Negro - MAC-Windows', '', '', 29900, 30000, 31900, 31900, 0, 42, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '910-004529', 'MOUSE M535 BLUETOOTH AZUL', '', '', 58000, 65000, 70000, 68000, 0, 12, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '910-004432', 'MOUSE M535 BLUETOOTH NEGRO', '', '', 58000, 65000, 70000, 68000, 0, 11, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '910-001799', 'MOUSE M570 TRACKMAN', '', '', 105000, 115000, 119900, 119000, 0, 15, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '910-005177', 'MOUSE MX ERGO INALAMBRICO, UNIFYING, BATERIA RECARGABLE', '', '', 220000, 235000, 225000, 225000, 0, 4, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '910-001105', 'MOUSE PERFORMANCE MX INALAMBRICO, UNIFYING, BATERIA RECARGABLE', '', '', 165000, 175000, 179000, 179000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '910-005131', 'MOUSE MX MASTER 2S INALAMBRICO, UNIFYING, BATERIA RECARGABLE', '', '', 0, 199000, 209000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '910-005132', 'MOUSE MX ANYWHERE 2S, UNIFYING, BATERIA RECARGABLE', '', '', 190000, 199000, 215000, 219000, 0, 4, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '910-005447', 'MOUSE,MX VERTICAL,NO LANG,GRAPHITE,SAMR,N/A', '', '', 230000, 249000, 259000, 269000, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_productos`
--

CREATE TABLE `tipo_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombreTipoProducto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tps`
--

CREATE TABLE `tps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `exitos`
--
ALTER TABLE `exitos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lns`
--
ALTER TABLE `lns`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mls`
--
ALTER TABLE `mls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productos_npprod_unique` (`npProd`);

--
-- Indices de la tabla `tipo_productos`
--
ALTER TABLE `tipo_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tps`
--
ALTER TABLE `tps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `exitos`
--
ALTER TABLE `exitos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lns`
--
ALTER TABLE `lns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `mls`
--
ALTER TABLE `mls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `tipo_productos`
--
ALTER TABLE `tipo_productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tps`
--
ALTER TABLE `tps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
