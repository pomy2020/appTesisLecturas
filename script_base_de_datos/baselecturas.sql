-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2020 a las 20:43:23
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `baselecturas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lecturas`
--

CREATE TABLE `lecturas` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `anterior` double(8,2) NOT NULL,
  `actual` double(8,2) NOT NULL,
  `consumo` double(8,2) NOT NULL,
  `basico` double(8,2) NOT NULL,
  `exceso` double(8,2) NOT NULL,
  `pais` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitud` double(10,6) DEFAULT NULL,
  `longitud` double(10,6) DEFAULT NULL,
  `estado` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medidor_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lecturas`
--

INSERT INTO `lecturas` (`id`, `fecha`, `anterior`, `actual`, `consumo`, `basico`, `exceso`, `pais`, `observacion`, `imagen`, `latitud`, `longitud`, `estado`, `medidor_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2020-11-15', 0.00, 6.00, 6.00, 0.00, 0.00, '', 'consumo de noviembre', 'C:\\Users\\Pedro\\AppData\\Local\\Packages\\5b3748c2-7622-4db5-82b5-dc1bbcafffdc_4e5qs8q3t1ytc\\LocalState\\20190725_172627 - Copia - Copia - Copia.jpg', 0.000000, 0.000000, 'A', 6, 3, '2020-11-15 05:00:00', '2020-11-15 05:00:00'),
(2, '2020-11-15', 0.00, 6.00, 6.00, 5.00, 5.00, '', 'consumo noviembre', '', 0.000000, 0.000000, 'A', 13, 2, '2020-11-15 05:00:00', '2020-11-15 05:00:00'),
(3, '2020-11-15', 0.00, 7.00, 7.00, 5.00, 10.00, '', 'consumo de noviembre', 'C:\\Users\\Pedro\\AppData\\Local\\Packages\\5b3748c2-7622-4db5-82b5-dc1bbcafffdc_4e5qs8q3t1ytc\\LocalState\\20190603_071736 - copia (10).jpg', 0.000000, 0.000000, 'A', 17, 2, '2020-11-15 05:00:00', '2020-11-15 05:00:00'),
(4, '2020-11-15', 0.00, 5.00, 5.00, 5.00, 0.00, '', 'consumo de noviembre', 'C:\\Users\\Pedro\\AppData\\Local\\Packages\\5b3748c2-7622-4db5-82b5-dc1bbcafffdc_4e5qs8q3t1ytc\\LocalState\\20190725_172609.jpg', 0.000000, 0.000000, 'A', 7, 2, '2020-11-15 05:00:00', '2020-11-15 05:00:00'),
(5, '2020-11-15', 0.00, 3.00, 3.00, 5.00, 0.00, '', 'consumo de noviembre', 'C:\\Users\\Pedro\\AppData\\Local\\Packages\\5b3748c2-7622-4db5-82b5-dc1bbcafffdc_4e5qs8q3t1ytc\\LocalState\\20190725_155530.jpg', 0.000000, 0.000000, 'A', 15, 3, '2020-11-15 05:00:00', '2020-11-15 05:00:00'),
(6, '2020-11-15', 0.00, 5.00, 5.00, 5.00, 0.00, '', 'consumo de noviembre', '', 0.000000, 0.000000, 'A', 16, 2, '2020-11-15 05:00:00', '2020-11-15 05:00:00'),
(7, '2020-11-15', 0.00, 4.00, 4.00, 5.00, 0.00, '', 'consumo de noviembre', 'C:\\Users\\Pedro\\AppData\\Local\\Packages\\5b3748c2-7622-4db5-82b5-dc1bbcafffdc_4e5qs8q3t1ytc\\LocalState\\20190725_172609 - copia.jpg', 0.000000, 0.000000, 'A', 2, 3, '2020-11-15 05:00:00', '2020-11-15 05:00:00'),
(8, '2020-11-18', 0.00, 5.00, 5.00, 5.00, 0.00, '', 'consumo de noviembre', '', 0.000000, 0.000000, 'A', 10, 3, '2020-11-18 05:00:00', '2020-11-18 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medidors`
--

CREATE TABLE `medidors` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` int(11) NOT NULL,
  `marca` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitud` double(10,6) DEFAULT NULL,
  `longitud` double(10,6) DEFAULT NULL,
  `persona_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `medidors`
--

INSERT INTO `medidors` (`id`, `codigo`, `numero`, `marca`, `modelo`, `sector`, `imagen`, `latitud`, `longitud`, `persona_id`, `created_at`, `updated_at`) VALUES
(1, 'MED1', 1, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 1, '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(2, 'MED2', 2, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 2, '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(3, 'MED3', 3, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 3, '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(4, 'MED4', 4, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 4, '2020-11-14 04:35:32', '2020-11-14 04:35:32'),
(5, 'MED5', 5, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 5, '2020-11-14 04:35:32', '2020-11-14 04:35:32'),
(6, 'MED6', 6, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 6, '2020-11-14 04:35:32', '2020-11-14 04:35:32'),
(7, 'MED7', 7, 'LAsi', 'abc', 'Pedregal', 'sinimg.jpg', NULL, NULL, 7, '2020-11-14 04:35:32', '2020-11-14 04:35:32'),
(8, 'MED8', 8, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 8, '2020-11-14 04:35:32', '2020-11-14 04:35:32'),
(9, 'MED9', 9, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 9, '2020-11-14 04:35:32', '2020-11-14 04:35:32'),
(10, 'MED10', 10, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 10, '2020-11-14 04:35:32', '2020-11-14 04:35:32'),
(11, 'MED11', 11, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 11, '2020-11-14 04:35:32', '2020-11-14 04:35:32'),
(12, 'MED12', 12, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 12, '2020-11-14 04:35:32', '2020-11-14 04:35:32'),
(13, 'MED13', 13, 'LAsi', 'abc', 'Rayoloma', 'sinimg.jpg', NULL, NULL, 13, '2020-11-14 04:35:32', '2020-11-14 04:35:32'),
(14, 'MED14', 14, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 14, '2020-11-14 04:35:32', '2020-11-14 04:35:32'),
(15, 'MED15', 15, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 15, '2020-11-14 04:35:32', '2020-11-14 04:35:32'),
(16, 'MED16', 16, 'INBERCONTA', '2020', 'La Union', NULL, NULL, NULL, 21, '2020-11-16 01:17:59', '2020-11-16 01:21:11'),
(17, 'MED17', 17, 'IBERCONTA', '2020', 'La Union', NULL, NULL, NULL, 22, '2020-11-16 01:18:31', '2020-11-16 01:21:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(534, '2014_10_12_000000_create_users_table', 1),
(535, '2014_10_12_100000_create_password_resets_table', 1),
(536, '2015_01_20_084450_create_roles_table', 1),
(537, '2015_01_20_084525_create_role_user_table', 1),
(538, '2015_01_24_080208_create_permissions_table', 1),
(539, '2015_01_24_080433_create_permission_role_table', 1),
(540, '2015_12_04_003040_add_special_role_column', 1),
(541, '2017_10_17_170735_create_permission_user_table', 1),
(542, '2018_01_16_214348_create_products_table', 1),
(543, '2020_02_26_165718_create_personas_table', 1),
(544, '2020_02_26_195454_create_medidors_table', 1),
(545, '2020_02_28_142129_create_lecturas_table', 1),
(546, '2020_07_22_011342_add_foreign_key_medidores_table', 1),
(547, '2020_07_22_011501_add_foreign_key_lecturas_table', 1),
(548, '2020_07_31_192058_create_provincias_table', 1),
(549, '2020_11_13_152507_create_politicas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Navegar usuarios', 'users.index', 'Lista y navega todos los usuarios del sistema', '2020-11-14 04:35:29', '2020-11-14 04:35:29'),
(2, 'Ver detalle de usuario', 'users.show', 'Ve en detalle cada usuario del sistema', '2020-11-14 04:35:29', '2020-11-14 04:35:29'),
(3, 'Edición de usuarios', 'users.edit', 'Podría editar cualquier dato de un usuario del sistema', '2020-11-14 04:35:29', '2020-11-14 04:35:29'),
(4, 'Eliminar usuario', 'users.destroy', 'Podría eliminar cualquier usuario del sistema', '2020-11-14 04:35:29', '2020-11-14 04:35:29'),
(5, 'Navegar roles', 'roles.index', 'Lista y navega todos los roles del sistema', '2020-11-14 04:35:29', '2020-11-14 04:35:29'),
(6, 'Ver detalle de un rol', 'roles.show', 'Ve en detalle cada rol del sistema', '2020-11-14 04:35:29', '2020-11-14 04:35:29'),
(7, 'Creación de roles', 'roles.create', 'Podría crear nuevos roles en el sistema', '2020-11-14 04:35:29', '2020-11-14 04:35:29'),
(8, 'Edición de roles', 'roles.edit', 'Podría editar cualquier dato de un rol del sistema', '2020-11-14 04:35:29', '2020-11-14 04:35:29'),
(9, 'Eliminar roles', 'roles.destroy', 'Podría eliminar cualquier rol del sistema', '2020-11-14 04:35:29', '2020-11-14 04:35:29'),
(10, 'Navegar Abonados', 'personas.index', 'Lista y navega todos los Abonados del sistema', '2020-11-14 04:35:29', '2020-11-14 04:35:29'),
(11, 'Ver detalle de un Abonado', 'personas.show', 'Ve en detalle cada abonado del sistema', '2020-11-14 04:35:29', '2020-11-14 04:35:29'),
(12, 'Creación de Abonado', 'personas.create', 'Podría crear nuevos abonados en el sistema', '2020-11-14 04:35:29', '2020-11-14 04:35:29'),
(13, 'Edición de Abonado', 'personas.edit', 'Podría editar cualquier dato de un abonado del sistema', '2020-11-14 04:35:29', '2020-11-14 04:35:29'),
(14, 'Eliminar Abonado', 'personas.destroy', 'Podría eliminar cualquier Abonado del sistema', '2020-11-14 04:35:30', '2020-11-14 04:35:30'),
(15, 'Navegar medidores', 'medidores.index', 'Lista y navega todos los medidores del sistema', '2020-11-14 04:35:30', '2020-11-14 04:35:30'),
(16, 'Ver detalle de medidor', 'medidores.show', 'Ve en detalle cada medidor del sistema', '2020-11-14 04:35:30', '2020-11-14 04:35:30'),
(17, 'Edición de medidores', 'medidores.edit', 'Podría editar cualquier dato de un medidor del sistema', '2020-11-14 04:35:30', '2020-11-14 04:35:30'),
(18, 'Eliminar medidor', 'medidores.destroy', 'Podría eliminar cualquier medidor del sistema', '2020-11-14 04:35:30', '2020-11-14 04:35:30'),
(19, 'Navegar Lecturas', 'lecturas.index', 'Lista y navega todas las lecturas del sistema', '2020-11-14 04:35:30', '2020-11-14 04:35:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 19, 2, '2020-11-14 20:15:53', '2020-11-14 20:15:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(10) UNSIGNED NOT NULL,
  `cedula` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `cedula`, `nombre`, `apellido`, `telefono`, `email`, `created_at`, `updated_at`) VALUES
(1, '0301633285', 'Robinson', 'Cuzco', '2850544', 'ingrcuzco@gmail.com', '2020-11-14 04:35:30', '2020-11-14 04:35:30'),
(2, '0300050697', 'Roberto', 'Andrade', '0981828905', 'rmandrade@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(3, '0104718218', 'Elisabeth', 'Arévalo', '0981828905', 'ekarevalo@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(4, '0101695914', 'Astudillo', 'Teodoro', '7000569', 'tastudillo@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(5, '0100998343', 'María Alegría', 'Banegas', '7000112', 'mabanegas@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(6, '0100939743', 'Ruben', 'Banegas', '7000113', 'rbanegas@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(7, '0101900199', 'Luis Edison', 'Cabrera Pesantez', '7000114', 'lecabrera@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(8, '1400555296', 'Edison Ramiro', 'Calle Andrade', '7000115', 'ercalle@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(9, '0100138726', 'RAFAEL GAVINO', 'CARPIO ESPINOZA', '7000116', 'carpioerg@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(10, '0102875796', 'RAUL', 'CEDILLO PALTA', '7000116', 'cedillopr@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(11, '0301686226', 'DANIEL SALVADOR', 'CORAIZACA NAULA', '7000116', 'coraizacadsn@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(12, '0104012059', 'LUIS FEDERICO', 'CULLQUICONDOR LAIME', '7000116', 'lcullqui@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(13, '0301781316', 'JORGE LEONARDO', 'CULLQUICONDOR SUMBA', '7000116', 'jcullqui@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(14, '0301332557', 'SEGUNDO MANUEL', 'CULLQUICONDOR SUMBA', '7000116', 'scullqui@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(15, '0103553186', 'GALO FABIAN', 'CUZCO COYAGO', '7000116', 'gcuzcocoyago@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(16, '0301282372', 'DIEGO LEONARDO', 'CUZCO CUZCO', '7000116', 'dlcuzcoc@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(17, '0301261863', 'DORA ERMELINDA', 'CUZCO CUZCO', '7000116', 'decuzcoc@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(18, '0301386330', 'JORGE ROLANDO', 'CUZCO CUZCO', '7000116', 'jrcuzcoc@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(19, '0301423208', 'JOSÉ RAFAEL', 'CUZCO CUZCO', '7000116', 'jrcuzcoc@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(20, '0301166815', 'LUIS GUSTAVO', 'CUZCO CUZCO', '7000116', 'lcuzcoc@gmail.com', '2020-11-14 04:35:31', '2020-11-14 04:35:31'),
(21, '1204104796', 'PEDRO OMAR', 'MEJIA YEPEZ', '4127778', 'pmejia1979@hotmail.com', '2020-11-16 01:19:54', '2020-11-16 01:19:54'),
(22, '1204114785', 'LUIS FABIAN', 'YEPEZ MEJIA', '4127772', 'pmejia1979@hotmail.com', '2020-11-16 01:20:33', '2020-11-16 01:20:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `politicas`
--

CREATE TABLE `politicas` (
  `id` int(10) UNSIGNED NOT NULL,
  `cantidadConsumo` double(8,2) NOT NULL,
  `valorConsumo` double(8,2) NOT NULL,
  `valorExeso` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `politicas`
--

INSERT INTO `politicas` (`id`, `cantidadConsumo`, `valorConsumo`, `valorExeso`, `created_at`, `updated_at`) VALUES
(1, 5.00, 5.00, 5.00, '2020-11-14 04:36:20', '2020-11-14 04:57:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poblacion` double(10,2) NOT NULL,
  `parroquias` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id`, `nombre`, `poblacion`, `parroquias`, `created_at`, `updated_at`) VALUES
(1, 'Azuay', 4000000.00, 50, '2020-11-14 04:35:33', '2020-11-14 04:35:33'),
(2, 'Cañar', 2000000.00, 40, '2020-11-14 04:35:33', '2020-11-14 04:35:33'),
(3, 'Los Rios', 1500000.00, 30, '2020-11-14 04:35:33', '2020-11-14 04:35:33'),
(4, 'Guayas', 6000000.00, 90, '2020-11-14 04:35:33', '2020-11-14 04:35:33'),
(5, 'El oro', 1000000.00, 60, '2020-11-14 04:35:33', '2020-11-14 04:35:33'),
(6, 'Manabi', 5000000.00, 70, '2020-11-14 04:35:33', '2020-11-14 04:35:33'),
(7, 'Esmeraldas', 4000000.00, 45, '2020-11-14 04:35:34', '2020-11-14 04:35:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` enum('all-access','no-access') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `special`) VALUES
(1, 'Admin', 'slug', NULL, '2020-11-14 04:35:30', '2020-11-14 04:35:30', 'all-access'),
(2, 'Lector', 'Lector', 'lector de agua de medidores potable', '2020-11-14 20:15:53', '2020-11-14 20:15:53', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, '2020-11-14 20:16:22', '2020-11-14 20:16:22'),
(3, 2, 3, '2020-11-14 20:17:12', '2020-11-14 20:17:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `sector`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gerardo Cuzco', 'gcuzco@gmail.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', NULL, 'KqDflCgcTN', '2020-11-14 04:35:30', '2020-11-14 04:35:30'),
(2, 'Bella Yepez', 'byepez@gmail.com', '$2y$10$iVuTrn5m3Humu/BcqklkHO5wMLuHWIw30Z4/2P/C5xTIiLC/ysxNe', 'Pedregal,La Union,Rayoloma,', NULL, '2020-11-14 20:14:47', '2020-11-16 01:12:34'),
(3, 'demo2', 'demo2@demo.com', '$2y$10$ONJ9muAk9H6iF7TBFq.AG.rmKaMO/M8Pz3eaLJpGtTZb0fG4x6Xn.', 'Portete,La Union,', NULL, '2020-11-14 20:17:12', '2020-11-14 20:17:12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lecturas`
--
ALTER TABLE `lecturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lecturas_medidor_id_foreign` (`medidor_id`),
  ADD KEY `lecturas_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `medidors`
--
ALTER TABLE `medidors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `medidors_codigo_unique` (`codigo`),
  ADD UNIQUE KEY `medidors_numero_unique` (`numero`),
  ADD KEY `medidors_persona_id_foreign` (`persona_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personas_cedula_unique` (`cedula`);

--
-- Indices de la tabla `politicas`
--
ALTER TABLE `politicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

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
-- AUTO_INCREMENT de la tabla `lecturas`
--
ALTER TABLE `lecturas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `medidors`
--
ALTER TABLE `medidors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `politicas`
--
ALTER TABLE `politicas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lecturas`
--
ALTER TABLE `lecturas`
  ADD CONSTRAINT `lecturas_medidor_id_foreign` FOREIGN KEY (`medidor_id`) REFERENCES `medidors` (`id`),
  ADD CONSTRAINT `lecturas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `medidors`
--
ALTER TABLE `medidors`
  ADD CONSTRAINT `medidors_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
