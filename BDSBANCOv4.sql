-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.1.10-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para bancosangre
CREATE DATABASE IF NOT EXISTS `bancosangre` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bancosangre`;


-- Volcando estructura para tabla bancosangre.bancodesangre
CREATE TABLE IF NOT EXISTS `bancodesangre` (
  `id_ban` int(11) NOT NULL AUTO_INCREMENT,
  `id_usu` int(10) unsigned NOT NULL,
  `direccion_ban` varchar(45) DEFAULT NULL,
  `tipoinstitucion_ban` varchar(45) DEFAULT NULL,
  `tipobanco_ban` varchar(45) DEFAULT NULL,
  `numerocamas_ban` varchar(45) DEFAULT NULL,
  `responsable_ban` varchar(45) DEFAULT NULL,
  `cargo_ban` varchar(45) DEFAULT NULL,
  `correo_ban` varchar(45) DEFAULT NULL,
  `telefono_ban` varchar(45) DEFAULT NULL,
  `celular_ban` varchar(45) DEFAULT NULL,
  `listaetiquetas_ban` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_ban`),
  UNIQUE KEY `id_ban_UNIQUE` (`id_ban`),
  KEY `fk_bancodesangre_usuario1_idx` (`id_usu`),
  CONSTRAINT `fk_bancodesangre_usuario1` FOREIGN KEY (`id_usu`) REFERENCES `usuario` (`id_usu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bancosangre.bancodesangre: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bancodesangre` DISABLE KEYS */;
/*!40000 ALTER TABLE `bancodesangre` ENABLE KEYS */;


-- Volcando estructura para tabla bancosangre.contactodonante
CREATE TABLE IF NOT EXISTS `contactodonante` (
  `id_con` int(11) NOT NULL AUTO_INCREMENT,
  `id_pos` int(10) unsigned NOT NULL,
  `id_sol` int(11) NOT NULL,
  `correo_con` varchar(45) DEFAULT NULL,
  `ubicacion_con` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_con`,`id_sol`),
  UNIQUE KEY `id_con_UNIQUE` (`id_con`),
  KEY `fk_contactodonante_postulante_idx` (`id_pos`),
  KEY `fk_contactodonante_solicitante1_idx` (`id_sol`),
  CONSTRAINT `fk_contactodonante_postulante` FOREIGN KEY (`id_pos`) REFERENCES `postulante` (`id_pos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contactodonante_solicitante1` FOREIGN KEY (`id_sol`) REFERENCES `solicitante` (`id_sol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bancosangre.contactodonante: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contactodonante` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactodonante` ENABLE KEYS */;


-- Volcando estructura para tabla bancosangre.examenclinico
CREATE TABLE IF NOT EXISTS `examenclinico` (
  `id_exa` int(11) NOT NULL AUTO_INCREMENT,
  `id_pos` int(10) unsigned NOT NULL,
  `id_usu` int(10) unsigned NOT NULL,
  `numero_exa` varchar(45) DEFAULT NULL,
  `tipo_exa` varchar(45) DEFAULT NULL,
  `fecha_exa` date DEFAULT NULL,
  `empresa_exa` varchar(45) DEFAULT NULL,
  `gruposanguineo_exa` varchar(45) DEFAULT NULL,
  `factorrh_exa` varchar(45) DEFAULT NULL,
  `peso_exa` varchar(45) DEFAULT NULL,
  `talla_exa` varchar(45) DEFAULT NULL,
  `variantedu_exa` varchar(45) DEFAULT NULL,
  `presionarterial_exa` varchar(45) DEFAULT NULL,
  `accesoovenoso_exa` varchar(45) DEFAULT NULL,
  `observacion_exa` varchar(45) DEFAULT NULL,
  `examinador_exa` varchar(45) DEFAULT NULL,
  `calificador_exa` varchar(45) DEFAULT NULL,
  `situacion_exa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_exa`),
  UNIQUE KEY `id_exa_UNIQUE` (`id_exa`),
  KEY `fk_examenclinico_postulante1_idx` (`id_pos`,`id_usu`),
  CONSTRAINT `fk_examenclinico_postulante1` FOREIGN KEY (`id_pos`, `id_usu`) REFERENCES `postulante` (`id_pos`, `id_usu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bancosangre.examenclinico: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `examenclinico` DISABLE KEYS */;
INSERT INTO `examenclinico` (`id_exa`, `id_pos`, `id_usu`, `numero_exa`, `tipo_exa`, `fecha_exa`, `empresa_exa`, `gruposanguineo_exa`, `factorrh_exa`, `peso_exa`, `talla_exa`, `variantedu_exa`, `presionarterial_exa`, `accesoovenoso_exa`, `observacion_exa`, `examinador_exa`, `calificador_exa`, `situacion_exa`) VALUES
	(1, 1, 1, '1', 'VOLUNTARIO', '2016-11-28', 'Hospital Hipolito Unanue', 'A', 'POSTIVO', '71', '1.66', NULL, '90', 'PERIFERICO', NULL, 'Dr.Javier Villa Real', 'Dra. Melisa Caceres Oca', 'APROBADO'),
	(2, 2, 1, '2', 'VOLUNTARIO', '2016-11-28', 'Hospital Hipolito Unanue', 'A', 'POSTIVO', '75', '1.61', NULL, '85', 'PERIFERICO', NULL, 'Dr.Javier Villa Real', 'Dra. Melisa Caceres Oca', 'APROBADO'),
	(3, 2, 1, '3', 'VOLUNTARIO', '2016-11-28', 'Clinica del monte', 'A', 'POSTIVO', '73', '1.65', NULL, '110', 'CENTRAL', NULL, 'Dr.Camilo Montoya Pax', 'Dra. Melisa Caceres Oca', 'APROBADO'),
	(25, 5, 1, '5 Depp Jeny', 'VOLUNTARIO', '2011-11-11', 'hhu', 'A', 'POSITIVO', '1.71', '1.61', 'NA', '120', 'CENTRAL', NULL, 'Dr. Marco Medina Gonzales', 'Dr. Pablo Medina Gonzales', 'APTO');
/*!40000 ALTER TABLE `examenclinico` ENABLE KEYS */;


-- Volcando estructura para tabla bancosangre.muestra
CREATE TABLE IF NOT EXISTS `muestra` (
  `id_mue` int(11) NOT NULL AUTO_INCREMENT,
  `id_exa` int(11) NOT NULL,
  `id_pos` int(10) unsigned NOT NULL,
  `id_usu` int(10) unsigned NOT NULL,
  `gruposanuineo_mue` varchar(45) DEFAULT NULL,
  `fechaextraccion_mue` varchar(45) DEFAULT NULL,
  `almecenamiento_mue` varchar(45) DEFAULT NULL,
  `codigosellocalidad_mue` varchar(45) DEFAULT NULL,
  `lotedebolsa_mue` varchar(45) DEFAULT NULL,
  `tipounidad_mue` varchar(45) DEFAULT NULL,
  `diasdevigencia_mue` varchar(45) DEFAULT NULL,
  `condicionesextraccion_mue` varchar(45) DEFAULT NULL,
  `complicacionesextraccion_mue` varchar(45) DEFAULT NULL,
  `extraccioncompleta_mue` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_mue`),
  UNIQUE KEY `id_mue_UNIQUE` (`id_mue`),
  KEY `fk_muestra_examenclinico1_idx` (`id_exa`),
  KEY `fk_muestra_postulante1_idx` (`id_pos`,`id_usu`),
  CONSTRAINT `fk_muestra_examenclinico1` FOREIGN KEY (`id_exa`) REFERENCES `examenclinico` (`id_exa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestra_postulante1` FOREIGN KEY (`id_pos`, `id_usu`) REFERENCES `postulante` (`id_pos`, `id_usu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bancosangre.muestra: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `muestra` DISABLE KEYS */;
INSERT INTO `muestra` (`id_mue`, `id_exa`, `id_pos`, `id_usu`, `gruposanuineo_mue`, `fechaextraccion_mue`, `almecenamiento_mue`, `codigosellocalidad_mue`, `lotedebolsa_mue`, `tipounidad_mue`, `diasdevigencia_mue`, `condicionesextraccion_mue`, `complicacionesextraccion_mue`, `extraccioncompleta_mue`) VALUES
	(1, 1, 4, 1, 'A', '1999-11-11', 'SECCION A', '201344', '450', 'PLASMA', '31', 'NORMAL', 'NORMAL', 'NORMAL'),
	(2, 2, 4, 1, 'B', '1999-08-11', 'SECCION D', '201341', '450', 'PLASMA', '31', 'NORMAL', 'NORMAL', 'NORMAL'),
	(3, 2, 4, 1, 'c', '1993-10-11', 'SECCION B', '201345', '450', 'PLASMA', '31', 'NORMAL', 'NORMAL', 'NORMAL');
/*!40000 ALTER TABLE `muestra` ENABLE KEYS */;


-- Volcando estructura para tabla bancosangre.orden
CREATE TABLE IF NOT EXISTS `orden` (
  `id_ord` int(11) NOT NULL AUTO_INCREMENT,
  `id_rec` int(11) NOT NULL,
  `motivo_ord` varchar(45) DEFAULT NULL,
  `tipo_ord` varchar(45) DEFAULT NULL,
  `atencion_ord` varchar(45) DEFAULT NULL,
  `destino_ord` varchar(45) DEFAULT NULL,
  `pruebacomp_ord` varchar(45) DEFAULT NULL,
  `receptor_ord` varchar(100) DEFAULT NULL,
  `grupo_ord` varchar(100) DEFAULT NULL,
  `reaccion_ord` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_ord`,`id_rec`),
  UNIQUE KEY `id_ord_UNIQUE` (`id_ord`),
  KEY `fk_orden_receptor1_idx` (`id_rec`),
  CONSTRAINT `fk_orden_receptor1` FOREIGN KEY (`id_rec`) REFERENCES `receptor` (`id_rec`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bancosangre.orden: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `orden` DISABLE KEYS */;
/*!40000 ALTER TABLE `orden` ENABLE KEYS */;


-- Volcando estructura para tabla bancosangre.postulante
CREATE TABLE IF NOT EXISTS `postulante` (
  `id_pos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_usu` int(10) unsigned NOT NULL,
  `apellidopaterno_pos` varchar(45) DEFAULT NULL,
  `apellidomaterno_pos` varchar(45) DEFAULT NULL,
  `primernombre_pos` varchar(45) DEFAULT NULL,
  `segundonombre_pos` varchar(45) DEFAULT NULL,
  `sexo_pos` varchar(45) DEFAULT NULL,
  `estadocivil_pos` varchar(45) DEFAULT NULL,
  `dni_pos` varchar(45) DEFAULT NULL,
  `fechanacimiento_pos` date DEFAULT NULL,
  `lugarnacimiento_pos` varchar(45) DEFAULT NULL,
  `direccion_pos` varchar(45) DEFAULT NULL,
  `distrito_pos` varchar(45) DEFAULT NULL,
  `telefonofijo_pos` varchar(45) DEFAULT NULL,
  `telefonomovil_pos` varchar(45) DEFAULT NULL,
  `lugarprocedencia_pos` varchar(45) DEFAULT NULL,
  `ocupacion_pos` varchar(45) DEFAULT NULL,
  `centrolaboral_pos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pos`,`id_usu`),
  UNIQUE KEY `id_pos_UNIQUE` (`id_pos`),
  KEY `fk_postulante_usuario1_idx` (`id_usu`),
  CONSTRAINT `fk_postulante_usuario1` FOREIGN KEY (`id_usu`) REFERENCES `usuario` (`id_usu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bancosangre.postulante: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `postulante` DISABLE KEYS */;
INSERT INTO `postulante` (`id_pos`, `id_usu`, `apellidopaterno_pos`, `apellidomaterno_pos`, `primernombre_pos`, `segundonombre_pos`, `sexo_pos`, `estadocivil_pos`, `dni_pos`, `fechanacimiento_pos`, `lugarnacimiento_pos`, `direccion_pos`, `distrito_pos`, `telefonofijo_pos`, `telefonomovil_pos`, `lugarprocedencia_pos`, `ocupacion_pos`, `centrolaboral_pos`) VALUES
	(1, 1, 'Carpio', 'Gomez', 'Roberto', 'Ebaristo', 'm', 'soltero', '71844112', '1999-11-09', 'tacna', 'tacna', 'tacna', '211241', '955123123', 'tacna', 'conductor', 'Central de transporte 114'),
	(2, 1, 'Catalan', 'Campos', 'Augusto', 'Fernandez', 'm', 'soltero', '22844112', '1985-11-07', 'tacna', 'tacna', 'tacna', '32441', '955113452', 'tacna', 'conductor', 'Central de transporte 114'),
	(3, 1, 'Rodas', 'Mapam', 'Augusto', 'Fernandez', 'm', 'soltero', '22844112', '1985-11-07', 'tacna', 'tacna', 'tacna', '32441', '955113452', 'tacna', 'conductor', 'Central de transporte 114'),
	(4, 1, 'Carp', 'Deon', 'Yena', 'Godofreda', 'm', 'soltera', '21212121', '2011-11-11', 'Tacna', 'Calle Olmos', 'Tacna', '12121241', '952211238', 'HHU EMERGENCIAS', 'Conductor', 'Radio Taxi 114'),
	(5, 1, 'Depp', 'York', 'Jeny', 'Yuno', 'f', 'soltera', '21211441', '2011-11-11', 'Tacna', 'Ordonel', 'Tacna', '55555000', '55555000', 'HHU EMERGENCIAS', 'Conductor', 'Radio Taxi 114');
/*!40000 ALTER TABLE `postulante` ENABLE KEYS */;


-- Volcando estructura para tabla bancosangre.prueba
CREATE TABLE IF NOT EXISTS `prueba` (
  `id_pru` int(11) NOT NULL AUTO_INCREMENT,
  `id_exa` int(11) NOT NULL,
  `hematocrito_pru` varchar(45) DEFAULT NULL,
  `hemoglobina_pru` varchar(45) DEFAULT NULL,
  `gruposanguineofactor_pru` varchar(45) DEFAULT NULL,
  `tgp_pru` varchar(45) DEFAULT NULL,
  `antihltv_pru` varchar(45) DEFAULT NULL,
  `vdalrpr_pru` varchar(45) DEFAULT NULL,
  `anticorevhb_pru` varchar(45) DEFAULT NULL,
  `antichagas_pru` varchar(45) DEFAULT NULL,
  `antihtv_pru` varchar(45) DEFAULT NULL,
  `antihcv_pru` varchar(45) DEFAULT NULL,
  `situacion_pru` varchar(45) DEFAULT NULL,
  `fecha_pru` varchar(45) DEFAULT NULL,
  `expediente_pru` varchar(45) DEFAULT NULL,
  `tipo_pru` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pru`),
  UNIQUE KEY `id_pru_UNIQUE` (`id_pru`),
  KEY `fk_pruebas_examenclinico1_idx` (`id_exa`),
  CONSTRAINT `fk_pruebas_examenclinico1` FOREIGN KEY (`id_exa`) REFERENCES `examenclinico` (`id_exa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bancosangre.prueba: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `prueba` DISABLE KEYS */;
INSERT INTO `prueba` (`id_pru`, `id_exa`, `hematocrito_pru`, `hemoglobina_pru`, `gruposanguineofactor_pru`, `tgp_pru`, `antihltv_pru`, `vdalrpr_pru`, `anticorevhb_pru`, `antichagas_pru`, `antihtv_pru`, `antihcv_pru`, `situacion_pru`, `fecha_pru`, `expediente_pru`, `tipo_pru`) VALUES
	(1, 1, '0.38', '115', '0.37', '5', '11', '11', '11', '10', '5', '5', 'APTO', '2009-11-11', 'si', 'A');
/*!40000 ALTER TABLE `prueba` ENABLE KEYS */;


-- Volcando estructura para tabla bancosangre.receptor
CREATE TABLE IF NOT EXISTS `receptor` (
  `id_rec` int(11) NOT NULL AUTO_INCREMENT,
  `dni_rec` varchar(8) DEFAULT NULL,
  `habitacion_rec` varchar(45) DEFAULT NULL,
  `horatrans_rec` varchar(45) DEFAULT NULL,
  `fechainscripcion_rec` varchar(45) DEFAULT NULL,
  `apellidomaterno_rec` varchar(45) DEFAULT NULL,
  `apellidopaterno_rec` varchar(45) DEFAULT NULL,
  `primernombre_rec` varchar(45) DEFAULT NULL,
  `segundonombre_rec` varchar(45) DEFAULT NULL,
  `telefonomovil_rec` varchar(45) DEFAULT NULL,
  `telefonofijo_rec` varchar(45) DEFAULT NULL,
  `direccion_rec` varchar(45) DEFAULT NULL,
  `correo_rec` varchar(45) DEFAULT NULL,
  `fechaatencion_rec` date DEFAULT NULL,
  `receptorcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rec`),
  UNIQUE KEY `id_rec_UNIQUE` (`id_rec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bancosangre.receptor: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `receptor` DISABLE KEYS */;
/*!40000 ALTER TABLE `receptor` ENABLE KEYS */;


-- Volcando estructura para tabla bancosangre.solicitante
CREATE TABLE IF NOT EXISTS `solicitante` (
  `id_sol` int(11) NOT NULL AUTO_INCREMENT,
  `id_usu` int(10) unsigned NOT NULL,
  `dni_sol` varchar(45) DEFAULT NULL,
  `correo_sol` varchar(45) DEFAULT NULL,
  `direccion_sol` varchar(45) DEFAULT NULL,
  `apellidomaterno_sol` varchar(45) DEFAULT NULL,
  `apellidopaterno_sol` varchar(45) DEFAULT NULL,
  `primernombre_sol` varchar(45) DEFAULT NULL,
  `segundonombre_sol` varchar(45) DEFAULT NULL,
  `fechainscripcion_sol` varchar(45) DEFAULT NULL,
  `telefonomovil_sol` varchar(45) DEFAULT NULL,
  `telefonofijo_sol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_sol`),
  UNIQUE KEY `id_sol_UNIQUE` (`id_sol`),
  KEY `fk_solicitante_usuario1_idx` (`id_usu`),
  CONSTRAINT `fk_solicitante_usuario1` FOREIGN KEY (`id_usu`) REFERENCES `usuario` (`id_usu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bancosangre.solicitante: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `solicitante` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitante` ENABLE KEYS */;


-- Volcando estructura para tabla bancosangre.transfusion
CREATE TABLE IF NOT EXISTS `transfusion` (
  `id_trans` int(11) NOT NULL AUTO_INCREMENT,
  `id_ord` int(11) NOT NULL,
  `id_rec` int(11) NOT NULL,
  `id_mue` int(11) NOT NULL,
  `fechaorden_trans` date DEFAULT NULL,
  `receptor_trans` varchar(45) DEFAULT NULL,
  `tipatencion_trans` varchar(45) DEFAULT NULL,
  `tipprocedencia_trans` varchar(45) DEFAULT NULL,
  `habitacion_trans` varchar(45) DEFAULT NULL,
  `hemocomponente_trans` varchar(45) DEFAULT NULL,
  `coddon_trans` varchar(45) DEFAULT NULL,
  `estadoorden_trans` varchar(45) DEFAULT NULL,
  `tipoorden_trans` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_trans`),
  UNIQUE KEY `id_trans_UNIQUE` (`id_trans`),
  KEY `fk_transfusion_orden1_idx` (`id_ord`,`id_rec`),
  KEY `fk_transfusion_muestra1_idx` (`id_mue`),
  CONSTRAINT `fk_transfusion_muestra1` FOREIGN KEY (`id_mue`) REFERENCES `muestra` (`id_mue`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_transfusion_orden1` FOREIGN KEY (`id_ord`, `id_rec`) REFERENCES `orden` (`id_ord`, `id_rec`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bancosangre.transfusion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `transfusion` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfusion` ENABLE KEYS */;


-- Volcando estructura para procedimiento bancosangre.USP_POSTULANTE_INSERTAR
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_POSTULANTE_INSERTAR`(IN `id_usu` INT , IN `apellidopaterno_pos` VARCHAR(45) , IN `apellidomaterno_pos` VARCHAR(45) , IN `primernombre_pos` VARCHAR(45), IN `segundonombre_pos` VARCHAR(45) , IN `sexo_pos` VARCHAR(45) , IN `estadocivil_pos` VARCHAR(45) , IN `dni_pos` VARCHAR(45), IN `fechanacimiento_pos` DATE , IN `lugarnacimiento_pos` VARCHAR(45) , IN `direccion_pos` VARCHAR(45), IN `distrito_pos` VARCHAR(45), IN `telefonofijo_pos` VARCHAR(45) , IN `telefonomovil_pos` VARCHAR(45) , IN `lugarprocedencia_pos` VARCHAR(45) , IN `ocupacion_pos` VARCHAR(45) , IN `centrolaboral_pos` VARCHAR(45))
INSERT INTO postulante VALUES(`id_pos`,
  `id_usu` ,
  `apellidopaterno_pos` ,
  `apellidomaterno_pos` ,
  `primernombre_pos` ,
  `segundonombre_pos` ,
  `sexo_pos` ,
  `estadocivil_pos`,
  `dni_pos`,
  `fechanacimiento_pos`  ,
  `lugarnacimiento_pos`  ,
  `direccion_pos`,
  `distrito_pos` ,
  `telefonofijo_pos`  ,
  `telefonomovil_pos`  ,
  `lugarprocedencia_pos`  ,
  `ocupacion_pos` ,
  `centrolaboral_pos` )//
DELIMITER ;


-- Volcando estructura para tabla bancosangre.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dni_usu` varchar(45) DEFAULT NULL,
  `apellidopaterno_usu` varchar(45) DEFAULT NULL,
  `apellidomaterno_usu` varchar(45) DEFAULT NULL,
  `primernombre_usu` varchar(45) DEFAULT NULL,
  `segundonombre_usu` varchar(45) DEFAULT NULL,
  `codigo_usu` varchar(45) DEFAULT NULL,
  `clave_usu` varchar(45) DEFAULT NULL,
  `nivel_usu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_usu`),
  UNIQUE KEY `id_usu_UNIQUE` (`id_usu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bancosangre.usuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usu`, `dni_usu`, `apellidopaterno_usu`, `apellidomaterno_usu`, `primernombre_usu`, `segundonombre_usu`, `codigo_usu`, `clave_usu`, `nivel_usu`) VALUES
	(1, '123', 'Guzman', 'Robles', 'Ulises', 'Atlas', '21', '2121', 'administrador'),
	(2, '123', 'Jin', 'Xao', 'Duan', 'Antonio', '1000', '2121', 'usuario');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
