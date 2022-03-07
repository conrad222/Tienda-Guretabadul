-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.4.21-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para reto3bd
CREATE DATABASE IF NOT EXISTS `reto3bd` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `reto3bd`;

-- Volcando estructura para tabla reto3bd.actividades
CREATE TABLE IF NOT EXISTS `actividades` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla reto3bd.actividades: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` (`id`, `tipo`, `nombre`, `fecha`, `descripcion`, `precio`) VALUES
	(3, 'COmida', 'Comida', '2022-01-26', 'Comida', 5),
	(4, 'Taller', 'Defensa', '2022-01-26', 'Defensa', 18);
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;

-- Volcando estructura para tabla reto3bd.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `precio` double NOT NULL,
  `plazas` int(4) DEFAULT NULL,
  `imagen` varchar(250) DEFAULT 'default.png',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla reto3bd.cursos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`id`, `tipo`, `nombre`, `fecha`, `descripcion`, `precio`, `plazas`, `imagen`) VALUES
	(1, 'Danzas Vascas', 'Danzas Interculturales', '2022-02-02', 'Danzas', 5, NULL, 'default.png');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

-- Volcando estructura para tabla reto3bd.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla reto3bd.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla reto3bd.idioma
CREATE TABLE IF NOT EXISTS `idioma` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cod` varchar(5) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla reto3bd.idioma: 149 rows
/*!40000 ALTER TABLE `idioma` DISABLE KEYS */;
INSERT INTO `idioma` (`id`, `cod`, `nombre`) VALUES
	(1, 'ar', 'árabe'),
	(2, 'ar_AE', 'árabe [Emiratos Árabes Unidos]'),
	(3, 'ar_BH', 'árabe [Bahráin]'),
	(4, 'ar_DZ', 'árabe [Argelia]'),
	(5, 'ar_EG', 'árabe [Egipto]'),
	(6, 'ar_IQ', 'árabe [Iraq]'),
	(7, 'ar_JO', 'árabe [Jordania]'),
	(8, 'ar_KW', 'árabe [Kuwait]'),
	(9, 'ar_LB', 'árabe [Líbano]'),
	(10, 'ar_LY', 'árabe [Libia]'),
	(11, 'ar_MA', 'árabe [Marruecos]'),
	(12, 'ar_OM', 'árabe [Omán]'),
	(13, 'ar_QA', 'árabe [Qatar]'),
	(14, 'ar_SA', 'árabe [Arabia Saudita]'),
	(15, 'ar_SD', 'árabe [Sudán]'),
	(16, 'ar_SY', 'árabe [Siria]'),
	(17, 'ar_TN', 'árabe [Túnez]'),
	(18, 'ar_YE', 'árabe [Yemen]'),
	(19, 'be', 'bielorruso'),
	(20, 'be_BY', 'bielorruso [Bielorrusia]'),
	(21, 'bg', 'búlgaro'),
	(22, 'bg_BG', 'búlgaro [Bulgaria]'),
	(23, 'ca', 'catalán'),
	(24, 'ca_ES', 'catalán [España]'),
	(25, 'cs', 'checo'),
	(26, 'cs_CZ', 'checo [Chequia]'),
	(27, 'da', 'danés'),
	(28, 'da_DK', 'danés [Dinamarca]'),
	(29, 'de', 'alemán'),
	(30, 'de_AT', 'alemán [Austria]'),
	(31, 'de_CH', 'alemán [Suiza]'),
	(32, 'de_DE', 'alemán [Alemania]'),
	(33, 'de_LU', 'alemán [Luxemburgo]'),
	(34, 'el', 'griego'),
	(35, 'el_CY', 'griego [Chipre]'),
	(36, 'el_GR', 'griego [Grecia]'),
	(37, 'en', 'inglés'),
	(38, 'en_AU', 'inglés [Australia]'),
	(39, 'en_CA', 'inglés [Canadá]'),
	(40, 'en_GB', 'inglés [Reino Unido]'),
	(41, 'en_IE', 'inglés [Irlanda]'),
	(42, 'en_IN', 'inglés [India]'),
	(43, 'en_MT', 'inglés [Malta]'),
	(44, 'en_NZ', 'inglés [Nueva Zelanda]'),
	(45, 'en_PH', 'inglés [Filipinas]'),
	(46, 'en_SG', 'inglés [Singapur]'),
	(47, 'en_US', 'inglés [Estados Unidos]'),
	(48, 'en_ZA', 'inglés [Sudáfrica]'),
	(49, 'es', 'español'),
	(50, 'es_AR', 'español [Argentina]'),
	(51, 'es_BO', 'español [Bolivia]'),
	(52, 'es_CL', 'español [Chile]'),
	(53, 'es_CO', 'español [Colombia]'),
	(54, 'es_CR', 'español [Costa Rica]'),
	(55, 'es_DO', 'español [República Dominicana]'),
	(56, 'es_EC', 'español [Ecuador]'),
	(57, 'es_ES', 'español [España]'),
	(58, 'es_GT', 'español [Guatemala]'),
	(59, 'es_HN', 'español [Honduras]'),
	(60, 'es_MX', 'español [México]'),
	(61, 'es_NI', 'español [Nicaragua]'),
	(62, 'es_PA', 'español [Panamá]'),
	(63, 'es_PE', 'español [Perú]'),
	(64, 'es_PR', 'español [Puerto Rico]'),
	(65, 'es_PY', 'español [Paraguay]'),
	(66, 'es_SV', 'español [El Salvador]'),
	(67, 'es_US', 'español [Estados Unidos]'),
	(68, 'es_UY', 'español [Uruguay]'),
	(69, 'es_VE', 'español [Venezuela]'),
	(70, 'et', 'estonio'),
	(71, 'et_EE', 'estonio [Estonia]'),
	(72, 'fi', 'finés'),
	(73, 'fi_FI', 'finés [Finlandia]'),
	(74, 'fr', 'francés'),
	(75, 'fr_BE', 'francés [Bélgica]'),
	(76, 'fr_CA', 'francés [Canadá]'),
	(77, 'fr_CH', 'francés [Suiza]'),
	(78, 'fr_FR', 'francés [Francia]'),
	(79, 'fr_LU', 'francés [Luxemburgo]'),
	(80, 'ga', 'irlandés'),
	(81, 'ga_IE', 'irlandés [Irlanda]'),
	(82, 'hi_IN', 'hindú [India]'),
	(83, 'hr', 'croata'),
	(84, 'hr_HR', 'croata [Croacia]'),
	(85, 'hu', 'húngaro'),
	(86, 'hu_HU', 'húngaro [Hungría]'),
	(87, 'in', 'indonesio'),
	(88, 'in_ID', 'indonesio [Indonesia]'),
	(89, 'is', 'islandés'),
	(90, 'is_IS', 'islandés [Islandia]'),
	(91, 'it', 'italiano'),
	(92, 'it_CH', 'italiano [Suiza]'),
	(93, 'it_IT', 'italiano [Italia]'),
	(94, 'iw', 'hebreo'),
	(95, 'iw_IL', 'hebreo [Israel]'),
	(96, 'ja', 'japonés'),
	(97, 'ja_JP', 'japonés [Japón]'),
	(99, 'ko', 'coreano'),
	(100, 'ko_KR', 'coreano [Corea del Sur]'),
	(101, 'lt', 'lituano'),
	(102, 'lt_LT', 'lituano [Lituania]'),
	(103, 'lv', 'letón'),
	(104, 'lv_LV', 'letón [Letonia]'),
	(105, 'mk', 'macedonio'),
	(106, 'mk_MK', 'macedonio [Macedonia]'),
	(107, 'ms', 'malayo'),
	(108, 'ms_MY', 'malayo [Malasia]'),
	(109, 'mt', 'maltés'),
	(110, 'mt_MT', 'maltés [Malta]'),
	(111, 'nl', 'neerlandés'),
	(112, 'nl_BE', 'neerlandés [Bélgica]'),
	(113, 'nl_NL', 'neerlandés [Holanda]'),
	(114, 'no', 'noruego'),
	(115, 'no_NO', 'noruego [Noruega]'),
	(117, 'pl', 'polaco'),
	(118, 'pl_PL', 'polaco [Polonia]'),
	(119, 'pt', 'portugués'),
	(120, 'pt_BR', 'portugués [Brasil]'),
	(121, 'pt_PT', 'portugués [Portugal]'),
	(122, 'ro', 'rumano'),
	(123, 'ro_RO', 'rumano [Rumania]'),
	(124, 'ru', 'ruso'),
	(125, 'ru_RU', 'ruso [Rusia]'),
	(126, 'sk', 'eslovaco'),
	(127, 'sk_SK', 'eslovaco [Eslovaquia]'),
	(128, 'sl', 'eslovenio'),
	(129, 'sl_SI', 'eslovenio [Eslovenia]'),
	(130, 'sq', 'albanés'),
	(131, 'sq_AL', 'albanés [Albania]'),
	(132, 'sr', 'serbio'),
	(133, 'sr_BA', 'serbio [Bosnia y Hercegovina]'),
	(134, 'sr_CS', 'serbio [Serbia y Montenegro]'),
	(135, 'sr_ME', 'serbio [Montenegro]'),
	(136, 'sr_RS', 'serbio [Serbia]'),
	(137, 'sv', 'sueco'),
	(138, 'sv_SE', 'sueco [Suecia]'),
	(139, 'th', 'tailandés'),
	(140, 'th_TH', 'tailandés [Tailandia]'),
	(142, 'tr', 'turco'),
	(143, 'tr_TR', 'turco [Turquía]'),
	(144, 'uk', 'ucranio'),
	(145, 'uk_UA', 'ucranio [Ucrania]'),
	(146, 'vi', 'vietnamita'),
	(147, 'vi_VN', 'vietnamita [Vietnam]'),
	(148, 'zh', 'chino'),
	(149, 'zh_CN', 'chino [China]'),
	(150, 'zh_HK', 'chino [Hong Kong]'),
	(151, 'zh_SG', 'chino [Singapur]'),
	(152, 'zh_TW', 'chino [Taiwán]');
/*!40000 ALTER TABLE `idioma` ENABLE KEYS */;

-- Volcando estructura para tabla reto3bd.intercambios
CREATE TABLE IF NOT EXISTS `intercambios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla reto3bd.intercambios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `intercambios` DISABLE KEYS */;
INSERT INTO `intercambios` (`id`, `tipo`, `nombre`, `fecha`, `descripcion`, `precio`) VALUES
	(1, 'Trenzas ', 'Apariencia Cultural', '2022-02-02', 'Intercambios sobre los tipos de belleza', 5);
/*!40000 ALTER TABLE `intercambios` ENABLE KEYS */;

-- Volcando estructura para tabla reto3bd.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla reto3bd.migrations: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2022_01_21_120458_create_comercios_table', 1),
	(5, '2022_01_21_120546_create_productos_table', 1),
	(6, '2022_01_21_120806_create_roles_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla reto3bd.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla reto3bd.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla reto3bd.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nombreP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla reto3bd.productos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `nombreP`, `precio`, `descripcion`, `imagen`) VALUES
	(1, NULL, NULL, 'Pito', 3553546, 'Pito', 'default.png');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla reto3bd.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NombreRol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla reto3bd.roles: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `NombreRol`, `created_at`, `updated_at`) VALUES
	(1, 'admin', NULL, NULL),
	(2, 'cliente', '2022-01-26 13:31:28', NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla reto3bd.tienda
CREATE TABLE IF NOT EXISTS `tienda` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla reto3bd.tienda: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tienda` DISABLE KEYS */;
INSERT INTO `tienda` (`id`, `nombre`, `descripcion`, `fecha`, `precio`) VALUES
	(1, 'eeeee', 'eeeee', '2022-01-26', 30);
/*!40000 ALTER TABLE `tienda` ENABLE KEYS */;

-- Volcando estructura para tabla reto3bd.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_idioma` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `id_rol` (`role_id`) USING BTREE,
  KEY `id` (`id_idioma`) USING BTREE,
  CONSTRAINT `id` FOREIGN KEY (`id_idioma`) REFERENCES `idioma` (`id`),
  CONSTRAINT `id_rol` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla reto3bd.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`, `id_idioma`) VALUES
	(1, 'iker', 'iker.sddg@gmail.com', NULL, '$2y$10$k8NgNcq0o2aQ8pI1y1r/buG02539UJ4XaxWtIKZUGIP4Fr4IKQzFu', 1, NULL, '2022-01-25 11:14:18', '2022-01-25 11:14:18', 0),
	(2, 'iker', 'i@gmail.com', NULL, '$2y$10$OSJVYf2IoSJMATALgKBmWOeuQNv/QVV3ubo4wCHkt0hJG2ZEtzq7a', 2, NULL, '2022-01-28 08:54:48', '2022-01-28 08:54:48', 0),
	(26, 'z', 'z@zz', '2022-02-08 23:41:51', 'z', 1, NULL, '2022-02-08 23:41:54', '2022-02-08 23:41:55', 2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
