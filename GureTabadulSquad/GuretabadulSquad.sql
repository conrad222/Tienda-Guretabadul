-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.18 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla guretabadulsquad.conversacion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `conversacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversacion` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.cursos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`id`, `nombre`, `Fecha_ini`, `Fecha_fin`, `precio`, `capacidad`, `descripcion`, `created_at`, `updated_at`) VALUES
	(1, 'PRUEBA CURSO', '2022-01-31', '2022-02-18', 12.52, '5', 'fddfasdvssdsdfzdfddffdgdfddfs', '2022-02-02 12:06:00', '2022-02-08 18:35:44');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.cursos_usuarios: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cursos_usuarios` DISABLE KEYS */;
INSERT INTO `cursos_usuarios` (`id`, `user_id`, `curso_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2022-02-07 08:35:38', '2022-02-07 08:35:38'),
	(2, 2, 1, NULL, NULL);
/*!40000 ALTER TABLE `cursos_usuarios` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.data_rows: ~98 rows (aproximadamente)
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
	(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
	(2, 1, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
	(3, 1, 'email', 'text', 'Correo Electrónico', 1, 1, 1, 1, 1, 1, '{}', 3),
	(4, 1, 'password', 'password', 'Constraseña', 1, 0, 0, 1, 1, 0, '{}', 4),
	(5, 1, 'remember_token', 'text', 'Token de Recuerdo', 0, 0, 0, 0, 0, 0, '{}', 5),
	(6, 1, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, '{}', 6),
	(7, 1, 'updated_at', 'timestamp', 'Actualizado', 0, 0, 0, 0, 0, 0, '{}', 7),
	(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
	(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Rol', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":"0","taggable":"0"}', 10),
	(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 0, 0, 0, 0, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
	(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
	(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(13, 2, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, NULL, 2),
	(14, 2, 'created_at', 'timestamp', 'Creado', 0, 0, 0, 0, 0, 0, NULL, 3),
	(15, 2, 'updated_at', 'timestamp', 'Actualizado', 0, 0, 0, 0, 0, 0, NULL, 4),
	(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(17, 3, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, NULL, 2),
	(18, 3, 'created_at', 'timestamp', 'Creado', 0, 0, 0, 0, 0, 0, NULL, 3),
	(19, 3, 'updated_at', 'timestamp', 'Actualizado', 0, 0, 0, 0, 0, 0, NULL, 4),
	(20, 3, 'display_name', 'text', 'Nombre a Mostrar', 1, 1, 1, 1, 1, 1, NULL, 5),
	(21, 1, 'role_id', 'text', 'Rol', 0, 1, 1, 1, 1, 1, '{}', 9),
	(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(23, 4, 'Título', 'text', 'Título', 1, 1, 1, 1, 1, 1, '{}', 2),
	(24, 4, 'Fecha_comienzo', 'date', 'Fecha Comienzo', 1, 1, 1, 1, 1, 1, '{}', 3),
	(25, 4, 'Fecha_final', 'date', 'Fecha Final', 1, 1, 1, 1, 1, 1, '{}', 4),
	(26, 4, 'Descripción', 'text_area', 'Descripción', 1, 1, 1, 1, 1, 1, '{}', 5),
	(27, 4, 'Precio', 'number', 'Precio', 1, 1, 1, 1, 1, 1, '{}', 6),
	(28, 4, 'Capacidad', 'number', 'Capacidad', 1, 1, 1, 1, 1, 1, '{}', 7),
	(29, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
	(30, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
	(31, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(32, 5, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
	(33, 5, 'Fecha_ini', 'date', 'Fecha Ini', 1, 1, 1, 1, 1, 1, '{}', 3),
	(34, 5, 'Fecha_fin', 'date', 'Fecha Fin', 1, 1, 1, 1, 1, 1, '{}', 4),
	(35, 5, 'precio', 'number', 'Precio', 1, 1, 1, 1, 1, 1, '{}', 5),
	(36, 5, 'capacidad', 'number', 'Capacidad', 1, 1, 1, 1, 1, 1, '{}', 6),
	(37, 5, 'descripcion', 'text_area', 'Descripcion', 1, 1, 1, 1, 1, 1, '{}', 7),
	(38, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
	(39, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
	(40, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(41, 9, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
	(42, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
	(43, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
	(44, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(45, 10, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
	(46, 10, 'curso_id', 'text', 'Curso Id', 1, 1, 1, 1, 1, 1, '{}', 3),
	(47, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
	(48, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
	(54, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(55, 12, 'ruta', 'image', 'Ruta', 1, 1, 1, 1, 1, 1, '{}', 3),
	(57, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
	(58, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
	(59, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(60, 17, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
	(61, 17, 'descripción', 'text_area', 'Descripción', 1, 1, 1, 1, 1, 1, '{}', 3),
	(62, 17, 'ruta_img_sponsor', 'image', 'Ruta Img Sponsor', 1, 1, 1, 1, 1, 1, '{}', 4),
	(63, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
	(64, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
	(65, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(66, 18, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
	(67, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
	(68, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
	(79, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(80, 21, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
	(81, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
	(82, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
	(83, 1, 'user_belongsto_paise_relationship', 'relationship', 'pais', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Pais","table":"paises","type":"belongsTo","column":"pais_id","key":"id","label":"nombre","pivot_table":"conversacion","pivot":"0","taggable":"0"}', 13),
	(88, 10, 'cursos_usuario_belongsto_curso_relationship', 'relationship', 'cursos', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Curso","table":"cursos","type":"belongsTo","column":"curso_id","key":"id","label":"nombre","pivot_table":"conversacion","pivot":"0","taggable":"0"}', 6),
	(89, 10, 'cursos_usuario_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\User","table":"users","type":"belongsTo","column":"user_id","key":"id","label":"email","pivot_table":"conversacion","pivot":"0","taggable":"0"}', 7),
	(91, 5, 'curso_hasmany_imagenes_curso_relationship', 'relationship', 'imagenes_cursos', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\ImagenesCurso","table":"imagenes_cursos","type":"hasMany","column":"curso_id","key":"id","label":"ruta","pivot_table":"conversacion","pivot":"0","taggable":"0"}', 11),
	(92, 21, 'paise_hasmany_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\User","table":"users","type":"hasMany","column":"pais_id","key":"id","label":"email","pivot_table":"conversacion","pivot":"0","taggable":"0"}', 5),
	(94, 4, 'tallere_hasmany_imagenes_tallere_relationship', 'relationship', 'imagenes_talleres', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\ImagenesTaller","table":"imagenes_talleres","type":"hasMany","column":"taller_id","key":"id","label":"ruta","pivot_table":"conversacion","pivot":"0","taggable":"0"}', 10),
	(99, 12, 'imagenes_tallere_belongsto_tallere_relationship', 'relationship', 'taller', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Taller","table":"talleres","type":"belongsTo","column":"taller_id","key":"id","label":"t\\u00edtulo","pivot_table":"conversacion","pivot":"0","taggable":"0"}', 6),
	(109, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 7),
	(110, 1, 'Fecha_nac', 'text', 'Fecha Nac', 0, 1, 1, 1, 1, 1, '{}', 9),
	(111, 1, 'telefono', 'text', 'Telefono', 0, 1, 1, 1, 1, 1, '{}', 10),
	(112, 1, 'direccion_facturacion', 'text', 'Direccion Facturacion', 0, 1, 1, 1, 1, 1, '{}', 11),
	(113, 1, 'pais_id', 'text', 'Pais Id', 0, 1, 1, 1, 1, 1, '{}', 3),
	(114, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(115, 22, 'ruta', 'image', 'Ruta', 1, 1, 1, 1, 1, 1, '{}', 3),
	(116, 22, 'curso_id', 'text', 'Curso Id', 1, 1, 1, 1, 1, 1, '{}', 2),
	(117, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
	(118, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
	(119, 22, 'imagenes_curso_belongsto_curso_relationship', 'relationship', 'cursos', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Curso","table":"cursos","type":"belongsTo","column":"curso_id","key":"id","label":"nombre","pivot_table":"conversacion","pivot":"0","taggable":"0"}', 6),
	(120, 1, 'user_belongstomany_curso_relationship', 'relationship', 'cursos', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Curso","table":"cursos","type":"belongsToMany","column":"id","key":"id","label":"nombre","pivot_table":"cursos_usuarios","pivot":"1","taggable":"0"}', 14),
	(121, 1, 'user_belongstomany_tallere_relationship', 'relationship', 'talleres', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Taller","table":"talleres","type":"belongsToMany","column":"id","key":"id","label":"t\\u00edtulo","pivot_table":"talleres_usuarios","pivot":"1","taggable":"0"}', 15),
	(122, 5, 'curso_belongstomany_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\User","table":"users","type":"belongsToMany","column":"id","key":"id","label":"email","pivot_table":"cursos_usuarios","pivot":"1","taggable":"0"}', 12),
	(123, 12, 'taller_id', 'text', 'Taller Id', 1, 1, 1, 1, 1, 1, '{}', 2),
	(124, 4, 'tallere_belongstomany_user_relationship', 'relationship', 'usuarios', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\User","table":"users","type":"belongsToMany","column":"id","key":"id","label":"email","pivot_table":"talleres_usuarios","pivot":"1","taggable":"0"}', 11),
	(125, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(126, 23, 'taller_id', 'text', 'Taller Id', 1, 1, 1, 1, 1, 1, '{}', 2),
	(127, 23, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
	(128, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
	(129, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
	(130, 23, 'talleres_usuario_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\User","table":"users","type":"belongsTo","column":"user_id","key":"id","label":"email","pivot_table":"conversacion","pivot":"0","taggable":"0"}', 6),
	(131, 23, 'talleres_usuario_belongsto_tallere_relationship', 'relationship', 'talleres', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Taller","table":"talleres","type":"belongsTo","column":"taller_id","key":"id","label":"t\\u00edtulo","pivot_table":"conversacion","pivot":"0","taggable":"0"}', 7),
	(132, 1, 'user_belongstomany_skill_relationship', 'relationship', 'Conocimientos', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Skills","table":"skills","type":"belongsToMany","column":"id","key":"id","label":"nombre","pivot_table":"skills_usuario","pivot":"1","taggable":"0"}', 16),
	(133, 1, 'user_belongstomany_interese_relationship', 'relationship', 'intereses', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Interes","table":"intereses","type":"belongsToMany","column":"id","key":"id","label":"nombre","pivot_table":"intereses_usuarios","pivot":"1","taggable":"0"}', 17);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.data_types: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'users', 'Usuario', 'Usuarios', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}', '2022-01-27 11:44:24', '2022-02-08 19:37:09'),
	(2, 'menus', 'menus', 'Menú', 'Menús', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-01-27 11:44:25', '2022-01-27 11:44:25'),
	(3, 'roles', 'roles', 'Rol', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-01-27 11:44:25', '2022-01-27 11:44:25'),
	(4, 'talleres', 'talleres', 'Taller', 'Talleres', 'voyager-milestone', 'App\\Models\\Taller', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-01-27 11:48:01', '2022-02-08 19:21:38'),
	(5, 'cursos', 'cursos', 'Curso', 'Cursos', 'voyager-study', 'App\\Models\\Curso', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-01-27 11:48:16', '2022-02-08 18:36:45'),
	(9, 'skills', 'skills', 'Skill', 'Skills', 'voyager-wand', 'App\\Models\\Skills', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-01-27 11:49:39', '2022-02-01 12:45:59'),
	(10, 'cursos_usuarios', 'cursos-usuarios', 'Cursos Usuario', 'Cursos Usuarios', NULL, 'App\\Models\\CursosUsuario', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-01-27 11:49:52', '2022-02-08 19:19:55'),
	(12, 'imagenes_talleres', 'imagenes-talleres', 'Imagenes Taller', 'Imagenes Talleres', NULL, 'App\\Models\\ImagenesTaller', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-01-27 11:50:21', '2022-02-08 19:25:38'),
	(16, 'matchs', 'matchs', 'Match', 'Matches', 'voyager-bubble-hear', 'App\\Models\\Match', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-01-27 11:53:15', '2022-01-28 07:42:41'),
	(17, 'sponsor', 'sponsor', 'Sponsor', 'Sponsors', 'voyager-dollar', 'App\\Models\\Sponsor', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-01-27 11:53:38', '2022-02-08 07:56:41'),
	(18, 'intereses', 'intereses', 'Interes', 'Intereses', 'voyager-search', 'App\\Models\\Interes', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-01-27 11:54:13', '2022-02-01 12:46:20'),
	(21, 'paises', 'paises', 'Pais', 'Paises', 'voyager-thumb-tack', 'App\\Models\\Pais', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-01-27 11:55:05', '2022-02-04 08:32:17'),
	(22, 'imagenes_cursos', 'imagenes-cursos', 'Imagenes Curso', 'Imagenes Cursos', NULL, 'App\\Models\\ImagenesCurso', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-02-01 12:35:16', '2022-02-02 12:09:06'),
	(23, 'talleres_usuarios', 'talleres-usuarios', 'Talleres Usuario', 'Talleres Usuarios', NULL, 'App\\Models\\TalleresUsuario', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-02-08 18:40:13', '2022-02-08 18:41:45');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.imagenes_cursos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `imagenes_cursos` DISABLE KEYS */;
INSERT INTO `imagenes_cursos` (`id`, `ruta`, `curso_id`, `created_at`, `updated_at`) VALUES
	(1, 'imagenes-cursos\\February2022\\kgbmIkbT9vRJvJTKCoFj.jpg', 1, '2022-02-02 12:09:49', '2022-02-02 12:09:49');
/*!40000 ALTER TABLE `imagenes_cursos` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.imagenes_talleres: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `imagenes_talleres` DISABLE KEYS */;
INSERT INTO `imagenes_talleres` (`id`, `ruta`, `taller_id`, `created_at`, `updated_at`) VALUES
	(1, 'imagenes-talleres\\February2022\\wOarjQWr5nlEvYCFzG5Q.jpg', 1, '2022-02-02 09:54:00', '2022-02-02 08:55:14');
/*!40000 ALTER TABLE `imagenes_talleres` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.intereses: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `intereses` DISABLE KEYS */;
INSERT INTO `intereses` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, 'Poker', NULL, NULL),
	(2, 'Cocina oriental', NULL, NULL),
	(3, 'Manga', NULL, NULL),
	(4, 'Danza', NULL, NULL),
	(5, 'a', '2022-03-07 12:00:22', '2022-03-07 12:00:22');
/*!40000 ALTER TABLE `intereses` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.intereses_usuarios: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `intereses_usuarios` DISABLE KEYS */;
INSERT INTO `intereses_usuarios` (`id`, `user_id`, `interes_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 3, NULL, NULL),
	(2, 1, 1, NULL, NULL),
	(3, 1, 4, NULL, NULL),
	(4, 1, 2, NULL, NULL),
	(5, 3, 5, NULL, NULL);
/*!40000 ALTER TABLE `intereses_usuarios` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.matchs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `matchs` DISABLE KEYS */;
INSERT INTO `matchs` (`id`, `nombre`, `realizado`, `direccion`, `Fecha_encuentro`, `user1_id`, `user2_id`, `created_at`, `updated_at`) VALUES
	(4, 'Jorge Andre', NULL, '48991', '2022-02-24', 2, 1, '2022-02-09 17:45:47', '2022-02-09 17:45:47'),
	(6, 'nnnn', NULL, 'pppp', '2022-04-08', 3, 4, '2022-04-11 08:56:12', '2022-04-11 08:56:12');
/*!40000 ALTER TABLE `matchs` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.menus: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2022-01-27 11:44:27', '2022-01-27 11:44:27');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.menu_items: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
	(2, 1, 'Multimedia', '', '_self', 'voyager-images', NULL, NULL, 3, '2022-01-27 11:44:27', '2022-04-04 10:17:52', 'voyager.media.index', NULL),
	(3, 1, 'Usuarios', '', '_self', 'voyager-person', NULL, NULL, 2, '2022-01-27 11:44:27', '2022-04-04 10:17:52', 'voyager.users.index', NULL),
	(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 1, '2022-01-27 11:44:27', '2022-04-04 10:17:52', 'voyager.roles.index', NULL),
	(5, 1, 'Herramientas', '', '_self', 'voyager-tools', NULL, NULL, 12, '2022-01-27 11:44:27', '2022-04-04 10:19:07', NULL, NULL),
	(6, 1, 'Diseñador de Menús', '', '_self', 'voyager-list', NULL, 5, 1, '2022-01-27 11:44:27', '2022-01-28 09:03:47', 'voyager.menus.index', NULL),
	(7, 1, 'Base de Datos', '', '_self', 'voyager-data', NULL, 5, 2, '2022-01-27 11:44:27', '2022-01-28 09:03:47', 'voyager.database.index', NULL),
	(8, 1, 'Compás', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-01-27 11:44:27', '2022-01-28 09:03:47', 'voyager.compass.index', NULL),
	(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-01-27 11:44:27', '2022-01-28 09:03:47', 'voyager.bread.index', NULL),
	(10, 1, 'Parámetros', '', '_self', 'voyager-settings', NULL, NULL, 10, '2022-01-27 11:44:27', '2022-04-04 10:19:01', 'voyager.settings.index', NULL),
	(11, 1, 'Talleres', '', '_self', NULL, '#000000', 26, 1, '2022-01-27 11:48:02', '2022-01-28 10:03:55', 'voyager.talleres.index', 'null'),
	(12, 1, 'Cursos', '', '_self', NULL, '#000000', 25, 1, '2022-01-27 11:48:16', '2022-01-28 09:59:11', 'voyager.cursos.index', 'null'),
	(14, 1, 'Habilidades', '', '_self', NULL, '#000000', 24, 1, '2022-01-27 11:49:39', '2022-01-28 10:00:03', 'voyager.skills.index', 'null'),
	(15, 1, 'Cursos Usuarios', '', '_self', NULL, NULL, 25, 3, '2022-01-27 11:49:53', '2022-02-04 08:39:12', 'voyager.cursos-usuarios.index', NULL),
	(17, 1, 'Imagenes Talleres', '', '_self', NULL, NULL, 26, 2, '2022-01-27 11:50:22', '2022-02-04 08:43:47', 'voyager.imagenes-talleres.index', NULL),
	(18, 1, 'Matches', 'matches', '_self', 'voyager-people', '#ff0033', NULL, 7, '2022-01-27 11:50:45', '2022-04-04 10:19:01', NULL, ''),
	(19, 1, 'Sponsors', '', '_self', 'voyager-dollar', '#99c421', NULL, 8, '2022-01-27 11:53:38', '2022-04-04 10:19:01', 'voyager.sponsor.index', 'null'),
	(20, 1, 'Intereses', '', '_self', NULL, '#000000', 27, 1, '2022-01-27 11:54:14', '2022-01-28 10:03:12', 'voyager.intereses.index', 'null'),
	(24, 1, 'Skills', '', '_self', 'voyager-star', '#fbff00', NULL, 6, '2022-01-28 09:50:28', '2022-04-04 10:19:01', NULL, ''),
	(25, 1, 'Cursos', '', '_self', 'voyager-study', '#00fafb', NULL, 5, '2022-01-28 09:56:40', '2022-04-04 10:19:01', NULL, ''),
	(26, 1, 'Talleres', '', '_self', 'voyager-hammer', '#ff9f00', NULL, 4, '2022-01-28 10:00:54', '2022-04-04 10:18:00', NULL, ''),
	(27, 1, 'Intereses', '', '_self', 'voyager-search', '#ffffff', NULL, 9, '2022-01-28 10:02:11', '2022-04-04 10:19:01', NULL, ''),
	(28, 1, 'Imagenes Cursos', '', '_self', NULL, NULL, 25, 2, '2022-02-01 12:35:16', '2022-02-04 08:39:12', 'voyager.imagenes-cursos.index', NULL),
	(29, 1, 'Paises', '/admin/paises', '_self', 'voyager-world', '#0facf0', NULL, 11, '2022-02-04 08:36:06', '2022-04-04 10:19:01', NULL, ''),
	(30, 1, 'Talleres Usuarios', '', '_self', NULL, NULL, 26, 3, '2022-02-08 18:40:13', '2022-02-08 19:18:24', 'voyager.talleres-usuarios.index', NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.migrations: ~38 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2013_01_25_072032_create_paises_table', 1),
	(2, '2014_10_12_000000_create_users_table', 1),
	(3, '2014_10_12_100000_create_password_resets_table', 1),
	(4, '2016_01_01_000000_add_voyager_user_fields', 1),
	(5, '2016_01_01_000000_create_data_types_table', 1),
	(6, '2016_05_19_173453_create_menu_table', 1),
	(7, '2016_10_21_190000_create_roles_table', 1),
	(8, '2016_10_21_190000_create_settings_table', 1),
	(9, '2016_11_30_135954_create_permission_table', 1),
	(10, '2016_11_30_141208_create_permission_role_table', 1),
	(11, '2016_12_26_201236_data_types__add__server_side', 1),
	(12, '2017_01_13_000000_add_route_to_menu_items_table', 1),
	(13, '2017_01_14_005015_create_translations_table', 1),
	(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
	(15, '2017_03_06_000000_add_controller_to_data_types_table', 1),
	(16, '2017_04_21_000000_add_order_to_data_rows_table', 1),
	(17, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
	(18, '2017_08_05_000000_add_group_to_settings_table', 1),
	(19, '2017_11_26_013050_add_user_role_relationship', 1),
	(20, '2017_11_26_015000_create_user_roles_table', 1),
	(21, '2018_03_11_000000_add_user_settings', 1),
	(22, '2018_03_14_000000_add_details_to_data_types_table', 1),
	(23, '2018_03_16_000000_make_settings_value_nullable', 1),
	(24, '2019_08_19_000000_create_failed_jobs_table', 1),
	(25, '2022_01_21_092236_create_conversacion_table', 1),
	(26, '2022_01_21_094554_create_intereses_table', 1),
	(27, '2022_01_21_094800_create_intereses_usuarios_table', 1),
	(28, '2022_01_21_103731_create_talleres_table', 1),
	(29, '2022_01_21_103754_create_talleres_usuarios_table', 1),
	(30, '2022_01_21_104034_create_imagenes_talleres_table', 1),
	(31, '2022_01_21_104323_create_sponsor_table', 1),
	(32, '2022_01_24_072405_create_skills_table', 1),
	(33, '2022_01_25_072316_create_skills_usuario_table', 1),
	(34, '2022_01_25_091805_create_matchs_table', 1),
	(35, '2022_01_25_114750_create_cursos_table', 1),
	(36, '2022_01_25_114908_create_cursos_usuarios_table', 1),
	(37, '2022_01_27_113223_create_imagenes_curso_table', 2),
	(38, '2022_03_09_075139_create_productos_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.paises: ~240 rows (aproximadamente)
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, 'Afganistán', NULL, NULL),
	(2, 'Islas Gland', NULL, NULL),
	(3, 'Albania', NULL, NULL),
	(4, 'Alemania', NULL, NULL),
	(5, 'Andorra', NULL, NULL),
	(6, 'Angola', NULL, NULL),
	(7, 'Anguilla', NULL, NULL),
	(8, 'Antártida', NULL, NULL),
	(9, 'Antigua y Barbuda', NULL, NULL),
	(10, 'Antillas Holandesas', NULL, NULL),
	(11, 'Arabia Saudí', NULL, NULL),
	(12, 'Argelia', NULL, NULL),
	(13, 'Argentina', NULL, NULL),
	(14, 'Armenia', NULL, NULL),
	(15, 'Aruba', NULL, NULL),
	(16, 'Australia', NULL, NULL),
	(17, 'Austria', NULL, NULL),
	(18, 'Azerbaiyán', NULL, NULL),
	(19, 'Bahamas', NULL, NULL),
	(20, 'Bahréin', NULL, NULL),
	(21, 'Bangladesh', NULL, NULL),
	(22, 'Barbados', NULL, NULL),
	(23, 'Bielorrusia', NULL, NULL),
	(24, 'Bélgica', NULL, NULL),
	(25, 'Belice', NULL, NULL),
	(26, 'Benin', NULL, NULL),
	(27, 'Bermudas', NULL, NULL),
	(28, 'Bhután', NULL, NULL),
	(29, 'Bolivia', NULL, NULL),
	(30, 'Bosnia y Herzegovina', NULL, NULL),
	(31, 'Botsuana', NULL, NULL),
	(32, 'Isla Bouvet', NULL, NULL),
	(33, 'Brasil', NULL, NULL),
	(34, 'Brunéi', NULL, NULL),
	(35, 'Bulgaria', NULL, NULL),
	(36, 'Burkina Faso', NULL, NULL),
	(37, 'Burundi', NULL, NULL),
	(38, 'Cabo Verde', NULL, NULL),
	(39, 'Islas Caimán', NULL, NULL),
	(40, 'Camboya', NULL, NULL),
	(41, 'Camerún', NULL, NULL),
	(42, 'Canadá', NULL, NULL),
	(43, 'República Centroafricana', NULL, NULL),
	(44, 'Chad', NULL, NULL),
	(45, 'República Checa', NULL, NULL),
	(46, 'Chile', NULL, NULL),
	(47, 'China', NULL, NULL),
	(48, 'Chipre', NULL, NULL),
	(49, 'Isla de Navidad', NULL, NULL),
	(50, 'Ciudad del Vaticano', NULL, NULL),
	(51, 'Islas Cocos', NULL, NULL),
	(52, 'Colombia', NULL, NULL),
	(53, 'Comoras', NULL, NULL),
	(54, 'República Democrática del Congo', NULL, NULL),
	(55, 'Congo', NULL, NULL),
	(56, 'Islas Cook', NULL, NULL),
	(57, 'Corea del Norte', NULL, NULL),
	(58, 'Corea del Sur', NULL, NULL),
	(59, 'Costa de Marfil', NULL, NULL),
	(60, 'Costa Rica', NULL, NULL),
	(61, 'Croacia', NULL, NULL),
	(62, 'Cuba', NULL, NULL),
	(63, 'Dinamarca', NULL, NULL),
	(64, 'Dominica', NULL, NULL),
	(65, 'República Dominicana', NULL, NULL),
	(66, 'Ecuador', NULL, NULL),
	(67, 'Egipto', NULL, NULL),
	(68, 'El Salvador', NULL, NULL),
	(69, 'Emiratos Árabes Unidos', NULL, NULL),
	(70, 'Eritrea', NULL, NULL),
	(71, 'Eslovaquia', NULL, NULL),
	(72, 'Eslovenia', NULL, NULL),
	(73, 'España', NULL, NULL),
	(74, 'Islas ultramarinas de Estados Unidos', NULL, NULL),
	(75, 'Estados Unidos', NULL, NULL),
	(76, 'Estonia', NULL, NULL),
	(77, 'Etiopía', NULL, NULL),
	(78, 'Islas Feroe', NULL, NULL),
	(79, 'Filipinas', NULL, NULL),
	(80, 'Finlandia', NULL, NULL),
	(81, 'Fiyi', NULL, NULL),
	(82, 'Francia', NULL, NULL),
	(83, 'Gabón', NULL, NULL),
	(84, 'Gambia', NULL, NULL),
	(85, 'Georgia', NULL, NULL),
	(86, 'Islas Georgias del Sur y Sandwich del Sur', NULL, NULL),
	(87, 'Ghana', NULL, NULL),
	(88, 'Gibraltar', NULL, NULL),
	(89, 'Granada', NULL, NULL),
	(90, 'Grecia', NULL, NULL),
	(91, 'Groenlandia', NULL, NULL),
	(92, 'Guadalupe', NULL, NULL),
	(93, 'Guam', NULL, NULL),
	(94, 'Guatemala', NULL, NULL),
	(95, 'Guayana Francesa', NULL, NULL),
	(96, 'Guinea', NULL, NULL),
	(97, 'Guinea Ecuatorial', NULL, NULL),
	(98, 'Guinea-Bissau', NULL, NULL),
	(99, 'Guyana', NULL, NULL),
	(100, 'Haití', NULL, NULL),
	(101, 'Islas Heard y McDonald', NULL, NULL),
	(102, 'Honduras', NULL, NULL),
	(103, 'Hong Kong', NULL, NULL),
	(104, 'Hungría', NULL, NULL),
	(105, 'India', NULL, NULL),
	(106, 'Indonesia', NULL, NULL),
	(107, 'Irán', NULL, NULL),
	(108, 'Iraq', NULL, NULL),
	(109, 'Irlanda', NULL, NULL),
	(110, 'Islandia', NULL, NULL),
	(111, 'Israel', NULL, NULL),
	(112, 'Italia', NULL, NULL),
	(113, 'Jamaica', NULL, NULL),
	(114, 'Japón', NULL, NULL),
	(115, 'Jordania', NULL, NULL),
	(116, 'Kazajstán', NULL, NULL),
	(117, 'Kenia', NULL, NULL),
	(118, 'Kirguistán', NULL, NULL),
	(119, 'Kiribati', NULL, NULL),
	(120, 'Kuwait', NULL, NULL),
	(121, 'Laos', NULL, NULL),
	(122, 'Lesotho', NULL, NULL),
	(123, 'Letonia', NULL, NULL),
	(124, 'Líbano', NULL, NULL),
	(125, 'Liberia', NULL, NULL),
	(126, 'Libia', NULL, NULL),
	(127, 'Liechtenstein', NULL, NULL),
	(128, 'Lituania', NULL, NULL),
	(129, 'Luxemburgo', NULL, NULL),
	(130, 'Macao', NULL, NULL),
	(131, 'ARY Macedonia', NULL, NULL),
	(132, 'Madagascar', NULL, NULL),
	(133, 'Malasia', NULL, NULL),
	(134, 'Malawi', NULL, NULL),
	(135, 'Maldivas', NULL, NULL),
	(136, 'Malí', NULL, NULL),
	(137, 'Malta', NULL, NULL),
	(138, 'Islas Malvinas', NULL, NULL),
	(139, 'Islas Marianas del Norte', NULL, NULL),
	(140, 'Marruecos', NULL, NULL),
	(141, 'Islas Marshall', NULL, NULL),
	(142, 'Martinica', NULL, NULL),
	(143, 'Mauricio', NULL, NULL),
	(144, 'Mauritania', NULL, NULL),
	(145, 'Mayotte', NULL, NULL),
	(146, 'México', NULL, NULL),
	(147, 'Micronesia', NULL, NULL),
	(148, 'Moldavia', NULL, NULL),
	(149, 'Mónaco', NULL, NULL),
	(150, 'Mongolia', NULL, NULL),
	(151, 'Montserrat', NULL, NULL),
	(152, 'Mozambique', NULL, NULL),
	(153, 'Myanmar', NULL, NULL),
	(154, 'Namibia', NULL, NULL),
	(155, 'Nauru', NULL, NULL),
	(156, 'Nepal', NULL, NULL),
	(157, 'Nicaragua', NULL, NULL),
	(158, 'Níger', NULL, NULL),
	(159, 'Nigeria', NULL, NULL),
	(160, 'Niue', NULL, NULL),
	(161, 'Isla Norfolk', NULL, NULL),
	(162, 'Noruega', NULL, NULL),
	(163, 'Nueva Caledonia', NULL, NULL),
	(164, 'Nueva Zelanda', NULL, NULL),
	(165, 'Omán', NULL, NULL),
	(166, 'Países Bajos', NULL, NULL),
	(167, 'Pakistán', NULL, NULL),
	(168, 'Palau', NULL, NULL),
	(169, 'Palestina', NULL, NULL),
	(170, 'Panamá', NULL, NULL),
	(171, 'Papúa Nueva Guinea', NULL, NULL),
	(172, 'Paraguay', NULL, NULL),
	(173, 'Perú', NULL, NULL),
	(174, 'Islas Pitcairn', NULL, NULL),
	(175, 'Polinesia Francesa', NULL, NULL),
	(176, 'Polonia', NULL, NULL),
	(177, 'Portugal', NULL, NULL),
	(178, 'Puerto Rico', NULL, NULL),
	(179, 'Qatar', NULL, NULL),
	(180, 'Reino Unido', NULL, NULL),
	(181, 'Reunión', NULL, NULL),
	(182, 'Ruanda', NULL, NULL),
	(183, 'Rumania', NULL, NULL),
	(184, 'Rusia', NULL, NULL),
	(185, 'Sahara Occidental', NULL, NULL),
	(186, 'Islas Salomón', NULL, NULL),
	(187, 'Samoa', NULL, NULL),
	(188, 'Samoa Americana', NULL, NULL),
	(189, 'San Cristóbal y Nevis', NULL, NULL),
	(190, 'San Marino', NULL, NULL),
	(191, 'San Pedro y Miquelón', NULL, NULL),
	(192, 'San Vicente y las Granadinas', NULL, NULL),
	(193, 'Santa Helena', NULL, NULL),
	(194, 'Santa Lucía', NULL, NULL),
	(195, 'Santo Tomé y Príncipe', NULL, NULL),
	(196, 'Senegal', NULL, NULL),
	(197, 'Serbia y Montenegro', NULL, NULL),
	(198, 'Seychelles', NULL, NULL),
	(199, 'Sierra Leona', NULL, NULL),
	(200, 'Singapur', NULL, NULL),
	(201, 'Siria', NULL, NULL),
	(202, 'Somalia', NULL, NULL),
	(203, 'Sri Lanka', NULL, NULL),
	(204, 'Suazilandia', NULL, NULL),
	(205, 'Sudáfrica', NULL, NULL),
	(206, 'Sudán', NULL, NULL),
	(207, 'Suecia', NULL, NULL),
	(208, 'Suiza', NULL, NULL),
	(209, 'Surinam', NULL, NULL),
	(210, 'Svalbard y Jan Mayen', NULL, NULL),
	(211, 'Tailandia', NULL, NULL),
	(212, 'Taiwán', NULL, NULL),
	(213, 'Tanzania', NULL, NULL),
	(214, 'Tayikistán', NULL, NULL),
	(215, 'Territorio Británico del Océano Índico', NULL, NULL),
	(216, 'Territorios Australes Franceses', NULL, NULL),
	(217, 'Timor Oriental', NULL, NULL),
	(218, 'Togo', NULL, NULL),
	(219, 'Tokelau', NULL, NULL),
	(220, 'Tonga', NULL, NULL),
	(221, 'Trinidad y Tobago', NULL, NULL),
	(222, 'Túnez', NULL, NULL),
	(223, 'Islas Turcas y Caicos', NULL, NULL),
	(224, 'Turkmenistán', NULL, NULL),
	(225, 'Turquía', NULL, NULL),
	(226, 'Tuvalu', NULL, NULL),
	(227, 'Ucrania', NULL, NULL),
	(228, 'Uganda', NULL, NULL),
	(229, 'Uruguay', NULL, NULL),
	(230, 'Uzbekistán', NULL, NULL),
	(231, 'Vanuatu', NULL, NULL),
	(232, 'Venezuela', NULL, NULL),
	(233, 'Vietnam', NULL, NULL),
	(234, 'Islas Vírgenes Británicas', NULL, NULL),
	(235, 'Islas Vírgenes de los Estados Unidos', NULL, NULL),
	(236, 'Wallis y Futuna', NULL, NULL),
	(237, 'Yemen', NULL, NULL),
	(238, 'Yibuti', NULL, NULL),
	(239, 'Zambia', NULL, NULL),
	(240, 'Zimbabue', NULL, NULL);
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.permissions: ~80 rows (aproximadamente)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
	(1, 'browse_admin', NULL, '2022-01-27 11:44:28', '2022-01-27 11:44:28'),
	(2, 'browse_bread', NULL, '2022-01-27 11:44:28', '2022-01-27 11:44:28'),
	(3, 'browse_database', NULL, '2022-01-27 11:44:28', '2022-01-27 11:44:28'),
	(4, 'browse_media', NULL, '2022-01-27 11:44:28', '2022-01-27 11:44:28'),
	(5, 'browse_compass', NULL, '2022-01-27 11:44:28', '2022-01-27 11:44:28'),
	(6, 'browse_menus', 'menus', '2022-01-27 11:44:28', '2022-01-27 11:44:28'),
	(7, 'read_menus', 'menus', '2022-01-27 11:44:28', '2022-01-27 11:44:28'),
	(8, 'edit_menus', 'menus', '2022-01-27 11:44:28', '2022-01-27 11:44:28'),
	(9, 'add_menus', 'menus', '2022-01-27 11:44:28', '2022-01-27 11:44:28'),
	(10, 'delete_menus', 'menus', '2022-01-27 11:44:29', '2022-01-27 11:44:29'),
	(11, 'browse_roles', 'roles', '2022-01-27 11:44:29', '2022-01-27 11:44:29'),
	(12, 'read_roles', 'roles', '2022-01-27 11:44:29', '2022-01-27 11:44:29'),
	(13, 'edit_roles', 'roles', '2022-01-27 11:44:29', '2022-01-27 11:44:29'),
	(14, 'add_roles', 'roles', '2022-01-27 11:44:29', '2022-01-27 11:44:29'),
	(15, 'delete_roles', 'roles', '2022-01-27 11:44:29', '2022-01-27 11:44:29'),
	(16, 'browse_users', 'users', '2022-01-27 11:44:29', '2022-01-27 11:44:29'),
	(17, 'read_users', 'users', '2022-01-27 11:44:29', '2022-01-27 11:44:29'),
	(18, 'edit_users', 'users', '2022-01-27 11:44:29', '2022-01-27 11:44:29'),
	(19, 'add_users', 'users', '2022-01-27 11:44:29', '2022-01-27 11:44:29'),
	(20, 'delete_users', 'users', '2022-01-27 11:44:29', '2022-01-27 11:44:29'),
	(21, 'browse_settings', 'settings', '2022-01-27 11:44:29', '2022-01-27 11:44:29'),
	(22, 'read_settings', 'settings', '2022-01-27 11:44:30', '2022-01-27 11:44:30'),
	(23, 'edit_settings', 'settings', '2022-01-27 11:44:30', '2022-01-27 11:44:30'),
	(24, 'add_settings', 'settings', '2022-01-27 11:44:30', '2022-01-27 11:44:30'),
	(25, 'delete_settings', 'settings', '2022-01-27 11:44:30', '2022-01-27 11:44:30'),
	(26, 'browse_talleres', 'talleres', '2022-01-27 11:48:01', '2022-01-27 11:48:01'),
	(27, 'read_talleres', 'talleres', '2022-01-27 11:48:01', '2022-01-27 11:48:01'),
	(28, 'edit_talleres', 'talleres', '2022-01-27 11:48:01', '2022-01-27 11:48:01'),
	(29, 'add_talleres', 'talleres', '2022-01-27 11:48:01', '2022-01-27 11:48:01'),
	(30, 'delete_talleres', 'talleres', '2022-01-27 11:48:01', '2022-01-27 11:48:01'),
	(31, 'browse_cursos', 'cursos', '2022-01-27 11:48:16', '2022-01-27 11:48:16'),
	(32, 'read_cursos', 'cursos', '2022-01-27 11:48:16', '2022-01-27 11:48:16'),
	(33, 'edit_cursos', 'cursos', '2022-01-27 11:48:16', '2022-01-27 11:48:16'),
	(34, 'add_cursos', 'cursos', '2022-01-27 11:48:16', '2022-01-27 11:48:16'),
	(35, 'delete_cursos', 'cursos', '2022-01-27 11:48:16', '2022-01-27 11:48:16'),
	(41, 'browse_skills', 'skills', '2022-01-27 11:49:39', '2022-01-27 11:49:39'),
	(42, 'read_skills', 'skills', '2022-01-27 11:49:39', '2022-01-27 11:49:39'),
	(43, 'edit_skills', 'skills', '2022-01-27 11:49:39', '2022-01-27 11:49:39'),
	(44, 'add_skills', 'skills', '2022-01-27 11:49:39', '2022-01-27 11:49:39'),
	(45, 'delete_skills', 'skills', '2022-01-27 11:49:39', '2022-01-27 11:49:39'),
	(46, 'browse_cursos_usuarios', 'cursos_usuarios', '2022-01-27 11:49:53', '2022-01-27 11:49:53'),
	(47, 'read_cursos_usuarios', 'cursos_usuarios', '2022-01-27 11:49:53', '2022-01-27 11:49:53'),
	(48, 'edit_cursos_usuarios', 'cursos_usuarios', '2022-01-27 11:49:53', '2022-01-27 11:49:53'),
	(49, 'add_cursos_usuarios', 'cursos_usuarios', '2022-01-27 11:49:53', '2022-01-27 11:49:53'),
	(50, 'delete_cursos_usuarios', 'cursos_usuarios', '2022-01-27 11:49:53', '2022-01-27 11:49:53'),
	(56, 'browse_imagenes_talleres', 'imagenes_talleres', '2022-01-27 11:50:21', '2022-01-27 11:50:21'),
	(57, 'read_imagenes_talleres', 'imagenes_talleres', '2022-01-27 11:50:21', '2022-01-27 11:50:21'),
	(58, 'edit_imagenes_talleres', 'imagenes_talleres', '2022-01-27 11:50:21', '2022-01-27 11:50:21'),
	(59, 'add_imagenes_talleres', 'imagenes_talleres', '2022-01-27 11:50:21', '2022-01-27 11:50:21'),
	(60, 'delete_imagenes_talleres', 'imagenes_talleres', '2022-01-27 11:50:21', '2022-01-27 11:50:21'),
	(66, 'browse_matchs', 'matchs', '2022-01-27 11:53:15', '2022-01-27 11:53:15'),
	(67, 'read_matchs', 'matchs', '2022-01-27 11:53:15', '2022-01-27 11:53:15'),
	(68, 'edit_matchs', 'matchs', '2022-01-27 11:53:15', '2022-01-27 11:53:15'),
	(69, 'add_matchs', 'matchs', '2022-01-27 11:53:15', '2022-01-27 11:53:15'),
	(70, 'delete_matchs', 'matchs', '2022-01-27 11:53:15', '2022-01-27 11:53:15'),
	(71, 'browse_sponsor', 'sponsor', '2022-01-27 11:53:38', '2022-01-27 11:53:38'),
	(72, 'read_sponsor', 'sponsor', '2022-01-27 11:53:38', '2022-01-27 11:53:38'),
	(73, 'edit_sponsor', 'sponsor', '2022-01-27 11:53:38', '2022-01-27 11:53:38'),
	(74, 'add_sponsor', 'sponsor', '2022-01-27 11:53:38', '2022-01-27 11:53:38'),
	(75, 'delete_sponsor', 'sponsor', '2022-01-27 11:53:38', '2022-01-27 11:53:38'),
	(76, 'browse_intereses', 'intereses', '2022-01-27 11:54:13', '2022-01-27 11:54:13'),
	(77, 'read_intereses', 'intereses', '2022-01-27 11:54:13', '2022-01-27 11:54:13'),
	(78, 'edit_intereses', 'intereses', '2022-01-27 11:54:13', '2022-01-27 11:54:13'),
	(79, 'add_intereses', 'intereses', '2022-01-27 11:54:13', '2022-01-27 11:54:13'),
	(80, 'delete_intereses', 'intereses', '2022-01-27 11:54:13', '2022-01-27 11:54:13'),
	(91, 'browse_paises', 'paises', '2022-01-27 11:55:05', '2022-01-27 11:55:05'),
	(92, 'read_paises', 'paises', '2022-01-27 11:55:05', '2022-01-27 11:55:05'),
	(93, 'edit_paises', 'paises', '2022-01-27 11:55:05', '2022-01-27 11:55:05'),
	(94, 'add_paises', 'paises', '2022-01-27 11:55:05', '2022-01-27 11:55:05'),
	(95, 'delete_paises', 'paises', '2022-01-27 11:55:05', '2022-01-27 11:55:05'),
	(96, 'browse_imagenes_cursos', 'imagenes_cursos', '2022-02-01 12:35:16', '2022-02-01 12:35:16'),
	(97, 'read_imagenes_cursos', 'imagenes_cursos', '2022-02-01 12:35:16', '2022-02-01 12:35:16'),
	(98, 'edit_imagenes_cursos', 'imagenes_cursos', '2022-02-01 12:35:16', '2022-02-01 12:35:16'),
	(99, 'add_imagenes_cursos', 'imagenes_cursos', '2022-02-01 12:35:16', '2022-02-01 12:35:16'),
	(100, 'delete_imagenes_cursos', 'imagenes_cursos', '2022-02-01 12:35:16', '2022-02-01 12:35:16'),
	(101, 'browse_talleres_usuarios', 'talleres_usuarios', '2022-02-08 18:40:13', '2022-02-08 18:40:13'),
	(102, 'read_talleres_usuarios', 'talleres_usuarios', '2022-02-08 18:40:13', '2022-02-08 18:40:13'),
	(103, 'edit_talleres_usuarios', 'talleres_usuarios', '2022-02-08 18:40:13', '2022-02-08 18:40:13'),
	(104, 'add_talleres_usuarios', 'talleres_usuarios', '2022-02-08 18:40:13', '2022-02-08 18:40:13'),
	(105, 'delete_talleres_usuarios', 'talleres_usuarios', '2022-02-08 18:40:13', '2022-02-08 18:40:13');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.permission_role: ~80 rows (aproximadamente)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(41, 1),
	(42, 1),
	(43, 1),
	(44, 1),
	(45, 1),
	(46, 1),
	(47, 1),
	(48, 1),
	(49, 1),
	(50, 1),
	(56, 1),
	(57, 1),
	(58, 1),
	(59, 1),
	(60, 1),
	(66, 1),
	(67, 1),
	(68, 1),
	(69, 1),
	(70, 1),
	(71, 1),
	(72, 1),
	(73, 1),
	(74, 1),
	(75, 1),
	(76, 1),
	(77, 1),
	(78, 1),
	(79, 1),
	(80, 1),
	(91, 1),
	(92, 1),
	(93, 1),
	(94, 1),
	(95, 1),
	(96, 1),
	(97, 1),
	(98, 1),
	(99, 1),
	(100, 1),
	(101, 1),
	(102, 1),
	(103, 1),
	(104, 1),
	(105, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.productos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.roles: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Administrador', '2022-01-27 11:44:28', '2022-01-27 11:44:28'),
	(2, 'user', 'Usuario Normal', '2022-01-27 11:44:28', '2022-01-27 11:44:28');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.settings: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
	(1, 'site.title', 'Título del sitio', 'Título del sitio', '', 'text', 1, 'Site'),
	(2, 'site.description', 'Descripción del sitio', 'Descripción del sitio', '', 'text', 2, 'Site'),
	(3, 'site.logo', 'Logo del sitio', 'settings\\January2022\\AsEQCuVubuysWygyGiNT.jpg', '', 'image', 3, 'Site'),
	(4, 'site.google_analytics_tracking_id', 'ID de rastreo de Google Analytics', NULL, '', 'text', 4, 'Site'),
	(5, 'admin.bg_image', 'Imagen de fondo del administrador', 'settings\\January2022\\Nf3ci3CpVtUFCyRHOWrJ.jpg', '', 'image', 5, 'Admin'),
	(6, 'admin.title', 'Título del administrador', 'Gure Tabadul', '', 'text', 1, 'Admin'),
	(7, 'admin.description', 'Descripción del administrador', 'Bienvenido a Voyager. El administrador que le faltaba a Laravel', '', 'text', 2, 'Admin'),
	(8, 'admin.loader', 'Imagen de carga del administrador', 'settings\\January2022\\mIxaEAfMs6mIb6CeirzA.png', '', 'image', 3, 'Admin'),
	(9, 'admin.icon_image', 'Ícono del administrador', 'settings\\January2022\\uarMm3UKzQSJI4pNVShO.jpg', '', 'image', 4, 'Admin'),
	(10, 'admin.google_analytics_client_id', 'ID de Cliente para Google Analytics (usado para el tablero de administrador)', NULL, '', 'text', 1, 'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.skills: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, 'Polka', NULL, NULL),
	(2, 'Samba', NULL, NULL),
	(3, 'Cine español', NULL, NULL),
	(4, 'Derrapar', NULL, NULL);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.skills_usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `skills_usuario` DISABLE KEYS */;
INSERT INTO `skills_usuario` (`id`, `user_id`, `skills_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 4, '2022-02-08 08:40:19', NULL);
/*!40000 ALTER TABLE `skills_usuario` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.sponsor: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` (`id`, `nombre`, `descripción`, `ruta_img_sponsor`, `created_at`, `updated_at`) VALUES
	(1, 'Facebook', 'Este es un texto que sirve como intento de descripcion para comprobar que funciona este proyecto', 'sponsor\\February2022\\SXaPxzaNAACo0hNdsz12.png', '2022-02-08 07:58:04', '2022-02-08 07:58:04');
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.talleres: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `talleres` DISABLE KEYS */;
INSERT INTO `talleres` (`id`, `Título`, `Fecha_comienzo`, `Fecha_final`, `Descripción`, `Precio`, `Capacidad`, `created_at`, `updated_at`) VALUES
	(1, 'Taller Prueba', '2022-02-18', '2022-03-10', 'Este es un taller ficticio', 14.56, 5, '2022-02-02 08:22:00', '2022-02-08 18:39:35'),
	(2, 'Segundo Taller', '2022-02-01', '2022-02-27', 'DAS DFFDSFSDSDFFSDFSD', 231521, 12, '2022-02-03 07:13:31', '2022-02-03 07:13:31'),
	(3, 'Tercer Taller', '2022-02-10', '2022-03-05', 'fsfddghfgngngnnnxnb', 152, 21, '2022-02-03 12:45:00', '2022-02-08 18:50:43');
/*!40000 ALTER TABLE `talleres` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.talleres_usuarios: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `talleres_usuarios` DISABLE KEYS */;
INSERT INTO `talleres_usuarios` (`id`, `taller_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(6, 1, 1, '2022-02-08 07:10:31', '2022-02-08 07:10:31'),
	(7, 1, 2, NULL, NULL),
	(8, 3, 1, NULL, NULL);
/*!40000 ALTER TABLE `talleres_usuarios` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.translations: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.users: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `Fecha_nac`, `telefono`, `direccion_facturacion`, `pais_id`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
	(1, 1, 'jorge', 'jordioni1705@gmail.com', 'users\\January2022\\27WbwJT8aBdHHJwqmdTm.PNG', '2022-03-07 12:57:18', 'Z', '2022-01-23', 56565, NULL, 73, NULL, '{"locale":"es"}', '2022-01-27 11:47:17', '2022-02-08 19:53:45'),
	(2, 2, 'Miguel', 'miguel@gmail.com', 'users/default.png', NULL, '$2y$10$jDj2C038GOpZidV2UaOheeinqJt7tW/Y3BsBBKOj86ZMu1A4r3YVq', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-07 10:44:20', '2022-02-07 10:44:20'),
	(3, 1, 'A', 'A@GMAIL.COM', 'users/default.png', NULL, '$2y$10$9vuFpJEDqlZkDjItCyvf6OBjxZOsZy88wohfSB6MzQy2FQHmf5ECW', NULL, 9, NULL, NULL, NULL, NULL, '2022-03-07 11:59:03', '2022-03-07 11:59:59'),
	(4, 2, 'b', 'b@gmail.com', 'users/default.png', NULL, '$2y$10$XmHrqaZhuIxCV1bF3b.CjuMFTBrV0GtQwQ4/A49qTJzSKBzgr4iQK', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-09 08:35:31', '2022-03-09 08:35:31'),
	(5, 1, 'iker', 'iker.sddg@gmail.com', 'users/default.png', NULL, '$2y$10$8qSs5nMcmSKImVg6.PoUhunAEggK4NeDr8jP9xEF5kzCBflW8PYo6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 10:12:43', '2022-03-10 10:12:43'),
	(6, 2, 'Patricia', 'patricia.ddg@hotmail.com', 'users/default.png', NULL, '$2y$10$5ZH0MeAGSeZU51MqPpTp8.ntvUZfcLoOGbICATnHkK.FIHOa3FfHa', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-22 13:55:59', '2022-03-22 13:55:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.user_roles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.wp_commentmeta: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.wp_comments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
	(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-04-25 15:18:46', '2022-04-25 15:18:46', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.wp_links: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.wp_options: ~104 rows (aproximadamente)
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'siteurl', 'http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress', 'yes'),
	(2, 'home', 'http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress', 'yes'),
	(3, 'blogname', 'Gure Tabadul', 'yes'),
	(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
	(5, 'users_can_register', '0', 'yes'),
	(6, 'admin_email', 'iker.sddg@gmail.com', 'yes'),
	(7, 'start_of_week', '1', 'yes'),
	(8, 'use_balanceTags', '0', 'yes'),
	(9, 'use_smilies', '1', 'yes'),
	(10, 'require_name_email', '1', 'yes'),
	(11, 'comments_notify', '1', 'yes'),
	(12, 'posts_per_rss', '10', 'yes'),
	(13, 'rss_use_excerpt', '0', 'yes'),
	(14, 'mailserver_url', 'mail.example.com', 'yes'),
	(15, 'mailserver_login', 'login@example.com', 'yes'),
	(16, 'mailserver_pass', 'password', 'yes'),
	(17, 'mailserver_port', '110', 'yes'),
	(18, 'default_category', '1', 'yes'),
	(19, 'default_comment_status', 'open', 'yes'),
	(20, 'default_ping_status', 'open', 'yes'),
	(21, 'default_pingback_flag', '1', 'yes'),
	(22, 'posts_per_page', '10', 'yes'),
	(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
	(24, 'time_format', 'H:i', 'yes'),
	(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y H:i', 'yes'),
	(26, 'comment_moderation', '0', 'yes'),
	(27, 'moderation_notify', '1', 'yes'),
	(28, 'permalink_structure', '', 'yes'),
	(29, 'rewrite_rules', '', 'yes'),
	(30, 'hack_file', '0', 'yes'),
	(31, 'blog_charset', 'UTF-8', 'yes'),
	(32, 'moderation_keys', '', 'no'),
	(33, 'active_plugins', 'a:0:{}', 'yes'),
	(34, 'category_base', '', 'yes'),
	(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
	(36, 'comment_max_links', '2', 'yes'),
	(37, 'gmt_offset', '0', 'yes'),
	(38, 'default_email_category', '1', 'yes'),
	(39, 'recently_edited', '', 'no'),
	(40, 'template', 'twentytwentytwo', 'yes'),
	(41, 'stylesheet', 'twentytwentytwo', 'yes'),
	(42, 'comment_registration', '0', 'yes'),
	(43, 'html_type', 'text/html', 'yes'),
	(44, 'use_trackback', '0', 'yes'),
	(45, 'default_role', 'subscriber', 'yes'),
	(46, 'db_version', '51917', 'yes'),
	(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
	(48, 'upload_path', '', 'yes'),
	(49, 'blog_public', '1', 'yes'),
	(50, 'default_link_category', '2', 'yes'),
	(51, 'show_on_front', 'posts', 'yes'),
	(52, 'tag_base', '', 'yes'),
	(53, 'show_avatars', '1', 'yes'),
	(54, 'avatar_rating', 'G', 'yes'),
	(55, 'upload_url_path', '', 'yes'),
	(56, 'thumbnail_size_w', '150', 'yes'),
	(57, 'thumbnail_size_h', '150', 'yes'),
	(58, 'thumbnail_crop', '1', 'yes'),
	(59, 'medium_size_w', '300', 'yes'),
	(60, 'medium_size_h', '300', 'yes'),
	(61, 'avatar_default', 'mystery', 'yes'),
	(62, 'large_size_w', '1024', 'yes'),
	(63, 'large_size_h', '1024', 'yes'),
	(64, 'image_default_link_type', 'none', 'yes'),
	(65, 'image_default_size', '', 'yes'),
	(66, 'image_default_align', '', 'yes'),
	(67, 'close_comments_for_old_posts', '0', 'yes'),
	(68, 'close_comments_days_old', '14', 'yes'),
	(69, 'thread_comments', '1', 'yes'),
	(70, 'thread_comments_depth', '5', 'yes'),
	(71, 'page_comments', '0', 'yes'),
	(72, 'comments_per_page', '50', 'yes'),
	(73, 'default_comments_page', 'newest', 'yes'),
	(74, 'comment_order', 'asc', 'yes'),
	(75, 'sticky_posts', 'a:0:{}', 'yes'),
	(76, 'widget_categories', 'a:0:{}', 'yes'),
	(77, 'widget_text', 'a:0:{}', 'yes'),
	(78, 'widget_rss', 'a:0:{}', 'yes'),
	(79, 'uninstall_plugins', 'a:0:{}', 'no'),
	(80, 'timezone_string', '', 'yes'),
	(81, 'page_for_posts', '0', 'yes'),
	(82, 'page_on_front', '0', 'yes'),
	(83, 'default_post_format', '0', 'yes'),
	(84, 'link_manager_enabled', '0', 'yes'),
	(85, 'finished_splitting_shared_terms', '1', 'yes'),
	(86, 'site_icon', '8', 'yes'),
	(87, 'medium_large_size_w', '768', 'yes'),
	(88, 'medium_large_size_h', '0', 'yes'),
	(89, 'wp_page_for_privacy_policy', '3', 'yes'),
	(90, 'show_comments_cookies_opt_in', '1', 'yes'),
	(91, 'admin_email_lifespan', '1666451924', 'yes'),
	(92, 'disallowed_keys', '', 'no'),
	(93, 'comment_previously_approved', '1', 'yes'),
	(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
	(95, 'auto_update_core_dev', 'enabled', 'yes'),
	(96, 'auto_update_core_minor', 'enabled', 'yes'),
	(97, 'auto_update_core_major', 'enabled', 'yes'),
	(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
	(99, 'initial_db_version', '51917', 'yes'),
	(100, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
	(101, 'fresh_site', '1', 'yes'),
	(102, 'WPLANG', 'es_ES', 'yes'),
	(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:160:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:233:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:151:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'yes'),
	(104, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}s:13:"array_version";i:3;}', 'yes'),
	(105, 'cron', 'a:7:{i:1651169935;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1651202335;a:4:{s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1651245535;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1651245556;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1651245569;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1651591135;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
	(106, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(107, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(108, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(109, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(110, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(111, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(112, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(113, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(114, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(115, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(116, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(117, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(119, 'recovery_keys', 'a:0:{}', 'yes'),
	(122, 'https_detection_errors', 'a:1:{s:20:"https_request_failed";a:1:{i:0;s:24:"Solicitud HTTPS fallida.";}}', 'yes'),
	(133, '_site_transient_timeout_browser_09af53e829b1687c5db16483617c3ced', '1651504767', 'no'),
	(134, '_site_transient_browser_09af53e829b1687c5db16483617c3ced', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:14:"100.0.4896.127";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
	(135, '_site_transient_timeout_php_check_f9714bbe413cc376a70847d9c1f86fcc', '1651504769', 'no'),
	(136, '_site_transient_php_check_f9714bbe413cc376a70847d9c1f86fcc', 'a:5:{s:19:"recommended_version";s:3:"7.4";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:1;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'),
	(138, 'can_compress_scripts', '0', 'no'),
	(139, 'recently_activated', 'a:0:{}', 'yes'),
	(146, 'finished_updating_comment_type', '1', 'yes'),
	(149, 'theme_mods_twentytwentytwo', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
	(199, '_transient_health-check-site-status-result', '{"good":12,"recommended":7,"critical":0}', 'yes'),
	(234, 'site_logo', '8', 'yes'),
	(246, '_transient_timeout_global_styles_twentytwentytwo', '1651169573', 'no'),
	(247, '_transient_global_styles_twentytwentytwo', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--foreground: #000000;--wp--preset--color--background: #ffffff;--wp--preset--color--primary: #1a4548;--wp--preset--color--secondary: #ffe2c7;--wp--preset--color--tertiary: #F6F6F6;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--gradient--vertical-secondary-to-tertiary: linear-gradient(to bottom,var(--wp--preset--color--secondary) 0%,var(--wp--preset--color--tertiary) 100%);--wp--preset--gradient--vertical-secondary-to-background: linear-gradient(to bottom,var(--wp--preset--color--secondary) 0%,var(--wp--preset--color--background) 100%);--wp--preset--gradient--vertical-tertiary-to-background: linear-gradient(to bottom,var(--wp--preset--color--tertiary) 0%,var(--wp--preset--color--background) 100%);--wp--preset--gradient--diagonal-primary-to-foreground: linear-gradient(to bottom right,var(--wp--preset--color--primary) 0%,var(--wp--preset--color--foreground) 100%);--wp--preset--gradient--diagonal-secondary-to-background: linear-gradient(to bottom right,var(--wp--preset--color--secondary) 50%,var(--wp--preset--color--background) 50%);--wp--preset--gradient--diagonal-background-to-secondary: linear-gradient(to bottom right,var(--wp--preset--color--background) 50%,var(--wp--preset--color--secondary) 50%);--wp--preset--gradient--diagonal-tertiary-to-background: linear-gradient(to bottom right,var(--wp--preset--color--tertiary) 50%,var(--wp--preset--color--background) 50%);--wp--preset--gradient--diagonal-background-to-tertiary: linear-gradient(to bottom right,var(--wp--preset--color--background) 50%,var(--wp--preset--color--tertiary) 50%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--duotone--foreground-and-background: url(\'#wp-duotone-foreground-and-background\');--wp--preset--duotone--foreground-and-secondary: url(\'#wp-duotone-foreground-and-secondary\');--wp--preset--duotone--foreground-and-tertiary: url(\'#wp-duotone-foreground-and-tertiary\');--wp--preset--duotone--primary-and-background: url(\'#wp-duotone-primary-and-background\');--wp--preset--duotone--primary-and-secondary: url(\'#wp-duotone-primary-and-secondary\');--wp--preset--duotone--primary-and-tertiary: url(\'#wp-duotone-primary-and-tertiary\');--wp--preset--font-size--small: 1rem;--wp--preset--font-size--medium: 1.125rem;--wp--preset--font-size--large: 1.75rem;--wp--preset--font-size--x-large: clamp(1.75rem, 3vw, 2.25rem);--wp--preset--font-family--system-font: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif;--wp--preset--font-family--source-serif-pro: "Source Serif Pro", serif;--wp--custom--spacing--small: max(1.25rem, 5vw);--wp--custom--spacing--medium: clamp(2rem, 8vw, calc(4 * var(--wp--style--block-gap)));--wp--custom--spacing--large: clamp(4rem, 10vw, 8rem);--wp--custom--spacing--outer: var(--wp--custom--spacing--small, 1.25rem);--wp--custom--typography--font-size--huge: clamp(2.25rem, 4vw, 2.75rem);--wp--custom--typography--font-size--gigantic: clamp(2.75rem, 6vw, 3.25rem);--wp--custom--typography--font-size--colossal: clamp(3.25rem, 8vw, 6.25rem);--wp--custom--typography--line-height--tiny: 1.15;--wp--custom--typography--line-height--small: 1.2;--wp--custom--typography--line-height--medium: 1.4;--wp--custom--typography--line-height--normal: 1.6;}body { margin: 0; }body{background-color: var(--wp--preset--color--background);color: var(--wp--preset--color--foreground);font-family: var(--wp--preset--font-family--system-font);font-size: var(--wp--preset--font-size--medium);line-height: var(--wp--custom--typography--line-height--normal);--wp--style--block-gap: 1.5rem;}.wp-site-blocks > .alignleft { float: left; margin-right: 2em; }.wp-site-blocks > .alignright { float: right; margin-left: 2em; }.wp-site-blocks > .aligncenter { justify-content: center; margin-left: auto; margin-right: auto; }.wp-site-blocks > * { margin-top: 0; margin-bottom: 0; }.wp-site-blocks > * + * { margin-top: var( --wp--style--block-gap ); }h1{font-family: var(--wp--preset--font-family--source-serif-pro);font-size: var(--wp--custom--typography--font-size--colossal);font-weight: 300;line-height: var(--wp--custom--typography--line-height--tiny);}h2{font-family: var(--wp--preset--font-family--source-serif-pro);font-size: var(--wp--custom--typography--font-size--gigantic);font-weight: 300;line-height: var(--wp--custom--typography--line-height--small);}h3{font-family: var(--wp--preset--font-family--source-serif-pro);font-size: var(--wp--custom--typography--font-size--huge);font-weight: 300;line-height: var(--wp--custom--typography--line-height--tiny);}h4{font-family: var(--wp--preset--font-family--source-serif-pro);font-size: var(--wp--preset--font-size--x-large);font-weight: 300;line-height: var(--wp--custom--typography--line-height--tiny);}h5{font-family: var(--wp--preset--font-family--system-font);font-size: var(--wp--preset--font-size--medium);font-weight: 700;line-height: var(--wp--custom--typography--line-height--normal);text-transform: uppercase;}h6{font-family: var(--wp--preset--font-family--system-font);font-size: var(--wp--preset--font-size--medium);font-weight: 400;line-height: var(--wp--custom--typography--line-height--normal);text-transform: uppercase;}a{color: var(--wp--preset--color--foreground);}.wp-block-button__link{background-color: var(--wp--preset--color--primary);border-radius: 0;color: var(--wp--preset--color--background);font-size: var(--wp--preset--font-size--medium);}.wp-block-post-title{font-family: var(--wp--preset--font-family--source-serif-pro);font-size: var(--wp--custom--typography--font-size--gigantic);font-weight: 300;line-height: var(--wp--custom--typography--line-height--tiny);}.wp-block-post-comments{padding-top: var(--wp--custom--spacing--small);}.wp-block-pullquote{border-width: 1px 0;}.wp-block-query-title{font-family: var(--wp--preset--font-family--source-serif-pro);font-size: var(--wp--custom--typography--font-size--gigantic);font-weight: 300;line-height: var(--wp--custom--typography--line-height--small);}.wp-block-quote{border-width: 1px;}.wp-block-site-title{font-family: var(--wp--preset--font-family--system-font);font-size: var(--wp--preset--font-size--medium);font-weight: normal;line-height: var(--wp--custom--typography--line-height--normal);}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-foreground-color{color: var(--wp--preset--color--foreground) !important;}.has-background-color{color: var(--wp--preset--color--background) !important;}.has-primary-color{color: var(--wp--preset--color--primary) !important;}.has-secondary-color{color: var(--wp--preset--color--secondary) !important;}.has-tertiary-color{color: var(--wp--preset--color--tertiary) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-foreground-background-color{background-color: var(--wp--preset--color--foreground) !important;}.has-background-background-color{background-color: var(--wp--preset--color--background) !important;}.has-primary-background-color{background-color: var(--wp--preset--color--primary) !important;}.has-secondary-background-color{background-color: var(--wp--preset--color--secondary) !important;}.has-tertiary-background-color{background-color: var(--wp--preset--color--tertiary) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-foreground-border-color{border-color: var(--wp--preset--color--foreground) !important;}.has-background-border-color{border-color: var(--wp--preset--color--background) !important;}.has-primary-border-color{border-color: var(--wp--preset--color--primary) !important;}.has-secondary-border-color{border-color: var(--wp--preset--color--secondary) !important;}.has-tertiary-border-color{border-color: var(--wp--preset--color--tertiary) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-vertical-secondary-to-tertiary-gradient-background{background: var(--wp--preset--gradient--vertical-secondary-to-tertiary) !important;}.has-vertical-secondary-to-background-gradient-background{background: var(--wp--preset--gradient--vertical-secondary-to-background) !important;}.has-vertical-tertiary-to-background-gradient-background{background: var(--wp--preset--gradient--vertical-tertiary-to-background) !important;}.has-diagonal-primary-to-foreground-gradient-background{background: var(--wp--preset--gradient--diagonal-primary-to-foreground) !important;}.has-diagonal-secondary-to-background-gradient-background{background: var(--wp--preset--gradient--diagonal-secondary-to-background) !important;}.has-diagonal-background-to-secondary-gradient-background{background: var(--wp--preset--gradient--diagonal-background-to-secondary) !important;}.has-diagonal-tertiary-to-background-gradient-background{background: var(--wp--preset--gradient--diagonal-tertiary-to-background) !important;}.has-diagonal-background-to-tertiary-gradient-background{background: var(--wp--preset--gradient--diagonal-background-to-tertiary) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}.has-system-font-font-family{font-family: var(--wp--preset--font-family--system-font) !important;}.has-source-serif-pro-font-family{font-family: var(--wp--preset--font-family--source-serif-pro) !important;}', 'no'),
	(248, '_transient_timeout_global_styles_svg_filters_twentytwentytwo', '1651169573', 'no'),
	(249, '_transient_global_styles_svg_filters_twentytwentytwo', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-dark-grayscale"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 0.49803921568627" /><feFuncG type="table" tableValues="0 0.49803921568627" /><feFuncB type="table" tableValues="0 0.49803921568627" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-grayscale"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 1" /><feFuncG type="table" tableValues="0 1" /><feFuncB type="table" tableValues="0 1" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-purple-yellow"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.54901960784314 0.98823529411765" /><feFuncG type="table" tableValues="0 1" /><feFuncB type="table" tableValues="0.71764705882353 0.25490196078431" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-blue-red"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 1" /><feFuncG type="table" tableValues="0 0.27843137254902" /><feFuncB type="table" tableValues="0.5921568627451 0.27843137254902" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-midnight"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 0" /><feFuncG type="table" tableValues="0 0.64705882352941" /><feFuncB type="table" tableValues="0 1" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-magenta-yellow"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.78039215686275 1" /><feFuncG type="table" tableValues="0 0.94901960784314" /><feFuncB type="table" tableValues="0.35294117647059 0.47058823529412" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-purple-green"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.65098039215686 0.40392156862745" /><feFuncG type="table" tableValues="0 1" /><feFuncB type="table" tableValues="0.44705882352941 0.4" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-blue-orange"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.098039215686275 1" /><feFuncG type="table" tableValues="0 0.66274509803922" /><feFuncB type="table" tableValues="0.84705882352941 0.41960784313725" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-foreground-and-background"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 1" /><feFuncG type="table" tableValues="0 1" /><feFuncB type="table" tableValues="0 1" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-foreground-and-secondary"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 1" /><feFuncG type="table" tableValues="0 0.88627450980392" /><feFuncB type="table" tableValues="0 0.78039215686275" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-foreground-and-tertiary"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 0.96470588235294" /><feFuncG type="table" tableValues="0 0.96470588235294" /><feFuncB type="table" tableValues="0 0.96470588235294" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-primary-and-background"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.10196078431373 1" /><feFuncG type="table" tableValues="0.27058823529412 1" /><feFuncB type="table" tableValues="0.28235294117647 1" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-primary-and-secondary"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.10196078431373 1" /><feFuncG type="table" tableValues="0.27058823529412 0.88627450980392" /><feFuncB type="table" tableValues="0.28235294117647 0.78039215686275" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-primary-and-tertiary"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.10196078431373 0.96470588235294" /><feFuncG type="table" tableValues="0.27058823529412 0.96470588235294" /><feFuncB type="table" tableValues="0.28235294117647 0.96470588235294" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg>', 'no'),
	(251, '_site_transient_timeout_theme_roots', '1651171324', 'no'),
	(252, '_site_transient_theme_roots', 'a:3:{s:12:"twentytwenty";s:7:"/themes";s:15:"twentytwentyone";s:7:"/themes";s:15:"twentytwentytwo";s:7:"/themes";}', 'no'),
	(254, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-5.9.3.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-5.9.3.zip";s:10:"no_content";s:0:"";s:11:"new_bundled";s:0:"";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"5.9.3";s:7:"version";s:5:"5.9.3";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.9";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1651169526;s:15:"version_checked";s:5:"5.9.3";s:12:"translations";a:0:{}}', 'no'),
	(255, '_site_transient_update_themes', 'O:8:"stdClass":5:{s:12:"last_checked";i:1651169527;s:7:"checked";a:3:{s:12:"twentytwenty";s:3:"1.9";s:15:"twentytwentyone";s:3:"1.5";s:15:"twentytwentytwo";s:3:"1.1";}s:8:"response";a:0:{}s:9:"no_update";a:3:{s:12:"twentytwenty";a:6:{s:5:"theme";s:12:"twentytwenty";s:11:"new_version";s:3:"1.9";s:3:"url";s:42:"https://wordpress.org/themes/twentytwenty/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:5:"5.2.4";}s:15:"twentytwentyone";a:6:{s:5:"theme";s:15:"twentytwentyone";s:11:"new_version";s:3:"1.5";s:3:"url";s:45:"https://wordpress.org/themes/twentytwentyone/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip";s:8:"requires";s:3:"5.3";s:12:"requires_php";s:3:"5.6";}s:15:"twentytwentytwo";a:6:{s:5:"theme";s:15:"twentytwentytwo";s:11:"new_version";s:3:"1.1";s:3:"url";s:45:"https://wordpress.org/themes/twentytwentytwo/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip";s:8:"requires";s:3:"5.9";s:12:"requires_php";s:3:"5.6";}}s:12:"translations";a:0:{}}', 'no'),
	(256, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1651169528;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.2.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.2.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"5.0";s:6:"tested";s:5:"5.9.3";s:12:"requires_php";b:0;}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"hello-dolly";s:8:"language";s:5:"es_ES";s:7:"version";s:5:"1.7.2";s:7:"updated";s:19:"2019-10-09 18:49:33";s:7:"package";s:78:"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/es_ES.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":10:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582";s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.6";}}s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"4.2.2";s:9:"hello.php";s:5:"1.7.2";}}', 'no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.wp_postmeta: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(1, 2, '_wp_page_template', 'default'),
	(2, 3, '_wp_page_template', 'default'),
	(3, 7, 'origin', 'theme'),
	(4, 8, '_wp_attached_file', '2022/04/LogoTabadul64PX.jpg'),
	(5, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:27:"2022/04/LogoTabadul64PX.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.wp_posts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(1, 1, '2022-04-25 15:18:46', '2022-04-25 15:18:46', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2022-04-25 15:18:46', '2022-04-25 15:18:46', '', 0, 'http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress/?p=1', 0, 'post', '', 1),
	(2, 1, '2022-04-25 15:18:46', '2022-04-25 15:18:46', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href="http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress/wp-admin/">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2022-04-25 15:18:46', '2022-04-25 15:18:46', '', 0, 'http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress/?page_id=2', 0, 'page', '', 0),
	(3, 1, '2022-04-25 15:18:46', '2022-04-25 15:18:46', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texto sugerido: </strong>La dirección de nuestra web es: http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentarios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Medios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texto sugerido: </strong>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenido incrustado de otros sitios web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texto sugerido: </strong>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2022-04-25 15:18:46', '2022-04-25 15:18:46', '', 0, 'http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress/?page_id=3', 0, 'page', '', 0),
	(4, 1, '2022-04-25 15:19:29', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-04-25 15:19:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress/?p=4', 0, 'post', '', 0),
	(5, 1, '2022-04-26 09:39:00', '2022-04-26 09:39:00', '{"version": 2, "isGlobalStylesUserThemeJSON": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-04-26 09:39:00', '2022-04-26 09:39:00', '', 0, 'http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress/?p=5', 0, 'wp_global_styles', '', 0),
	(6, 1, '2022-04-27 07:20:43', '2022-04-27 07:20:43', '<!-- wp:page-list /-->', 'Navegación de Cabecera', '', 'publish', 'closed', 'closed', '', 'navegacion-de-cabecera', '', '', '2022-04-27 07:20:43', '2022-04-27 07:20:43', '', 0, 'http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress/?p=6', 0, 'wp_navigation', '', 0),
	(7, 1, '2022-04-27 07:24:26', '2022-04-27 07:24:26', '<!-- wp:group {"layout":{"inherit":true}} -->\n<div class="wp-block-group"><!-- wp:group {"align":"wide","style":{"spacing":{"padding":{"bottom":"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dlarge, 8rem)","top":"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)"}}},"layout":{"type":"flex","justifyContent":"center"}} -->\n<div class="wp-block-group alignwide" style="padding-top:var(--wp--custom--spacing--small, 1.25rem);padding-bottom:var(--wp--custom--spacing--large, 8rem)"><!-- wp:group {"layout":{"type":"flex","justifyContent":"center"}} -->\n<div class="wp-block-group"><!-- wp:site-logo {"width":64,"shouldSyncIcon":true} /-->\n\n<!-- wp:site-title {"textAlign":"center","style":{"typography":{"fontStyle":"normal","fontWeight":"900","textTransform":"capitalize","letterSpacing":"1px"},"elements":{"link":{"color":{"text":"var:preset|color|vivid-green-cyan"}}}},"textColor":"vivid-green-cyan"} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->', 'Cabecera', '', 'publish', 'closed', 'closed', '', 'header', '', '', '2022-04-27 07:35:12', '2022-04-27 07:35:12', '', 0, 'http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress/?p=7', 0, 'wp_template_part', '', 0),
	(8, 1, '2022-04-27 07:34:54', '2022-04-27 07:34:54', '', 'LogoTabadul64PX', '', 'inherit', 'open', 'closed', '', 'logotabadul64px', '', '', '2022-04-27 07:34:54', '2022-04-27 07:34:54', '', 0, 'http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress/wp-content/uploads/2022/04/LogoTabadul64PX.jpg', 0, 'attachment', 'image/jpeg', 0),
	(9, 1, '2022-04-27 07:35:12', '2022-04-27 07:35:12', '<!-- wp:group {"layout":{"inherit":true}} -->\n<div class="wp-block-group"><!-- wp:group {"align":"wide","style":{"spacing":{"padding":{"bottom":"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dlarge, 8rem)","top":"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)"}}},"layout":{"type":"flex","justifyContent":"center"}} -->\n<div class="wp-block-group alignwide" style="padding-top:var(--wp--custom--spacing--small, 1.25rem);padding-bottom:var(--wp--custom--spacing--large, 8rem)"><!-- wp:group {"layout":{"type":"flex","justifyContent":"center"}} -->\n<div class="wp-block-group"><!-- wp:site-logo {"width":64,"shouldSyncIcon":true} /-->\n\n<!-- wp:site-title {"textAlign":"center","style":{"typography":{"fontStyle":"normal","fontWeight":"900","textTransform":"capitalize","letterSpacing":"1px"},"elements":{"link":{"color":{"text":"var:preset|color|vivid-green-cyan"}}}},"textColor":"vivid-green-cyan"} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->', 'Cabecera', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-04-27 07:35:12', '2022-04-27 07:35:12', '', 7, 'http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress/?p=9', 0, 'revision', '', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.wp_termmeta: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.wp_terms: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Sin categoría', 'sin-categoria', 0),
	(2, 'twentytwentytwo', 'twentytwentytwo', 0),
	(3, 'header', 'header', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.wp_term_relationships: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(1, 1, 0),
	(5, 2, 0),
	(7, 2, 0),
	(7, 3, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.wp_term_taxonomy: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 1),
	(2, 2, 'wp_theme', '', 0, 2),
	(3, 3, 'wp_template_part_area', '', 0, 1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.wp_usermeta: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
	(1, 1, 'nickname', 'admin'),
	(2, 1, 'first_name', ''),
	(3, 1, 'last_name', ''),
	(4, 1, 'description', ''),
	(5, 1, 'rich_editing', 'true'),
	(6, 1, 'syntax_highlighting', 'true'),
	(7, 1, 'comment_shortcuts', 'false'),
	(8, 1, 'admin_color', 'fresh'),
	(9, 1, 'use_ssl', '0'),
	(10, 1, 'show_admin_bar_front', 'true'),
	(11, 1, 'locale', ''),
	(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(13, 1, 'wp_user_level', '10'),
	(14, 1, 'dismissed_wp_pointers', ''),
	(15, 1, 'show_welcome_panel', '0'),
	(16, 1, 'session_tokens', 'a:3:{s:64:"9feb80816d6f0129e03d162f212da03ddf6a9ce16dc2857fac523b83de3944a2";a:4:{s:10:"expiration";i:1651072753;s:2:"ip";s:3:"::1";s:2:"ua";s:116:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36";s:5:"login";i:1650899953;}s:64:"68c6245882b107d32f78c43c83c08068abb0bba209ec9773c7d814095586fe45";a:4:{s:10:"expiration";i:1651138533;s:2:"ip";s:3:"::1";s:2:"ua";s:116:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36";s:5:"login";i:1650965733;}s:64:"d48c3fa095f32f038aba5e421e6ab23e21fd92b2884e4db09fb09747c196e25a";a:4:{s:10:"expiration";i:1651215672;s:2:"ip";s:3:"::1";s:2:"ua";s:116:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36";s:5:"login";i:1651042872;}}'),
	(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
	(18, 1, 'wp_user-settings', 'libraryContent=browse'),
	(19, 1, 'wp_user-settings-time', '1651045044');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;

-- Volcando datos para la tabla guretabadulsquad.wp_users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'admin', '$P$BKGVyN0b0G59.htD8PcEWJ34ewXzuN0', 'admin', 'iker.sddg@gmail.com', 'http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress', '2022-04-25 15:18:46', '', 0, 'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
