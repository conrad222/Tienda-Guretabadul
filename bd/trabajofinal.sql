-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.18 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para trabajofinal
CREATE DATABASE IF NOT EXISTS `trabajofinal` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trabajofinal`;

-- Volcando estructura para tabla trabajofinal.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_curso` bigint(20) unsigned DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla trabajofinal.cursos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`id`, `id_curso`, `nombre`) VALUES
	(1, 1, '1DAW'),
	(2, 2, '2DAW');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

-- Volcando estructura para tabla trabajofinal.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla trabajofinal.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla trabajofinal.mensajes
CREATE TABLE IF NOT EXISTS `mensajes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `titulo_mensaje` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenido` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mensajes_user_id_foreign` (`user_id`),
  KEY `user_name` (`user_name`),
  CONSTRAINT `mensajes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_name` FOREIGN KEY (`user_name`) REFERENCES `users` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla trabajofinal.mensajes: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
INSERT INTO `mensajes` (`id`, `titulo_mensaje`, `contenido`, `likes`, `user_id`, `created_at`, `updated_at`, `user_name`) VALUES
	(1, 'asdf', 'asdfasdfdsafadsfsadfdsafsdafsadfasdfsdafsdafasdfdsafasdfsadfsadfasdfasdfsadfsdaf', 0, 10, '2022-02-18 18:11:52', '2022-02-18 18:11:53', NULL),
	(2, 'asdfasd', 'a', 0, 16, '2022-02-18 18:11:54', '2022-02-18 18:11:54', NULL),
	(8, 'asdf', 'asdf', 0, NULL, NULL, NULL, NULL),
	(9, 'adsf', 'asdf', 0, NULL, NULL, NULL, NULL),
	(43, 'a', 'a', 0, NULL, NULL, NULL, NULL),
	(44, 'asdf', 'asdf', 0, NULL, NULL, NULL, NULL),
	(63, 'A', 'A', 0, NULL, NULL, NULL, NULL),
	(64, 'A', 'A', 0, NULL, NULL, NULL, NULL),
	(83, 'A', 'A', 0, NULL, NULL, NULL, NULL),
	(84, 'F', 'F', 0, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;

-- Volcando estructura para tabla trabajofinal.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla trabajofinal.migrations: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2014_10_12_000000_create_users_table', 2),
	(6, '2022_02_16_124046_create_mensajes_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla trabajofinal.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla trabajofinal.personal_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla trabajofinal.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NombreRol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla trabajofinal.roles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `NombreRol`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2022-02-16 09:16:02', '2022-02-16 09:16:02'),
	(2, 'cliente', '2022-02-16 09:16:11', '2022-02-16 09:16:11');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla trabajofinal.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `curso_id` bigint(20) unsigned DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) unsigned DEFAULT '2',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `name` (`name`),
  KEY `users_curso_id_foreign` (`curso_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla trabajofinal.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `curso_id`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
	(8, 'm', 'm@gmail.com', NULL, NULL, '$2y$10$1rJ4ZnLt1//YOvIeeaetD.cQi1I7ZRx2yZFpBJHVWivTxlWSXkG/u', NULL, '2022-02-16 19:10:39', '2022-02-16 19:10:39', 2),
	(10, 'z', 'z@gmail.com', NULL, NULL, '$2y$10$dLI3vYd/t.SEnPpzAbfoVu.lr4Vc/7xrGlLxui8aZ1g2g.IheFxZi', NULL, '2022-02-17 09:31:59', '2022-02-17 09:31:59', 1),
	(11, 'we', 'we@gmail.com', NULL, NULL, '$2y$10$38.hQ65Qwp3ijhNeS8KyqO1iBGhhEVWcQyGeWC8Kr1pfmoNNbuFUO', NULL, '2022-02-17 16:35:50', '2022-02-17 16:35:50', 1),
	(14, 'm1', 'm1@gmail.com', NULL, NULL, '$2y$10$oNHCq0Xqmx3wldrYQf2SMuB6K5v/yWd4bKlZ9OM4ZigIMB9KYH4ia', NULL, '2022-02-17 16:51:05', '2022-02-17 16:51:05', 1),
	(16, 'admin', 'admin@gmail.com', NULL, NULL, '$2y$10$SIznPZS6tTZPG6oRAMNYlu6qptWP6bTvuuHNt4DHQsjT5b0dv4QY.', NULL, '2022-02-17 18:53:30', '2022-02-17 18:53:30', 2),
	(17, 'ww', 'ww@gmail.com', NULL, NULL, '$2y$10$zePIX7crq/pmW3b2upLPceL2V38rl8NQUyCa0hTXGcRkgQnX0fkcm', NULL, '2022-02-18 07:13:47', '2022-02-18 07:13:47', 1),
	(18, 'www', 'www@gmail.com', NULL, NULL, '$2y$10$vEUJRr9dpUYVIkge6N6z5uB.MrBqHhkiqkZ5QabapE7pbkLhaqJAm', NULL, '2022-02-18 07:15:11', '2022-02-18 07:15:11', 2),
	(26, 'A', 'A@gmail.com', NULL, NULL, '$2y$10$E5Mx2Ru.IZU.W16pefaKMeLDME1x0hc43rZf.c/xCyXWXGqBt32gK', NULL, '2022-02-19 08:05:27', '2022-02-19 08:05:27', 1),
	(31, 'asdf23', 'asdf223@gmail.com', NULL, NULL, '$2y$10$3FjsSIXEnsxbVz1nFIuKq.OW8cOZ7PO5E/Zd9ot4nsAiSo8ph9ZVu', NULL, '2022-02-19 17:18:40', '2022-02-19 17:18:40', 1),
	(32, 'mm', 'mm@gmail.com', NULL, NULL, '$2y$10$iVJPlmsE/azNQAOodl6zae/S5ZRFqcurzFWNI8X4BWmZgMnvUDaXa', NULL, '2022-02-20 12:24:31', '2022-02-20 12:24:31', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
