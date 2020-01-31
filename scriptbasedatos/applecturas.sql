-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2020 a las 19:40:29
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `applecturas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabdetallelectura`
--

CREATE TABLE `tabdetallelectura` (
  `idtabDetalleLectura` int(11) NOT NULL,
  `tabDetalleLecturaFoto` blob,
  `tabDetalleLecturaFechaIngreso` datetime NOT NULL,
  `tabDetalleLecturaFechaModificacion` datetime NOT NULL,
  `tabDetalleLecturaEstado` varchar(1) NOT NULL,
  `tabLectura_idtabLectura` int(11) NOT NULL,
  `tabLectura_tabMedidor_idtabMedidor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablectura`
--

CREATE TABLE `tablectura` (
  `idtabLectura` int(11) NOT NULL,
  `tabLecturaFecha` datetime NOT NULL,
  `tabLecturaFechaIngreso` datetime NOT NULL,
  `tabLecturaFechaModificacion` datetime NOT NULL,
  `tabLecturaAnterior` float NOT NULL,
  `tabLecturaActual` float NOT NULL,
  `tabLecturaConsumo` float NOT NULL,
  `tabLecturaEstado` varchar(1) DEFAULT NULL,
  `tabLecturaBasico` float NOT NULL,
  `tabLecturaExceso` float NOT NULL,
  `tabLecturaObservacion` longtext,
  `tabMedidor_idtabMedidor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tablectura`
--

INSERT INTO `tablectura` (`idtabLectura`, `tabLecturaFecha`, `tabLecturaFechaIngreso`, `tabLecturaFechaModificacion`, `tabLecturaAnterior`, `tabLecturaActual`, `tabLecturaConsumo`, `tabLecturaEstado`, `tabLecturaBasico`, `tabLecturaExceso`, `tabLecturaObservacion`, `tabMedidor_idtabMedidor`) VALUES
(11, '2020-01-12 00:00:00', '2020-01-12 07:11:38', '2020-01-12 07:11:38', 0, 10, 10, 'A', 4, 25, 'La vida es bella ', 6),
(12, '2020-01-30 00:00:00', '2020-01-30 11:41:19', '2020-01-30 11:41:19', 0, 5, 5, 'A', 4, 0, 'prueba ok', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabmedidor`
--

CREATE TABLE `tabmedidor` (
  `idtabMedidor` int(11) NOT NULL,
  `tabMedidorCodigo` varchar(45) DEFAULT NULL,
  `tabMedidorNumero` int(11) DEFAULT NULL,
  `tabMedidorQR` blob,
  `tabMedidorFechaIngreso` datetime NOT NULL,
  `tabMedidorFechaModificacion` datetime NOT NULL,
  `tabMedidorEstado` varchar(1) NOT NULL,
  `tabPersona_idtabPersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tabmedidor`
--

INSERT INTO `tabmedidor` (`idtabMedidor`, `tabMedidorCodigo`, `tabMedidorNumero`, `tabMedidorQR`, `tabMedidorFechaIngreso`, `tabMedidorFechaModificacion`, `tabMedidorEstado`, `tabPersona_idtabPersona`) VALUES
(6, '1', 201256358, NULL, '2020-01-10 10:29:18', '2020-01-10 11:07:52', 'A', 19),
(7, '1', 1, NULL, '2020-01-30 11:39:33', '2020-01-30 11:39:33', 'A', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabperfil`
--

CREATE TABLE `tabperfil` (
  `idtabPerfil` int(11) NOT NULL,
  `tabPerfilNombre` varchar(45) NOT NULL,
  `tabPerfilFechaIngreso` datetime NOT NULL,
  `tabPerfilFechaModificacion` datetime NOT NULL,
  `tabPerfilEstado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tabperfil`
--

INSERT INTO `tabperfil` (`idtabPerfil`, `tabPerfilNombre`, `tabPerfilFechaIngreso`, `tabPerfilFechaModificacion`, `tabPerfilEstado`) VALUES
(2, 'ADMIN', '2019-12-27 16:09:19', '2019-12-27 16:09:19', 'A'),
(3, 'LECTOR', '2019-12-27 16:09:32', '2019-12-27 16:09:32', 'A'),
(7, 'Sistema', '2020-01-08 10:42:50', '2020-01-08 10:42:50', 'A'),
(8, 'Pruebas', '2020-01-30 11:45:43', '2020-01-30 11:45:43', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabperfil_has_tabpermiso`
--

CREATE TABLE `tabperfil_has_tabpermiso` (
  `tabPerfil_idtabPerfil` int(11) NOT NULL,
  `tabPermiso_idtabPermiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tabperfil_has_tabpermiso`
--

INSERT INTO `tabperfil_has_tabpermiso` (`tabPerfil_idtabPerfil`, `tabPermiso_idtabPermiso`) VALUES
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabpermiso`
--

CREATE TABLE `tabpermiso` (
  `idtabPermiso` int(11) NOT NULL,
  `tabPermisoNombre` varchar(45) NOT NULL,
  `tabPermisoFechaIngreso` datetime NOT NULL,
  `tabPermisoFechaModificacion` datetime NOT NULL,
  `tabPermisoEstado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tabpermiso`
--

INSERT INTO `tabpermiso` (`idtabPermiso`, `tabPermisoNombre`, `tabPermisoFechaIngreso`, `tabPermisoFechaModificacion`, `tabPermisoEstado`) VALUES
(1, 'Lecturas', '2019-12-27 16:54:32', '2020-01-08 10:19:31', 'B'),
(2, 'Reportes', '2019-12-27 17:00:55', '2019-12-27 17:00:55', 'A'),
(3, 'Personas', '2019-12-28 11:49:11', '2019-12-28 11:49:11', 'A'),
(4, 'Usuarios', '2019-12-28 11:49:24', '2019-12-28 11:49:24', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabpersona`
--

CREATE TABLE `tabpersona` (
  `idtabPersona` int(11) NOT NULL,
  `tabPersonaCedula` varchar(10) DEFAULT NULL,
  `tabPersonaNombres` varchar(45) NOT NULL,
  `tabPersonaApellidos` varchar(45) NOT NULL,
  `tabPersonaTelefono` varchar(10) DEFAULT NULL,
  `tabPersonaEmail` varchar(45) DEFAULT NULL,
  `tabPersonaEstado` varchar(1) NOT NULL,
  `tabPersonaFechaIngreso` datetime NOT NULL,
  `tabPersonaFechaModificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tabpersona`
--

INSERT INTO `tabpersona` (`idtabPersona`, `tabPersonaCedula`, `tabPersonaNombres`, `tabPersonaApellidos`, `tabPersonaTelefono`, `tabPersonaEmail`, `tabPersonaEstado`, `tabPersonaFechaIngreso`, `tabPersonaFechaModificacion`) VALUES
(3, '0101010101', 'Stalyn Israel', 'Zhindon Lozano', '2850544', 'inculcarcue@homail.com', 'A', '2019-11-29 11:06:06', '2019-11-29 11:06:46'),
(19, '0301633285', 'Robinson Fabricio', 'Cuzco Cuzco', '0981828905', 'ingrcuzco@gmail.com', 'A', '2020-01-08 14:21:38', '2020-01-08 14:21:38'),
(20, '0300050697', 'Roberto MarÃ­a', 'Andrade ValdÃ©z', '2846622', 'rvaldez@gmail.com', 'A', '2020-01-30 11:38:32', '2020-01-30 11:38:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabusuario`
--

CREATE TABLE `tabusuario` (
  `idtabUsuario` int(11) NOT NULL,
  `tabUsuarioPassword` varchar(10) NOT NULL,
  `tabUsuarioFechaIngreso` datetime NOT NULL,
  `tabUsuarioFechaModificacion` datetime NOT NULL,
  `tabUsuarioEstado` varchar(1) NOT NULL,
  `tabPersona_idtabPersona` int(11) NOT NULL,
  `tabPerfil_idtabPerfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tabusuario`
--

INSERT INTO `tabusuario` (`idtabUsuario`, `tabUsuarioPassword`, `tabUsuarioFechaIngreso`, `tabUsuarioFechaModificacion`, `tabUsuarioEstado`, `tabPersona_idtabPersona`, `tabPerfil_idtabPerfil`) VALUES
(3, 'Rfcc20', '2020-01-08 14:22:08', '2020-01-08 14:22:08', 'A', 19, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabdetallelectura`
--
ALTER TABLE `tabdetallelectura`
  ADD PRIMARY KEY (`idtabDetalleLectura`),
  ADD KEY `fk_tabDetalleLectura_tabLectura1_idx` (`tabLectura_idtabLectura`,`tabLectura_tabMedidor_idtabMedidor`);

--
-- Indices de la tabla `tablectura`
--
ALTER TABLE `tablectura`
  ADD PRIMARY KEY (`idtabLectura`,`tabMedidor_idtabMedidor`);

--
-- Indices de la tabla `tabmedidor`
--
ALTER TABLE `tabmedidor`
  ADD PRIMARY KEY (`idtabMedidor`),
  ADD KEY `fk_tabMedidor_tabPersona1_idx` (`tabPersona_idtabPersona`);

--
-- Indices de la tabla `tabperfil`
--
ALTER TABLE `tabperfil`
  ADD PRIMARY KEY (`idtabPerfil`);

--
-- Indices de la tabla `tabperfil_has_tabpermiso`
--
ALTER TABLE `tabperfil_has_tabpermiso`
  ADD PRIMARY KEY (`tabPerfil_idtabPerfil`,`tabPermiso_idtabPermiso`),
  ADD KEY `fk_tabPerfil_has_tabPermiso_tabPermiso1_idx` (`tabPermiso_idtabPermiso`),
  ADD KEY `fk_tabPerfil_has_tabPermiso_tabPerfil1_idx` (`tabPerfil_idtabPerfil`);

--
-- Indices de la tabla `tabpermiso`
--
ALTER TABLE `tabpermiso`
  ADD PRIMARY KEY (`idtabPermiso`);

--
-- Indices de la tabla `tabpersona`
--
ALTER TABLE `tabpersona`
  ADD PRIMARY KEY (`idtabPersona`);

--
-- Indices de la tabla `tabusuario`
--
ALTER TABLE `tabusuario`
  ADD PRIMARY KEY (`idtabUsuario`),
  ADD KEY `fk_tabUsuario_tabPersona1_idx` (`tabPersona_idtabPersona`),
  ADD KEY `fk_tabUsuario_tabPerfil1_idx` (`tabPerfil_idtabPerfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tabdetallelectura`
--
ALTER TABLE `tabdetallelectura`
  MODIFY `idtabDetalleLectura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tablectura`
--
ALTER TABLE `tablectura`
  MODIFY `idtabLectura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tabmedidor`
--
ALTER TABLE `tabmedidor`
  MODIFY `idtabMedidor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tabperfil`
--
ALTER TABLE `tabperfil`
  MODIFY `idtabPerfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tabpermiso`
--
ALTER TABLE `tabpermiso`
  MODIFY `idtabPermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tabpersona`
--
ALTER TABLE `tabpersona`
  MODIFY `idtabPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tabusuario`
--
ALTER TABLE `tabusuario`
  MODIFY `idtabUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tabdetallelectura`
--
ALTER TABLE `tabdetallelectura`
  ADD CONSTRAINT `fk_tabDetalleLectura_tabLectura1` FOREIGN KEY (`tabLectura_idtabLectura`,`tabLectura_tabMedidor_idtabMedidor`) REFERENCES `tablectura` (`idtabLectura`, `tabMedidor_idtabMedidor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tabmedidor`
--
ALTER TABLE `tabmedidor`
  ADD CONSTRAINT `fk_tabMedidor_tabPersona1` FOREIGN KEY (`tabPersona_idtabPersona`) REFERENCES `tabpersona` (`idtabPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tabperfil_has_tabpermiso`
--
ALTER TABLE `tabperfil_has_tabpermiso`
  ADD CONSTRAINT `fk_tabPerfil_has_tabPermiso_tabPerfil1` FOREIGN KEY (`tabPerfil_idtabPerfil`) REFERENCES `tabperfil` (`idtabPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tabPerfil_has_tabPermiso_tabPermiso1` FOREIGN KEY (`tabPermiso_idtabPermiso`) REFERENCES `tabpermiso` (`idtabPermiso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tabusuario`
--
ALTER TABLE `tabusuario`
  ADD CONSTRAINT `fk_tabUsuario_tabPerfil1` FOREIGN KEY (`tabPerfil_idtabPerfil`) REFERENCES `tabperfil` (`idtabPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tabUsuario_tabPersona1` FOREIGN KEY (`tabPersona_idtabPersona`) REFERENCES `tabpersona` (`idtabPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
