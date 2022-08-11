# Informe de seguimiento para la tabla `perro`
# 2022-08-11 23:37:48

DROP TABLE IF EXISTS `perro`;

CREATE TABLE `perro` (
  `ID_perro` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `DNI_dueno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
UPDATE perro
SET fecha_nac = 2010-12-12
WHERE ID_perro = 123;
UPDATE perro
SET fecha_nac = "2010-12-12" 
WHERE ID_perro = 123;