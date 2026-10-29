CREATE DATABASE IF NOT EXISTS `tutorial` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tutorial`;

CREATE TABLE `administradores` (
  `IdAd` int(11) NOT NULL,
  `NombreAd` varchar(35) NOT NULL,
  `TelefonoAd` varchar(15) NOT NULL,
  `CorreoAd` varchar(50) NOT NULL,
  `ContraseñaAd` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enlaces`
--

CREATE TABLE `enlaces` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `uso` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Telefono` varchar(25) NOT NULL,
  `Correo` varchar(25) NOT NULL,
  `Contraseña` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `nro_pregunta` int(11) NOT NULL,
  `Respuesta` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE `seguimiento` (
  `id` int(11) NOT NULL,
  `modulo` varchar(100) NOT NULL,
  `porcentaje` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `validacion`
--

CREATE TABLE `validacion` (
  `nro_pregunta` int(11) NOT NULL,
  `Pregunta` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices 
--

ALTER TABLE `administradores`
  ADD PRIMARY KEY (`IdAd`);


ALTER TABLE `enlaces`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`Id`);


ALTER TABLE `respuestas`
  ADD KEY `nro_pregunta` (`nro_pregunta`);


ALTER TABLE `seguimiento`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `validacion`
  ADD PRIMARY KEY (`nro_pregunta`);

--
-- AUTO_INCREMENT de las tablas 
--

ALTER TABLE `administradores`
  MODIFY `IdAd` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `enlaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `estudiantes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `seguimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones 
--

ALTER TABLE `respuestas`
  ADD CONSTRAINT `respuestas_ibfk_1` FOREIGN KEY (`nro_pregunta`) REFERENCES `validacion` (`nro_pregunta`);
COMMIT;
