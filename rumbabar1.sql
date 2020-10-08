
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--  estructura de base de datos para rumbabar

DROP DATABASE IF EXISTS `rumbabar`;

CREATE DATABASE IF NOT EXISTS `rumbabar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `rumbabar`;

--  estructura para tabla rumbabar.auditoria_clientes
CREATE TABLE IF NOT EXISTS `auditoria_clientes` (
  `audi_clientes_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `audi_ClienteId` bigint(20) unsigned NOT NULL,
  `audi_nuevo_ClienteNombre` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_nuevo_ClienteDocumento` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_anterior_ClienteNombre` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_anterior_ClienteDocumento` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_clientes_operacion` varchar(20) COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`audi_clientes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.auditoria_clientes: ~0 rows (aproximadamente)
DELETE FROM `auditoria_clientes`;

--  estructura para tabla rumbabar.auditoria_compra_producto
CREATE TABLE IF NOT EXISTS `auditoria_compra_producto` (
  `audi_compra_producto_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `audi_nuevo_compraCantidad` smallint(5) unsigned NULL,
  `audi_nuevo_compraSubtotal` double(10,2) NULL,
  `audi_nuevo_fk_producto` bigint(20) unsigned NULL,
  `audi_nuevo_fk_compra` bigint(20) unsigned NULL,
  `audi_anterior_compraCantidad` smallint(5) unsigned NULL,
  `audi_anterior_compraSubtotal` double(10,2) NULL,
  `audi_anterior_fk_producto` bigint(20) unsigned NULL,
  `audi_anterior_fk_compra` bigint(20) unsigned NULL,
  `audi_compra_producto_operacion` varchar(20) COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`audi_compra_producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.auditoria_compra_producto: ~0 rows (aproximadamente)
DELETE FROM `auditoria_compra_producto`;

--  estructura para tabla rumbabar.auditoria_mesas
CREATE TABLE IF NOT EXISTS `auditoria_mesas` (
  `audi_mesas_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `audi_MesaId` bigint(20) unsigned NOT NULL,
  `audi_nuevo_MesaPuestos` tinyint(3) unsigned NULL,
  `audi_anterior_MesaPuestos` tinyint(3) unsigned NULL,
  `audi_mesas_operacion` varchar(20) COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`audi_mesas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.auditoria_mesas: ~0 rows (aproximadamente)
DELETE FROM `auditoria_mesas`;

--  estructura para tabla rumbabar.auditoria_permisos
CREATE TABLE IF NOT EXISTS `auditoria_permisos` (
  `audi_permisos_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `audi_PermisoId` bigint(20) unsigned NOT NULL,
  `audi_nuevo_PermisoNombre` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_anterior_PermisoNombre` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_permisos_operacion` varchar(20) COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`audi_permisos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.auditoria_permisos: ~0 rows (aproximadamente)
DELETE FROM `auditoria_permisos`;

--  estructura para tabla rumbabar.auditoria_permiso_rol
CREATE TABLE IF NOT EXISTS `auditoria_permiso_rol` (
  `audi_permiso_rol_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `audi_nuevo_fk_permiso` bigint(20) unsigned NULL,
  `audi_nuevo_fk_rol` bigint(20) unsigned NULL,
  `audi_anterior_fk_permiso` bigint(20) unsigned NULL,
  `audi_anterior_fk_rol` bigint(20) unsigned NULL,
  `audi_permiso_rol_operacion` varchar(20) COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`audi_permiso_rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.auditoria_permiso_rol: ~0 rows (aproximadamente)
DELETE FROM `auditoria_permiso_rol`;

--  estructura para tabla rumbabar.auditoria_productos
CREATE TABLE IF NOT EXISTS `auditoria_productos` (
  `audi_productos_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `audi_ProductoId` bigint(20) unsigned NOT NULL,
  `audi_nuevo_ProductoNombre` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_nuevo_ProductoDescripcion` longtext COLLATE utf8mb4_unicode_ci NULL,
  `audi_nuevo_ProductoPrecio` double(10,2) NULL,
  `audi_nuevo_ProductoCantidad` mediumint(8) unsigned NULL,
  `audi_nuevo_fk_proveedor` bigint(20) unsigned NULL,
  `audi_anterior_ProductoNombre` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_anterior_ProductoDescripcion` longtext COLLATE utf8mb4_unicode_ci NULL,
  `audi_anterior_ProductoPrecio` double(10,2) NULL,
  `audi_anterior_ProductoCantidad` mediumint(8) unsigned NULL,
  `audi_anterior_fk_proveedor` bigint(20) unsigned NULL,
  `audi_productos_operacion` varchar(20) COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`audi_productos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.auditoria_productos: ~0 rows (aproximadamente)
DELETE FROM `auditoria_productos`;

--  estructura para tabla rumbabar.auditoria_producto_venta
CREATE TABLE IF NOT EXISTS `auditoria_producto_venta` (
  `audi_venta_producto_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `audi_nuevo_ventaCantidad` smallint(5) unsigned NULL,
  `audi_nuevo_ventaSubtotal` double(10,2) NULL,
  `audi_nuevo_fk_producto` bigint(20) unsigned NULL,
  `audi_nuevo_fk_venta` bigint(20) unsigned NULL,
  `audi_anterior_ventaCantidad` smallint(5) unsigned NULL,
  `audi_anterior_ventaSubtotal` double(10,2) NULL,
  `audi_anterior_fk_producto` bigint(20) unsigned NULL,
  `audi_anterior_fk_venta` bigint(20) unsigned NULL,
  `audi_producto_venta_operacion` varchar(20) COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`audi_venta_producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.auditoria_producto_venta: ~0 rows (aproximadamente)
DELETE FROM `auditoria_producto_venta`;

--  estructura para tabla rumbabar.auditoria_proveedores
CREATE TABLE IF NOT EXISTS `auditoria_proveedores` (
  `audi_proveedores_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `audi_ProveedorID` bigint(20) unsigned NOT NULL,
  `audi_nuevo_ProveedorNombre` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_nuevo_ProveedorNit` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_anterior_ProveedorNombre` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_anterior_ProveedorNit` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_proveedores_operacion` varchar(20) COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`audi_proveedores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.auditoria_proveedores: ~0 rows (aproximadamente)
DELETE FROM `auditoria_proveedores`;

--  estructura para tabla rumbabar.auditoria_roles
CREATE TABLE IF NOT EXISTS `auditoria_roles` (
  `audi_roles_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `audi_RolId` bigint(20) unsigned NOT NULL,
  `audi_nuevo_RolNombre` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_anterior_RolNombre` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_roles_operacion` varchar(20) COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`audi_roles_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.auditoria_roles: ~0 rows (aproximadamente)
DELETE FROM `auditoria_roles`;

--  estructura para tabla rumbabar.auditoria_usuarios
CREATE TABLE IF NOT EXISTS `auditoria_usuarios` (
  `audi_usuarios_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `audi_UsuarioId` bigint(20) unsigned NOT NULL,
  `audi_nuevo_UsuarioName` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_nuevo_UsuarioEmail` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_nuevo_UsuarioPassword` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_nuevo_fk_rol` bigint(20) unsigned NULL,
  `audi_anterior_UsuarioName` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_anterior_UsuarioEmail` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_anterior_UsuarioPassword` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `audi_anterior_fk_rol` bigint(20) unsigned NULL,
  `audi_usuarios_operacion` varchar(20) COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`audi_usuarios_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.auditoria_usuarios: ~0 rows (aproximadamente)
DELETE FROM `auditoria_usuarios`;

--  estructura para tabla rumbabar.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `ClienteId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ClienteNombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ClienteDocumento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ClienteId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.clientes: ~100 rows (aproximadamente)
DELETE FROM `clientes`;
INSERT INTO `clientes` (`ClienteId`, `ClienteNombre`, `ClienteDocumento`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Rubén Ponce', '1007793066', NULL, NULL, NULL),
	(2, 'Miguel Ángel Téllez', '995301159', NULL, NULL, NULL),
	(3, 'Gonzalo Luis', '1062053397', NULL, NULL, NULL),
	(4, 'Irene Serna', '966307155', NULL, NULL, NULL),
	(5, 'Javier Becerra', '1007650403', NULL, NULL, NULL),
	(6, 'Aitana Amador', '1127653914', NULL, NULL, NULL),
	(7, 'Joel Miranda', '1078470000', NULL, NULL, NULL),
	(8, 'Rubén Porras', '1027148413', NULL, NULL, NULL),
	(9, 'Ainhoa Anguiano', '1091101754', NULL, NULL, NULL),
	(10, 'Hugo Betancourt', '1122247294', NULL, NULL, NULL),
	(11, 'Teresa Velásquez', '1199182662', NULL, NULL, NULL),
	(12, 'Olga Carrasquillo', '1144213819', NULL, NULL, NULL),
	(13, 'Yeray Moya', '1064707854', NULL, NULL, NULL),
	(14, 'Lucas Román', '1081685860', NULL, NULL, NULL),
	(15, 'Ariadna Pascual', '1159293424', NULL, NULL, NULL),
	(16, 'Vera Luna', '1075154111', NULL, NULL, NULL),
	(17, 'Gabriela Barraza', '1122457179', NULL, NULL, NULL),
	(18, 'Isaac Leal', '1187192517', NULL, NULL, NULL),
	(19, 'Patricia Tello', '952556189', NULL, NULL, NULL),
	(20, 'Margarita Luján', '1010155775', NULL, NULL, NULL),
	(21, 'Paula Alfaro', '1020377540', NULL, NULL, NULL),
	(22, 'Arnau Toledo', '1047637047', NULL, NULL, NULL),
	(23, 'Jon Quiñónez', '1062934860', NULL, NULL, NULL),
	(24, 'Gabriel Cabello', '1086379761', NULL, NULL, NULL),
	(25, 'Sonia Laureano', '1081106984', NULL, NULL, NULL),
	(26, 'Nicolás Castellano', '1114126598', NULL, NULL, NULL),
	(27, 'Biel López', '1120785507', NULL, NULL, NULL),
	(28, 'Rayan Varela', '978134733', NULL, NULL, NULL),
	(29, 'Alonso Frías', '1055405416', NULL, NULL, NULL),
	(30, 'Álvaro Raya', '1158671981', NULL, NULL, NULL),
	(31, 'Carlos Costa', '966595832', NULL, NULL, NULL),
	(32, 'Guillem Ibáñez', '976950912', NULL, NULL, NULL),
	(33, 'Pablo Alcala', '993953928', NULL, NULL, NULL),
	(34, 'Adrián Cardona', '1145516043', NULL, NULL, NULL),
	(35, 'Margarita Paredes', '985923448', NULL, NULL, NULL),
	(36, 'Nerea Castañeda', '1038771711', NULL, NULL, NULL),
	(37, 'Marina Roca', '1192792035', NULL, NULL, NULL),
	(38, 'Nuria Ramírez', '1127299455', NULL, NULL, NULL),
	(39, 'Ismael Coronado', '1091001462', NULL, NULL, NULL),
	(40, 'Alejandro Lucero', '1199770969', NULL, NULL, NULL),
	(41, 'Ona Chacón', '992336550', NULL, NULL, NULL),
	(42, 'Martín Flores', '966968944', NULL, NULL, NULL),
	(43, 'Ian Ramos', '1187237667', NULL, NULL, NULL),
	(44, 'Aina Ros', '1097036289', NULL, NULL, NULL),
	(45, 'Emilia Blázquez', '990318646', NULL, NULL, NULL),
	(46, 'Manuela Padilla', '1157763380', NULL, NULL, NULL),
	(47, 'Carlota Rosado', '1010567681', NULL, NULL, NULL),
	(48, 'Patricia Medina', '1193921650', NULL, NULL, NULL),
	(49, 'Miriam Luján', '1015208277', NULL, NULL, NULL),
	(50, 'Asier Enríquez', '1097881738', NULL, NULL, NULL),
	(51, 'Nora Camarillo', '1165074561', NULL, NULL, NULL),
	(52, 'Nil Galán', '996285472', NULL, NULL, NULL),
	(53, 'Claudia Valdés', '1093930005', NULL, NULL, NULL),
	(54, 'Mireia Garay', '959839131', NULL, NULL, NULL),
	(55, 'Carolina Linares', '1148180257', NULL, NULL, NULL),
	(56, 'Óscar Rentería', '1173771754', NULL, NULL, NULL),
	(57, 'Abril Oliva', '1079970197', NULL, NULL, NULL),
	(58, 'Amparo Vaca', '1104833156', NULL, NULL, NULL),
	(59, 'Lucas Salcido', '1094033572', NULL, NULL, NULL),
	(60, 'Isaac Batista', '1182385480', NULL, NULL, NULL),
	(61, 'Claudia Rocha', '989776670', NULL, NULL, NULL),
	(62, 'Amparo Toro', '1087067335', NULL, NULL, NULL),
	(63, 'Hugo Gastélum', '1150844386', NULL, NULL, NULL),
	(64, 'Cristian Segovia', '1107983236', NULL, NULL, NULL),
	(65, 'Francisco Maestas', '1123079493', NULL, NULL, NULL),
	(66, 'Andrea Marcos', '1105435874', NULL, NULL, NULL),
	(67, 'Carmen Rivero', '973569150', NULL, NULL, NULL),
	(68, 'Unai Becerra', '985911192', NULL, NULL, NULL),
	(69, 'Sandra Clemente', '1092781051', NULL, NULL, NULL),
	(70, 'Raúl Niño', '1142329023', NULL, NULL, NULL),
	(71, 'Alexandra Pérez', '974354708', NULL, NULL, NULL),
	(72, 'Miriam Angulo', '1169319904', NULL, NULL, NULL),
	(73, 'Arnau Manzano', '986379238', NULL, NULL, NULL),
	(74, 'Gabriel Sánchez', '1067323581', NULL, NULL, NULL),
	(75, 'Esther Más', '994893061', NULL, NULL, NULL),
	(76, 'Gabriela Rael', '1049112974', NULL, NULL, NULL),
	(77, 'Víctor Núñez', '1184122691', NULL, NULL, NULL),
	(78, 'Dario Báez', '1016812853', NULL, NULL, NULL),
	(79, 'Nora Parra', '1053158132', NULL, NULL, NULL),
	(80, 'Francisca Palacios', '1021012841', NULL, NULL, NULL),
	(81, 'Diego Benavides', '982957207', NULL, NULL, NULL),
	(82, 'Ismael Meléndez', '1192432458', NULL, NULL, NULL),
	(83, 'Aleix Blanco', '1056041508', NULL, NULL, NULL),
	(84, 'Eduardo Domínguez', '1071092092', NULL, NULL, NULL),
	(85, 'Raúl Manzanares', '1107885918', NULL, NULL, NULL),
	(86, 'Asier Treviño', '1180169879', NULL, NULL, NULL),
	(87, 'Mar Zaragoza', '1174066897', NULL, NULL, NULL),
	(88, 'Guillermo Bustos', '970154031', NULL, NULL, NULL),
	(89, 'Ariadna Aranda', '1142764684', NULL, NULL, NULL),
	(90, 'Raquel Ocasio', '1126694496', NULL, NULL, NULL),
	(91, 'Yolanda Garza', '1077177767', NULL, NULL, NULL),
	(92, 'Marco Anguiano', '1003377083', NULL, NULL, NULL),
	(93, 'Rosario García', '1101470058', NULL, NULL, NULL),
	(94, 'Héctor Pastor', '1125327336', NULL, NULL, NULL),
	(95, 'Vera Camacho', '973688960', NULL, NULL, NULL),
	(96, 'Lidia Méndez', '983789356', NULL, NULL, NULL),
	(97, 'Ángel Delarosa', '1154766746', NULL, NULL, NULL),
	(98, 'Alex Piñeiro', '1164357664', NULL, NULL, NULL),
	(99, 'Helena Garrido', '1025789389', NULL, NULL, NULL),
	(100, 'Alberto Ramón', '1159521201', NULL, NULL, NULL);

--  estructura para tabla rumbabar.compras
CREATE TABLE IF NOT EXISTS `compras` (
  `CompraId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `CompraSaldo` double(10,2) NOT NULL,
  `CompraTotal` double(10,2) NOT NULL,
  `fk_user` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`CompraId`),
  KEY `compras_fk_user_foreign` (`fk_user`),
  CONSTRAINT `compras_fk_user_foreign` FOREIGN KEY (`fk_user`) REFERENCES `usuarios` (`UsuarioId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.compras: ~50 rows (aproximadamente)
DELETE FROM `compras`;
INSERT INTO `compras` (`CompraId`, `CompraSaldo`, `CompraTotal`, `fk_user`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 4298.50, 42985.00, 3, NULL, NULL, NULL),
	(2, 7230.71, 50615.00, 4, NULL, NULL, NULL),
	(3, 14163.71, 99146.00, 1, NULL, NULL, NULL),
	(4, 1504.12, 12033.00, 3, NULL, NULL, NULL),
	(5, 85932.00, 85932.00, 2, NULL, NULL, NULL),
	(6, 7267.50, 58140.00, 3, NULL, NULL, NULL),
	(7, 4476.11, 40285.00, 4, NULL, NULL, NULL),
	(8, 30678.33, 92035.00, 2, NULL, NULL, NULL),
	(9, 1372.57, 9608.00, 5, NULL, NULL, NULL),
	(10, 8437.89, 75941.00, 4, NULL, NULL, NULL),
	(11, 7699.33, 46196.00, 2, NULL, NULL, NULL),
	(12, 5307.57, 37153.00, 2, NULL, NULL, NULL),
	(13, 20089.75, 80359.00, 5, NULL, NULL, NULL),
	(14, 933.20, 9332.00, 5, NULL, NULL, NULL),
	(15, 5747.33, 34484.00, 1, NULL, NULL, NULL),
	(16, 17583.00, 70332.00, 1, NULL, NULL, NULL),
	(17, 7729.50, 61836.00, 5, NULL, NULL, NULL),
	(18, 3713.62, 29709.00, 1, NULL, NULL, NULL),
	(19, 91898.00, 91898.00, 2, NULL, NULL, NULL),
	(20, 9720.00, 68040.00, 2, NULL, NULL, NULL),
	(21, 36881.00, 36881.00, 4, NULL, NULL, NULL),
	(22, 7801.57, 54611.00, 1, NULL, NULL, NULL),
	(23, 2582.38, 20659.00, 5, NULL, NULL, NULL),
	(24, 7398.38, 59187.00, 4, NULL, NULL, NULL),
	(25, 94.20, 471.00, 1, NULL, NULL, NULL),
	(26, 307.00, 921.00, 3, NULL, NULL, NULL),
	(27, 9815.75, 39263.00, 4, NULL, NULL, NULL),
	(28, 9008.00, 9008.00, 2, NULL, NULL, NULL),
	(29, 3219.80, 32198.00, 3, NULL, NULL, NULL),
	(30, 11499.60, 57498.00, 5, NULL, NULL, NULL),
	(31, 9520.43, 66643.00, 3, NULL, NULL, NULL),
	(32, 16306.00, 81530.00, 5, NULL, NULL, NULL),
	(33, 68547.00, 68547.00, 4, NULL, NULL, NULL),
	(34, 5167.14, 36170.00, 2, NULL, NULL, NULL),
	(35, 97261.00, 97261.00, 2, NULL, NULL, NULL),
	(36, 264.40, 2644.00, 3, NULL, NULL, NULL),
	(37, 760.00, 3800.00, 5, NULL, NULL, NULL),
	(38, 6751.00, 40506.00, 4, NULL, NULL, NULL),
	(39, 29271.50, 58543.00, 3, NULL, NULL, NULL),
	(40, 5431.25, 43450.00, 5, NULL, NULL, NULL),
	(41, 2168.14, 15177.00, 2, NULL, NULL, NULL),
	(42, 1054.44, 9490.00, 3, NULL, NULL, NULL),
	(43, 8592.11, 77329.00, 5, NULL, NULL, NULL),
	(44, 2973.00, 2973.00, 2, NULL, NULL, NULL),
	(45, 2251.38, 18011.00, 3, NULL, NULL, NULL),
	(46, 1238.14, 8667.00, 1, NULL, NULL, NULL),
	(47, 1248.86, 8742.00, 5, NULL, NULL, NULL),
	(48, 12409.00, 49636.00, 4, NULL, NULL, NULL),
	(49, 3014.70, 30147.00, 2, NULL, NULL, NULL),
	(50, 36921.00, 73842.00, 2, NULL, NULL, NULL);

--  estructura para tabla rumbabar.compra_producto
CREATE TABLE IF NOT EXISTS `compra_producto` (
  `compraCantidad` smallint(5) unsigned NOT NULL,
  `compraSubtotal` double(10,2) NOT NULL,
  `fk_producto` bigint(20) unsigned NOT NULL,
  `fk_compra` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `compra_producto_fk_producto_foreign` (`fk_producto`),
  KEY `compra_producto_fk_compra_foreign` (`fk_compra`),
  CONSTRAINT `compra_producto_fk_compra_foreign` FOREIGN KEY (`fk_compra`) REFERENCES `compras` (`CompraId`),
  CONSTRAINT `compra_producto_fk_producto_foreign` FOREIGN KEY (`fk_producto`) REFERENCES `productos` (`ProductoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.compra_producto: ~263 rows (aproximadamente)
DELETE FROM `compra_producto`;
INSERT INTO `compra_producto` (`compraCantidad`, `compraSubtotal`, `fk_producto`, `fk_compra`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(21, 201589.08, 98, 1, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(30, 33957.90, 183, 1, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(39, 69968.34, 2, 2, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(12, 7561.56, 75, 2, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(2, 3327.02, 116, 2, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(142, 971798.30, 129, 2, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(13, 85621.12, 138, 2, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(32, 281535.04, 148, 2, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(2, 15234.46, 200, 2, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(48, 189303.36, 267, 2, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(22, 90602.60, 283, 2, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(38, 162547.66, 285, 2, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(3, 722.94, 21, 3, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(79, 576097.23, 30, 3, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(42, 363271.02, 146, 3, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(9, 34019.10, 160, 3, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(73, 416771.60, 167, 3, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(81, 36633.87, 231, 3, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(58, 14408.36, 80, 4, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(72, 486555.84, 115, 4, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(50, 276249.50, 118, 4, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(74, 175266.04, 122, 4, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(102, 266623.92, 150, 4, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(30, 19282.80, 193, 4, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(14, 69548.78, 14, 5, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(15, 73209.60, 87, 5, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(25, 72328.00, 180, 5, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(4, 1483.72, 278, 5, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(41, 175380.37, 285, 5, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(34, 118973.82, 142, 6, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(102, 431301.90, 204, 6, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(13, 63422.19, 246, 6, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(50, 116961.00, 250, 6, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(72, 225695.52, 52, 7, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(60, 148473.60, 78, 7, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(54, 311913.18, 100, 7, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(27, 46957.86, 26, 8, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(66, 231850.08, 95, 8, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(2, 2979.90, 126, 8, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(3, 23848.59, 152, 8, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(28, 29594.32, 158, 8, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(48, 325474.08, 161, 8, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(13, 28859.09, 213, 8, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(14, 130342.24, 258, 8, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(16, 102772.48, 141, 9, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(33, 95472.96, 180, 9, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(22, 180236.10, 214, 9, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(53, 158812.91, 253, 9, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(65, 474004.05, 30, 10, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(7, 61158.23, 176, 10, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(19, 3480.99, 77, 11, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(90, 610263.90, 161, 11, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(14, 1672.86, 173, 11, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(13, 52637.78, 182, 11, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(11, 82423.22, 186, 11, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(88, 322163.60, 234, 11, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(18, 74658.78, 243, 11, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(6, 56449.32, 255, 11, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(104, 850047.12, 277, 11, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(11, 10226.81, 39, 12, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(17, 57756.48, 189, 12, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(63, 559312.74, 197, 13, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(75, 635810.25, 199, 13, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(15, 119835.15, 218, 13, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(35, 215351.85, 252, 13, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(3, 17894.52, 105, 14, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(86, 422975.52, 289, 14, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(142, 721286.16, 172, 15, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(104, 868456.16, 202, 15, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(12, 47325.84, 267, 15, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(14, 75579.84, 281, 15, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(14, 118418.16, 299, 15, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(67, 70814.98, 158, 16, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(56, 520575.44, 237, 16, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(60, 456641.40, 123, 17, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(143, 411273.72, 137, 17, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(17, 27343.48, 177, 17, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(40, 45034.40, 222, 17, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(7, 69988.94, 238, 17, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(8, 10302.16, 8, 18, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(14, 893.90, 47, 18, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(10, 39513.00, 92, 18, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(82, 309537.70, 108, 18, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(32, 281535.04, 148, 18, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(14, 113837.50, 269, 18, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(14, 59728.20, 280, 18, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(58, 90442.88, 44, 19, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(49, 400502.97, 277, 19, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(17, 99626.29, 16, 20, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(9, 1648.89, 77, 20, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(8, 24922.00, 82, 20, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(162, 1174621.50, 84, 20, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(26, 208500.76, 97, 20, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(20, 152213.80, 123, 20, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(2, 3069.24, 215, 20, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(115, 878514.90, 228, 20, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(64, 253190.40, 256, 20, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(56, 37676.80, 46, 21, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(108, 922132.08, 69, 21, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(103, 806967.92, 106, 21, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(92, 347286.20, 108, 21, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(10, 14899.50, 126, 21, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(45, 5377.05, 173, 21, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(11, 50710.22, 201, 21, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(1, 94.68, 221, 21, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(47, 140834.09, 253, 21, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(5, 25843.05, 254, 21, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(6, 43754.22, 30, 22, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(173, 1278350.63, 74, 22, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(5, 19589.80, 133, 22, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(3, 4825.32, 177, 22, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(100, 494625.00, 286, 22, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(132, 206145.72, 56, 23, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(123, 1050205.98, 69, 23, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(26, 98277.40, 160, 23, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(58, 555841.26, 196, 23, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(94, 573831.46, 210, 23, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(87, 108040.95, 259, 23, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(14, 40284.58, 271, 23, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(28, 176811.60, 273, 23, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(57, 243179.10, 280, 23, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(20, 149860.40, 186, 24, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(18, 11132.64, 251, 24, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(105, 697359.60, 20, 25, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(97, 707359.89, 30, 25, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(79, 382501.41, 33, 25, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(1, 2534.86, 53, 25, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(5, 38053.45, 123, 25, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(18, 104535.90, 178, 25, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(132, 421369.08, 60, 26, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(46, 79660.96, 63, 26, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(14, 112269.64, 97, 26, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(43, 154351.94, 101, 26, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(90, 778437.90, 146, 26, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(20, 179643.00, 181, 26, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(61, 582565.86, 191, 26, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(8, 67819.76, 199, 26, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(96, 195879.36, 230, 26, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(25, 18027.75, 32, 27, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(10, 34630.70, 81, 27, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(12, 81092.64, 115, 27, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(25, 138124.75, 118, 27, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(90, 713121.30, 139, 27, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(5, 20245.30, 182, 27, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(1, 8652.13, 188, 27, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(27, 52755.03, 235, 27, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(28, 176811.60, 273, 27, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(7, 1395.66, 7, 28, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(10, 61246.50, 68, 28, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(50, 10996.00, 79, 28, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(74, 67186.08, 107, 28, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(15, 41849.85, 211, 28, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(8, 41348.88, 254, 28, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(112, 41544.16, 278, 28, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(49, 215929.77, 62, 29, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(92, 667069.00, 84, 29, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(145, 1125733.60, 109, 29, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(10, 14899.50, 126, 29, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(13, 112441.03, 146, 29, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(95, 910429.65, 196, 29, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(25, 11306.75, 231, 29, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(71, 368670.34, 266, 29, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(28, 189859.88, 161, 30, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(47, 133319.73, 225, 30, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(71, 280011.22, 267, 30, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(110, 730567.20, 20, 31, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(57, 253691.61, 224, 31, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(103, 46583.81, 231, 31, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(2, 7321.90, 234, 31, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(54, 263446.02, 246, 31, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(66, 6950.46, 260, 31, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(7, 29942.99, 285, 31, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(52, 504520.12, 290, 31, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(68, 572978.20, 296, 31, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(46, 136036.72, 298, 31, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(17, 33498.84, 111, 32, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(47, 73072.31, 121, 32, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(41, 227965.74, 130, 32, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(104, 407467.84, 133, 32, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(89, 383031.97, 219, 32, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(96, 858805.44, 248, 32, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(38, 184506.72, 268, 32, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(77, 380861.25, 286, 32, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(165, 1196373.75, 84, 33, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(38, 291725.24, 91, 33, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(109, 984372.46, 93, 33, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(1, 6611.85, 226, 33, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(19, 105723.60, 241, 33, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(104, 290282.72, 3, 34, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(26, 13648.18, 40, 34, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(26, 64338.56, 78, 34, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(96, 250940.16, 150, 34, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(47, 392475.38, 202, 34, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(45, 284161.50, 273, 34, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(4, 22024.20, 274, 34, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(20, 74319.80, 279, 34, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(165, 953068.05, 100, 35, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(23, 78141.12, 189, 35, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(20, 25755.40, 8, 36, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(109, 818078.79, 147, 36, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(105, 1006264.35, 196, 36, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(30, 173285.10, 100, 37, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(5, 24288.05, 120, 37, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(3, 4469.85, 126, 37, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(1, 2786.64, 144, 37, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(37, 211240.40, 167, 37, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(9, 52267.95, 178, 37, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(10, 93719.40, 187, 37, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(108, 549246.96, 13, 38, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(36, 282816.72, 103, 38, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(56, 219405.76, 133, 38, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(38, 328780.94, 188, 38, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(16, 69.60, 194, 38, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(192, 1444268.16, 216, 38, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(113, 860007.97, 123, 39, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(18, 135705.06, 282, 39, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(193, 1114800.81, 100, 40, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(7, 57347.85, 214, 40, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(1, 94.68, 221, 40, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(39, 43908.54, 222, 40, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(141, 179172.93, 276, 40, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(44, 187788.92, 49, 41, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(19, 6592.43, 134, 41, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(52, 472453.80, 99, 42, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(32, 136521.60, 280, 42, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(66, 532848.36, 297, 42, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(52, 12917.84, 80, 43, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(41, 200106.24, 87, 43, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(46, 311912.66, 161, 43, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(9, 34738.20, 168, 43, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(2, 12994.80, 170, 43, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(8, 32392.48, 182, 43, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(102, 199296.78, 235, 43, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(161, 287726.32, 11, 44, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(49, 465749.41, 12, 44, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(68, 468864.08, 18, 44, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(27, 252395.19, 31, 44, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(50, 93160.50, 45, 44, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(13, 40543.88, 76, 44, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(22, 154732.16, 102, 44, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(6, 55196.82, 128, 44, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(23, 16585.53, 32, 45, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(128, 86118.40, 46, 45, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(101, 395713.96, 133, 45, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(40, 364337.20, 175, 45, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(124, 554127.48, 233, 45, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(67, 450607.83, 19, 46, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(123, 403000.89, 41, 46, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(75, 219696.00, 154, 46, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(54, 362723.94, 295, 46, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(14, 118418.16, 299, 46, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(1, 3062.04, 25, 47, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(14, 893.90, 47, 47, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(146, 260919.52, 11, 48, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(10, 7307.00, 72, 48, '2020-10-05 06:58:19', '2020-10-05 06:58:19', NULL),
	(5, 17315.35, 81, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(74, 680760.78, 128, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(59, 249478.55, 204, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(34, 316063.66, 237, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(15, 141123.30, 255, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(31, 52056.75, 275, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(111, 750543.15, 37, 49, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(3, 5297.34, 54, 49, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(31, 137972.63, 224, 49, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(129, 163924.17, 276, 49, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(121, 834302.26, 18, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(12, 99643.08, 86, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(79, 471222.36, 105, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(3, 4990.53, 116, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(1, 2786.64, 144, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(32, 36221.76, 183, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(9, 84347.46, 187, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(88, 204360.64, 220, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(100, 37093.00, 278, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL);

--  estructura para tabla rumbabar.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;

--  estructura para tabla rumbabar.mesas
CREATE TABLE IF NOT EXISTS `mesas` (
  `MesaId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `MesaPuestos` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`MesaId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.mesas: ~15 rows (aproximadamente)
DELETE FROM `mesas`;
INSERT INTO `mesas` (`MesaId`, `MesaPuestos`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 8, NULL, NULL, NULL),
	(2, 2, NULL, NULL, NULL),
	(3, 2, NULL, NULL, NULL),
	(4, 6, NULL, NULL, NULL),
	(5, 4, NULL, NULL, NULL),
	(6, 8, NULL, NULL, NULL),
	(7, 6, NULL, NULL, NULL),
	(8, 8, NULL, NULL, NULL),
	(9, 8, NULL, NULL, NULL),
	(10, 4, NULL, NULL, NULL),
	(11, 8, NULL, NULL, NULL),
	(12, 8, NULL, NULL, NULL),
	(13, 2, NULL, NULL, NULL),
	(14, 6, NULL, NULL, NULL),
	(15, 4, NULL, NULL, NULL);

--  estructura para tabla rumbabar.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.migrations: ~24 rows (aproximadamente)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2013_09_25_200225_create_roles_table', 1),
	(2, '2014_10_12_000000_create_users_table', 1),
	(3, '2014_10_12_100000_create_password_resets_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2020_09_25_200207_create_proveedores_table', 1),
	(6, '2020_09_25_200556_create_products_table', 1),
	(7, '2020_09_25_201139_create_clientes_table', 1),
	(8, '2020_09_25_202155_create_mesas_table', 1),
	(9, '2020_09_25_215113_create_compras_table', 1),
	(10, '2020_09_25_215124_create_ventas_table', 1),
	(11, '2020_09_25_215239_create_permisos_table', 1),
	(12, '2020_09_25_215312_create_permiso_rol_table', 1),
	(13, '2020_09_25_215343_create_producto_venta_table', 1),
	(14, '2020_09_25_215517_create_compra_producto_table', 1),
	(15, '2020_10_05_062231_create_auditoria_clientes_table', 1),
	(16, '2020_10_05_062232_create_auditoria_mesas_table', 1),
	(17, '2020_10_05_062244_create_auditoria_permisos_table', 1),
	(18, '2020_10_05_062259_create_auditoria_productos_table', 1),
	(19, '2020_10_05_062310_create_auditoria_proveedores_table', 1),
	(20, '2020_10_05_062326_create_auditoria_roles_table', 1),
	(21, '2020_10_05_062335_create_auditoria_usuarios_table', 1),
	(22, '2020_10_05_062412_create_auditoria_compra_producto_table', 1),
	(23, '2020_10_05_062432_create_auditoria_producto_venta_table', 1),
	(24, '2020_10_05_062457_create_auditoria_permiso_rol_table', 1);

--  estructura para tabla rumbabar.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;

--  estructura para tabla rumbabar.permisos
CREATE TABLE IF NOT EXISTS `permisos` (
  `PermisoId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `PermisoNombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PermisoId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.permisos: ~50 rows (aproximadamente)
DELETE FROM `permisos`;
INSERT INTO `permisos` (`PermisoId`, `PermisoNombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Rolread', NULL, NULL, NULL),
	(2, 'Roldelete', NULL, NULL, NULL),
	(3, 'Clienteread', NULL, NULL, NULL),
	(4, 'Permisocreate', NULL, NULL, NULL),
	(5, 'Compradelete', NULL, NULL, NULL),
	(6, 'Mesaupdate', NULL, NULL, NULL),
	(7, 'Clienteread', NULL, NULL, NULL),
	(8, 'Compraread', NULL, NULL, NULL),
	(9, 'Usuariocreate', NULL, NULL, NULL),
	(10, 'Proveedorupdate', NULL, NULL, NULL),
	(11, 'Ventadelete', NULL, NULL, NULL),
	(12, 'Compraupdate', NULL, NULL, NULL),
	(13, 'Permisoread', NULL, NULL, NULL),
	(14, 'Roldelete', NULL, NULL, NULL),
	(15, 'Productoupdate', NULL, NULL, NULL),
	(16, 'Productoread', NULL, NULL, NULL),
	(17, 'Clienteupdate', NULL, NULL, NULL),
	(18, 'Compradelete', NULL, NULL, NULL),
	(19, 'Productocreate', NULL, NULL, NULL),
	(20, 'Compraupdate', NULL, NULL, NULL),
	(21, 'Permisocreate', NULL, NULL, NULL),
	(22, 'Ventacreate', NULL, NULL, NULL),
	(23, 'Mesacreate', NULL, NULL, NULL),
	(24, 'Proveedorupdate', NULL, NULL, NULL),
	(25, 'Ventaupdate', NULL, NULL, NULL),
	(26, 'Mesaupdate', NULL, NULL, NULL),
	(27, 'Ventaupdate', NULL, NULL, NULL),
	(28, 'Usuariodelete', NULL, NULL, NULL),
	(29, 'Permisodelete', NULL, NULL, NULL),
	(30, 'Usuariocreate', NULL, NULL, NULL),
	(31, 'Permisodelete', NULL, NULL, NULL),
	(32, 'Productoread', NULL, NULL, NULL),
	(33, 'Mesacreate', NULL, NULL, NULL),
	(34, 'Permisodelete', NULL, NULL, NULL),
	(35, 'Ventacreate', NULL, NULL, NULL),
	(36, 'Rolread', NULL, NULL, NULL),
	(37, 'Rolread', NULL, NULL, NULL),
	(38, 'Permisodelete', NULL, NULL, NULL),
	(39, 'Permisocreate', NULL, NULL, NULL),
	(40, 'Rolread', NULL, NULL, NULL),
	(41, 'Proveedorread', NULL, NULL, NULL),
	(42, 'Clientedelete', NULL, NULL, NULL),
	(43, 'Productoread', NULL, NULL, NULL),
	(44, 'Proveedorread', NULL, NULL, NULL),
	(45, 'Ventadelete', NULL, NULL, NULL),
	(46, 'Clienteupdate', NULL, NULL, NULL),
	(47, 'Ventadelete', NULL, NULL, NULL),
	(48, 'Clienteread', NULL, NULL, NULL),
	(49, 'Rolread', NULL, NULL, NULL),
	(50, 'Proveedordelete', NULL, NULL, NULL);

--  estructura para tabla rumbabar.permiso_rol
CREATE TABLE IF NOT EXISTS `permiso_rol` (
  `fk_permiso` bigint(20) unsigned NOT NULL,
  `fk_rol` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `permiso_rol_fk_permiso_foreign` (`fk_permiso`),
  KEY `permiso_rol_fk_rol_foreign` (`fk_rol`),
  CONSTRAINT `permiso_rol_fk_permiso_foreign` FOREIGN KEY (`fk_permiso`) REFERENCES `permisos` (`PermisoId`),
  CONSTRAINT `permiso_rol_fk_rol_foreign` FOREIGN KEY (`fk_rol`) REFERENCES `roles` (`RolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.permiso_rol: ~40 rows (aproximadamente)
DELETE FROM `permiso_rol`;
INSERT INTO `permiso_rol` (`fk_permiso`, `fk_rol`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(36, 1, NULL, NULL, NULL),
	(45, 1, NULL, NULL, NULL),
	(48, 1, NULL, NULL, NULL),
	(24, 2, NULL, NULL, NULL),
	(48, 2, NULL, NULL, NULL),
	(8, 3, NULL, NULL, NULL),
	(28, 3, NULL, NULL, NULL),
	(43, 3, NULL, NULL, NULL),
	(6, 1, NULL, NULL, NULL),
	(24, 1, NULL, NULL, NULL),
	(28, 1, NULL, NULL, NULL),
	(29, 1, NULL, NULL, NULL),
	(31, 1, NULL, NULL, NULL),
	(33, 1, NULL, NULL, NULL),
	(50, 1, NULL, NULL, NULL),
	(16, 2, NULL, NULL, NULL),
	(29, 2, NULL, NULL, NULL),
	(32, 2, NULL, NULL, NULL),
	(34, 2, NULL, NULL, NULL),
	(36, 2, NULL, NULL, NULL),
	(39, 2, NULL, NULL, NULL),
	(43, 2, NULL, NULL, NULL),
	(45, 2, NULL, NULL, NULL),
	(5, 3, NULL, NULL, NULL),
	(7, 3, NULL, NULL, NULL),
	(12, 3, NULL, NULL, NULL),
	(22, 3, NULL, NULL, NULL),
	(42, 3, NULL, NULL, NULL),
	(48, 3, NULL, NULL, NULL),
	(50, 3, NULL, NULL, NULL),
	(1, 4, NULL, NULL, NULL),
	(7, 4, NULL, NULL, NULL),
	(11, 4, NULL, NULL, NULL),
	(13, 4, NULL, NULL, NULL),
	(20, 4, NULL, NULL, NULL),
	(25, 4, NULL, NULL, NULL),
	(29, 4, NULL, NULL, NULL),
	(39, 4, NULL, NULL, NULL),
	(43, 4, NULL, NULL, NULL),
	(47, 4, NULL, NULL, NULL);

--  estructura para tabla rumbabar.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `ProductoId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ProductoNombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProductoDescripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProductoPrecio` double(10,2) NOT NULL,
  `ProductoCantidad` mediumint(8) unsigned NOT NULL,
  `fk_proveedor` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ProductoId`),
  KEY `productos_fk_proveedor_foreign` (`fk_proveedor`),
  CONSTRAINT `productos_fk_proveedor_foreign` FOREIGN KEY (`fk_proveedor`) REFERENCES `proveedores` (`ProveedorId`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.productos: ~300 rows (aproximadamente)
DELETE FROM `productos`;
INSERT INTO `productos` (`ProductoId`, `ProductoNombre`, `ProductoDescripcion`, `ProductoPrecio`, `ProductoCantidad`, `fk_proveedor`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Material de oficina', 'Maxime dolor deleniti nihil ab molestiae odio aperiam. Perspiciatis ut explicabo molestiae non. Odit beatae officiis culpa omnis.', 4540.70, 185, 39, NULL, NULL, NULL),
	(2, 'Carne de almuerzo', 'Quaerat provident numquam aut iure in. Dolores aspernatur ducimus culpa aut tempore velit qui laudantium. Ex consequatur voluptas error ea pariatur eos qui accusantium.', 1794.06, 57, 49, NULL, NULL, NULL),
	(3, 'lavavajillas', 'Maiores neque minus cumque perspiciatis sit provident. Et occaecati rem et ut quam necessitatibus mollitia et. Rerum voluptatem et rem.', 2791.18, 105, 6, NULL, NULL, NULL),
	(4, 'Margarina', 'Accusantium autem nemo adipisci. Dicta ratione tenetur nisi natus. Fuga quia ut aperiam repellendus voluptatem.', 2242.54, 185, 24, NULL, NULL, NULL),
	(5, 'Navajas', 'Eum consequatur dolorem est quam odio est. Et tempora ea totam dolores et nihil autem. Quae dolorem vitae dolores.', 6595.30, 51, 50, NULL, NULL, NULL),
	(6, 'Acortamiento', 'Quo quo soluta est expedita enim. Et voluptatibus voluptatem quo sed.', 797.50, 90, 27, NULL, NULL, NULL),
	(7, 'Periódico revista', 'Sit voluptatem eveniet laborum fugit nemo consequatur. Cum ratione corrupti est iusto temporibus. Doloribus recusandae qui alias sit at voluptas.', 199.38, 83, 22, NULL, NULL, NULL),
	(8, 'Ostras', 'Ut voluptatibus nesciunt eos numquam voluptatem nam. Libero nihil consectetur qui. Maxime sed error omnis unde accusantium quae. Fugiat officia neque veniam voluptatem est. Quo quaerat vel unde dolor.', 1287.77, 28, 17, NULL, NULL, NULL),
	(9, 'Zumo de frutas', 'Velit omnis hic harum illum itaque fugit autem. Qui temporibus unde animi velit. Cupiditate consectetur aut voluptas sed sint.', 8097.26, 123, 25, NULL, NULL, NULL),
	(10, 'Mantequilla de maní', 'Id sit suscipit voluptas quia deserunt explicabo ipsam sint. Dolor a rerum voluptas minima praesentium id natus ut. Qui ad voluptas aut ullam repellat quasi totam sunt. Eum in quo libero tenetur fugiat provident quasi.', 5743.71, 144, 44, NULL, NULL, NULL),
	(11, 'Tomates', 'Recusandae recusandae veniam sequi doloribus voluptas libero alias. Voluptas placeat voluptates voluptatem suscipit magni. Perferendis qui illum ipsam dolores itaque. Odio repellat voluptatem iure qui eius.', 1787.12, 179, 5, NULL, NULL, NULL),
	(12, 'Decoraciones', 'Ullam ipsam mollitia laborum cumque. Doloribus eaque dicta quia rerum exercitationem et sunt.', 9505.09, 130, 21, NULL, NULL, NULL),
	(13, 'Medicamento', 'Expedita quam recusandae ipsum. Tempore aspernatur consequuntur omnis adipisci. In eum qui occaecati rem consequuntur provident itaque dolor.', 5085.62, 141, 44, NULL, NULL, NULL),
	(14, 'Analgésico', 'Delectus delectus est vel quia deleniti. Et ipsam nesciunt et magni corrupti. Architecto quis et reiciendis aperiam autem. At culpa nihil earum voluptas dolorem hic itaque. Odit explicabo quia animi labore ullam voluptatibus nemo.', 4967.77, 186, 10, NULL, NULL, NULL),
	(15, 'Queso de cabra', 'Sint et nihil a deleniti qui quibusdam eaque et. Impedit rerum nulla in iste vel. Omnis vel et odio dolore unde quos in.', 7664.34, 67, 47, NULL, NULL, NULL),
	(16, 'Pan rebanado', 'Occaecati consequatur dolores ut ut officia est. Aut ut aut odio consequatur ullam. Est dolore deleniti iure. Incidunt nobis quibusdam aut id debitis nesciunt atque. In error aut necessitatibus optio molestiae.', 5860.37, 143, 42, NULL, NULL, NULL),
	(17, 'Olivos', 'Eos ut ex ab. Voluptatibus tempore quas et et minus. Quia cupiditate ab exercitationem aut sit necessitatibus enim molestiae.', 5267.06, 54, 14, NULL, NULL, NULL),
	(18, 'Jugo', 'Qui nihil consequatur commodi. Voluptatem ab perspiciatis enim dolor quia est fugit velit.', 6895.06, 169, 40, NULL, NULL, NULL),
	(19, 'Tarjeta de felicitación', 'Ut veniam corporis eveniet inventore quidem qui vitae quod. In possimus quasi error sed. Ullam aspernatur repellat neque qui occaecati.', 6725.49, 191, 16, NULL, NULL, NULL),
	(20, 'Mermelada', 'Tempora perspiciatis occaecati ut aut. Possimus nihil consequatur autem eos amet qui non. Aut aspernatur id praesentium.', 6641.52, 116, 12, NULL, NULL, NULL),
	(21, 'Zanahorias', 'Est sunt maxime ea voluptate soluta at nulla voluptate. Sint delectus qui eligendi odit. Enim explicabo commodi iure hic est. Nemo ut mollitia inventore atque. Aut veniam accusamus sit est est.', 240.98, 25, 10, NULL, NULL, NULL),
	(22, 'Jabón de manos', 'Cupiditate nisi voluptatem consequatur. Labore eum non omnis. Iusto occaecati commodi distinctio. Ut qui incidunt nesciunt impedit est. Et est asperiores commodi voluptas.', 7864.14, 144, 49, NULL, NULL, NULL),
	(23, 'Bagels', 'Voluptas est et est aut perspiciatis. Repellendus velit natus beatae voluptas rerum quaerat. Voluptas ut incidunt commodi dolore.', 5258.97, 162, 35, NULL, NULL, NULL),
	(24, 'Mezcla de panqueques', 'Enim quas fugit mollitia est possimus. Est nemo nam molestiae ab cupiditate laborum ullam. Nisi aut amet ut consequatur totam ut sapiente. Natus sed aliquam et tenetur asperiores.', 3411.97, 3, 4, NULL, NULL, NULL),
	(25, 'Motivo', 'Beatae sit ratione dolore et temporibus sint rerum. Id sapiente totam et ex ut omnis occaecati. Ea est dolorem aut est eaque nisi.', 3062.04, 54, 26, NULL, NULL, NULL),
	(26, 'Salsa picante', 'Molestiae voluptates magni ut adipisci voluptatibus consectetur. Enim est itaque consequatur quo voluptas excepturi velit. Reprehenderit unde velit delectus aut sunt.', 1739.18, 35, 17, NULL, NULL, NULL),
	(27, 'Congelado', 'Quisquam eum molestiae voluptatem quisquam architecto. Cumque repellendus autem voluptatem temporibus facere quia cumque et. Unde commodi tenetur itaque ea reiciendis corporis.', 1767.00, 75, 36, NULL, NULL, NULL),
	(28, 'Repelente de insectos', 'Magnam rerum porro nemo. Quis quae quia adipisci iste est. Cum eum sunt quia.', 332.51, 181, 50, NULL, NULL, NULL),
	(29, 'Recogida de recetas', 'Provident in corporis placeat ab dolorem. Qui rem suscipit hic molestias. Numquam et sed ea enim soluta occaecati voluptate amet. Quas rerum eaque aut sequi et aut.', 5740.61, 58, 42, NULL, NULL, NULL),
	(30, 'Vinagre', 'Ipsa porro in accusamus qui excepturi repellat. Ipsam fugit quas quod impedit neque eum provident. Ut rerum quisquam repellendus et quo nihil nihil. Autem illum ut laudantium hic.', 7292.37, 111, 17, NULL, NULL, NULL),
	(31, 'Varios comestibles', 'Ipsam consequuntur aut eius voluptatum non impedit voluptas. Dolorem nobis ipsam fugiat cumque. Rerum quam fuga qui vel ex numquam. Omnis quisquam eligendi aspernatur commodi iusto sed harum cum. Eius doloribus eos temporibus accusantium quia dignissimos placeat consectetur.', 9347.97, 190, 31, NULL, NULL, NULL),
	(32, 'Queso Provolone', 'Et voluptatem exercitationem consequuntur asperiores repellat atque qui. Dolore tenetur repudiandae voluptatem qui aliquid possimus vero voluptas. Voluptates nobis hic non ducimus enim. Similique est quia rerum qui. Omnis sed optio aut exercitationem dolores sunt.', 721.11, 51, 32, NULL, NULL, NULL),
	(33, 'Melón', 'Ab veritatis velit doloremque autem distinctio accusamus. Minus sapiente quia autem modi laborum dolor unde odio. Eligendi aspernatur qui quam saepe soluta porro.', 4841.79, 135, 50, NULL, NULL, NULL),
	(34, 'Tocino', 'Voluptate ut velit tenetur nihil eum consequatur. Sequi cum id dolorem esse laborum impedit. Dicta iusto doloremque aut debitis et ut dolorum. Porro qui ducimus ut et id voluptatem. Magnam ipsam est incidunt sed.', 7871.35, 69, 46, NULL, NULL, NULL),
	(35, 'Club soda', 'Quia corrupti velit totam dolores sed aut illo. Commodi ullam aut sint minus harum excepturi ex dolorem. Fugiat et dolor aut corporis nihil ad. Nobis porro amet quis nihil quasi voluptatibus non ullam.', 4520.75, 133, 26, NULL, NULL, NULL),
	(36, 'Limas', 'Vitae incidunt quia ut et aut in sunt. Corrupti est rem tenetur sed doloremque.', 6921.20, 174, 9, NULL, NULL, NULL),
	(37, 'Bombillas', 'Repellat cum iste nulla dolor. Et sunt tempore consequatur libero ducimus officiis. Ipsa sed ea ullam asperiores nihil omnis. Deleniti quis suscipit ea modi est sint sed earum. Excepturi nemo et eius quam.', 6761.65, 163, 18, NULL, NULL, NULL),
	(38, 'Pastel', 'Praesentium aspernatur ut officiis non. Iste est consectetur ut optio doloribus sunt. Sint neque temporibus dolorem et doloribus non magni. Est aut provident provident ipsum quas. Culpa provident et est exercitationem et.', 1333.66, 5, 43, NULL, NULL, NULL),
	(39, 'Perritos calientes', 'Sunt ut quibusdam fugiat praesentium consectetur. Aut ea quisquam rem minima odit animi perferendis blanditiis. Itaque tenetur sequi in sed omnis officiis et rerum. Ea nam unde recusandae sunt fugit a voluptatem.', 929.71, 62, 38, NULL, NULL, NULL),
	(40, 'Magdalenas inglesas', 'Est tempora nostrum maiores ipsa et. Illo non distinctio eos ab nihil iusto. Consequuntur voluptas sequi nemo unde. Reprehenderit ipsa et ea.', 524.93, 191, 44, NULL, NULL, NULL),
	(41, 'Loción hidratante', 'Enim est odio explicabo fugit non. Accusamus hic qui incidunt et voluptates commodi. Consectetur omnis suscipit molestiae iusto.', 3276.43, 144, 35, NULL, NULL, NULL),
	(42, 'Melocotones', 'Voluptas inventore qui beatae culpa et officia esse. Voluptatem fugiat error sit sint. Magni ea temporibus dignissimos exercitationem. Ullam praesentium nulla illo reprehenderit omnis.', 7007.91, 110, 37, NULL, NULL, NULL),
	(43, 'Salsa de soja', 'Velit eum quod et fuga. Sed dignissimos recusandae maiores dolore. Distinctio error incidunt est consequuntur repellat rerum. Incidunt eveniet architecto dolorum molestiae.', 8022.79, 85, 24, NULL, NULL, NULL),
	(44, 'DVDR', 'Amet rerum corporis et sit. Provident sit quisquam commodi minima. Voluptas et in dolorem quae modi qui doloremque.', 1559.36, 63, 7, NULL, NULL, NULL),
	(45, 'Cocina de pretzels', 'Animi quia enim beatae aspernatur est. Cupiditate quos suscipit qui assumenda sint non aut. Dolores voluptas nihil qui et voluptas.', 1863.21, 164, 27, NULL, NULL, NULL),
	(46, 'golosinas', 'Corrupti sequi quod itaque dolorem tempore quis illum. Necessitatibus asperiores sit eius harum distinctio. Velit neque quia eius rerum nam nam. Tenetur explicabo odio voluptates ut.', 672.80, 137, 5, NULL, NULL, NULL),
	(47, 'Cerveza', 'Ab iure labore doloremque dolor totam. Similique quisquam laborum maxime sapiente. Officiis similique doloremque labore et et maxime nobis ut.', 63.85, 22, 41, NULL, NULL, NULL),
	(48, 'Crema agria', 'Omnis sed voluptatum labore sed quis. Odit mollitia nisi adipisci fugit necessitatibus. Quos nostrum recusandae minus. Dicta eius voluptates est itaque.', 6493.75, 188, 1, NULL, NULL, NULL),
	(49, 'Espinacas', 'Sunt nesciunt incidunt in fugiat dolores aut voluptas accusamus. Ipsam ipsam maxime sed dicta quia fuga autem. Quidem asperiores aut et earum.', 4267.93, 146, 12, NULL, NULL, NULL),
	(50, 'Bayas', 'Reprehenderit voluptatibus neque praesentium libero ut assumenda provident. Nisi odio ipsum tempora omnis. Aliquam cum quisquam veritatis voluptate reprehenderit vero nostrum sed. Dolore reprehenderit et dolorem non ratione optio.', 5700.84, 38, 27, NULL, NULL, NULL),
	(51, 'Panes listos para hornear', 'Quisquam qui nulla blanditiis expedita perferendis iusto sed. Dolore non veniam fugit reiciendis sit. Ea aut corporis eligendi ad.', 2422.48, 41, 21, NULL, NULL, NULL),
	(52, 'Bollos', 'Ipsa pariatur quasi minima excepturi. Cum ut enim adipisci atque aut. Quia minus molestias aut consectetur tenetur. Cumque est ut odit adipisci.', 3134.66, 135, 43, NULL, NULL, NULL),
	(53, 'Mascotas del ron', 'Nihil ut autem voluptatem illo. Voluptatem odio quae dolorem fugiat porro praesentium et temporibus. Et necessitatibus saepe eius sit.', 2534.86, 4, 19, NULL, NULL, NULL),
	(54, 'Menta', 'Porro sapiente quasi eius nemo inventore. Quibusdam quia incidunt provident beatae quia.', 1765.78, 133, 30, NULL, NULL, NULL),
	(55, 'Snacks de aceite de oliva', 'Velit dolorum et animi laboriosam libero cumque necessitatibus excepturi. Suscipit aut repellat architecto autem neque ducimus laudantium. Ex minus ea voluptas possimus aut. Quaerat doloremque ea recusandae.', 3155.88, 140, 49, NULL, NULL, NULL),
	(56, 'Champú para mascotas', 'Ipsa esse cum officia accusantium suscipit. Est sit mollitia sapiente sed doloribus suscipit. Cum aut ad dolores ducimus pariatur voluptate.', 1561.71, 190, 34, NULL, NULL, NULL),
	(57, 'Tater tots', 'Et deleniti nisi necessitatibus laborum dolorum quos consequatur quae. Et dignissimos omnis recusandae voluptatem sunt. Perspiciatis ipsum sequi quis modi illo omnis ut.', 2391.99, 51, 7, NULL, NULL, NULL),
	(58, 'Migas de pan', 'Sit quis qui quo qui suscipit repellat. Quos nemo dolor saepe dolore at non. Fuga sit error neque praesentium repellendus a.', 8830.22, 155, 25, NULL, NULL, NULL),
	(59, 'Pimiento rojo', 'Tempora pariatur quisquam inventore recusandae iste qui exercitationem. Est accusantium nihil et hic sit blanditiis fugit. Molestiae nihil odit perferendis dicta ut eum. Sint aspernatur minus recusandae sint quos.', 1632.45, 186, 46, NULL, NULL, NULL),
	(60, 'Sorbete', 'Dolor rem rerum non est aut vel. Necessitatibus odit sunt sed eos quia recusandae.', 3192.19, 181, 50, NULL, NULL, NULL),
	(61, 'Mezcladores', 'Sit facere sit et aliquam in eos. Vero iusto debitis quis ut. Nemo placeat voluptatem qui maxime fugit esse.', 8723.99, 59, 35, NULL, NULL, NULL),
	(62, 'Mop head', 'Qui sunt asperiores rerum id placeat. Amet nam voluptatum ipsum sed dolore.', 4406.73, 50, 8, NULL, NULL, NULL),
	(63, 'Esponjas', 'Voluptas optio aliquam et et. Vero aut et recusandae repellat et. Exercitationem aut inventore nobis nobis reprehenderit dolore.', 1731.76, 112, 39, NULL, NULL, NULL),
	(64, 'Fruta seca', 'Qui et quod quisquam voluptatem delectus eius quos. Assumenda ut quisquam eaque quod recusandae. Vero repudiandae enim aspernatur omnis exercitationem. Velit occaecati et a ullam.', 8000.28, 4, 11, NULL, NULL, NULL),
	(65, 'Pañuelo facial', 'Nemo adipisci sit dolorem omnis recusandae earum alias. Ab incidunt odit aut accusamus. Nemo et atque rerum aut laudantium. Voluptas molestiae qui id quasi corrupti ut odit.', 3754.07, 156, 2, NULL, NULL, NULL),
	(66, 'Kiwis', 'Nihil quae cum quia earum aspernatur a harum. Quis incidunt minus nam aperiam nihil voluptatem.', 3323.06, 155, 31, NULL, NULL, NULL),
	(67, 'Shampoo Acondicionador', 'Assumenda et facere quas at. Ipsum nulla laudantium tempora placeat consequatur culpa. Dicta optio ex cum reiciendis.', 6227.71, 133, 34, NULL, NULL, NULL),
	(68, 'Ketchup', 'Omnis voluptatem aut cum. Aliquid fuga iusto in expedita et quia dolor. Laboriosam aspernatur distinctio eligendi nulla ducimus incidunt minus. Explicabo sunt eius dolores et enim fugiat.', 6124.65, 15, 20, NULL, NULL, NULL),
	(69, 'Tilapia', 'Voluptatem et quis odio error rerum quis voluptatibus. Cumque error eveniet dolor recusandae. Enim quia quam accusamus. Hic asperiores veniam dolores et sint voluptate nulla.', 8538.26, 157, 42, NULL, NULL, NULL),
	(70, 'Comida', 'Nulla numquam eos quia occaecati delectus autem. Eveniet maiores beatae dignissimos voluptatem officiis. Quia iure incidunt nulla.', 4617.58, 49, 36, NULL, NULL, NULL),
	(71, 'Verduras', 'Eum iusto illum porro rem excepturi ipsa. Libero qui quis et consequatur incidunt sit ea aliquid. Suscipit veniam quidem aliquam et modi. Vel suscipit rerum asperiores voluptatum enim aut modi.', 7965.97, 97, 45, NULL, NULL, NULL),
	(72, 'Aderezo para ensaladas', 'Voluptatibus saepe suscipit eum sit voluptate. Corrupti consectetur quo voluptate quas aliquam delectus. Enim neque nostrum inventore neque quae cupiditate. Aut laudantium commodi consequatur et.', 730.70, 105, 39, NULL, NULL, NULL),
	(73, 'Patatas instantáneas', 'Dolorem aut consequatur aut consequatur omnis dolorem. Enim facere id ad sint laudantium id sit voluptatum. Ut et quidem odio est molestias.', 5923.60, 176, 31, NULL, NULL, NULL),
	(74, 'Salsa para pasta', 'Eveniet qui ad in assumenda rerum distinctio nihil. Modi in sint nam nihil et eveniet consequatur et. Et odit doloremque et tenetur. Eveniet enim illum doloribus cumque rerum ab.', 7389.31, 200, 21, NULL, NULL, NULL),
	(75, 'Caldo', 'Autem illo ut quos quos accusantium perspiciatis. Quaerat deserunt nostrum cupiditate. Enim nisi repellat odit.', 630.13, 14, 3, NULL, NULL, NULL),
	(76, 'Galletas', 'Excepturi saepe dolores nihil aspernatur mollitia. Earum nostrum nihil sunt eos iure facilis fugiat. Ea quisquam voluptas facere.', 3118.76, 63, 50, NULL, NULL, NULL),
	(77, 'Bloqueador solar', 'Hic sit quis velit. Sed quam facilis et ullam numquam dolorem. Voluptatem iure quia quidem ut.', 183.21, 136, 41, NULL, NULL, NULL),
	(78, 'Azúcar', 'Quos voluptate aliquid minus magni. Quaerat repellat quas est consequatur deserunt. Inventore adipisci rerum quia dicta non aspernatur amet.', 2474.56, 120, 30, NULL, NULL, NULL),
	(79, 'Queso crema', 'Rerum est explicabo non totam quidem omnis. Exercitationem repellat eum ut odit. Est ea ut nobis vel. Rerum aliquam ut dignissimos.', 219.92, 85, 27, NULL, NULL, NULL),
	(80, 'Bebidas deportivas', 'Sequi vero neque et pariatur. Nihil voluptas velit ipsam molestias voluptas atque nulla. Officia magni adipisci ducimus ea asperiores enim rerum vero. Impedit incidunt vero praesentium facere odit exercitationem tempora.', 248.42, 142, 17, NULL, NULL, NULL),
	(81, 'Feta', 'Aliquam similique dolorum porro ab dicta sit. In sequi error enim repellendus iure enim fugiat.', 3463.07, 10, 13, NULL, NULL, NULL),
	(82, 'Jamón', 'Rerum quisquam et nihil suscipit necessitatibus. Iure et sit molestias. Dolore eius ea voluptatum temporibus. Rerum a magnam amet commodi quasi aut adipisci.', 3115.25, 38, 48, NULL, NULL, NULL),
	(83, 'Pan de pita', 'Maiores repellendus voluptas aut incidunt et quas. Amet asperiores rerum molestias possimus cupiditate. Consequatur eveniet provident consequatur corrupti quaerat. Sed sapiente quisquam atque aut voluptates.', 4771.05, 73, 34, NULL, NULL, NULL),
	(84, 'Cubitos de caldo', 'Minus qui earum perferendis vel et rerum sint quo. Tenetur quod accusantium itaque ea repellendus. Assumenda nemo quidem saepe repellat in. Nesciunt et autem eos eius fuga fugiat et id.', 7250.75, 166, 30, NULL, NULL, NULL),
	(85, 'Salmón', 'Quia rerum maxime eaque ullam. Distinctio fugit tempore aperiam et provident cumque. Quae culpa sed cum voluptas voluptatum sed nesciunt expedita. Earum eos ducimus dolores voluptatem.', 3124.16, 50, 1, NULL, NULL, NULL),
	(86, 'Cangrejo', 'Assumenda ut minima iure. Officiis nam est et et recusandae qui. Reprehenderit id autem ipsa est quisquam qui.', 8303.59, 118, 42, NULL, NULL, NULL),
	(87, 'Frijoles horneados', 'Perspiciatis harum eum iste. Et omnis dolorum est in voluptatem veniam. Natus nesciunt sapiente culpa sint magni et nostrum non. Aut deleniti fugit quos odit.', 4880.64, 115, 48, NULL, NULL, NULL),
	(88, 'Pizza', 'Quaerat nobis quis aut odit dolor. Ex nesciunt corrupti deserunt. Adipisci est fugiat quia sint aperiam enim. Beatae non facilis ducimus aut et.', 1691.18, 25, 6, NULL, NULL, NULL),
	(89, 'Lista de tareas de envoltura de plástico', 'Autem ducimus est id cumque expedita. Sit totam iure molestias quibusdam repudiandae assumenda. Et minima cupiditate illo. Natus iusto optio consectetur dignissimos qui. Perferendis nesciunt dolor nisi sit.', 3784.23, 98, 19, NULL, NULL, NULL),
	(90, 'Pan fresco', 'Aspernatur iste itaque iure quisquam ut magnam non. Itaque omnis aut quae voluptatum.', 9144.00, 14, 34, NULL, NULL, NULL),
	(91, 'Hisopos', 'Sunt et ex porro alias. Tempore eos dolor perferendis voluptate blanditiis mollitia. Veritatis qui nesciunt veritatis excepturi. Et totam ut rerum. Libero minus consequatur vel hic assumenda quia ipsa.', 7676.98, 169, 38, NULL, NULL, NULL),
	(92, 'Condones', 'Dolores excepturi vitae est nulla quia voluptatem. Et omnis asperiores ut nihil. Quas cumque voluptatibus sit porro et placeat quidem. Voluptas eveniet nobis alias voluptatem.', 3951.30, 15, 44, NULL, NULL, NULL),
	(93, 'Pollo', 'Minus illum perspiciatis eligendi eum hic doloremque. Est sint quia quam repudiandae porro nemo consectetur. Officiis consequatur voluptas delectus quisquam quis animi nihil. Ullam unde labore tenetur aut quia voluptas. Esse ex commodi repudiandae ipsa sit cumque.', 9030.94, 141, 25, NULL, NULL, NULL),
	(94, 'Seda floja', 'In dolorem rerum neque qui nihil voluptas autem. Aut rerum ut quod velit.', 5665.06, 57, 37, NULL, NULL, NULL),
	(95, 'Coliflor', 'Voluptate ut illum quod provident sint totam. Illo et ducimus id repellendus sapiente eum facere. Nostrum voluptas voluptatum aut consequuntur itaque.', 3512.88, 98, 8, NULL, NULL, NULL),
	(96, 'Conservas', 'Autem assumenda repudiandae eum iure blanditiis eligendi consequatur. Ea blanditiis voluptate aliquid deleniti et. Voluptate enim quia repellendus omnis et velit. Neque eum est amet pariatur nisi.', 8601.65, 165, 16, NULL, NULL, NULL),
	(97, 'Bolsas de basura', 'Et neque ducimus exercitationem quis voluptas aut fugit. Ut rem mollitia qui in aut et. Veritatis sed eligendi aut non non architecto. Autem accusantium nulla magnam modi dignissimos.', 8019.26, 73, 6, NULL, NULL, NULL),
	(98, 'Cosas de bebe', 'Laborum ex quidem dolor placeat tempore impedit. Error velit eum qui possimus. Dicta voluptates autem rerum facere sed. Ipsam eligendi sapiente ut repellat harum fuga quia.', 9599.48, 159, 3, NULL, NULL, NULL),
	(99, 'Flores', 'Autem sed dicta reiciendis ut vero nemo. Voluptas omnis non molestiae est laudantium in. Qui laboriosam quisquam earum eligendi. Doloribus quidem nemo nostrum sit veritatis.', 9085.65, 62, 15, NULL, NULL, NULL),
	(100, 'Comida para bebé', 'Omnis delectus et sed nobis et aut qui molestiae. Ut omnis nesciunt fuga saepe voluptatibus. Repellendus omnis aut numquam quia eaque autem. Omnis tempora nemo est consequatur quibusdam consequuntur esse quae.', 5776.17, 196, 45, NULL, NULL, NULL),
	(101, 'Salsa de bistec', 'Totam velit eaque totam. Magni quo dolorem vitae ut fugit cupiditate. Voluptatem architecto sapiente et est aspernatur quae doloribus.', 3589.58, 47, 21, NULL, NULL, NULL),
	(102, 'Peras', 'Voluptatem porro pariatur qui eaque expedita non. Dolorum officia quo est reprehenderit. Eum fuga et voluptatum dolorum. Magnam sed voluptate necessitatibus placeat qui doloribus eaque commodi.', 7033.28, 26, 28, NULL, NULL, NULL),
	(103, 'Amianto', 'Sint tempore voluptate accusantium ea fugiat quis voluptas. Aliquam perferendis voluptatibus fugiat eveniet cupiditate autem minus. Ad in ut minima impedit vel qui vitae. Sunt explicabo minus magni qui vero dolorem et.', 7856.02, 70, 23, NULL, NULL, NULL),
	(104, 'Crema de afeitar', 'Illum repellat animi blanditiis. Velit ipsa quae sunt ipsa odit. Atque quasi qui delectus molestias quos excepturi sed.', 7948.06, 27, 25, NULL, NULL, NULL),
	(105, 'Alergia', 'Assumenda temporibus labore aut odio et qui quod necessitatibus. Recusandae dolor id perspiciatis et est consequatur ut mollitia. Sed dolor numquam provident illum et et et. Consequatur tempore eaque quasi vitae.', 5964.84, 188, 40, NULL, NULL, NULL),
	(106, 'Pimenton', 'At aut sunt harum laboriosam itaque quia. Iste placeat consectetur qui ut aliquid magni occaecati. Nesciunt et totam quia modi aut aut maiores. Ullam architecto qui voluptatem tenetur inventore quae ullam.', 7834.64, 159, 15, NULL, NULL, NULL),
	(107, 'Tratamiento de pulgas', 'Est quidem molestias assumenda reprehenderit. Facilis ut consequatur odit sint at aut. Enim nobis est ut iste incidunt.', 907.92, 167, 14, NULL, NULL, NULL),
	(108, 'Baby wash', 'Quae ut voluptas eligendi rerum. Ut aliquam quam eos nemo. Amet consequatur porro officia consequatur eos enim non et. Sint maxime molestiae ullam ut beatae dolorum.', 3774.85, 99, 43, NULL, NULL, NULL),
	(109, 'Patatas fritas', 'Architecto architecto debitis magnam possimus eius illo cum. Veritatis vel ullam voluptatem omnis omnis quidem. Non et ut dolores odit nostrum laborum.', 7763.68, 184, 3, NULL, NULL, NULL),
	(110, 'Carcinógenos de levadura', 'Animi nihil fugit fuga distinctio neque corrupti doloribus. Velit adipisci nihil non. Voluptatem non nulla sapiente sunt dicta vel dolorum vel. Nemo laborum amet explicabo officia dolore et dolore.', 8550.36, 44, 10, NULL, NULL, NULL),
	(111, 'Atún', 'Enim et quae ad sit consequatur sunt. Recusandae sed exercitationem sunt doloribus corporis consectetur quo. Officiis fugiat vel qui vero soluta quidem eos.', 1970.52, 20, 46, NULL, NULL, NULL),
	(112, 'Brócoli', 'Nemo neque veniam non officiis sit est id. Fugiat iste et consequatur voluptas architecto.', 176.20, 171, 7, NULL, NULL, NULL),
	(113, 'Gripe', 'Quam ipsum est voluptatibus. Culpa dolorem ducimus esse ut. Ad sed aut ut quibusdam dicta aperiam ipsum. Corporis cum aut ut provident quae sunt.', 7541.13, 135, 18, NULL, NULL, NULL),
	(114, 'Huevos', 'Molestiae unde iure ut iste. Consequatur dolorem odio iure mollitia ut deleniti. Amet modi officia ut quasi voluptatibus rerum. Et odit veritatis aut.', 4240.21, 40, 29, NULL, NULL, NULL),
	(115, 'Limpiador de baños', 'Amet velit dolore atque numquam repellendus adipisci. Eum maiores quibusdam qui cumque aut. Dolor commodi inventore qui ut non. Ut nisi odio et porro.', 6757.72, 97, 13, NULL, NULL, NULL),
	(116, 'Carne molida', 'Enim omnis deserunt quis dolorum dolor omnis omnis. Vero quam occaecati sunt dolores autem quidem aliquam. In rem molestias beatae dignissimos. Occaecati dolore esse nihil.', 1663.51, 9, 24, NULL, NULL, NULL),
	(117, 'Carbón', 'Laboriosam autem voluptates laboriosam est impedit. Aut dignissimos et facilis aut qui. Quis corrupti est sunt omnis assumenda fugiat recusandae. Modi quia accusantium velit enim et.', 3607.57, 35, 3, NULL, NULL, NULL),
	(118, 'gofres', 'Qui quia a ducimus voluptas aut debitis. Quia voluptatem doloribus sunt ducimus. Quae quidem ut quo sed corrupti non sit. Ea non autem deserunt nesciunt porro.', 5524.99, 51, 44, NULL, NULL, NULL),
	(119, 'Lechuga', 'Cum ad iure deserunt explicabo ipsam enim et. Quae distinctio sit nihil ut distinctio harum. Et molestias dolores recusandae sequi ducimus quibusdam rerum blanditiis. Id ab eius ratione adipisci consequuntur vero id.', 4326.60, 57, 16, NULL, NULL, NULL),
	(120, 'brownie', 'Quia voluptatibus inventore aut alias magni. Modi est in et nihil ullam. Sed nesciunt impedit possimus soluta accusamus.', 4857.61, 7, 33, NULL, NULL, NULL),
	(121, 'Limpiador de vidrio', 'Odit nam quo dolorem molestiae quas. Nulla pariatur quo voluptas enim eligendi distinctio aut nostrum. Repellendus ullam quidem consequatur ut necessitatibus et quo.', 1554.73, 57, 25, NULL, NULL, NULL),
	(122, 'Antidiarreico', 'Aut nisi nulla autem itaque similique. Molestias et autem voluptatem velit similique necessitatibus. Dolores repellat alias vel consectetur eos reprehenderit at. Cumque a delectus beatae delectus.', 2368.46, 197, 7, NULL, NULL, NULL),
	(123, 'Curitas', 'Recusandae tempore vero sed itaque quasi. Numquam eaque eligendi sed quisquam ea. Aut voluptatem non est voluptates. Ipsa et quo repellendus ea sit. Rerum vitae delectus ut quo.', 7610.69, 137, 24, NULL, NULL, NULL),
	(124, 'Loción', 'Libero expedita aut ea repudiandae. Eius aut ad voluptas ut. Aut quia nihil ut suscipit animi sunt molestiae qui.', 9729.58, 32, 23, NULL, NULL, NULL),
	(125, 'Cenas de TV', 'Unde aut qui rem odit labore sit. Et at est nam libero aut esse consequuntur. Quia laborum vitae nam aut nemo.', 5832.73, 11, 22, NULL, NULL, NULL),
	(126, 'Salchicha', 'Quaerat provident sed ipsum qui incidunt dolorem occaecati. Commodi omnis et quia fugiat. Enim accusamus itaque dolorem iusto provident aut.', 1489.95, 17, 15, NULL, NULL, NULL),
	(127, 'Albahaca', 'Sint harum quam asperiores autem aperiam. Porro et earum placeat amet adipisci blanditiis quibusdam. Vel similique non nihil et omnis.', 8007.58, 44, 42, NULL, NULL, NULL),
	(128, 'Mezcla de pastel', 'Harum est debitis aperiam fuga excepturi repellat. Quibusdam iusto a sint sint. Voluptas aliquid aut et vel ducimus.', 9199.47, 86, 18, NULL, NULL, NULL),
	(129, 'Yogur', 'Sequi voluptates modi tempora veritatis sit vel non aut. Nihil voluptatem nihil aut sapiente est est non voluptates. A facilis eligendi suscipit iste quis. In sit placeat quidem dolores sit atque vitae.', 6843.65, 178, 36, NULL, NULL, NULL),
	(130, 'Semillas de nuez', 'Recusandae aut labore odit amet. Aut incidunt esse consectetur laborum asperiores aliquam. Quo eum ab facilis blanditiis vitae provident enim et. Soluta quod ullam molestias.', 5560.14, 159, 4, NULL, NULL, NULL),
	(131, 'Carnes en conserva', 'Deleniti voluptatem non sequi nulla atque ut animi rerum. Nostrum doloribus dolor enim inventore qui facilis. Iusto commodi ut molestiae quam fugit earum eos ducimus. Quia deleniti in voluptas quo dicta.', 4722.21, 33, 17, NULL, NULL, NULL),
	(132, 'Hongos', 'Nihil animi tenetur consequatur ullam sequi non. Inventore rerum placeat vel praesentium earum eum.', 3062.97, 171, 22, NULL, NULL, NULL),
	(133, 'Mantequilla', 'Natus accusantium ut sequi mollitia nostrum. Dolorem vitae maxime sit facilis. Voluptatibus quia ab maiores cupiditate est.', 3917.96, 125, 36, NULL, NULL, NULL),
	(134, 'Spray antiadherente', 'Et quo ut dolorum id rem nisi sit. Ut rerum autem consequatur delectus earum dolorem velit. Facilis reprehenderit placeat itaque doloremque.', 346.97, 133, 14, NULL, NULL, NULL),
	(135, 'Productos femeninos', 'Autem voluptatem quia quia non aspernatur voluptates consequatur. Sed id sapiente quisquam sit. Ea rem recusandae sit provident quis.', 144.75, 40, 49, NULL, NULL, NULL),
	(136, 'Soda', 'Tempore totam voluptatibus earum officiis. Itaque totam sunt facilis deserunt nobis. Sapiente sit omnis adipisci cum et. Cupiditate magnam nesciunt facere ipsa impedit.', 5180.60, 177, 10, NULL, NULL, NULL),
	(137, 'Queso cottage', 'Maxime velit doloremque maxime quae. At quo qui maxime enim.', 2876.04, 192, 2, NULL, NULL, NULL),
	(138, 'Polvo de hornear', 'Id laborum quis cupiditate aut commodi. Illo culpa nesciunt iste deleniti.', 6586.24, 17, 2, NULL, NULL, NULL),
	(139, 'Blanqueador', 'Iure at asperiores alias consequatur in vero voluptatum. Aspernatur qui tenetur nesciunt enim facere harum placeat. Optio eius numquam qui vero corrupti fugiat accusamus.', 7923.57, 172, 38, NULL, NULL, NULL),
	(140, 'Cereal', 'Reprehenderit enim dolor facilis sequi. Dolorem earum ea omnis voluptas ullam. Rerum porro consequuntur et atque.', 677.50, 181, 20, NULL, NULL, NULL),
	(141, 'Gaseosa', 'Doloribus reiciendis eligendi et debitis. Aut et quas quam sed iusto voluptas qui aut. Vel magni laboriosam voluptates sit natus.', 6423.28, 16, 11, NULL, NULL, NULL),
	(142, 'Bolígrafos', 'Tenetur aut molestiae aut maiores sed. Accusamus sunt voluptatem quam quis et. Et soluta voluptate perspiciatis illo doloremque. Qui quasi in placeat ea.', 3499.23, 176, 27, NULL, NULL, NULL),
	(143, 'Cinta adhesiva', 'Laboriosam facilis repudiandae ab et et nemo. Quia expedita earum atque aut. Perferendis perferendis quasi et non.', 2226.34, 144, 33, NULL, NULL, NULL),
	(144, 'Squash', 'Sapiente sapiente id cumque amet possimus et aut blanditiis. Pariatur adipisci reprehenderit itaque ut omnis id nostrum. Nesciunt laudantium aut rerum quo laudantium beatae quidem. Quaerat maiores dolor corrupti adipisci architecto vel.', 2786.64, 0, 36, NULL, NULL, NULL),
	(145, 'Automotor', 'Unde adipisci voluptatem omnis maxime non illo. Voluptatem corporis eaque debitis aut commodi laborum id. Nihil quis vel consectetur dolore debitis.', 2231.35, 85, 38, NULL, NULL, NULL),
	(146, 'Ambientador', 'Neque vitae unde nemo nihil incidunt enim voluptas. Eius animi doloribus et earum a dolorem dignissimos. Accusamus tempore iste cum omnis nisi in in.', 8649.31, 90, 7, NULL, NULL, NULL),
	(147, 'Baterías', 'Et at ea doloremque soluta non maxime. Pariatur nihil sed quae id culpa ullam impedit. Iste officiis consequuntur et omnis. Ut voluptatem sequi voluptatem eaque ut accusamus.', 7505.31, 119, 29, NULL, NULL, NULL),
	(148, 'Chips de maíz', 'Quidem autem illo repellat quam velit qui autem. Suscipit iusto enim mollitia sunt. Quibusdam quae fuga deserunt hic ipsam fuga omnis.', 8797.97, 34, 3, NULL, NULL, NULL),
	(149, 'Crema batida', 'Non deserunt ab veritatis qui est laboriosam ut quos. Illo quidem harum aut necessitatibus facere et. Aspernatur pariatur odit ipsa quod dolores. Iure provident magni eligendi omnis.', 3994.23, 76, 33, NULL, NULL, NULL),
	(150, 'Vino tinto', 'Dolorum qui cum voluptate et. Quam aperiam ad recusandae est aliquam. Eaque voluptates quod accusamus suscipit.', 2613.96, 169, 2, NULL, NULL, NULL),
	(151, 'Cloruro de vinilo', 'Tempore voluptas exercitationem distinctio. Amet eveniet quia consequatur dolores ullam impedit. Aliquid dolores illo fugit veniam quia doloribus. Assumenda aut dignissimos id ut atque debitis aut.', 8768.01, 186, 5, NULL, NULL, NULL),
	(152, 'Comida para llevar deli', 'Sit enim aut corporis consequatur nisi quae suscipit doloribus. Omnis qui et cumque perferendis numquam quas. Distinctio ut rerum quo consequatur. Est iste voluptas velit est facere enim aut.', 7949.53, 104, 19, NULL, NULL, NULL),
	(153, 'Jugo concentrado', 'Qui sunt tempore itaque minus tenetur reiciendis provident. Consectetur iste aut et ipsa cum molestias.', 2689.48, 56, 16, NULL, NULL, NULL),
	(154, 'Perejil', 'Numquam ut sed assumenda dolorum. Voluptate mollitia pariatur deserunt quibusdam. Temporibus ad qui dicta dolores et velit voluptas. Cumque sit tenetur sunt nihil vel.', 2929.28, 78, 39, NULL, NULL, NULL),
	(155, 'Pañales', 'Dolor error voluptatem esse deleniti nihil. Illo nostrum nam id ducimus fugit dicta atque. Consequatur vel officiis officia eos voluptatem maxime soluta.', 1237.51, 179, 28, NULL, NULL, NULL),
	(156, 'Donuts', 'Consectetur aperiam nobis rem. Labore eaque in laboriosam et. Ea molestias est eos sunt asperiores soluta.', 6977.02, 187, 27, NULL, NULL, NULL),
	(157, 'Whisky', 'Dolor autem vero architecto deserunt. Quam natus accusantium tempora a similique rerum eos. Quia fuga qui recusandae et sint non dignissimos.', 1772.29, 19, 29, NULL, NULL, NULL),
	(158, 'Chicle', 'Et ratione rerum maxime pariatur. Veritatis voluptatem impedit aliquam at ipsum nemo sit praesentium. Eligendi consequatur accusamus occaecati quis eligendi quia quo.', 1056.94, 74, 41, NULL, NULL, NULL),
	(159, 'Papel de aluminio', 'Est non consequuntur sequi autem. Nihil voluptates id molestiae quasi libero beatae rerum. Nostrum est ducimus est cumque.', 2654.61, 159, 47, NULL, NULL, NULL),
	(160, 'Comida para perros', 'Est et exercitationem ut officia tempora. Quae labore rerum error natus ullam. Aut voluptatem est dolorem voluptatem consequatur earum facilis. Quasi facilis tempora voluptas odio. Ea et molestias expedita ipsa autem enim.', 3779.90, 41, 34, NULL, NULL, NULL),
	(161, 'Gel', 'Labore reprehenderit ab sit quia a tempore. Voluptatem error accusantium tempora aut non voluptate doloribus. Officia sit magni et esse. Et nihil necessitatibus est. Quisquam nesciunt sint illo quibusdam qui qui ut.', 6780.71, 183, 35, NULL, NULL, NULL),
	(162, 'Caramelo', 'Et molestias qui quasi aliquid ipsa quia labore in. Nobis voluptates aut sequi inventore suscipit ut porro fugit. Et facilis nulla qui est nisi explicabo libero.', 4383.52, 88, 12, NULL, NULL, NULL),
	(163, 'Pasta dental', 'Quas commodi vero vero ut optio dolorem necessitatibus. Et consequuntur ducimus voluptates voluptatum assumenda nihil. Non quod est ea nisi voluptas iste rerum consequatur. In earum ea facere sapiente consequatur eum.', 6803.49, 133, 27, NULL, NULL, NULL),
	(164, 'Noche de pizza', 'Totam sunt laboriosam necessitatibus iusto nostrum rerum et. Corporis in atque voluptas et. Sed et laborum labore possimus perferendis pariatur quidem. Maxime quaerat nostrum natus non expedita aliquid aspernatur porro.', 41.20, 153, 5, NULL, NULL, NULL),
	(165, 'golosinas para gatos', 'Neque et ipsam harum ad culpa pariatur iste. Molestias reprehenderit a vel incidunt hic praesentium. Rem qui est id a voluptatem cumque fuga. Facilis alias quaerat accusamus totam excepturi.', 8905.17, 80, 30, NULL, NULL, NULL),
	(166, 'Harina', 'Quis eveniet cupiditate sapiente hic. Sed voluptas iusto voluptas a. Unde quia maiores repudiandae aut consequatur.', 8117.39, 54, 21, NULL, NULL, NULL),
	(167, 'Carne de vaca', 'Architecto aut totam maxime dolor et. Aspernatur eius maiores nobis in assumenda numquam pariatur. Iure eum in perferendis repellendus nobis vitae.', 5709.20, 191, 20, NULL, NULL, NULL),
	(168, 'Tofu', 'Quia vel rerum ad est consequatur. Blanditiis suscipit aliquid nesciunt sint eligendi aut est. Provident magni molestiae rerum. Est perferendis et quaerat vitae.', 3859.80, 153, 33, NULL, NULL, NULL),
	(169, 'Detergente', 'Et occaecati illo nisi ut rem ea. Consequuntur eos et aut ut sit. Reiciendis libero et sed numquam odit. Voluptas nisi eum sed nisi ut et.', 3505.23, 71, 46, NULL, NULL, NULL),
	(170, 'Noche de tacos', 'Ad ex modi placeat quod eaque excepturi. Quisquam sequi cumque laudantium. Qui eaque quas deserunt. Commodi hic eos dolore at earum consequatur.', 6497.40, 2, 3, NULL, NULL, NULL),
	(171, 'Sustituto de azúcar', 'Reprehenderit sequi omnis consequatur rerum aliquid ut. Sit corrupti temporibus ut. Modi recusandae aliquam quam voluptatem. Deserunt molestiae enim ipsum doloribus placeat fuga ea sunt.', 2686.14, 33, 10, NULL, NULL, NULL),
	(172, 'Papel de imprimir', 'Ipsa dolores dolor et vitae et enim asperiores. Aut autem soluta optio hic est. Voluptas atque sit molestias doloremque quod. Sed alias sed expedita voluptas.', 5079.48, 169, 10, NULL, NULL, NULL),
	(173, 'Servilletas', 'Inventore nemo quia harum dolor sunt iste rerum. Eveniet sint aut accusantium nihil. Dolor laboriosam maxime incidunt. Accusamus ut sint non est nobis.', 119.49, 128, 32, NULL, NULL, NULL),
	(174, 'Rebanadas de sándwich', 'Nostrum et exercitationem in quae. Perspiciatis cupiditate praesentium ut et. Voluptate fuga ut suscipit ea est voluptatem.', 4288.23, 42, 42, NULL, NULL, NULL),
	(175, 'Radionúclidos', 'Veritatis molestiae non optio. Facilis aut omnis ducimus voluptatem placeat. Harum voluptatum commodi error quia animi. Nostrum reiciendis a praesentium numquam qui provident.', 9108.43, 79, 25, NULL, NULL, NULL),
	(176, 'Pimienta negra', 'Est sit vero quo alias est sit. Molestiae qui commodi et reiciendis sint. Consequatur velit dolor aut cum nam. Officia dolorem quia asperiores praesentium deleniti molestiae.', 8736.89, 124, 7, NULL, NULL, NULL),
	(177, 'Vodka', 'Cumque omnis corporis itaque cupiditate. Vel vel quisquam saepe molestiae optio corrupti dicta. Ut quas corrupti libero voluptatem sint in qui. Harum mollitia a dolor omnis amet nam inventore.', 1608.44, 39, 48, NULL, NULL, NULL),
	(178, 'Gelatina', 'Molestias voluptate nesciunt amet neque hic. Vel explicabo praesentium magni quos laboriosam. Perferendis pariatur unde unde modi maxime porro. Deleniti possimus eum dolor asperiores.', 5807.55, 23, 29, NULL, NULL, NULL),
	(179, 'Palomitas de maiz', 'Sed minus sed quia accusamus odio enim. Eveniet maxime atque itaque totam recusandae. Et laborum ut similique ab optio dolore ipsum. Laboriosam sed aut quia modi ullam.', 1772.77, 98, 15, NULL, NULL, NULL),
	(180, 'Naranjas', 'Eaque eligendi in vel corrupti dolor magni tempora. Animi magni et itaque in sed. Rerum et ea asperiores libero quia. Adipisci amet et vel beatae voluptatem ad molestias. Reiciendis fugiat rerum dolorum quibusdam quia id.', 2893.12, 35, 33, NULL, NULL, NULL),
	(181, 'Desodorante anti-transpirante', 'Quis rem voluptate dolor explicabo numquam. Aut fugit ab dicta itaque. Dicta voluptatem quibusdam ut necessitatibus veritatis non placeat maxime.', 8982.15, 22, 37, NULL, NULL, NULL),
	(182, 'Papel encerado', 'Laborum illo tempora voluptas consequatur. Ut quos sit illum voluptas facere officiis. Est consequatur veniam repudiandae aliquam.', 4049.06, 20, 33, NULL, NULL, NULL),
	(183, 'Harina de avena', 'Ipsam harum vitae earum accusantium delectus cum eveniet. Animi quia ut assumenda qui. Voluptas excepturi earum unde iure sequi consequatur. Amet quam voluptatum ea distinctio doloribus fugit.', 1131.93, 80, 35, NULL, NULL, NULL),
	(184, 'Vacuum bags', 'Id optio voluptatem soluta cumque corrupti vel sed. Rerum ut labore voluptatem aliquam aspernatur consequatur. Sit maiores et voluptatibus iste veniam. Velit hic amet non et consequatur. Qui quae quos quo omnis.', 1130.77, 146, 5, NULL, NULL, NULL),
	(185, 'Ciruelas', 'Voluptatem libero sapiente ad assumenda. Nihil et esse est enim fugiat ducimus. Pariatur eius consequuntur et pariatur non fugiat. Quam aut quis voluptates nemo est doloremque quis.', 9686.47, 143, 8, NULL, NULL, NULL),
	(186, 'Papel higiénico', 'Cum aut omnis dolorem rerum et ab. Dolorem deserunt tempore id. Dicta impedit quo repellendus corrupti nisi nam.', 7493.02, 37, 23, NULL, NULL, NULL),
	(187, 'Burritos Especias y hierbas', 'Ratione aliquid ea quos voluptates fuga odio. Eos expedita non ea voluptatum voluptatem ullam porro. Ut et sit beatae nihil. Ab recusandae qui repellendus labore.', 9371.94, 20, 40, NULL, NULL, NULL),
	(188, 'Vitaminas', 'Assumenda et perspiciatis hic qui harum. Nisi accusantium voluptatum voluptatum porro numquam aliquam. Est ut error beatae et libero beatae nemo.', 8652.13, 53, 20, NULL, NULL, NULL),
	(189, 'Leche', 'Sit voluptatem in ut. Totam tempore qui voluptatibus distinctio ipsa veritatis. Est ab vero sed molestias id consequuntur velit.', 3397.44, 25, 6, NULL, NULL, NULL),
	(190, 'Pomelo', 'Atque enim deserunt et dolorem. Praesentium ab error atque officiis quo omnis. Eius modi rerum eum reprehenderit iure est repellendus qui.', 3871.72, 123, 10, NULL, NULL, NULL),
	(191, 'bolas de algodón', 'Ipsum distinctio ex sunt tenetur dolorum consequuntur est ut. Deleniti voluptas praesentium in enim nihil est. Necessitatibus voluptates perferendis libero minus dignissimos. Optio ab et illo ipsam sit accusantium ullam. Qui qui sint maxime rerum optio suscipit.', 9550.26, 85, 48, NULL, NULL, NULL),
	(192, 'Arena para gatos', 'Eos necessitatibus tenetur molestiae qui consequuntur esse pariatur. Quis soluta et placeat in enim quisquam. Rerum dolorem quidem veritatis itaque.', 1400.97, 95, 42, NULL, NULL, NULL),
	(193, 'Antibiótico', 'In voluptatem ut similique qui et aut reprehenderit in. Enim consectetur eaque consequatur at enim dignissimos sunt qui.', 642.76, 132, 41, NULL, NULL, NULL),
	(194, 'Sal', 'Maiores sed illum magni qui officia. Vel possimus ducimus rerum molestiae et et. Voluptates sit vel saepe quis.', 4.35, 127, 28, NULL, NULL, NULL),
	(195, 'Café', 'Dolorum error temporibus qui adipisci eaque fugiat asperiores nulla. Ut numquam ipsa aut. Est et aut voluptatem eaque accusantium voluptas. Nesciunt recusandae perferendis ad a cupiditate ea.', 8290.02, 148, 34, NULL, NULL, NULL),
	(196, 'Manzanas', 'Dolor dolores deserunt ea omnis. Voluptatibus doloribus consequatur voluptas et voluptatum. Velit deserunt modi sint. Ut autem possimus ab impedit.', 9583.47, 155, 27, NULL, NULL, NULL),
	(197, 'Lápices', 'A et consequuntur et. Qui harum et ea. Odio vitae error excepturi sit explicabo quibusdam.', 8877.98, 80, 24, NULL, NULL, NULL),
	(198, 'Tortillas', 'Et error velit voluptas quos numquam incidunt. Voluptatum distinctio tenetur magni tempore consectetur dolores. Beatae consequatur rerum aut quis mollitia maxime. Aut est eos tenetur beatae et quae et.', 8302.96, 40, 3, NULL, NULL, NULL),
	(199, 'Palitos de pescado', 'Vel nostrum quas suscipit consequatur labore est molestiae excepturi. Iure rerum unde sequi consequuntur id non. Velit iure enim quaerat.', 8477.47, 107, 42, NULL, NULL, NULL),
	(200, 'Pasteles', 'Temporibus autem inventore facilis perferendis. Facere consequatur enim non provident odio repellat. Reprehenderit dolorum ut architecto expedita. Commodi vero optio quas cupiditate totam ipsa quia.', 7617.23, 63, 7, NULL, NULL, NULL),
	(201, 'lima', 'Enim unde fugiat vel sit repellendus in. Illo cupiditate voluptas est eveniet iusto. In illo dignissimos ut nobis. Dolorum earum atque qui quia aut sit.', 4610.02, 155, 35, NULL, NULL, NULL),
	(202, 'Toallas de papel', 'Saepe eum eligendi quaerat quia rerum minima quos. Placeat dolores qui totam autem nisi. Itaque molestiae porro eum sed.', 8350.54, 152, 26, NULL, NULL, NULL),
	(203, 'Pepinos', 'At provident laboriosam excepturi et sed suscipit. Et quis laudantium iusto temporibus consequatur repellendus. Dignissimos labore architecto quos nemo eos error. Excepturi molestias id qui nesciunt adipisci repellat.', 7676.91, 129, 7, NULL, NULL, NULL),
	(204, 'Jarabe', 'Voluptate fuga commodi sed ab nulla consequatur. Tempora laborum laborum distinctio architecto quos. A et quis qui accusamus voluptates laboriosam. Quia nihil sunt sint error ea nostrum voluptatem.', 4228.45, 143, 3, NULL, NULL, NULL),
	(205, 'Helado', 'Perferendis numquam porro sapiente voluptatem dolor recusandae. Dolore esse occaecati consequatur. Omnis ea voluptas qui voluptatum dolor.', 3859.53, 29, 23, NULL, NULL, NULL),
	(206, 'Jugo de limón', 'Ex amet rerum optio voluptate. Libero illum dolorum necessitatibus minus quia ea et.', 8447.36, 1, 43, NULL, NULL, NULL),
	(207, 'Jengibre', 'Sit ullam eaque quis reiciendis. Aliquid qui sit dolor aut quas ea. Sit illo magni quibusdam debitis est. Omnis qui recusandae reiciendis numquam ipsum.', 5896.37, 27, 47, NULL, NULL, NULL),
	(208, 'Espárragos', 'Ut ut necessitatibus molestiae ut maxime. Consequatur iure excepturi eligendi et mollitia vitae. Porro aut nobis quia rem quo ut et.', 124.42, 161, 23, NULL, NULL, NULL),
	(209, 'Papas', 'Quo facilis molestiae consectetur et voluptatem cupiditate. Quo dolorum exercitationem aliquam voluptates. Omnis minus eum reprehenderit saepe non nihil occaecati.', 8277.26, 97, 38, NULL, NULL, NULL),
	(210, 'Cerezas', 'Et odio laudantium doloribus id. Enim facilis ea dolorem amet provident non. Libero ut facilis commodi architecto quaerat distinctio.', 6104.59, 146, 1, NULL, NULL, NULL),
	(211, 'Sinusitis', 'Tempore ut sed rem quam eligendi. Sunt blanditiis et enim eos et totam. Dignissimos repellat maxime voluptatem magnam et odio. Ab maiores optio molestiae.', 2789.99, 180, 40, NULL, NULL, NULL),
	(212, 'CDR', 'Atque nam vel nemo deleniti. Consectetur facilis magni impedit. Autem ut nobis assumenda. Sit eos quia a sint ipsam vel.', 3924.49, 147, 15, NULL, NULL, NULL),
	(213, 'Chispas de chocolate', 'Velit dolor ut consequuntur nostrum. Voluptas inventore explicabo dignissimos. Distinctio pariatur totam aut. Ducimus doloremque debitis voluptatum.', 2219.93, 20, 40, NULL, NULL, NULL),
	(214, 'Saborear', 'Quam neque et repudiandae corrupti molestiae. Quia at cumque cum ut voluptatum cumque ullam. Fugiat doloremque ipsam ducimus autem ratione quas inventore. Facilis voluptas harum provident architecto voluptatem est molestiae minus.', 8192.55, 40, 49, NULL, NULL, NULL),
	(215, 'Maíz', 'Reprehenderit corporis voluptate omnis unde saepe sint voluptatem quos. Nulla cum dolor sint temporibus praesentium velit quia. Quod provident nisi qui non commodi. Quia distinctio sed labore explicabo praesentium id ab.', 1534.62, 162, 50, NULL, NULL, NULL),
	(216, 'Macarrones con queso', 'Unde itaque quas ipsa fugit. Labore libero itaque corporis enim esse est molestias. Quas quae cupiditate harum voluptates.', 7522.23, 198, 48, NULL, NULL, NULL),
	(217, 'Ajo', 'Earum et porro nihil praesentium dolorum nobis at. Doloribus voluptas modi maxime vero deserunt soluta tempore eos. Id ut et laudantium officia qui. Totam doloribus quis provident aut. Officiis veniam veritatis ratione.', 706.33, 57, 25, NULL, NULL, NULL),
	(218, 'Noche de chile', 'Recusandae ut dolor sequi qui ut. Minus recusandae et ex molestias molestiae officiis fugit. Molestiae sed placeat velit velit.', 7989.01, 113, 43, NULL, NULL, NULL),
	(219, 'Cebollas', 'Saepe est itaque officia ipsum. Dicta odio excepturi nemo et aut dolor.', 4303.73, 137, 38, NULL, NULL, NULL),
	(220, 'spray para el cabello', 'Ut et qui ut tempora et rem. Dicta rem aut est libero. Nulla itaque suscipit et. Deserunt rem enim temporibus autem molestiae perferendis tempore distinctio.', 2322.28, 90, 6, NULL, NULL, NULL),
	(221, 'Paletas de hielo', 'Magnam saepe rerum ipsa illo nemo possimus delectus. Illo voluptate dolorum illo dolor quam. In ut doloremque dolorum dolorum nemo molestiae recusandae blanditiis.', 94.68, 4, 45, NULL, NULL, NULL),
	(222, 'Pavo', 'Itaque fuga eum sit sint voluptates sit. Eveniet ut sed aut blanditiis dolorum. Et dolore et non maiores.', 1125.86, 81, 2, NULL, NULL, NULL),
	(223, 'Calabacín', 'Quas illum impedit qui qui placeat. Asperiores maiores ex voluptatem et amet dolorem ut. Sunt amet maiores facere voluptatum dolore laborum expedita.', 5129.02, 36, 42, NULL, NULL, NULL),
	(224, 'Mitad mitad', 'Unde error fugiat atque qui quis omnis. Pariatur autem nisi quod magnam magni id nostrum. Repellendus fugiat sint sit eligendi voluptatibus odio. Quia necessitatibus enim laboriosam nesciunt.', 4450.73, 126, 36, NULL, NULL, NULL),
	(225, 'Cacao', 'Maiores laboriosam iure consequatur autem aut quia tempore. Quia esse in fuga. Ipsa ad perferendis iusto sed aspernatur qui. Dolorem qui odit aut beatae eum consequatur aut quia.', 2836.59, 82, 50, NULL, NULL, NULL),
	(226, 'Fruta', 'Omnis placeat suscipit aut voluptatibus alias possimus vitae. Qui ullam similique ea. Sit ut facere temporibus at qui asperiores sit aliquid. Debitis quas ut corporis.', 6611.85, 2, 36, NULL, NULL, NULL),
	(227, 'Salsa Worcestershire', 'Consequatur aliquam a magnam vel molestias. Voluptatem dolorum voluptatem est velit nostrum. Tempore maiores at neque a id qui labore. Reprehenderit sunt eaque sit nihil repellendus autem dolorum.', 8344.96, 44, 19, NULL, NULL, NULL),
	(228, 'Langosta', 'Quo vel amet amet id tempora. Illo ratione nobis autem dolore doloremque qui aut at. Fugit qui labore pariatur fugiat. Saepe in nemo ab aut accusantium nostrum voluptatibus.', 7639.26, 141, 20, NULL, NULL, NULL),
	(229, 'Productos cosméticos', 'Laudantium dicta assumenda hic illum aut id maiores. Molestias officia sint delectus eum. Illum sit ex nam quo quia. Veritatis ut voluptas officiis error unde deleniti sed perspiciatis.', 576.48, 199, 26, NULL, NULL, NULL),
	(230, 'Limones', 'Provident reprehenderit sed optio fugiat sint at sunt. Et ut earum velit sed aliquid velit inventore dolorem. A minus et labore aut amet et.', 2040.41, 125, 24, NULL, NULL, NULL),
	(231, 'Aspirina', 'Provident officiis expedita reiciendis sed iste rerum. Magnam dolores quibusdam qui enim magni numquam eius fuga. Voluptates suscipit quis beatae minus sed odio ea.', 452.27, 117, 31, NULL, NULL, NULL),
	(232, 'Miel', 'Autem necessitatibus aliquam ab cum. Animi maiores ab fuga. Sunt quis est voluptates et sit. Similique quis eaque rerum et recusandae ea.', 9130.29, 9, 42, NULL, NULL, NULL),
	(233, 'Sellos', 'Aut officiis perspiciatis velit omnis laudantium. Sed architecto consequatur itaque amet quis excepturi.', 4468.77, 162, 36, NULL, NULL, NULL),
	(234, 'Ginebra', 'Earum cumque quis rem possimus nihil corporis. Impedit nihil iste et consectetur et assumenda alias. Quos dolorum rerum enim rem. Eos dignissimos est enim id quisquam. Sequi eaque similique repudiandae iure aut culpa aut.', 3660.95, 111, 43, NULL, NULL, NULL),
	(235, 'Salsa', 'Doloremque dignissimos architecto tempora asperiores asperiores. Ducimus amet veritatis id. Explicabo velit omnis quia. Iure et veniam ex repellendus laborum.', 1953.89, 121, 16, NULL, NULL, NULL),
	(236, 'Aguacates', 'Et est et culpa temporibus perspiciatis est ipsam officiis. Ut aut et in accusantium nemo. Dolores iure enim eveniet illo. Quo natus voluptatem aliquid in qui.', 117.39, 62, 5, NULL, NULL, NULL),
	(237, 'Rollos', 'Enim ut sed voluptatem quidem. Repellat ratione soluta molestiae odio. Quaerat vero rerum saepe ea recusandae nostrum eum. Dolorem corporis minima laborum sit.', 9295.99, 117, 37, NULL, NULL, NULL),
	(238, 'Plátanos', 'Aliquid totam ipsam ut quas. Odit dolores velit beatae eveniet. Non qui odit quae perferendis dolorem. Facere ad rem ad non dolor nobis expedita.', 9998.42, 22, 6, NULL, NULL, NULL),
	(239, 'Hummus', 'Quam debitis qui doloremque fuga. Harum voluptate est quae earum aut. Placeat sequi eos officiis quibusdam temporibus atque est. Voluptatem quis occaecati expedita voluptatem magnam quisquam dignissimos adipisci.', 4377.34, 30, 34, NULL, NULL, NULL),
	(240, 'Verdes', 'Unde quis qui velit dolore dolorum deleniti. Ea asperiores voluptatum iusto quia hic provident. Incidunt qui facere dolorum vitae quis.', 7508.58, 156, 15, NULL, NULL, NULL),
	(241, 'Champán', 'Ut velit doloremque rerum praesentium voluptas quam. Culpa dolore aliquid ut sequi tenetur consequuntur harum. Qui iste quos impedit quia qui.', 5564.40, 38, 32, NULL, NULL, NULL),
	(242, 'Resfriado', 'Sunt sapiente deserunt aperiam ut. Sed dolorum voluptas laborum nobis iure commodi architecto temporibus. Impedit architecto in ex ratione. Repellendus maxime tempore aspernatur laudantium sunt rem aliquam.', 6574.95, 119, 36, NULL, NULL, NULL),
	(243, 'Jabón para lavavajillas', 'Quod consequuntur voluptate vel alias placeat similique qui. Illo suscipit incidunt qui aut. Exercitationem aut minima est est et et ad.', 4147.71, 170, 43, NULL, NULL, NULL),
	(244, 'Otro b.c.', 'Est sit vel debitis inventore voluptate eligendi qui dolorum. Dolore dignissimos praesentium amet sit itaque.', 6289.54, 173, 9, NULL, NULL, NULL),
	(245, 'Cerdo', 'Doloremque minima fugit nihil et illo quaerat. Est id aspernatur explicabo possimus mollitia. Optio repellat veritatis dolore consequatur quo.', 6826.68, 184, 7, NULL, NULL, NULL),
	(246, 'Mostaza', 'Alias beatae enim voluptates et. Modi cum aliquam eum non. Qui aut id sequi.', 4878.63, 85, 29, NULL, NULL, NULL),
	(247, 'Coba', 'Et voluptates voluptas et. Totam debitis occaecati doloremque illum porro est rerum. Deleniti eos corrupti dolorem libero vel est eos. Asperiores et quos qui.', 8535.27, 23, 25, NULL, NULL, NULL),
	(248, 'Bloc de notas', 'Maiores voluptatem quis molestiae et aliquam. Et nisi nihil omnis sit beatae odit. Vel et nisi odit molestias quae explicabo at.', 8945.89, 148, 2, NULL, NULL, NULL),
	(249, 'Huevos falsos', 'Quo ullam facere et nobis dolores magni id suscipit. Numquam similique et corporis tempore sunt eum. Nihil ut id dicta quam et.', 5313.51, 185, 33, NULL, NULL, NULL),
	(250, 'Pimientos', 'Consequatur amet ut similique est unde sit voluptate. Iste consequuntur sit nihil consequatur. Laborum nulla ipsa enim animi deserunt. Odit minima nostrum error consectetur.', 2339.22, 98, 14, NULL, NULL, NULL),
	(251, 'Depuradores', 'Dolor tempora in facilis enim dolor rerum. Aut voluptatem id itaque rerum id ab quis. Ipsa voluptatem blanditiis et illum suscipit. Omnis consequatur vel sit inventore recusandae officiis.', 618.48, 43, 30, NULL, NULL, NULL),
	(252, 'Chile', 'Magni minima iure aliquam nobis soluta. Ullam voluptatem ea corporis quae omnis ea. Rerum quae ea fuga aut dicta labore eligendi. Aspernatur adipisci mollitia nisi aliquam.', 6152.91, 69, 8, NULL, NULL, NULL),
	(253, 'Té', 'Magni consequatur sapiente cupiditate ut. Ducimus vitae nisi non ullam ut at. Maiores eum qui deserunt nostrum sit aut sed consequatur.', 2996.47, 56, 30, NULL, NULL, NULL),
	(254, 'Otro', 'Quasi voluptas dolorem non illum totam. Voluptates eligendi rerum nihil voluptates minima. Et in repellat consequatur esse et laborum. Optio nulla voluptatem harum quidem incidunt minus.', 5168.61, 50, 17, NULL, NULL, NULL),
	(255, 'Vino blanco', 'Deserunt ut nisi provident repellat. Omnis nihil et dicta illo ipsam voluptates. Omnis magni facilis quia sit nesciunt maxime voluptatibus.', 9408.22, 38, 10, NULL, NULL, NULL),
	(256, 'Mejillones', 'In voluptas quaerat et voluptatem veniam cupiditate. Tempore quis aut et voluptate. Debitis ipsam reiciendis id. Est at beatae eaque deleniti sunt id soluta.', 3956.10, 134, 19, NULL, NULL, NULL),
	(257, 'Queso', 'Nesciunt odit modi rerum consectetur. Et et enim corporis. Qui velit repellat consequuntur blanditiis laboriosam enim. Et nihil doloribus inventore rem omnis vero.', 7300.08, 50, 32, NULL, NULL, NULL),
	(258, 'Pepinillos', 'Molestias vitae commodi architecto quia. Omnis et soluta dolorem omnis. Praesentium nostrum a magni ullam similique.', 9310.16, 16, 27, NULL, NULL, NULL),
	(259, 'Otras cosas médicas', 'Quibusdam labore quod molestiae eligendi rerum quia quaerat quae. Molestias quia vel aut dicta quia et quia. Voluptatum possimus expedita inventore autem commodi. Ut doloremque consequatur non atque et.', 1241.85, 132, 38, NULL, NULL, NULL),
	(260, 'Queso Mozzarella', 'Praesentium voluptatem esse quo. Deleniti excepturi reprehenderit rerum dolores. Fugit quod maxime quia. Porro asperiores asperiores ut dolores alias. Et fugit non repudiandae fuga omnis.', 105.31, 88, 18, NULL, NULL, NULL),
	(261, 'sobres', 'Vel eos consequuntur minima nesciunt libero neque. Corrupti dolore voluptatem similique veritatis. Laborum deleniti vel quibusdam et nisi. Dolor est hic aut ad est magni.', 8399.10, 135, 26, NULL, NULL, NULL),
	(262, 'Jabón de baño', 'Sint ipsam ut rerum repellat. A et qui quam laudantium.', 599.14, 97, 47, NULL, NULL, NULL),
	(263, 'Turquía', 'Qui facilis quidem corporis quaerat fuga amet et. Quis autem minima et repudiandae. Animi tempore veritatis ut doloribus. Et illo sit voluptates vitae autem.', 6926.30, 136, 14, NULL, NULL, NULL),
	(264, 'Parmesano', 'Perferendis nihil veniam ullam. Similique voluptas rem nihil et numquam ducimus. Molestiae culpa corporis officia voluptates qui deserunt. Dolor sit illum odit similique fugit.', 1055.16, 153, 13, NULL, NULL, NULL),
	(265, 'Limpiador Facial', 'Consequatur ut qui sapiente. Asperiores laboriosam nulla voluptate quia dolores veniam. Ipsa tempora maxime non ut soluta doloribus odio. Enim qui incidunt cum ut.', 9928.54, 60, 33, NULL, NULL, NULL),
	(266, 'Arsénico', 'Vel reiciendis occaecati consequatur numquam vel. Debitis blanditiis assumenda eum. Ut repellat eius rerum voluptate sit nisi magni. Reiciendis eos dolor ipsum ea.', 5192.54, 140, 16, NULL, NULL, NULL),
	(267, 'Enjuague bucal', 'Omnis sint qui rerum perferendis quae. Molestiae necessitatibus rerum reiciendis eos. Libero pariatur consequatur cupiditate et vitae doloremque praesentium.', 3943.82, 83, 24, NULL, NULL, NULL),
	(268, 'Fórmula', 'Animi cupiditate repellendus aspernatur ipsa. Amet in quam et repellendus sint maxime recusandae. Laboriosam earum asperiores eum eos error aut.', 4855.44, 144, 37, NULL, NULL, NULL),
	(269, 'Cigarrillos', 'Magnam nam dolores et dolor consequuntur quam. Nihil recusandae vel maxime. Fuga est natus fuga ratione quod natus enim. Nemo aspernatur ipsa libero quas.', 8131.25, 117, 23, NULL, NULL, NULL),
	(270, 'Bolsas para sándwich', 'Facere ex deserunt voluptate dolores commodi quia est quia. Voluptates unde laboriosam earum nam.', 48.30, 67, 25, NULL, NULL, NULL),
	(271, 'Arroz', 'Ut sed hic aperiam quam blanditiis. Inventore iste aut velit quis et quibusdam sed. Nam doloremque assumenda accusantium velit eum. Enim maiores nemo omnis excepturi nisi voluptatem.', 2877.47, 181, 36, NULL, NULL, NULL),
	(272, 'Neutralizador de acidez', 'Voluptas minus nemo molestiae voluptatem. At voluptatum nihil aut quaerat necessitatibus velit voluptatem ad. Delectus id architecto est. Minus omnis voluptatem a vitae.', 9994.33, 82, 22, NULL, NULL, NULL),
	(273, 'Uvas', 'Ipsam quis eos necessitatibus delectus harum. Sit fugit aliquam nobis quam molestiae a quidem. Suscipit molestias fugiat earum ut.', 6314.70, 78, 35, NULL, NULL, NULL),
	(274, 'Sopa', 'Laborum debitis voluptatum est earum assumenda quos. Aliquam sit delectus eius vitae provident. Placeat est et saepe est illo voluptatem expedita molestias. Ea exercitationem voluptas sed.', 5506.05, 23, 42, NULL, NULL, NULL),
	(275, 'Apio', 'Et quia ab ut maxime ducimus quis. Aperiam eum occaecati quaerat et sit et. Sunt repellat magnam vel porro quam beatae rerum. Est et quaerat qui ad provident ipsa.', 1679.25, 74, 15, NULL, NULL, NULL),
	(276, 'Barras de granola', 'Quod sequi consequuntur tempora consequuntur aut saepe officia. Fugit repudiandae nisi accusantium sint ut.', 1270.73, 143, 40, NULL, NULL, NULL),
	(277, 'Noche de hamburguesas', 'Fuga vero aut et fugit facilis voluptates. Eos velit similique in architecto repellat aut. Enim atque est aperiam ea vel quas minus sed.', 8173.53, 126, 6, NULL, NULL, NULL),
	(278, 'Cilantro', 'Voluptas aspernatur atque aliquid libero dignissimos. Sit dignissimos aspernatur error quis natus sed adipisci blanditiis. Sit repellendus voluptatibus et et nihil. Distinctio quam commodi sunt cum eligendi aperiam.', 370.93, 112, 18, NULL, NULL, NULL),
	(279, 'Propano', 'Sequi ut voluptas reiciendis ut rem quia. Reprehenderit impedit qui mollitia.', 3715.99, 25, 45, NULL, NULL, NULL),
	(280, 'Nectarinas', 'Pariatur dolorem modi sunt facilis. Explicabo sit officia cumque eum facilis autem nisi. Illum nisi ducimus odio quasi totam.', 4266.30, 78, 39, NULL, NULL, NULL),
	(281, 'Tonic', 'Sunt aut reprehenderit nihil alias placeat provident molestiae. Occaecati corporis eveniet dicta eos non quo. Est qui at animi unde velit. A laborum facere atque labore enim unde.', 5398.56, 116, 2, NULL, NULL, NULL),
	(282, 'congelador', 'Impedit amet in saepe laboriosam corrupti laudantium. Expedita perferendis rem explicabo nihil velit laboriosam assumenda. Labore corporis eos autem quibusdam cupiditate magnam. Consequatur sit tenetur fugiat.', 7539.17, 31, 10, NULL, NULL, NULL),
	(283, 'Ricotta', 'Magni et reiciendis dolor velit molestiae minus qui. Fugiat et omnis distinctio porro consequuntur et. Vel magni quia voluptatem voluptatem.', 4118.30, 75, 10, NULL, NULL, NULL),
	(284, 'Desayunos Bebidas', 'Dolores repellat incidunt magni maiores vero voluptas id. Excepturi id ea non aut officiis ea. Consequatur vero ut fugit quaerat officiis. Distinctio non accusantium qui commodi amet.', 73.31, 55, 5, NULL, NULL, NULL),
	(285, 'Suizo', 'Nisi ratione cumque nisi omnis facilis ut. Accusamus non sit magni est commodi rem. Consequatur accusamus veritatis dolores.', 4277.57, 76, 44, NULL, NULL, NULL),
	(286, 'Croissants', 'Deleniti nihil tempora odio dolorem. Nihil reiciendis consequatur vitae possimus. Tenetur occaecati eos nihil suscipit veritatis blanditiis. Vitae reprehenderit quis minima delectus adipisci voluptatem.', 4946.25, 106, 49, NULL, NULL, NULL),
	(287, 'Orégano', 'Perferendis accusamus aliquid quibusdam non voluptatum quasi. Eos dolores omnis pariatur quia. Sed labore magnam consequatur illum illo aliquam reprehenderit.', 8288.04, 6, 24, NULL, NULL, NULL),
	(288, 'Bálsamo labial', 'A vitae est voluptatum quia cumque. Explicabo nostrum nostrum cupiditate ut odit sed voluptatibus. Vitae sit esse doloribus nulla autem voluptatem.', 1906.75, 69, 4, NULL, NULL, NULL),
	(289, 'Mix', 'Voluptatibus voluptatem et id ipsam et suscipit et veniam. Facilis enim labore sit quas. Facere et ut consequatur quam. Soluta porro dolorem molestiae nam molestiae magnam.', 4918.32, 133, 42, NULL, NULL, NULL),
	(290, 'Camarón', 'Consequatur porro esse dolore neque. Maiores ut autem nulla nesciunt. Quia reprehenderit ea quaerat magnam consequatur.', 9702.31, 59, 16, NULL, NULL, NULL),
	(291, 'Rollos de pizza', 'Corporis aliquam aut quia voluptatum ea error maxime. Sed qui et sunt aliquid saepe sit qui. Asperiores beatae pariatur et aut est sed.', 2838.48, 99, 5, NULL, NULL, NULL),
	(292, 'Salsa BBQ', 'Recusandae sint vero repellendus eos aut error. Consequuntur optio vitae deserunt ab quas ipsa quas consequatur. Ut fugit impedit nihil molestiae voluptas rem. Quas exercitationem et odio aspernatur iure enim ut laudantium.', 3650.91, 173, 29, NULL, NULL, NULL),
	(293, 'Comidas envasadas Carne', 'Alias corrupti saepe id veritatis esse dolor vel. Ut enim omnis quam et sed optio.', 9236.15, 51, 46, NULL, NULL, NULL),
	(294, 'Suplementos', 'Ratione error mollitia in quis. Saepe non in provident est non vel ea. Velit fugiat sit eum facilis quo quia. Nostrum quos sunt optio quo.', 3295.89, 137, 44, NULL, NULL, NULL),
	(295, 'Pasta', 'Animi ipsam incidunt ut id temporibus qui. Ut temporibus quis consequuntur aut ratione. Velit rerum et delectus aspernatur sed voluptas in. Amet quibusdam minus ratione.', 6717.11, 146, 7, NULL, NULL, NULL),
	(296, 'Horneado de queso azul', 'Dicta sed qui rem. Ut quis sint commodi aliquam molestiae et. Est debitis consequatur quia ducimus placeat officia sit sed.', 8426.15, 102, 36, NULL, NULL, NULL),
	(297, 'Comidas temáticas de bagre', 'Aut in doloremque et excepturi. Omnis voluptatem ipsam facere dolor soluta ex adipisci. Porro eum quia natus rerum dolorem voluptatem. Corrupti ut enim suscipit blanditiis et reprehenderit pariatur.', 8073.46, 184, 20, NULL, NULL, NULL),
	(298, 'Canela', 'Cupiditate in modi a itaque illo aperiam aut. Explicabo non molestiae natus voluptas illo. Eos qui ipsam et amet cupiditate.', 2957.32, 173, 3, NULL, NULL, NULL),
	(299, 'Frutas frescas', 'Nemo molestiae dolores sunt sunt quas soluta in. Sunt ut libero saepe. Deleniti quia voluptas temporibus. Necessitatibus itaque accusantium recusandae.', 8458.44, 14, 27, NULL, NULL, NULL),
	(300, 'Noche de espaguetis', 'Quo qui suscipit odio quibusdam architecto est. Eaque qui quo molestias voluptatem. Nesciunt natus veniam illum.', 6810.08, 173, 49, NULL, NULL, NULL);

--  estructura para tabla rumbabar.producto_venta
CREATE TABLE IF NOT EXISTS `producto_venta` (
  `ventaCantidad` smallint(5) unsigned NOT NULL,
  `ventaSubtotal` double(10,2) NOT NULL,
  `fk_producto` bigint(20) unsigned NOT NULL,
  `fk_venta` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `producto_venta_fk_producto_foreign` (`fk_producto`),
  KEY `producto_venta_fk_venta_foreign` (`fk_venta`),
  CONSTRAINT `producto_venta_fk_producto_foreign` FOREIGN KEY (`fk_producto`) REFERENCES `productos` (`ProductoId`),
  CONSTRAINT `producto_venta_fk_venta_foreign` FOREIGN KEY (`fk_venta`) REFERENCES `ventas` (`VentaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.producto_venta: ~645 rows (aproximadamente)
DELETE FROM `producto_venta`;
INSERT INTO `producto_venta` (`ventaCantidad`, `ventaSubtotal`, `fk_producto`, `fk_venta`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(16, 3855.68, 21, 1, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(109, 73335.20, 46, 1, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(53, 13166.26, 80, 1, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(7, 25252.99, 117, 1, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(117, 144788.67, 155, 1, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(88, 729521.76, 195, 1, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(40, 339098.80, 199, 1, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(8, 586.48, 284, 1, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(105, 519356.25, 286, 1, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(96, 808910.40, 296, 1, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(74, 279338.90, 108, 2, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(58, 137370.68, 122, 2, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(108, 482627.16, 233, 2, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(12, 47473.20, 256, 2, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(53, 526212.62, 265, 2, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(115, 558375.60, 268, 2, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(38, 72456.50, 288, 2, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(33, 267873.87, 166, 3, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(11, 103490.42, 255, 3, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(98, 273419.02, 211, 4, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(24, 180533.52, 216, 4, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(21, 175244.16, 227, 4, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(131, 767708.47, 16, 5, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(49, 45555.79, 39, 5, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(55, 479819.45, 61, 5, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(55, 208132.65, 89, 5, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(18, 141023.52, 106, 5, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(22, 193555.34, 148, 5, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(30, 224790.60, 186, 5, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(12, 66772.80, 241, 5, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(39, 91229.58, 250, 5, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(120, 395506.80, 294, 5, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(11, 71431.25, 48, 6, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(0, 0.00, 144, 6, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(126, 155926.26, 155, 6, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(182, 1039074.40, 167, 6, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(4, 16196.24, 182, 6, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(16, 35518.88, 213, 6, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(26, 115718.98, 224, 6, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(168, 468718.32, 211, 7, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(43, 222250.23, 254, 7, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(36, 303341.40, 296, 7, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(39, 167845.47, 219, 8, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(16, 122228.16, 228, 8, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(24, 10854.48, 231, 8, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(51, 252258.75, 286, 8, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(19, 145622.46, 15, 9, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(4, 35320.88, 58, 9, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(88, 217761.28, 78, 9, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(13, 111154.68, 110, 9, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(37, 281595.53, 123, 9, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(15, 134732.25, 181, 9, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(71, 630336.58, 197, 9, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(118, 612719.72, 266, 9, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(127, 574135.25, 35, 10, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(167, 584371.41, 142, 10, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(75, 648698.25, 146, 10, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(31, 258693.76, 227, 10, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(70, 276067.40, 267, 10, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(143, 752032.71, 23, 11, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(20, 14422.20, 32, 11, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(35, 274960.70, 103, 11, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(18, 175132.44, 124, 11, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(94, 748801.18, 71, 12, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(52, 182669.76, 95, 12, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(31, 111834.67, 117, 12, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(64, 325086.72, 172, 12, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(51, 118436.28, 220, 12, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(13, 108484.48, 227, 12, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(64, 286001.28, 233, 12, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(121, 348173.87, 271, 12, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(22, 81751.78, 279, 12, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(62, 226356.42, 292, 12, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(11, 702.35, 47, 13, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(127, 400796.76, 55, 13, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(99, 161612.55, 59, 13, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(46, 33612.20, 72, 13, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(126, 43718.22, 134, 13, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(41, 354737.33, 188, 13, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(28, 108066.84, 205, 13, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(4, 20674.44, 254, 13, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(14, 135832.34, 290, 13, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(67, 537290.42, 97, 14, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(10, 26894.80, 153, 14, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(12, 112463.28, 187, 14, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(95, 265049.05, 211, 14, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(68, 290108.40, 280, 14, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(48, 85781.76, 11, 15, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(119, 800333.31, 19, 15, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(44, 252586.84, 29, 15, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(41, 198513.39, 33, 15, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(18, 56074.50, 82, 15, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(10, 78560.20, 103, 15, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(28, 66316.88, 122, 15, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(19, 110343.45, 178, 15, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(23, 97254.35, 204, 15, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(46, 346891.98, 113, 16, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(125, 951336.25, 123, 16, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(38, 84791.30, 145, 16, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(127, 886081.54, 156, 16, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(41, 175817.43, 174, 16, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(2, 13223.70, 226, 16, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(100, 682668.00, 245, 16, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(23, 90990.30, 256, 16, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(22, 8160.46, 278, 16, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(59, 497142.85, 296, 16, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(26, 33482.02, 8, 17, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(105, 195637.05, 45, 17, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(107, 694831.25, 48, 17, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(120, 211893.60, 54, 17, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(22, 159516.50, 84, 17, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(43, 186043.80, 119, 17, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(39, 170957.28, 162, 17, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(28, 255036.04, 175, 17, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(21, 116852.40, 241, 17, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(55, 85510.15, 121, 18, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(7, 2428.79, 134, 18, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(2, 18743.88, 187, 18, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(21, 91.35, 194, 18, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(127, 1060518.58, 202, 18, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(54, 431406.54, 218, 18, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(6, 59965.98, 272, 18, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(74, 124264.50, 275, 18, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(59, 242979.70, 283, 18, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(108, 632919.96, 16, 19, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(117, 366755.22, 52, 19, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(10, 91440.00, 90, 19, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(20, 140665.60, 102, 19, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(104, 94423.68, 107, 19, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(151, 26606.20, 112, 19, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(21, 55746.81, 159, 19, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(13, 108557.02, 202, 19, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(46, 70592.52, 215, 19, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(1, 6611.85, 226, 19, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(29, 115832.67, 149, 20, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(73, 648092.54, 197, 20, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(94, 618045.30, 242, 20, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(27, 226775.70, 261, 20, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(4, 797.52, 7, 21, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(12, 2198.52, 77, 21, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(50, 298242.00, 105, 21, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(29, 45087.17, 121, 21, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(33, 37315.41, 184, 21, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(52, 449910.76, 188, 21, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(60, 323913.60, 281, 21, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(15, 113087.55, 282, 21, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(3, 29106.93, 290, 21, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(5, 28504.20, 50, 22, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(36, 119630.16, 66, 22, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(106, 768579.50, 84, 22, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(105, 606497.85, 100, 22, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(38, 304288.04, 127, 22, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(33, 155832.93, 131, 22, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(98, 426.30, 194, 22, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(47, 33197.51, 217, 22, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(97, 43870.19, 231, 22, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(111, 872919.54, 22, 23, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(23, 71855.68, 85, 23, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(8, 11919.60, 126, 23, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(7, 46103.68, 138, 23, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(1, 6497.40, 170, 23, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(169, 1271256.87, 216, 23, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(12, 64782.72, 281, 23, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(80, 63800.00, 6, 24, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(162, 301840.02, 45, 24, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(20, 140665.60, 102, 24, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(7, 47464.97, 161, 24, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(94, 873823.06, 237, 24, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(67, 457387.56, 245, 24, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(3, 3725.55, 259, 24, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(42, 330596.70, 34, 25, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(2, 13223.70, 226, 25, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(45, 328156.65, 30, 26, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(16, 27058.88, 88, 26, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(36, 165960.72, 201, 26, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(49, 210882.77, 219, 26, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(73, 43737.22, 262, 26, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(62, 502030.12, 9, 27, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(24, 126215.28, 23, 27, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(86, 825555.28, 98, 27, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(7, 34003.27, 120, 27, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(6, 39517.44, 138, 27, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(16, 102772.48, 141, 27, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(18, 8140.86, 231, 27, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(39, 292834.62, 240, 27, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(56, 386123.36, 18, 28, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(52, 379203.24, 30, 28, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(51, 37265.70, 72, 28, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(23, 117967.46, 223, 28, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(65, 314716.35, 33, 29, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(122, 551531.50, 35, 29, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(127, 938442.37, 74, 29, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(24, 199286.16, 86, 29, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(96, 603795.84, 244, 29, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(58, 575855.32, 265, 29, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(32, 260200.00, 269, 29, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(39, 68913.00, 27, 30, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(29, 198465.85, 129, 30, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(10, 30629.70, 132, 30, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(150, 6180.00, 164, 30, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(8, 12867.52, 177, 30, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(25, 96488.25, 205, 30, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(1, 8447.36, 206, 30, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(2, 189.36, 221, 30, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(38, 320193.70, 296, 30, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(105, 367419.15, 142, 31, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(82, 762271.18, 237, 31, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(80, 361660.00, 35, 32, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(148, 1172688.36, 139, 32, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(9, 57809.52, 141, 32, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(6, 16116.84, 171, 32, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(92, 779927.24, 199, 32, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(82, 678735.32, 209, 32, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(6, 13319.58, 213, 32, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(144, 220985.28, 215, 32, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(36, 292725.00, 269, 32, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(28, 138495.00, 286, 32, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(62, 497194.12, 97, 33, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(23, 67373.44, 154, 33, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(91, 58491.16, 193, 33, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(7, 15539.51, 213, 33, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(13, 66677.26, 223, 33, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(1, 6611.85, 226, 33, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(67, 16644.14, 80, 34, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(25, 3110.50, 208, 34, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(49, 323169.70, 5, 35, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(29, 211478.73, 30, 35, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(26, 86399.56, 66, 35, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(10, 85503.60, 110, 35, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(1, 1554.73, 121, 35, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(13, 63120.72, 268, 35, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(66, 83868.18, 276, 35, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(83, 235593.84, 291, 35, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(21, 19523.91, 39, 36, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(64, 242190.72, 89, 36, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(114, 980588.10, 96, 36, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(5, 16987.20, 189, 36, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(27, 120169.71, 224, 36, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(2, 17070.54, 247, 36, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(86, 340224.60, 256, 36, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(18, 119547.36, 20, 37, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(54, 36331.20, 46, 37, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(6, 47136.12, 103, 37, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(67, 505255.71, 113, 37, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(49, 212003.40, 119, 37, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(26, 36425.22, 192, 37, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(99, 948763.53, 196, 37, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(50, 380861.50, 200, 37, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(36, 206773.56, 10, 38, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(43, 189489.39, 62, 38, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(2, 14778.62, 74, 38, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(23, 223780.34, 124, 38, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(38, 139116.10, 234, 38, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(7, 13677.23, 235, 38, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(77, 375654.51, 246, 38, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(37, 183011.25, 286, 38, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(22, 108203.04, 289, 38, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(124, 366707.68, 298, 38, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(8, 15764.16, 111, 39, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(91, 766779.65, 296, 39, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(146, 725294.42, 14, 40, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(6, 1445.88, 21, 40, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(98, 474495.42, 33, 40, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(64, 289328.00, 35, 40, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(146, 1133497.28, 109, 40, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(23, 156480.27, 163, 40, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(38, 61120.72, 177, 40, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(34, 101879.98, 253, 40, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(28, 151159.68, 281, 40, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(45, 121026.60, 153, 41, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(74, 91896.90, 259, 41, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(83, 8740.73, 260, 41, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(63, 418415.76, 20, 42, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(36, 11970.36, 28, 42, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(107, 335408.62, 52, 42, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(27, 30530.79, 184, 42, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(76, 321362.20, 204, 42, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(19, 84563.87, 224, 42, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(32, 259112.32, 9, 43, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(15, 46728.75, 82, 43, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(105, 806082.90, 91, 43, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(112, 265267.52, 122, 43, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(100, 391796.00, 133, 43, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(18, 149453.28, 198, 43, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(88, 741501.20, 296, 43, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(15, 79005.90, 17, 44, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(142, 316140.28, 143, 44, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(96, 841728.96, 151, 44, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(77, 297204.60, 168, 44, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(4, 378.72, 221, 44, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(2, 15078.34, 282, 44, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(118, 535802.60, 1, 45, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(19, 111347.03, 16, 45, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(147, 1128516.06, 91, 45, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(8, 13308.08, 116, 45, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(31, 32765.14, 158, 45, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(87, 441914.76, 172, 45, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(23, 66541.76, 180, 45, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(1, 5896.37, 207, 45, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(5, 22703.50, 1, 46, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(27, 84111.75, 82, 46, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(109, 818078.79, 147, 46, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(9, 9512.46, 158, 46, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(87, 737539.89, 199, 46, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(167, 493872.44, 298, 46, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(13, 109959.72, 299, 46, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(7, 16957.36, 51, 47, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(71, 115903.95, 59, 47, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(10, 39513.00, 92, 47, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(27, 245312.55, 99, 47, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(7, 25127.06, 101, 47, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(40, 279080.80, 156, 47, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(8, 21489.12, 171, 47, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(24, 179832.48, 186, 47, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(16, 61752.48, 205, 47, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(57, 101865.84, 11, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(79, 53151.20, 46, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(77, 245798.63, 60, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(62, 65530.28, 158, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(1, 8117.39, 166, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(100, 958347.00, 196, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(6, 49728.24, 287, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(6, 50556.90, 296, 48, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(20, 44627.00, 145, 49, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(8, 586.48, 284, 49, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(3, 15801.18, 17, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(98, 916101.06, 31, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(5, 17315.35, 81, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(9, 50985.54, 94, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(91, 542800.44, 105, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(71, 268014.35, 108, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(37, 45787.87, 155, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(64, 98215.68, 215, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(94, 191798.54, 230, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(111, 50201.97, 231, 50, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(62, 419222.30, 37, 51, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(79, 553624.89, 42, 51, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(48, 385093.92, 43, 51, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(10, 68436.50, 129, 51, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(116, 405910.68, 142, 51, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(17, 21037.67, 155, 51, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(22, 112838.44, 223, 51, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(2, 14986.04, 186, 52, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(56, 297556.56, 249, 52, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(1, 9310.16, 258, 52, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(1, 3859.53, 205, 53, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(9, 82172.61, 232, 53, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(61, 324124.11, 249, 53, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(101, 851041.15, 296, 53, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(29, 23127.50, 6, 54, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(21, 172043.55, 214, 54, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(48, 136156.32, 225, 54, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(1, 7639.26, 228, 55, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(19, 188642.26, 265, 55, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(19, 24467.63, 8, 56, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(15, 91869.75, 68, 56, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(35, 317997.75, 99, 56, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(78, 528895.38, 161, 56, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(77, 334.95, 194, 56, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(22, 2316.82, 260, 56, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(82, 417020.84, 13, 57, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(105, 448132.65, 49, 57, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(4, 10139.44, 53, 57, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(12, 8073.60, 46, 58, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(55, 40188.50, 72, 58, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(107, 279693.72, 150, 58, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(6, 54781.74, 232, 58, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(12, 94015.68, 106, 59, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(79, 298213.15, 108, 59, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(12, 40769.28, 189, 59, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(1, 8447.36, 206, 59, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(84, 66990.00, 6, 60, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(22, 2737.24, 208, 60, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(166, 296661.92, 11, 61, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(1, 5860.37, 16, 61, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(48, 301897.92, 244, 61, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(85, 3502.00, 164, 62, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(24, 2817.36, 236, 62, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(48, 207676.80, 119, 63, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(10, 43773.40, 239, 63, '2020-10-05 06:58:20', '2020-10-05 06:58:20', NULL),
	(22, 108203.04, 289, 63, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(20, 39410.40, 111, 64, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(15, 52488.45, 142, 64, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(1, 2786.64, 144, 64, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(4, 21035.88, 23, 65, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(3, 21752.25, 84, 65, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(10, 81173.90, 166, 65, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(72, 252927.36, 95, 66, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(107, 37125.79, 134, 66, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(3, 5217.54, 26, 67, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(14, 77349.86, 118, 67, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(53, 471974.01, 165, 67, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(11, 91332.56, 198, 67, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(23, 117967.46, 223, 67, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(1, 6611.85, 226, 67, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(27, 98845.65, 234, 67, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(9, 84673.98, 255, 67, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(72, 204370.56, 291, 67, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(44, 370750.60, 296, 67, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(23, 40641.00, 27, 68, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(2, 11330.12, 94, 68, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(4, 5603.88, 192, 68, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(4, 35511.92, 197, 68, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(24, 92628.72, 205, 68, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(37, 227657.67, 252, 68, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(24, 216742.56, 93, 69, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(96, 370540.80, 168, 69, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(102, 176639.52, 63, 70, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(42, 30689.40, 72, 70, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(54, 168413.04, 76, 70, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(13, 40498.25, 82, 70, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(38, 143800.74, 89, 70, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(30, 80584.20, 171, 70, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(17, 68834.02, 182, 70, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(26, 251848.22, 185, 70, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(74, 270167.34, 292, 70, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(57, 448666.95, 34, 71, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(66, 14514.72, 79, 71, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(66, 44715.00, 140, 71, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(42, 265217.40, 273, 71, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(26, 1906.06, 284, 71, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(113, 662221.81, 16, 72, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(115, 362926.20, 55, 72, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(36, 119630.16, 66, 72, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(78, 19376.76, 80, 72, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(14, 39712.26, 225, 72, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(2, 16689.92, 227, 72, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(66, 134667.06, 230, 72, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(32, 165395.52, 254, 72, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(44, 357775.00, 269, 72, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(46, 375982.38, 277, 72, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(19, 4578.62, 21, 73, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(128, 865491.20, 37, 73, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(157, 292523.97, 45, 73, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(33, 94909.32, 137, 73, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(1, 2226.34, 143, 73, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(41, 178.35, 194, 73, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(22, 101420.44, 201, 73, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(88, 204360.64, 220, 73, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(14, 119493.78, 247, 73, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(140, 371645.40, 159, 74, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(47, 194942.37, 243, 74, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(15, 139652.40, 258, 74, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(2, 4783.98, 57, 75, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(7, 21831.32, 76, 75, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(21, 190798.65, 99, 75, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(11, 88083.38, 127, 75, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(18, 146113.02, 166, 75, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(14, 37605.96, 171, 75, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(16, 148735.84, 237, 75, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(3, 16518.15, 274, 75, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(6, 58377.48, 124, 76, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(3, 8679.36, 180, 76, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(37, 51835.89, 192, 76, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(26, 241695.74, 237, 76, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(7, 69988.94, 238, 76, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(25, 249858.25, 272, 76, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(82, 740537.08, 93, 77, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(8, 34305.84, 174, 77, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(53, 406876.23, 203, 77, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(12, 66072.60, 274, 77, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(61, 520833.86, 69, 78, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(39, 306384.78, 103, 78, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(9, 13409.55, 126, 78, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(18, 122462.82, 163, 78, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(124, 486636.76, 212, 78, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(2, 13223.70, 226, 78, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(99, 193435.11, 235, 78, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(59, 6926.01, 236, 78, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(28, 263430.16, 255, 78, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(37, 367355.98, 265, 78, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(53, 269537.86, 13, 79, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(36, 166232.88, 70, 79, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(95, 493291.30, 266, 79, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(47, 384155.91, 277, 79, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(141, 640238.70, 1, 80, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(103, 386669.21, 65, 80, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(7, 41465.20, 73, 80, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(117, 4820.40, 164, 80, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(27, 118188.18, 239, 80, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(28, 45036.32, 177, 81, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(21, 188625.15, 181, 81, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(69, 612580.62, 197, 81, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(128, 357118.72, 211, 81, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(40, 4695.60, 236, 81, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(82, 15023.22, 77, 82, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(36, 112469.76, 85, 82, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(18, 33537.78, 45, 83, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(18, 163541.70, 99, 83, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(46, 48619.24, 158, 83, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(5, 597.45, 173, 83, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(25, 147409.25, 207, 83, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(87, 318502.65, 234, 83, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(55, 32952.70, 262, 83, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(135, 241261.20, 11, 84, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(35, 200921.35, 29, 84, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(10, 78713.50, 34, 84, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(36, 155757.60, 119, 84, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(126, 998369.82, 139, 84, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(45, 117628.20, 150, 84, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(6, 25822.38, 219, 84, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(4, 378.72, 221, 84, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(17, 159939.74, 255, 84, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(9, 47403.54, 17, 85, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(50, 393567.50, 34, 85, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(34, 192612.04, 94, 85, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(69, 242388.72, 95, 85, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(36, 5211.00, 135, 85, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(61, 170189.39, 211, 85, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(34, 180659.34, 249, 85, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(59, 572436.29, 290, 85, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(14, 46142.46, 294, 85, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(88, 260244.16, 298, 85, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(115, 60366.95, 40, 86, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(91, 755626.69, 86, 86, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(49, 60637.99, 155, 86, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(41, 154975.90, 160, 86, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(17, 57756.48, 189, 86, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(21, 170756.25, 269, 86, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(9, 3338.37, 278, 86, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(9, 51307.56, 50, 87, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(9, 79471.98, 58, 87, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(7, 11838.26, 88, 87, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(80, 348.00, 194, 87, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(1, 8447.36, 206, 87, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(64, 210936.96, 294, 87, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(1, 1333.66, 38, 88, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(6, 23507.76, 133, 88, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(62, 432575.24, 156, 88, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(39, 41220.66, 158, 88, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(126, 857239.74, 163, 88, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(10, 17727.70, 179, 88, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(117, 326428.83, 211, 88, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(46, 237756.06, 254, 88, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(37, 192123.98, 266, 88, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(79, 409267.40, 136, 89, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(25, 107205.75, 174, 89, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(67, 43064.92, 193, 89, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(75, 326.25, 194, 89, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(55, 6843.10, 208, 89, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(5, 526.55, 260, 89, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(124, 356628.96, 137, 90, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(2, 16916.88, 299, 90, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(44, 137463.04, 85, 91, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(22, 83046.70, 108, 91, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(33, 169257.66, 223, 91, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(53, 406210.02, 15, 92, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(63, 423705.87, 19, 92, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(13, 8191.69, 75, 92, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(43, 248375.31, 100, 92, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(147, 25901.40, 112, 92, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(136, 475895.28, 142, 92, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(102, 12187.98, 173, 92, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(80, 315505.60, 267, 92, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(60, 172648.20, 271, 92, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(45, 85803.75, 288, 92, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(65, 21613.15, 28, 93, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(172, 601867.56, 142, 93, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(8, 34305.84, 174, 93, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(2, 8937.54, 233, 93, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(107, 934847.23, 176, 94, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(9, 37064.70, 283, 94, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(70, 195382.60, 3, 95, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(119, 625817.43, 23, 95, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(103, 243951.38, 122, 95, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(25, 142730.00, 167, 95, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(20, 166899.20, 227, 95, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(27, 220685.31, 277, 95, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(95, 358610.75, 108, 96, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(122, 323862.42, 159, 96, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(28, 160823.88, 10, 97, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(25, 239987.00, 98, 97, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(23, 190968.08, 198, 97, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(3, 5301.00, 27, 98, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(58, 276720.90, 83, 98, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(18, 63094.14, 169, 98, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(43, 30372.19, 217, 98, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(6, 383.10, 47, 99, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(129, 428674.74, 66, 99, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(13, 60028.54, 70, 99, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(57, 215166.45, 108, 99, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(71, 567219.71, 218, 99, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(157, 701596.89, 233, 99, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(6, 49728.24, 287, 99, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(182, 408142.28, 4, 100, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(46, 233938.52, 13, 100, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(120, 581014.80, 33, 100, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(122, 64041.46, 40, 100, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(5, 17315.35, 81, 100, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(55, 228124.05, 243, 100, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(15, 134188.35, 248, 100, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(48, 390300.00, 269, 100, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL),
	(67, 286597.19, 285, 100, '2020-10-05 06:58:21', '2020-10-05 06:58:21', NULL);

--  estructura para tabla rumbabar.proveedores
CREATE TABLE IF NOT EXISTS `proveedores` (
  `ProveedorId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ProveedorNombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProveedorNit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ProveedorId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.proveedores: ~50 rows (aproximadamente)
DELETE FROM `proveedores`;
INSERT INTO `proveedores` (`ProveedorId`, `ProveedorNombre`, `ProveedorNit`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Godínez y Muro S. de H.', '143.115.664-3', NULL, NULL, NULL),
	(2, 'Centro Alcaráz SRL', '168.316.736-4', NULL, NULL, NULL),
	(3, 'Arenas y Benítez SRL', '897.843.471-7', NULL, NULL, NULL),
	(4, 'Abrego, Rangel y Munguía e Hijo', '143.228.000-0', NULL, NULL, NULL),
	(5, 'Air Guzmán y Flia.', '284.445.900-9', NULL, NULL, NULL),
	(6, 'Manzano-Peres y Flia.', '834.813.266-8', NULL, NULL, NULL),
	(7, 'Global Chávez e Hijos', '096.263.104-7', NULL, NULL, NULL),
	(8, 'Partida y Bravo S. de H.', '366.737.260-0', NULL, NULL, NULL),
	(9, 'Valdivia y Jiménez e Hijos', '651.851.870-5', NULL, NULL, NULL),
	(10, 'Mota-Ponce', '073.062.009-5', NULL, NULL, NULL),
	(11, 'Nieves y Lovato SRL', '828.140.348-1', NULL, NULL, NULL),
	(12, 'Montero de Luna', '917.540.357-0', NULL, NULL, NULL),
	(13, 'Leal y Martín SRL', '414.301.330-5', NULL, NULL, NULL),
	(14, 'Villalba y Luna y Flia.', '725.992.401-6', NULL, NULL, NULL),
	(15, 'Gestora Regalado', '593.366.669-1', NULL, NULL, NULL),
	(16, 'Cuevas de Barrientos y Flia.', '274.194.986-9', NULL, NULL, NULL),
	(17, 'Chavarría de Collado', '390.039.199-0', NULL, NULL, NULL),
	(18, 'Mascareñas, Ballesteros y Serna e Hijo', '170.414.900-2', NULL, NULL, NULL),
	(19, 'Granados, Zayas y Campos e Hijos', '267.747.735-3', NULL, NULL, NULL),
	(20, 'Global Raya', '648.153.978-6', NULL, NULL, NULL),
	(21, 'Contreras y Jaimes y Asoc.', '478.372.857-6', NULL, NULL, NULL),
	(22, 'Román de Altamirano', '554.260.928-0', NULL, NULL, NULL),
	(23, 'Grijalva y Camacho SRL', '123.626.247-7', NULL, NULL, NULL),
	(24, 'Asociación García-Reyes', '914.466.246-3', NULL, NULL, NULL),
	(25, 'Empresa Miramontes', '979.444.155-0', NULL, NULL, NULL),
	(26, 'Leyva de Huerta', '383.202.769-7', NULL, NULL, NULL),
	(27, 'Deleón, Peña y Brito y Asoc.', '555.691.064-8', NULL, NULL, NULL),
	(28, 'Abrego y Domínquez', '795.843.622-1', NULL, NULL, NULL),
	(29, 'Magaña, Duran y Flores SRL', '229.285.637-3', NULL, NULL, NULL),
	(30, 'Gestora Beltrán', '157.081.693-4', NULL, NULL, NULL),
	(31, 'Ramón-Cazares e Hija', '043.528.819-5', NULL, NULL, NULL),
	(32, 'Perales-Mora S. de H.', '656.319.470-7', NULL, NULL, NULL),
	(33, 'Grupo Gaitán-Vanegas', '228.549.250-5', NULL, NULL, NULL),
	(34, 'Mejía de Salas SA', '630.388.675-6', NULL, NULL, NULL),
	(35, 'Alemán de Rivas', '363.138.738-1', NULL, NULL, NULL),
	(36, 'Empresa Ruiz e Hijo', '618.797.795-4', NULL, NULL, NULL),
	(37, 'Baeza y Madrid e Hijo', '766.648.377-2', NULL, NULL, NULL),
	(38, 'Noriega-Jaime', '677.879.916-5', NULL, NULL, NULL),
	(39, 'Rodríguez y Flores SRL', '223.026.354-6', NULL, NULL, NULL),
	(40, 'Guevara de Galarza', '798.972.656-9', NULL, NULL, NULL),
	(41, 'Regalado, Nieto y Hernández e Hijo', '754.824.798-9', NULL, NULL, NULL),
	(42, 'Almanza-Cuevas', '385.654.812-9', NULL, NULL, NULL),
	(43, 'Corporación Verdugo-Alcaráz', '442.393.266-1', NULL, NULL, NULL),
	(44, 'Air Castro', '648.349.054-6', NULL, NULL, NULL),
	(45, 'Ochoa-Alva', '328.746.992-4', NULL, NULL, NULL),
	(46, 'Tórrez-Valentín SRL', '995.214.167-5', NULL, NULL, NULL),
	(47, 'Armijo de Carranza', '530.014.654-9', NULL, NULL, NULL),
	(48, 'Vela y Mendoza y Flia.', '094.378.461-9', NULL, NULL, NULL),
	(49, 'Del Río de Uribe', '999.435.320-3', NULL, NULL, NULL),
	(50, 'Martí, Perales y Alcaráz e Hijo', '080.285.590-6', NULL, NULL, NULL);

--  estructura para tabla rumbabar.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `RolId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `RolNombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`RolId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.roles: ~4 rows (aproximadamente)
DELETE FROM `roles`;
INSERT INTO `roles` (`RolId`, `RolNombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Programador', NULL, NULL, NULL),
	(2, 'Administrador', NULL, NULL, NULL),
	(3, 'Usuario', NULL, NULL, NULL),
	(4, 'Suplente', NULL, NULL, NULL);

--  estructura para tabla rumbabar.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `UsuarioId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `UsuarioName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UsuarioEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `UsuarioPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_rol` bigint(20) unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`UsuarioId`),
  UNIQUE KEY `usuarios_usuarioemail_unique` (`UsuarioEmail`),
  KEY `usuarios_fk_rol_foreign` (`fk_rol`),
  CONSTRAINT `usuarios_fk_rol_foreign` FOREIGN KEY (`fk_rol`) REFERENCES `roles` (`RolId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.usuarios: ~5 rows (aproximadamente)
DELETE FROM `usuarios`;
INSERT INTO `usuarios` (`UsuarioId`, `UsuarioName`, `UsuarioEmail`, `email_verified_at`, `UsuarioPassword`, `fk_rol`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'mariaangeles.portillo', 'mariaangeles.portillo@live.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL),
	(2, 'oscar62', 'oscar62@hispavista.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL),
	(3, 'oesquivel', 'oesquivel@hotmail.es', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL),
	(4, 'terrazas.mariadolores', 'terrazas.mariadolores@live.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL),
	(5, 'isanz', 'isanz@hispavista.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 4, NULL, NULL, NULL, NULL);

--  estructura para tabla rumbabar.ventas
CREATE TABLE IF NOT EXISTS `ventas` (
  `VentaId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `VentaSaldo` double(10,2) NOT NULL,
  `VentaTotal` double(10,2) NOT NULL,
  `fk_user` bigint(20) unsigned NOT NULL,
  `fk_mesa` bigint(20) unsigned NOT NULL,
  `fk_cliente` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`VentaId`),
  KEY `ventas_fk_user_foreign` (`fk_user`),
  KEY `ventas_fk_mesa_foreign` (`fk_mesa`),
  KEY `ventas_fk_cliente_foreign` (`fk_cliente`),
  CONSTRAINT `ventas_fk_cliente_foreign` FOREIGN KEY (`fk_cliente`) REFERENCES `clientes` (`ClienteId`),
  CONSTRAINT `ventas_fk_mesa_foreign` FOREIGN KEY (`fk_mesa`) REFERENCES `mesas` (`MesaId`),
  CONSTRAINT `ventas_fk_user_foreign` FOREIGN KEY (`fk_user`) REFERENCES `usuarios` (`UsuarioId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--  datos para la tabla rumbabar.ventas: ~100 rows (aproximadamente)
DELETE FROM `ventas`;
INSERT INTO `ventas` (`VentaId`, `VentaSaldo`, `VentaTotal`, `fk_user`, `fk_mesa`, `fk_cliente`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 8822.00, 26466.00, 3, 12, 46, NULL, NULL, NULL),
	(2, 561.25, 2245.00, 3, 8, 30, NULL, NULL, NULL),
	(3, 1885.67, 5657.00, 1, 14, 64, NULL, NULL, NULL),
	(4, 4019.44, 36175.00, 5, 15, 49, NULL, NULL, NULL),
	(5, 4057.10, 40571.00, 4, 14, 47, NULL, NULL, NULL),
	(6, 6072.30, 60723.00, 2, 4, 51, NULL, NULL, NULL),
	(7, 19167.40, 95837.00, 5, 5, 26, NULL, NULL, NULL),
	(8, 14894.00, 44682.00, 1, 6, 45, NULL, NULL, NULL),
	(9, 29466.50, 58933.00, 2, 11, 62, NULL, NULL, NULL),
	(10, 14405.00, 72025.00, 3, 14, 84, NULL, NULL, NULL),
	(11, 12415.00, 99320.00, 5, 5, 2, NULL, NULL, NULL),
	(12, 14729.00, 14729.00, 4, 7, 43, NULL, NULL, NULL),
	(13, 20167.00, 60501.00, 5, 15, 6, NULL, NULL, NULL),
	(14, 23485.00, 46970.00, 2, 9, 27, NULL, NULL, NULL),
	(15, 5903.30, 59033.00, 5, 15, 60, NULL, NULL, NULL),
	(16, 48564.00, 97128.00, 3, 5, 20, NULL, NULL, NULL),
	(17, 713.30, 7133.00, 4, 2, 98, NULL, NULL, NULL),
	(18, 3706.10, 37061.00, 3, 12, 4, NULL, NULL, NULL),
	(19, 29109.50, 58219.00, 1, 10, 40, NULL, NULL, NULL),
	(20, 9198.29, 64388.00, 3, 6, 51, NULL, NULL, NULL),
	(21, 42008.50, 84017.00, 2, 15, 55, NULL, NULL, NULL),
	(22, 17759.00, 71036.00, 1, 13, 15, NULL, NULL, NULL),
	(23, 10396.50, 62379.00, 5, 12, 17, NULL, NULL, NULL),
	(24, 12002.00, 12002.00, 3, 14, 55, NULL, NULL, NULL),
	(25, 14048.00, 98336.00, 3, 5, 15, NULL, NULL, NULL),
	(26, 5565.10, 55651.00, 1, 5, 71, NULL, NULL, NULL),
	(27, 68.50, 137.00, 3, 11, 16, NULL, NULL, NULL),
	(28, 9785.50, 78284.00, 1, 5, 71, NULL, NULL, NULL),
	(29, 4257.11, 38314.00, 2, 2, 95, NULL, NULL, NULL),
	(30, 4622.00, 4622.00, 4, 14, 13, NULL, NULL, NULL),
	(31, 10749.33, 96744.00, 3, 2, 56, NULL, NULL, NULL),
	(32, 47161.00, 94322.00, 4, 4, 68, NULL, NULL, NULL),
	(33, 2742.00, 24678.00, 2, 14, 73, NULL, NULL, NULL),
	(34, 3108.50, 31085.00, 1, 10, 19, NULL, NULL, NULL),
	(35, 27959.00, 55918.00, 5, 9, 8, NULL, NULL, NULL),
	(36, 8992.57, 62948.00, 3, 15, 100, NULL, NULL, NULL),
	(37, 6903.62, 55229.00, 4, 6, 28, NULL, NULL, NULL),
	(38, 580.43, 4063.00, 1, 13, 48, NULL, NULL, NULL),
	(39, 18767.50, 37535.00, 2, 7, 53, NULL, NULL, NULL),
	(40, 7809.00, 39045.00, 5, 2, 85, NULL, NULL, NULL),
	(41, 62758.00, 62758.00, 4, 3, 92, NULL, NULL, NULL),
	(42, 1866.20, 9331.00, 3, 11, 29, NULL, NULL, NULL),
	(43, 3493.00, 20958.00, 5, 14, 28, NULL, NULL, NULL),
	(44, 8003.20, 80032.00, 5, 14, 69, NULL, NULL, NULL),
	(45, 2173.00, 4346.00, 5, 1, 76, NULL, NULL, NULL),
	(46, 7490.70, 74907.00, 4, 8, 46, NULL, NULL, NULL),
	(47, 14859.00, 74295.00, 2, 1, 25, NULL, NULL, NULL),
	(48, 2472.30, 24723.00, 5, 15, 91, NULL, NULL, NULL),
	(49, 39747.00, 39747.00, 2, 3, 72, NULL, NULL, NULL),
	(50, 28389.00, 28389.00, 1, 2, 80, NULL, NULL, NULL),
	(51, 21380.00, 21380.00, 1, 8, 23, NULL, NULL, NULL),
	(52, 15196.50, 91179.00, 1, 9, 14, NULL, NULL, NULL),
	(53, 8951.56, 80564.00, 2, 11, 68, NULL, NULL, NULL),
	(54, 19876.20, 99381.00, 4, 2, 2, NULL, NULL, NULL),
	(55, 2042.00, 16336.00, 1, 4, 38, NULL, NULL, NULL),
	(56, 11648.40, 58242.00, 2, 3, 91, NULL, NULL, NULL),
	(57, 10631.50, 42526.00, 1, 12, 38, NULL, NULL, NULL),
	(58, 51204.00, 51204.00, 5, 6, 15, NULL, NULL, NULL),
	(59, 3477.33, 10432.00, 1, 15, 1, NULL, NULL, NULL),
	(60, 5787.89, 52091.00, 1, 4, 40, NULL, NULL, NULL),
	(61, 16299.67, 48899.00, 4, 12, 53, NULL, NULL, NULL),
	(62, 5472.67, 49254.00, 5, 2, 47, NULL, NULL, NULL),
	(63, 1516.50, 15165.00, 4, 6, 24, NULL, NULL, NULL),
	(64, 28608.33, 85825.00, 1, 11, 42, NULL, NULL, NULL),
	(65, 33037.33, 99112.00, 5, 2, 72, NULL, NULL, NULL),
	(66, 1421.75, 11374.00, 3, 9, 77, NULL, NULL, NULL),
	(67, 67835.00, 67835.00, 5, 15, 85, NULL, NULL, NULL),
	(68, 7570.89, 68138.00, 1, 7, 83, NULL, NULL, NULL),
	(69, 18359.40, 91797.00, 4, 13, 49, NULL, NULL, NULL),
	(70, 7384.20, 73842.00, 1, 2, 95, NULL, NULL, NULL),
	(71, 4129.44, 37165.00, 2, 12, 89, NULL, NULL, NULL),
	(72, 72480.00, 72480.00, 5, 14, 81, NULL, NULL, NULL),
	(73, 6566.00, 52528.00, 4, 1, 49, NULL, NULL, NULL),
	(74, 1644.20, 8221.00, 2, 7, 56, NULL, NULL, NULL),
	(75, 92.50, 370.00, 1, 14, 26, NULL, NULL, NULL),
	(76, 29691.33, 89074.00, 5, 8, 41, NULL, NULL, NULL),
	(77, 3059.80, 15299.00, 5, 5, 85, NULL, NULL, NULL),
	(78, 2048.38, 16387.00, 3, 12, 74, NULL, NULL, NULL),
	(79, 21566.00, 43132.00, 2, 1, 20, NULL, NULL, NULL),
	(80, 506.60, 5066.00, 1, 7, 83, NULL, NULL, NULL),
	(81, 2870.00, 25830.00, 4, 11, 13, NULL, NULL, NULL),
	(82, 9134.57, 63942.00, 2, 9, 60, NULL, NULL, NULL),
	(83, 15912.50, 95475.00, 1, 3, 32, NULL, NULL, NULL),
	(84, 7112.88, 56903.00, 3, 13, 74, NULL, NULL, NULL),
	(85, 635.00, 3810.00, 3, 9, 90, NULL, NULL, NULL),
	(86, 38660.50, 77321.00, 5, 13, 66, NULL, NULL, NULL),
	(87, 4436.88, 35495.00, 2, 9, 56, NULL, NULL, NULL),
	(88, 4805.33, 43248.00, 2, 4, 98, NULL, NULL, NULL),
	(89, 1969.75, 7879.00, 5, 1, 22, NULL, NULL, NULL),
	(90, 3465.50, 13862.00, 1, 4, 41, NULL, NULL, NULL),
	(91, 11759.00, 23518.00, 4, 13, 92, NULL, NULL, NULL),
	(92, 4348.60, 21743.00, 4, 2, 22, NULL, NULL, NULL),
	(93, 16829.40, 84147.00, 5, 11, 94, NULL, NULL, NULL),
	(94, 11588.12, 92705.00, 1, 10, 6, NULL, NULL, NULL),
	(95, 8481.17, 50887.00, 4, 9, 21, NULL, NULL, NULL),
	(96, 4269.80, 21349.00, 1, 15, 49, NULL, NULL, NULL),
	(97, 2566.33, 23097.00, 5, 13, 98, NULL, NULL, NULL),
	(98, 18886.50, 75546.00, 1, 15, 93, NULL, NULL, NULL),
	(99, 1029.00, 2058.00, 5, 1, 74, NULL, NULL, NULL),
	(100, 51162.00, 51162.00, 2, 7, 57, NULL, NULL, NULL);


DROP PROCEDURE IF EXISTS SelectAllClientes;
CREATE PROCEDURE SelectAllClientes()
	SELECT * FROM clientes;

DROP PROCEDURE IF EXISTS SelectAllCompras;
CREATE PROCEDURE SelectAllCompras()
	SELECT * FROM compras;

DROP PROCEDURE IF EXISTS SelectAllProductos;
CREATE PROCEDURE SelectAllProductos()
	SELECT * FROM productos;

DROP PROCEDURE IF EXISTS SelectAllProveedores;
CREATE PROCEDURE SelectAllProveedores()
	SELECT * FROM proveedores;

DROP PROCEDURE IF EXISTS SelectAllRoles;
CREATE PROCEDURE SelectAllRoles()
	SELECT * FROM roles;

DROP PROCEDURE IF EXISTS SelectAllMesas;
CREATE PROCEDURE SelectAllMesas()
	SELECT * FROM mesas;

DROP PROCEDURE IF EXISTS SelectAllPermisos;
CREATE PROCEDURE SelectAllPermisos()
	SELECT * FROM permisos;

DROP PROCEDURE IF EXISTS SelectAllUsuarios;
CREATE PROCEDURE SelectAllUsuarios()
	SELECT * FROM usuarios;

DROP PROCEDURE IF EXISTS SelectAllVentas;
CREATE PROCEDURE SelectAllVentas()
	SELECT * FROM ventas;

DROP PROCEDURE IF EXISTS SelectClienteEspecifico;
CREATE PROCEDURE SelectClienteEspecifico(id INT)
	SELECT * FROM `rumbabar`.`clientes` WHERE `ClienteId` = id;


DROP PROCEDURE IF EXISTS SelectCompraEspecifico;
CREATE PROCEDURE SelectCompraEspecifico(id INT)
	SELECT * FROM `rumbabar`.`compras` WHERE `CompraId` = id;


DROP PROCEDURE IF EXISTS SelectMesaEspecifico;
CREATE PROCEDURE SelectMesaEspecifico(id INT)
	SELECT * FROM `rumbabar`.`mesas` WHERE `MesaId` = id;


DROP PROCEDURE IF EXISTS SelectPermisoEspecifico;
CREATE PROCEDURE SelectPermisoEspecifico(id INT)
	SELECT * FROM `rumbabar`.`permisos` WHERE `PermisoId` = id;


DROP PROCEDURE IF EXISTS SelectProductoEspecifico;
CREATE PROCEDURE SelectProductoEspecifico(id INT)
	SELECT * FROM `rumbabar`.`productos` WHERE `ProductoId` = id;


DROP PROCEDURE IF EXISTS SelectProveedorEspecifico;
CREATE PROCEDURE SelectProveedorEspecifico(id INT)
	SELECT * FROM `rumbabar`.`proveedores` WHERE `ProveedorId` = id;


DROP PROCEDURE IF EXISTS SelectRolEspecifico;
CREATE PROCEDURE SelectRolEspecifico(id INT)
	SELECT * FROM `rumbabar`.`roles` WHERE `RolId` = id;


DROP PROCEDURE IF EXISTS SelectUsuarioEspecifico;
CREATE PROCEDURE SelectUsuarioEspecifico(id INT)
	SELECT * FROM `rumbabar`.`usuarios` WHERE `UsuarioId` = id;


DROP PROCEDURE IF EXISTS SelectVentaEspecifico;
CREATE PROCEDURE SelectVentaEspecifico(id INT)
	SELECT * FROM `rumbabar`.`ventas` WHERE `VentaId` = id;


DROP PROCEDURE IF EXISTS BorrarClienteEspecifico;
CREATE PROCEDURE BorrarClienteEspecifico(id INT)
	DELETE FROM `rumbabar`.`clientes` WHERE `ClienteId` = id;


DROP PROCEDURE IF EXISTS BorrarCompraEspecifico;
CREATE PROCEDURE BorrarCompraEspecifico(id INT)
	DELETE FROM `rumbabar`.`compras` WHERE `CompraId` = id;


DROP PROCEDURE IF EXISTS BorrarMesaEspecifico;
CREATE PROCEDURE BorrarMesaEspecifico(id INT)
	DELETE FROM `rumbabar`.`mesas` WHERE `MesaId` = id;


DROP PROCEDURE IF EXISTS BorrarPermisoEspecifico;
CREATE PROCEDURE BorrarPermisoEspecifico(id INT)
	DELETE FROM `rumbabar`.`permisos` WHERE `PermisoId` = id;


DROP PROCEDURE IF EXISTS BorrarProductoEspecifico;
CREATE PROCEDURE BorrarProductoEspecifico(id INT)
	DELETE FROM `rumbabar`.`productos` WHERE `ProductoId` = id;


DROP PROCEDURE IF EXISTS BorrarProveedorEspecifico;
CREATE PROCEDURE BorrarProveedorEspecifico(id INT)
	DELETE FROM `rumbabar`.`proveedores` WHERE `ProveedorId` = id;


DROP PROCEDURE IF EXISTS BorrarRolEspecifico;
CREATE PROCEDURE BorrarRolEspecifico(id INT)
	DELETE FROM `rumbabar`.`roles` WHERE `RolId` = id;


DROP PROCEDURE IF EXISTS BorrarUsuarioEspecifico;
CREATE PROCEDURE BorrarUsuarioEspecifico(id INT)
	DELETE FROM `rumbabar`.`usuarios` WHERE `UsuarioId` = id;


DROP PROCEDURE IF EXISTS BorrarVentaEspecifico;
CREATE PROCEDURE BorrarVentaEspecifico(id INT)
	DELETE FROM `rumbabar`.`ventas` WHERE `VentaId` = id;


DROP PROCEDURE IF EXISTS SelectAllUsuariosConRoles;
CREATE PROCEDURE SelectAllUsuariosConRoles()
SELECT * FROM `rumbabar`.`usuarios` INNER JOIN `rumbabar`.`roles` ON `usuarios`.`fk_rol` = `roles`.`RolId`;

DROP PROCEDURE IF EXISTS SelectAllRolesConPivot;
CREATE PROCEDURE SelectAllRolesConPivot()
SELECT * FROM `rumbabar`.`roles`, `rumbabar`.`permiso_rol` WHERE `roles`.`RolId`=`permiso_rol`.`fk_rol`;

DROP PROCEDURE IF EXISTS SelectAllRolesConPermisos;
CREATE PROCEDURE SelectAllRolesConPermisos()
SELECT * FROM `rumbabar`.`roles`, `rumbabar`.`permiso_rol`, `rumbabar`.`permisos` WHERE `roles`.`RolId`=`permiso_rol`.`fk_rol` AND `permisos`.`PermisoId`=`permiso_rol`.`fk_permiso`;

DROP PROCEDURE IF EXISTS SelectAllRolesConPermisos2;
CREATE PROCEDURE SelectAllRolesConPermisos2()
SELECT * FROM ((`rumbabar`.`roles` INNER JOIN `rumbabar`.`permiso_rol` ON `roles`.`RolId`=`permiso_rol`.`fk_rol`) INNER JOIN `rumbabar`.`permisos` ON `permisos`.`PermisoId`=`permiso_rol`.`fk_permiso`);

DROP PROCEDURE IF EXISTS SelectAllUsuariosConPermisos;
CREATE PROCEDURE SelectAllUsuariosConPermisos()
SELECT `usuarios`.`UsuarioName`, `permisos`.`PermisoNombre` FROM (`rumbabar`.`usuarios` INNER JOIN `rumbabar`.`permiso_rol` ON `usuarios`.`fk_rol` = `permiso_rol`.`fk_rol`) INNER JOIN `rumbabar`.`permisos` ON `permisos`.`PermisoId` = `permiso_rol`.`fk_permiso`;

DROP PROCEDURE IF EXISTS SelectProductoConProveedor;
CREATE PROCEDURE SelectProductoConProveedor(nombre varchar(255))
SELECT * FROM (SELECT * FROM `rumbabar`.`productos` WHERE `productos`.`ProductoNombre` LIKE concat('%',nombre,'%')) AS `producto` INNER JOIN `rumbabar`.`proveedores` ON `producto`.`fk_proveedor` = `proveedores`.`ProveedorId`;

DROP PROCEDURE IF EXISTS BuscarProductoPorNombre;
CREATE PROCEDURE BuscarProductoPorNombre(nombre varchar(255))
SELECT * FROM `rumbabar`.`productos` WHERE `productos`.`ProductoNombre` LIKE concat('%',nombre,'%');

DROP PROCEDURE IF EXISTS FiltrarVentasPorRangoFechas;
CREATE PROCEDURE FiltrarVentasPorRangoFechas(fechaInicio DATE, fechaFin DATE)
SELECT * FROM `rumbabar`.`ventas` WHERE `ventas`.`updated_at` BETWEEN fechaInicio AND fechaFin;

DROP PROCEDURE IF EXISTS FiltrarVentasPorFecha;
CREATE PROCEDURE FiltrarVentasPorFecha(fecha DATE)
SELECT * FROM `rumbabar`.`ventas` WHERE `ventas`.`updated_at` LIKE concat('%',fecha,'%');

DROP PROCEDURE IF EXISTS SelectVentaConProductos;
CREATE PROCEDURE SelectVentaConProductos(venta INT)
SELECT `ventas`.`VentaId`, `ventas`.`VentaSaldo`, `ventas`.`VentaTotal`, `ventas`.`fk_user`, `ventas`.`fk_mesa`, `ventas`.`fk_cliente`, `productos`.`ProductoId`, `productos`.`ProductoNombre`, `productos`.`ProductoPrecio`, `productos`.`ProductoCantidad` FROM ((`rumbabar`.`ventas` INNER JOIN `rumbabar`.`producto_venta` ON `ventas`.`VentaId`=`producto_venta`.`fk_venta`) INNER JOIN `rumbabar`.`productos` ON `productos`.`ProductoId`=`producto_venta`.`fk_producto`) WHERE `ventas`.`VentaId` = venta;

DELIMITER $$

DROP TRIGGER IF EXISTS auditoria_clientes_create;$$

CREATE TRIGGER auditoria_clientes_create
    AFTER INSERT ON `rumbabar`.`clientes` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_clientes` (
			`auditoria_clientes`.`audi_ClienteId`,
			`auditoria_clientes`.`audi_nuevo_ClienteNombre`,
			`auditoria_clientes`.`audi_nuevo_ClienteDocumento`,
			`auditoria_clientes`.`created_at`,
			`auditoria_clientes`.`audi_usuarios_operacion`
		) VALUES (
				NEW.ClienteId,
				NEW.ClienteNombre,
				NEW.ClienteDocumento,
				NEW.created_at,
				"INSERT"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_clientes_update;$$

CREATE TRIGGER auditoria_clientes_update
    AFTER UPDATE ON `rumbabar`.`clientes` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_clientes` (
			`auditoria_clientes`.`audi_ClienteId`,
			`auditoria_clientes`.`audi_nuevo_ClienteNombre`,
			`auditoria_clientes`.`audi_nuevo_ClienteDocumento`,
			`auditoria_clientes`.`audi_anterior_ClienteNombre`,
			`auditoria_clientes`.`audi_anterior_ClienteDocumento`,
			`auditoria_clientes`.`updated_at`,
			`auditoria_clientes`.`audi_clientes_operacion`
		) VALUES (
				OLD.ClienteId,
				NEW.ClienteNombre,
				NEW.ClienteDocumento,
				OLD.ClienteNombre,
				OLD.ClienteDocumento,
				NEW.updated_at,
				"UPDATE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_clientes_delete;$$

CREATE TRIGGER auditoria_clientes_delete
    AFTER DELETE ON `rumbabar`.`clientes` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_clientes` (
			`auditoria_clientes`.`audi_ClienteId`,
			`auditoria_clientes`.`audi_anterior_ClienteNombre`,
			`auditoria_clientes`.`audi_anterior_ClienteDocumento`,
			`auditoria_clientes`.`updated_at`,
			`auditoria_clientes`.`audi_clientes_operacion`
		) VALUES (
				OLD.ClienteId,
				OLD.ClienteNombre,
				OLD.ClienteDocumento,
				OLD.deleted_at,
				"DELETE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_compra_producto_create;$$

CREATE TRIGGER auditoria_compra_producto_create
    AFTER INSERT ON `rumbabar`.`compra_producto` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_compra_producto` (
			`auditoria_compra_producto`.`audi_nuevo_compraCantidad`,
			`auditoria_compra_producto`.`audi_nuevo_compraSubtotal`,
			`auditoria_compra_producto`.`audi_nuevo_fk_producto`,
			`auditoria_compra_producto`.`audi_nuevo_fk_compra`,
			`auditoria_compra_producto`.`created_at`,
			`auditoria_compra_producto`.`audi_usuarios_operacion`
		) VALUES (
				NEW.compraCantidad,
				NEW.compraSubtotal,
				NEW.fk_producto,
				NEW.fk_compra,
				NEW.created_at,
				"INSERT"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_compra_producto_update;$$

CREATE TRIGGER auditoria_compra_producto_update
    AFTER UPDATE ON `rumbabar`.`compra_producto` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_compra_producto` (
			`auditoria_compra_producto`.`audi_nuevo_compraCantidad`,
			`auditoria_compra_producto`.`audi_nuevo_compraSubtotal`,
			`auditoria_compra_producto`.`audi_nuevo_fk_producto`,
			`auditoria_compra_producto`.`audi_nuevo_fk_compra`,
			`auditoria_compra_producto`.`audi_anterior_compraCantidad`,
			`auditoria_compra_producto`.`audi_anterior_compraSubtotal`,
			`auditoria_compra_producto`.`audi_anterior_fk_producto`,
			`auditoria_compra_producto`.`audi_anterior_fk_compra`,
			`auditoria_compra_producto`.`updated_at`,
			`auditoria_compra_producto`.`audi_compra_producto_operacion`
		) VALUES (
				NEW.compraCantidad,
				NEW.compraSubtotal,
				NEW.fk_producto,
				NEW.fk_compra,
				OLD.compraCantidad,
				OLD.compraSubtotal,
				OLD.fk_producto,
				OLD.fk_compra,
				NEW.updated_at,
				"UPDATE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_compra_producto_delete;$$

CREATE TRIGGER auditoria_compra_producto_delete
    AFTER DELETE ON `rumbabar`.`compra_producto` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_compra_producto` (
			`auditoria_compra_producto`.`audi_anterior_compraCantidad`,
			`auditoria_compra_producto`.`audi_anterior_compraSubtotal`,
			`auditoria_compra_producto`.`audi_anterior_fk_producto`,
			`auditoria_compra_producto`.`audi_anterior_fk_compra`,
			`auditoria_compra_producto`.`updated_at`,
			`auditoria_compra_producto`.`audi_compra_producto_operacion`
		) VALUES (
				OLD.compraCantidad,
				OLD.compraSubtotal,
				OLD.fk_producto,
				OLD.fk_compra,
				OLD.deleted_at,
				"DELETE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_mesas_create;$$

CREATE TRIGGER auditoria_mesas_create
    AFTER INSERT ON `rumbabar`.`mesas` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_mesas` (
			`auditoria_mesas`.`audi_MesaId`,
			`auditoria_mesas`.`audi_nuevo_MesaPuestos`,
			`auditoria_mesas`.`created_at`,
			`auditoria_mesas`.`audi_usuarios_operacion`
		) VALUES (
				NEW.MesaId,
				NEW.MesaPuestos,
				NEW.created_at,
				"INSERT"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_mesas_update;$$

CREATE TRIGGER auditoria_mesas_update
    AFTER UPDATE ON `rumbabar`.`mesas` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_mesas` (
			`auditoria_mesas`.`audi_MesaId`,
			`auditoria_mesas`.`audi_nuevo_MesaPuestos`,
			`auditoria_mesas`.`audi_anterior_MesaPuestos`,
			`auditoria_mesas`.`updated_at`,
			`auditoria_mesas`.`audi_mesas_operacion`
		) VALUES (
				OLD.MesaId,
				NEW.MesaPuestos,
				OLD.MesaPuestos,
				NEW.updated_at,
				"UPDATE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_mesas_delete;$$

CREATE TRIGGER auditoria_mesas_delete
    AFTER DELETE ON `rumbabar`.`mesas` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_mesas` (
			`auditoria_mesas`.`audi_MesaId`,
			`auditoria_mesas`.`audi_anterior_MesaPuestos`,
			`auditoria_mesas`.`updated_at`,
			`auditoria_mesas`.`audi_mesas_operacion`
		) VALUES (
				OLD.MesaId,
				OLD.MesaPuestos,
				OLD.deleted_at,
				"DELETE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_permisos_create;$$

CREATE TRIGGER auditoria_permisos_create
    AFTER INSERT ON `rumbabar`.`permisos` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_permisos` (
			`auditoria_permisos`.`audi_PermisoId`,
			`auditoria_permisos`.`audi_nuevo_PermisoNombre`,
			`auditoria_permisos`.`created_at`,
			`auditoria_permisos`.`audi_usuarios_operacion`
		) VALUES (
				NEW.PermisoId,
				NEW.PermisoNombre,
				NEW.created_at,
				"INSERT"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_permisos_update;$$

CREATE TRIGGER auditoria_permisos_update
    AFTER UPDATE ON `rumbabar`.`permisos` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_permisos` (
			`auditoria_permisos`.`audi_PermisoId`,
			`auditoria_permisos`.`audi_nuevo_PermisoNombre`,
			`auditoria_permisos`.`audi_anterior_PermisoNombre`,
			`auditoria_permisos`.`updated_at`,
			`auditoria_permisos`.`audi_permisos_operacion`
		) VALUES (
				OLD.PermisoId,
				NEW.PermisoNombre,
				OLD.PermisoNombre,
				NEW.updated_at,
				"UPDATE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_permisos_delete;$$

CREATE TRIGGER auditoria_permisos_delete
    AFTER DELETE ON `rumbabar`.`permisos` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_permisos` (
			`auditoria_permisos`.`audi_PermisoId`,
			`auditoria_permisos`.`audi_anterior_PermisoNombre`,
			`auditoria_permisos`.`updated_at`,
			`auditoria_permisos`.`audi_permisos_operacion`
		) VALUES (
				OLD.PermisoId,
				OLD.PermisoNombre,
				OLD.deleted_at,
				"DELETE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_permiso_rol_create;$$

CREATE TRIGGER auditoria_permiso_rol_create
    AFTER INSERT ON `rumbabar`.`permiso_rol` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_permiso_rol` (
			`auditoria_permiso_rol`.`audi_nuevo_fk_permiso`,
			`auditoria_permiso_rol`.`audi_nuevo_fk_rol`,
			`auditoria_permiso_rol`.`created_at`,
			`auditoria_permiso_rol`.`audi_usuarios_operacion`
		) VALUES (
				NEW.fk_permiso,
				NEW.fk_rol,
				NEW.created_at,
				"INSERT"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_permiso_rol_update;$$

CREATE TRIGGER auditoria_permiso_rol_update
    AFTER UPDATE ON `rumbabar`.`permiso_rol` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_permiso_rol` (
			`auditoria_permiso_rol`.`audi_nuevo_fk_permiso`,
			`auditoria_permiso_rol`.`audi_nuevo_fk_rol`,
			`auditoria_permiso_rol`.`audi_anterior_fk_permiso`,
			`auditoria_permiso_rol`.`audi_anterior_fk_rol`,
			`auditoria_permiso_rol`.`updated_at`,
			`auditoria_permiso_rol`.`audi_permiso_rol_operacion`
		) VALUES (
				NEW.fk_permiso,
				NEW.fk_rol,
				OLD.fk_permiso,
				OLD.fk_rol,
				NEW.updated_at,
				"UPDATE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_permiso_rol_delete;$$

CREATE TRIGGER auditoria_permiso_rol_delete
    AFTER DELETE ON `rumbabar`.`permiso_rol` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_permiso_rol` (
			`auditoria_permiso_rol`.`audi_anterior_fk_permiso`,
			`auditoria_permiso_rol`.`audi_anterior_fk_rol`,
			`auditoria_permiso_rol`.`updated_at`,
			`auditoria_permiso_rol`.`audi_permiso_rol_operacion`
		) VALUES (
				OLD.fk_permiso,
				OLD.fk_rol,
				OLD.deleted_at,
				"DELETE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_productos_create;$$

CREATE TRIGGER auditoria_productos_create
    AFTER INSERT ON `rumbabar`.`productos` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_productos` (
			`auditoria_productos`.`audi_nuevo_ProductoNombre`,
			`auditoria_productos`.`audi_nuevo_ProductoDescripcion`,
			`auditoria_productos`.`audi_nuevo_ProductoPrecio`,
			`auditoria_productos`.`audi_nuevo_ProductoCantidad`,
			`auditoria_productos`.`audi_nuevo_fk_proveedor`,
			`auditoria_productos`.`created_at`,
			`auditoria_productos`.`audi_usuarios_operacion`
		) VALUES (
				NEW.ProductoNombre,
				NEW.ProductoDescripcion,
				NEW.ProductoPrecio,
				NEW.ProductoCantidad,
				NEW.fk_proveedor,
				NEW.created_at,
				"INSERT"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_productos_update;$$

CREATE TRIGGER auditoria_productos_update
    AFTER UPDATE ON `rumbabar`.`productos` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_productos` (
			`auditoria_productos`.`audi_nuevo_ProductoNombre`,
			`auditoria_productos`.`audi_nuevo_ProductoDescripcion`,
			`auditoria_productos`.`audi_nuevo_ProductoPrecio`,
			`auditoria_productos`.`audi_nuevo_ProductoCantidad`,
			`auditoria_productos`.`audi_nuevo_fk_proveedor`,
			`auditoria_productos`.`audi_anterior_ProductoNombre`,
			`auditoria_productos`.`audi_anterior_ProductoDescripcion`,
			`auditoria_productos`.`audi_anterior_ProductoPrecio`,
			`auditoria_productos`.`audi_anterior_ProductoCantidad`,
			`auditoria_productos`.`audi_anterior_fk_proveedor`,
			`auditoria_productos`.`updated_at`,
			`auditoria_productos`.`audi_productos_operacion`
		) VALUES (
				NEW.ProductoNombre,
				NEW.ProductoDescripcion,
				NEW.ProductoPrecio,
				NEW.ProductoCantidad,
				NEW.fk_proveedor,
				OLD.ProductoNombre,
				OLD.ProductoDescripcion,
				OLD.ProductoPrecio,
				OLD.ProductoCantidad,
				OLD.fk_proveedor,
				NEW.updated_at,
				"UPDATE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_productos_delete;$$

CREATE TRIGGER auditoria_productos_delete
    AFTER DELETE ON `rumbabar`.`productos` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_productos` (
			`auditoria_productos`.`audi_anterior_ProductoNombre`,
			`auditoria_productos`.`audi_anterior_ProductoDescripcion`,
			`auditoria_productos`.`audi_anterior_ProductoPrecio`,
			`auditoria_productos`.`audi_anterior_ProductoCantidad`,
			`auditoria_productos`.`audi_anterior_fk_proveedor`,
			`auditoria_productos`.`updated_at`,
			`auditoria_productos`.`audi_productos_operacion`
		) VALUES (
				OLD.ProductoNombre,
				OLD.ProductoDescripcion,
				OLD.ProductoPrecio,
				OLD.ProductoCantidad,
				OLD.fk_proveedor,
				OLD.deleted_at,
				"DELETE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_producto_venta_create;$$

CREATE TRIGGER auditoria_producto_venta_create
    AFTER INSERT ON `rumbabar`.`producto_venta` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_producto_venta` (
			`auditoria_producto_venta`.`audi_nuevo_ventaCantidad`,
			`auditoria_producto_venta`.`audi_nuevo_ventaSubtotal`,
			`auditoria_producto_venta`.`audi_nuevo_fk_producto`,
			`auditoria_producto_venta`.`audi_nuevo_fk_venta`,
			`auditoria_producto_venta`.`created_at`,
			`auditoria_producto_venta`.`audi_usuarios_operacion`
		) VALUES (
				NEW.ventaCantidad,
				NEW.ventaSubtotal,
				NEW.fk_producto,
				NEW.fk_venta,
				NEW.created_at,
				"INSERT"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_producto_venta_update;$$

CREATE TRIGGER auditoria_producto_venta_update
    AFTER UPDATE ON `rumbabar`.`producto_venta` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_producto_venta` (
			`auditoria_producto_venta`.`audi_nuevo_ventaCantidad`,
			`auditoria_producto_venta`.`audi_nuevo_ventaSubtotal`,
			`auditoria_producto_venta`.`audi_nuevo_fk_producto`,
			`auditoria_producto_venta`.`audi_nuevo_fk_venta`,
			`auditoria_producto_venta`.`audi_anterior_ventaCantidad`,
			`auditoria_producto_venta`.`audi_anterior_ventaSubtotal`,
			`auditoria_producto_venta`.`audi_anterior_fk_producto`,
			`auditoria_producto_venta`.`audi_anterior_fk_venta`,
			`auditoria_producto_venta`.`updated_at`,
			`auditoria_producto_venta`.`audi_producto_venta_operacion`
		) VALUES (
				NEW.ventaCantidad,
				NEW.ventaSubtotal,
				NEW.fk_producto,
				NEW.fk_venta,
				OLD.ventaCantidad,
				OLD.ventaSubtotal,
				OLD.fk_producto,
				OLD.fk_venta,
				NEW.updated_at,
				"UPDATE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_producto_venta_delete;$$

CREATE TRIGGER auditoria_producto_venta_delete
    AFTER DELETE ON `rumbabar`.`producto_venta` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_producto_venta` (
			`auditoria_producto_venta`.`audi_anterior_ventaCantidad`,
			`auditoria_producto_venta`.`audi_anterior_ventaSubtotal`,
			`auditoria_producto_venta`.`audi_anterior_fk_producto`,
			`auditoria_producto_venta`.`audi_anterior_fk_venta`,
			`auditoria_producto_venta`.`updated_at`,
			`auditoria_producto_venta`.`audi_producto_venta_operacion`
		) VALUES (
				OLD.ventaCantidad,
				OLD.ventaSubtotal,
				OLD.fk_producto,
				OLD.fk_venta,
				OLD.deleted_at,
				"DELETE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_proveedores_create;$$

CREATE TRIGGER auditoria_proveedores_create
    AFTER INSERT ON `rumbabar`.`proveedores` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_proveedores` (
			`auditoria_proveedores`.`audi_ProveedorID`,
			`auditoria_proveedores`.`audi_nuevo_ProveedorNombre`,
			`auditoria_proveedores`.`audi_nuevo_ProveedorNit`,
			`auditoria_proveedores`.`created_at`,
			`auditoria_proveedores`.`audi_usuarios_operacion`
		) VALUES (
				NEW.ProveedorId,
				NEW.ProveedorNombre,
				NEW.ProveedorNit,
				NEW.created_at,
				"INSERT"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_proveedores_update;$$

CREATE TRIGGER auditoria_proveedores_update
    AFTER UPDATE ON `rumbabar`.`proveedores` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_proveedores` (
			`auditoria_proveedores`.`audi_ProveedorID`,
			`auditoria_proveedores`.`audi_nuevo_ProveedorNombre`,
			`auditoria_proveedores`.`audi_nuevo_ProveedorNit`,
			`auditoria_proveedores`.`audi_anterior_ProveedorNombre`,
			`auditoria_proveedores`.`audi_anterior_ProveedorNit`,
			`auditoria_proveedores`.`updated_at`,
			`auditoria_proveedores`.`audi_proveedores_operacion`
		) VALUES (
				OLD.ProveedorId,
				NEW.ProveedorNombre,
				NEW.ProveedorNit,
				OLD.ProveedorNombre,
				OLD.ProveedorNit,
				NEW.updated_at,
				"UPDATE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_proveedores_delete;$$

CREATE TRIGGER auditoria_proveedores_delete
    AFTER DELETE ON `rumbabar`.`proveedores` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_proveedores` (
			`auditoria_proveedores`.`audi_ProveedorID`,
			`auditoria_proveedores`.`audi_anterior_ProveedorNombre`,
			`auditoria_proveedores`.`audi_anterior_ProveedorNit`,
			`auditoria_proveedores`.`updated_at`,
			`auditoria_proveedores`.`audi_proveedores_operacion`
		) VALUES (
				OLD.ProveedorId,
				OLD.ProveedorNombre,
				OLD.ProveedorNit,
				OLD.deleted_at,
				"DELETE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_roles_create;$$

CREATE TRIGGER auditoria_roles_create
    AFTER INSERT ON `rumbabar`.`roles` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_roles` (
			`auditoria_roles`.`audi_RolId`,
			`auditoria_roles`.`audi_nuevo_RolNombre`,
			`auditoria_roles`.`created_at`,
			`auditoria_roles`.`audi_usuarios_operacion`
		) VALUES (
				NEW.RolId,
				NEW.RolNombre,
				NEW.created_at,
				"INSERT"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_roles_update;$$

CREATE TRIGGER auditoria_roles_update
    AFTER UPDATE ON `rumbabar`.`roles` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_roles` (
			`auditoria_roles`.`audi_RolId`,
			`auditoria_roles`.`audi_nuevo_RolNombre`,
			`auditoria_roles`.`audi_anterior_RolNombre`,
			`auditoria_roles`.`updated_at`,
			`auditoria_roles`.`audi_roles_operacion`
		) VALUES (
				OLD.RolId,
				NEW.RolNombre,
				OLD.RolNombre,
				NEW.updated_at,
				"UPDATE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_roles_delete;$$

CREATE TRIGGER auditoria_roles_delete
    AFTER DELETE ON `rumbabar`.`roles` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_roles` (
			`auditoria_roles`.`audi_RolId`,
			`auditoria_roles`.`audi_anterior_RolNombre`,
			`auditoria_roles`.`updated_at`,
			`auditoria_roles`.`audi_roles_operacion`
		) VALUES (
				OLD.RolId,
				OLD.RolNombre,
				OLD.deleted_at,
				"DELETE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_usuarios_create;$$

CREATE TRIGGER auditoria_usuarios_create
    AFTER INSERT ON `rumbabar`.`usuarios` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_usuarios` (
			`auditoria_usuarios`.`audi_UsuarioId`,
			`auditoria_usuarios`.`audi_nuevo_UsuarioName`,
			`auditoria_usuarios`.`audi_nuevo_UsuarioEmail`,
			`auditoria_usuarios`.`audi_nuevo_UsuarioPassword`,
			`auditoria_usuarios`.`audi_nuevo_fk_rol`,
			`auditoria_usuarios`.`created_at`,
			`auditoria_usuarios`.`audi_usuarios_operacion`
		) VALUES (
				NEW.UsuarioId,
				NEW.UsuarioName,
				NEW.UsuarioEmail,
				NEW.UsuarioPassword,
				NEW.fk_rol,
				NEW.created_at,
				"INSERT"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_usuarios_update;$$

CREATE TRIGGER auditoria_usuarios_update
    AFTER UPDATE ON `rumbabar`.`usuarios` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_usuarios` (
			`auditoria_usuarios`.`audi_UsuarioId`,
			`auditoria_usuarios`.`audi_nuevo_UsuarioName`,
			`auditoria_usuarios`.`audi_nuevo_UsuarioEmail`,
			`auditoria_usuarios`.`audi_nuevo_UsuarioPassword`,
			`auditoria_usuarios`.`audi_nuevo_fk_rol`,
			`auditoria_usuarios`.`audi_anterior_UsuarioName`,
			`auditoria_usuarios`.`audi_anterior_UsuarioEmail`,
			`auditoria_usuarios`.`audi_anterior_UsuarioPassword`,
			`auditoria_usuarios`.`audi_anterior_fk_rol`,
			`auditoria_usuarios`.`updated_at`,
			`auditoria_usuarios`.`audi_usuarios_operacion`
		) VALUES (
				OLD.UsuarioId,
				NEW.UsuarioName,
				NEW.UsuarioEmail,
				NEW.UsuarioPassword,
				NEW.fk_rol,
				OLD.UsuarioName,
				OLD.UsuarioEmail,
				OLD.UsuarioPassword,
				OLD.fk_rol,
				NEW.updated_at,
				"UPDATE"
			);
    END;$$

DROP TRIGGER IF EXISTS auditoria_usuarios_delete;$$

CREATE TRIGGER auditoria_usuarios_delete
    AFTER DELETE ON `rumbabar`.`usuarios` FOR EACH ROW
    BEGIN
		INSERT INTO `rumbabar`.`auditoria_usuarios` (
			`auditoria_usuarios`.`audi_UsuarioId`,
			`auditoria_usuarios`.`audi_anterior_RolNombre`,
			`auditoria_usuarios`.`updated_at`,
			`auditoria_usuarios`.`audi_usuarios_operacion`
		) VALUES (
				OLD.UsuarioId,
				OLD.UsuarioName,
				OLD.UsuarioEmail,
				OLD.UsuarioPassword,
				OLD.fk_rol,
				OLD.deleted_at,
				"DELETE"
			);
    END;$$


DELIMITER ;