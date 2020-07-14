-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2020 a las 18:47:45
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
  `pais` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitud` double(10,6) DEFAULT NULL,
  `longitud` double(10,6) DEFAULT NULL,
  `estado` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medidor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lecturas`
--

INSERT INTO `lecturas` (`id`, `fecha`, `anterior`, `actual`, `consumo`, `basico`, `exceso`, `pais`, `observacion`, `imagen`, `latitud`, `longitud`, `estado`, `medidor_id`, `user_id`, `created_at`, `updated_at`) VALUES
(25, '2020-06-03', 0.00, 4.00, 4.00, 4.00, 0.00, '', 'consumo de mayo', '/storage/emulated/0/Android/data/com.jaapsaz.applecturas/files/Pictures/temp/IMG_20200529_164123.jpg', -2.957834, -78.989726, 'A', 36, 4, '2020-06-03 00:00:00', '2020-06-03 00:00:00'),
(27, '2020-06-09', 0.00, 6.00, 6.00, 4.00, 5.00, '', 'consumo da mayo', '/storage/emulated/0/Android/data/com.jaapsaz.applecturas/files/Pictures/temp/IMG_20200529_164123_1.jpg', -2.957820, -78.989781, 'A', 4, 2, '2020-06-09 00:00:00', '2020-06-09 00:00:00'),
(28, '2020-06-09', 0.00, 5.00, 5.00, 4.00, 0.00, '', 'consumo', '/storage/emulated/0/Android/data/com.jaapsaz.applecturas/files/Pictures/temp/IMG_20200529_164123_2.jpg', -2.957908, -78.989749, 'A', 5, 2, '2020-06-09 00:00:00', '2020-06-09 00:00:00'),
(29, '2020-06-11', 0.00, 3.00, 3.00, 4.00, 0.00, '', 'registro consumo de mayo', '', -2.834150, -78.904850, 'A', 1, 2, '2020-06-11 00:00:00', '2020-06-11 00:00:00'),
(30, '2020-06-14', 0.00, 6.00, 6.00, 4.00, 5.00, '', 'consumo del mes de junio', 'C:\\Users\\Pedro\\AppData\\Local\\Packages\\5b3748c2-7622-4db5-82b5-dc1bbcafffdc_4e5qs8q3t1ytc\\LocalState\\20190809_172137.jpg', 0.000000, 0.000000, 'A', 8, 2, '2020-06-14 00:00:00', '2020-06-14 00:00:00'),
(31, '2020-06-14', 0.00, 4.00, 4.00, 4.00, 0.00, '', 'consumo de junio', '/storage/emulated/0/Android/data/com.jaapsaz.applecturas/files/Pictures/temp/IMG_20200529_164123.jpg', -2.957204, -78.989597, 'A', 11, 2, '2020-06-14 00:00:00', '2020-06-14 00:00:00');

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
  `persona_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `medidors`
--

INSERT INTO `medidors` (`id`, `codigo`, `numero`, `marca`, `modelo`, `sector`, `imagen`, `latitud`, `longitud`, `persona_id`, `created_at`, `updated_at`) VALUES
(1, 'MED1', 1, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 1, '2020-05-27 16:15:26', '2020-06-12 13:09:34'),
(2, 'MED2', 2, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 2, '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(3, 'MED3', 3, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 3, '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(4, 'MED4', 4, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 4, '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(5, 'MED5', 5, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 5, '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(6, 'MED6', 6, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 6, '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(7, 'MED7', 7, 'LAsi', 'abc', 'Pedregal', 'sinimg.jpg', NULL, NULL, 7, '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(8, 'MED8', 8, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 8, '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(9, 'MED9', 9, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 9, '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(10, 'MED10', 10, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 10, '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(11, 'MED11', 11, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 11, '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(12, 'MED12', 12, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 12, '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(13, 'MED13', 13, 'LAsi', 'abc', 'Rayoloma', 'sinimg.jpg', NULL, NULL, 13, '2020-05-27 16:15:26', '2020-06-12 13:13:20'),
(14, 'MED14', 14, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 14, '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(15, 'MED15', 15, 'LAsi', 'abc', 'Portete', 'sinimg.jpg', NULL, NULL, 15, '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(16, 'MED16', 16, 'sin marca', 'sin modelo', 'La Unión', '1590578146kisscat.jpg', NULL, NULL, 21, '2020-05-27 16:15:46', '2020-05-27 16:17:36'),
(17, 'MED17', 17, 'sm', 'sm', 'La Unión', NULL, NULL, NULL, 17, '2020-06-02 20:09:28', '2020-06-02 20:09:28'),
(18, 'MED18', 18, 'sm', 'sm', 'La Unión', NULL, NULL, NULL, 18, '2020-06-02 20:10:12', '2020-06-02 20:10:12'),
(19, 'MED19', 19, 'sm', 'sm', 'La Unión', NULL, NULL, NULL, 19, '2020-06-02 20:10:37', '2020-06-02 20:10:37'),
(20, 'MED20', 20, 'sm', 'sm', 'La Unión', NULL, NULL, NULL, 20, '2020-06-02 20:11:29', '2020-06-02 20:11:29'),
(21, 'MED21', 21, 'sm', 'sm', 'La Unión', NULL, NULL, NULL, 21, '2020-06-02 20:12:05', '2020-06-02 20:12:05'),
(22, 'MED22', 22, 'sm', 'sm', 'La Unión', NULL, NULL, NULL, 22, '2020-06-02 20:12:37', '2020-06-02 20:12:37'),
(23, 'MED23', 23, 'sm', 'sm', 'La Unión', NULL, NULL, NULL, 23, '2020-06-02 20:13:00', '2020-06-02 20:13:00'),
(24, 'MED24', 24, 'sm', 'sm', 'La Unión', NULL, NULL, NULL, 24, '2020-06-02 20:14:11', '2020-06-02 20:14:11'),
(25, 'MED25', 25, 'sm', 'sm', 'La Unión', NULL, NULL, NULL, 25, '2020-06-02 20:25:45', '2020-06-02 20:25:45'),
(26, 'MED26', 26, 'sm', 'sm', 'Pedregal', NULL, NULL, NULL, 26, '2020-06-02 20:27:26', '2020-06-02 20:27:26'),
(27, 'MED27', 27, 'sm', 'sm', 'Pedregal', NULL, NULL, NULL, 27, '2020-06-02 20:28:00', '2020-06-02 20:28:00'),
(28, 'MED28', 28, 'sm', 'sm', 'Pedregal', NULL, NULL, NULL, 28, '2020-06-02 20:28:32', '2020-06-02 20:28:32'),
(29, 'MED29', 29, 'sm', 'sm', 'Pedregal', NULL, NULL, NULL, 29, '2020-06-02 20:30:28', '2020-06-02 20:30:28'),
(30, 'MED30', 30, 'sm', 'sm', 'Pedregal', NULL, NULL, NULL, 30, '2020-06-02 20:30:52', '2020-06-02 20:30:52'),
(31, 'MED31', 31, 'sm', 'sm', 'Pedregal', NULL, NULL, NULL, 31, '2020-06-02 20:31:30', '2020-06-02 20:31:30'),
(32, 'MED32', 32, 'sm', 'sm', 'Pedregal', NULL, NULL, NULL, 32, '2020-06-02 20:32:15', '2020-06-02 20:32:15'),
(33, 'MED33', 33, 'sm', 'sm', 'Pedregal', NULL, NULL, NULL, 33, '2020-06-02 20:32:49', '2020-06-02 20:32:49'),
(34, 'MED34', 34, 'sm', 'sm', 'Pedregal', NULL, NULL, NULL, 34, '2020-06-02 20:40:59', '2020-06-02 20:40:59'),
(35, 'MED35', 35, 'sm', 'sm', 'Pedregal', NULL, NULL, NULL, 35, '2020-06-02 20:41:34', '2020-06-02 20:41:34'),
(36, 'MED36', 36, 'sm', 'sm', 'Rayoloma', NULL, NULL, NULL, 36, '2020-06-02 21:02:40', '2020-06-02 21:02:40'),
(37, 'MED37', 37, 'sm', 'sm', 'Rayoloma', NULL, NULL, NULL, 37, '2020-06-02 21:03:08', '2020-06-02 21:03:08'),
(38, 'MED38', 38, 'sm', 'sm', 'Rayoloma', NULL, NULL, NULL, 38, '2020-06-02 21:08:09', '2020-06-02 21:08:09'),
(39, 'MED39', 39, 'sm', 'sm', 'Rayoloma', NULL, NULL, NULL, 39, '2020-06-02 21:16:11', '2020-06-02 21:16:11'),
(40, 'MED40', 40, 'sm', 'sm', 'Rayoloma', NULL, NULL, NULL, 40, '2020-06-02 21:16:33', '2020-06-02 21:16:33'),
(41, 'MED41', 41, 'sm', 'sm', 'Rayoloma', NULL, NULL, NULL, 41, '2020-06-02 21:56:41', '2020-06-02 21:56:41'),
(42, 'MED42', 42, 'sm', 'sm', 'Rayoloma', NULL, NULL, NULL, 42, '2020-06-02 21:57:04', '2020-06-02 21:57:04'),
(43, 'MED43', 43, 'sm', 'sm', 'Rayoloma', NULL, NULL, NULL, 43, '2020-06-02 21:57:52', '2020-06-02 21:57:52'),
(44, 'MED44', 44, 'sm', 'sm', 'Rayoloma', NULL, NULL, NULL, 44, '2020-06-02 21:58:16', '2020-06-02 21:58:16'),
(45, 'MED45', 45, 'sm', 'sm', 'Rayoloma', NULL, NULL, NULL, 45, '2020-06-02 21:58:52', '2020-06-02 21:58:52');

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
(57, '2018_01_16_214348_create_products_table', 1),
(226, '2014_10_12_000000_create_users_table', 2),
(227, '2014_10_12_100000_create_password_resets_table', 2),
(228, '2015_01_20_084450_create_roles_table', 2),
(229, '2015_01_20_084525_create_role_user_table', 2),
(230, '2015_01_24_080208_create_permissions_table', 2),
(231, '2015_01_24_080433_create_permission_role_table', 2),
(232, '2015_12_04_003040_add_special_role_column', 2),
(233, '2017_10_17_170735_create_permission_user_table', 2),
(234, '2020_02_26_165718_create_personas_table', 2),
(235, '2020_02_26_195454_create_medidors_table', 2),
(236, '2020_02_28_142129_create_lecturas_table', 2);

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
(1, 'Navegar usuarios', 'users.index', 'Lista y navega todos los usuarios del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(2, 'Ver detalle de usuario', 'users.show', 'Ve en detalle cada usuario del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(3, 'Edición de usuarios', 'users.edit', 'Podría editar cualquier dato de un usuario del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(4, 'Eliminar usuario', 'users.destroy', 'Podría eliminar cualquier usuario del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(5, 'Navegar roles', 'roles.index', 'Lista y navega todos los roles del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(6, 'Ver detalle de un rol', 'roles.show', 'Ve en detalle cada rol del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(7, 'Creación de roles', 'roles.create', 'Podría crear nuevos roles en el sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(8, 'Edición de roles', 'roles.edit', 'Podría editar cualquier dato de un rol del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(9, 'Eliminar roles', 'roles.destroy', 'Podría eliminar cualquier rol del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(10, 'Navegar Abonados', 'personas.index', 'Lista y navega todos los Abonados del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(11, 'Ver detalle de un Abonado', 'personas.show', 'Ve en detalle cada abonado del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(12, 'Creación de Abonado', 'personas.create', 'Podría crear nuevos abonados en el sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(13, 'Edición de Abonado', 'personas.edit', 'Podría editar cualquier dato de un abonado del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(14, 'Eliminar Abonado', 'personas.destroy', 'Podría eliminar cualquier Abonado del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(15, 'Navegar medidores', 'medidores.index', 'Lista y navega todos los medidores del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(16, 'Ver detalle de medidor', 'medidores.show', 'Ve en detalle cada medidor del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(17, 'Edición de medidores', 'medidores.edit', 'Podría editar cualquier dato de un medidor del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(18, 'Eliminar medidor', 'medidores.destroy', 'Podría eliminar cualquier medidor del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(19, 'Navegar Lecturas', 'lecturas.index', 'Lista y navega todas las lecturas del sistema', '2020-05-27 16:15:26', '2020-05-27 16:15:26');

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
(1, 19, 2, '2020-05-27 16:21:31', '2020-05-27 16:21:31');

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
(1, '0301633285', 'Robinson', 'Cuzco', '2850544', 'ingrcuzco@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(2, '0300050697', 'Roberto', 'Andrade', '0981828905', 'rmandrade@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(3, '0104718218', 'Elisabeth', 'Arévalo', '0981828905', 'ekarevalo@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(4, '0101695914', 'Astudillo', 'Teodoro', '7000569', 'tastudillo@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(5, '0100998343', 'María Alegría', 'Banegas', '7000112', 'mabanegas@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(6, '0100939743', 'Ruben', 'Banegas', '7000113', 'rbanegas@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(7, '0101900199', 'Luis Edison', 'Cabrera Pesantez', '7000114', 'lecabrera@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(8, '1400555296', 'Edison Ramiro', 'Calle Andrade', '7000115', 'ercalle@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(9, '0100138726', 'RAFAEL GAVINO', 'CARPIO ESPINOZA', '7000116', 'gbcambisaca@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(10, '0102875796', 'RAUL', 'CEDILLO PALTA', '7000116', 'rcedillo@gmail.com', '2020-05-27 16:15:26', '2020-05-31 15:26:13'),
(11, '0301686226', 'DANIEL SALVADOR', 'CORAIZACA NAULA', '7000116', 'dcoraizaca@gmail.com', '2020-05-27 16:15:26', '2020-05-31 15:26:42'),
(12, '0104012059', 'LUIS FEDERICO', 'CULLQUICONDOR LAIME', '7000116', 'lcullqui@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(13, '0301781316', 'JORGE LEONARDO', 'CULLQUICONDOR SUMBA', '7000116', 'jcullqui@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(14, '0301332557', 'SEGUNDO MANUEL', 'CULLQUICONDOR SUMBA', '7000116', 'scullqui@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(15, '0103553186', 'GALO FABIAN', 'CUZCO COYAGO', '7000116', 'gcuzcocoyago@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(16, '0301282372', 'DIEGO LEONARDO', 'CUZCO CUZCO', '7000116', 'dcuzcoc@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(17, '0301261863', 'DORA ERMELINDA', 'CUZCO CUZCO', '7000116', 'decuzcoc@gmail.com', '2020-05-27 16:15:26', '2020-06-01 11:50:14'),
(18, '0301386330', 'JORGE ROLANDO', 'CUZCO CUZCO', '7000116', 'jcuzcoc@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(19, '0301423208', 'JOSÉ RAFAEL', 'CUZCO CUZCO', '7000116', 'jcuzcoc@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(20, '0301166815', 'LUIS GUSTAVO', 'CUZCO CUZCO', '7000116', 'lcuzcoc@gmail.com', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(21, '0301495826', 'JAVIER MARCELO', 'CUZCO MEJIA', NULL, NULL, '2020-05-27 16:18:35', '2020-05-27 16:18:35'),
(22, '0300268208', 'José Francisco', 'Cuzco Mejía', '7000263', 'jfcuzcom@gmail.com', '2020-06-02 19:34:41', '2020-06-02 19:34:41'),
(23, '0300795093', 'María Teresa', 'Cuzco Mejía', '7000237', 'mtcuzcom@gmail.com', '2020-06-02 19:37:55', '2020-06-02 19:37:55'),
(24, '0301730917', 'Pablo Genaro', 'Cuzco Mejía', '0981828902', 'pgcuzcom@gmail.com', '2020-06-02 19:45:01', '2020-06-02 19:45:01'),
(25, '0300281250', 'Digna María', 'Cuzco Quito', '7000252', 'dmcuzcoq@gmail.com', '2020-06-02 19:47:00', '2020-06-02 19:47:00'),
(26, '0300859014', 'Julio Marcelo', 'Cuzco Quito', '0981828901', 'jmcuzcoq@gmail.com', '2020-06-02 19:48:28', '2020-06-02 19:48:28'),
(27, '0300086568', 'Luis Alberto', 'Cuzco Quito', '7000252', 'lacuzcoq@gmail.com', '2020-06-02 19:49:15', '2020-06-02 19:49:15'),
(28, '0300277290', 'Luis Ariolfo', 'Cuzco Quito', '7000214', 'lacuzcoqq@gmail.com', '2020-06-02 19:54:09', '2020-06-02 19:54:09'),
(29, '0301733523', 'Lupe Fernanda', 'Cuzco Quito', '0981828907', 'lfcuzcoq@gmail.com', '2020-06-02 19:55:58', '2020-06-02 19:55:58'),
(30, '0300148665', 'Manuel Jesús', 'Cuzco Quito', '7000257', 'mjcuzcoq@gmail.com', '2020-06-02 20:00:57', '2020-06-02 20:00:57'),
(31, '0301224671', 'Victor Guillermo', 'Cuzco Quito', '0998526532', 'vgcuzcoq@gmail.com', '2020-06-02 20:01:42', '2020-06-02 20:01:42'),
(32, '0103792545', 'Karina Elisabeth', 'Cuzco Quituisaca', '0982568963', 'kecuzcoq@gmail.com', '2020-06-02 20:02:37', '2020-06-02 20:02:37'),
(33, '0103792537', 'Juan Fernando', 'Cuzco Quituisaca', '0981562485', 'jfcuzcoq@gmail.com', '2020-06-02 20:03:24', '2020-06-02 20:03:24'),
(34, '0300772217', 'Luis Alejandro', 'Cuzco Sumba', '7000300', 'lacuzcos@gmail.com', '2020-06-02 20:04:07', '2020-06-02 20:04:07'),
(35, '0300270337', 'María Lucía', 'Cuzco Sumba', '7000253', 'mlcuzcos@gmail.com', '2020-06-02 20:04:44', '2020-06-02 20:04:44'),
(36, '0300263894', 'Victor Manuel', 'Cuzco Zumba', '7000256', 'vmcuzcoz@gmail.com', '2020-06-02 20:05:51', '2020-06-02 20:05:51'),
(37, '0104740105', 'Marcos Israel', 'Deleg Mejía', '7000569', 'midelegm@gmail.com', '2020-06-02 20:08:01', '2020-06-02 20:08:01'),
(38, '0302201587', 'María Magdalena', 'Dumanaula Quito', '7000325', 'mmdumanaulaq@gmail.com', '2020-06-02 21:19:38', '2020-06-02 21:19:38'),
(39, '0300800059', 'Luis Serafín', 'Dumanaula Velecela', '7000217', 'lsdumanaulav@gmail.com', '2020-06-02 21:25:11', '2020-06-02 21:25:11'),
(40, '0102012739', 'Ivan Patricio', 'Duran Bonilla', '0985263588', 'ipduranb@gmail.com', '2020-06-02 21:27:09', '2020-06-02 21:27:09'),
(41, '0300904315', 'Segundo Francisco', 'Espinoza Bueno', '0984528569', 'sfespinozab@gmail.com', '2020-06-02 21:28:41', '2020-06-02 21:28:41'),
(42, '0102846086', 'Leonardo Javier', 'García Ramos', '7000189', 'ljgarciar@gmail.com', '2020-06-02 21:29:53', '2020-06-02 21:29:53'),
(43, '0300508652', 'Manuel Alejandro', 'Gomez Mejía', '7000258', 'magomezm@gmail.com', '2020-06-02 21:30:50', '2020-06-02 21:30:50'),
(44, '0104382676', 'María Catalina', 'Gomez Mejía', '7000139', 'mcgomezm@gmail.com', '2020-06-02 21:31:47', '2020-06-02 21:31:47'),
(45, '0102207032', 'María Juana', 'Gomez Mejía', '7000259', 'mjgomezm@gmail.com', '2020-06-02 21:36:02', '2020-06-02 21:36:02'),
(46, '0301172060', 'Segundo Manuel', 'Gomez Mejía', '7000250', 'smgomezm@gmail.com', '2020-06-02 21:37:02', '2020-06-02 21:37:02'),
(47, '0103579181', 'María Gerardina', 'Gomez Sumba', '7000589', 'mggomezs@gmail.com', '2020-06-02 21:43:48', '2020-06-02 21:43:48'),
(48, '1708493083', 'María Simona', 'Guamán Pichisaca', '7000714', 'msguamanp@gmail.com', '2020-06-02 21:45:04', '2020-06-02 21:45:04'),
(49, '1703807873', 'Luis Hernesto', 'Herrera Morales', '7000567', 'lhherreram@gmail.com', '2020-06-02 21:45:52', '2020-06-02 21:45:52'),
(50, '0104509294', 'Wilmer Danilo', 'Lalvay Yunga', '0985263258', 'wdlalvayy@gmail.com', '2020-06-02 21:50:09', '2020-06-02 21:50:09'),
(51, '0103151668', 'César Eliceo', 'Lata Quito', '7000251', 'celataq@gmail.com', '2020-06-02 21:51:13', '2020-06-02 21:51:13'),
(52, '0301939237', 'Miguel Ángel', 'Lata Quito', '7000846', 'malataq@gmail.com', '2020-06-02 21:52:02', '2020-06-02 21:52:02'),
(53, '0101477735', 'María Celina de Jesús', 'León Peralta', '7000439', 'mcleonp@gmail.com', '2020-06-02 21:54:22', '2020-06-02 21:54:22'),
(54, '0302020995', 'Luis Antonio', 'León Songor', NULL, 'laleons@gmail.com', '2020-06-02 21:55:06', '2020-06-02 21:55:06');

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
(1, 'Admin', 'slug', NULL, '2020-05-27 16:15:26', '2020-05-27 16:15:26', 'all-access'),
(2, 'Lector', 'Lector', 'Lector de medidores', '2020-05-27 16:21:31', '2020-05-27 16:21:31', NULL);

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
(2, 2, 2, '2020-05-27 16:22:43', '2020-05-27 16:22:43'),
(3, 2, 3, '2020-06-01 22:08:25', '2020-06-01 22:08:25'),
(4, 2, 4, '2020-06-01 22:08:44', '2020-06-01 22:08:44'),
(5, 2, 5, '2020-06-01 22:10:04', '2020-06-01 22:10:04'),
(6, 2, 6, '2020-06-09 16:56:00', '2020-06-09 16:56:00');

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
(1, 'Gerardo Cuzco', 'gcuzco@gmail.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', NULL, 'BHI2sEfZEXGpsg199swhC0PeXNZmpM3UOgci6CYqfXmLHsFSKWaDOi2vHiCb', '2020-05-27 16:15:26', '2020-05-27 16:15:26'),
(2, 'Pedro Mejía', 'pomy@gmail.com', '$2y$10$97G8lkmC2HxGs50nKH3A5uz1uFn2DbqFdNPGhHaGgYURQyGZoxXaO', 'Portete,', 'gTqjH3y3PektnrSr1Ihjd14HB8muUxcVqtjG8sGrkhKY1crzEB08KCVONpCE', '2020-05-27 16:22:04', '2020-06-12 12:47:47'),
(3, 'Nelson Sumba', 'nsumba@gmail.com', '$2y$10$AtpYkYemPnNiQ7hUZQNKiukMvFn3NDBLfGJAt72.d1xur8DomFZny', 'Pedregal,', 'Kl4RKuS9BYo79sPpsxLRio1NE09YrOpfuJB2z94FRosv70WVp7Y2JDwAEyGJ', '2020-06-01 22:06:40', '2020-06-12 12:48:08'),
(4, 'Carlos Quito', 'cquito@gmail.com', '$2y$10$wjvdmdUgQSZ9Jo4jC5Oxwepe8FizHbj3eynOwt0ecBLne8rOTEEkK', 'La Unión,', 'JYSDWmvSs5rzVljbYjFLXACERE1DkBlYdnOywYDoiatFZMR4oOFRSQRwDwi0', '2020-06-01 22:07:16', '2020-06-12 12:48:20'),
(5, 'Maria Cruz', 'mcruz@gmail.com', '$2y$10$sdtRKbYf6QEzfWQmaQlaTuOQEZEQGzFVhwkU6YoiU84GKlo1uOSKC', 'Rayoloma,', 'VRbJ3unlhnsfURilDLRcVj6pheiiUEwKfp11BTvW8yENQJl3cy5TsivlZgTN', '2020-06-01 22:09:30', '2020-06-12 12:48:31'),
(6, 'omar mejia', 'omejia@gmail.com', '$2y$10$1JmZdlIFqlu3jliAx/uF3ugda7H/yq8JsdegQW7OIG9yTxcT9a0ku', 'Portete,La Unión,Rayoloma,', 'AdayJFsFByxOMzSfHWJfA8q3NqnZu23qd4nHlXwPegXhhAfxMI25jpT9DawF', '2020-06-09 16:54:37', '2020-06-15 02:48:52');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lecturas`
--
ALTER TABLE `lecturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medidors`
--
ALTER TABLE `medidors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `medidors_codigo_unique` (`codigo`),
  ADD UNIQUE KEY `medidors_numero_unique` (`numero`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `medidors`
--
ALTER TABLE `medidors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

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
