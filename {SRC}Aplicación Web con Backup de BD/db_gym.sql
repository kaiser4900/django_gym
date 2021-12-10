-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2021 a las 16:35:46
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_gym`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add exercise model', 1, 'add_exercisemodel'),
(2, 'Can change exercise model', 1, 'change_exercisemodel'),
(3, 'Can delete exercise model', 1, 'delete_exercisemodel'),
(4, 'Can view exercise model', 1, 'view_exercisemodel'),
(5, 'Can add user', 2, 'add_user'),
(6, 'Can change user', 2, 'change_user'),
(7, 'Can delete user', 2, 'delete_user'),
(8, 'Can view user', 2, 'view_user'),
(9, 'Can add niveles', 3, 'add_niveles'),
(10, 'Can change niveles', 3, 'change_niveles'),
(11, 'Can delete niveles', 3, 'delete_niveles'),
(12, 'Can view niveles', 3, 'view_niveles'),
(13, 'Can add normal_ admin', 4, 'add_normal_admin'),
(14, 'Can change normal_ admin', 4, 'change_normal_admin'),
(15, 'Can delete normal_ admin', 4, 'delete_normal_admin'),
(16, 'Can view normal_ admin', 4, 'view_normal_admin'),
(17, 'Can add usuario', 5, 'add_usuario'),
(18, 'Can change usuario', 5, 'change_usuario'),
(19, 'Can delete usuario', 5, 'delete_usuario'),
(20, 'Can view usuario', 5, 'view_usuario'),
(21, 'Can add entrenado', 6, 'add_entrenado'),
(22, 'Can change entrenado', 6, 'change_entrenado'),
(23, 'Can delete entrenado', 6, 'delete_entrenado'),
(24, 'Can view entrenado', 6, 'view_entrenado'),
(25, 'Can add log entry', 7, 'add_logentry'),
(26, 'Can change log entry', 7, 'change_logentry'),
(27, 'Can delete log entry', 7, 'delete_logentry'),
(28, 'Can view log entry', 7, 'view_logentry'),
(29, 'Can add permission', 8, 'add_permission'),
(30, 'Can change permission', 8, 'change_permission'),
(31, 'Can delete permission', 8, 'delete_permission'),
(32, 'Can view permission', 8, 'view_permission'),
(33, 'Can add group', 9, 'add_group'),
(34, 'Can change group', 9, 'change_group'),
(35, 'Can delete group', 9, 'delete_group'),
(36, 'Can view group', 9, 'view_group'),
(37, 'Can add content type', 10, 'add_contenttype'),
(38, 'Can change content type', 10, 'change_contenttype'),
(39, 'Can delete content type', 10, 'delete_contenttype'),
(40, 'Can view content type', 10, 'view_contenttype'),
(41, 'Can add session', 11, 'add_session'),
(42, 'Can change session', 11, 'change_session'),
(43, 'Can delete session', 11, 'delete_session'),
(44, 'Can view session', 11, 'view_session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'admin', 'logentry'),
(9, 'auth', 'group'),
(8, 'auth', 'permission'),
(10, 'contenttypes', 'contenttype'),
(6, 'home', 'entrenado'),
(3, 'home', 'niveles'),
(4, 'home', 'normal_admin'),
(2, 'home', 'user'),
(5, 'home', 'usuario'),
(1, 'polls', 'exercisemodel'),
(11, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-12-10 13:26:21.065385'),
(2, 'contenttypes', '0002_remove_content_type_name', '2021-12-10 13:26:21.731223'),
(3, 'auth', '0001_initial', '2021-12-10 13:26:27.720962'),
(4, 'auth', '0002_alter_permission_name_max_length', '2021-12-10 13:26:32.444882'),
(5, 'auth', '0003_alter_user_email_max_length', '2021-12-10 13:26:32.499493'),
(6, 'auth', '0004_alter_user_username_opts', '2021-12-10 13:26:32.565316'),
(7, 'auth', '0005_alter_user_last_login_null', '2021-12-10 13:26:32.621914'),
(8, 'auth', '0006_require_contenttypes_0002', '2021-12-10 13:26:32.667364'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2021-12-10 13:26:32.720872'),
(10, 'auth', '0008_alter_user_username_max_length', '2021-12-10 13:26:32.847217'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2021-12-10 13:26:32.908666'),
(12, 'auth', '0010_alter_group_name_max_length', '2021-12-10 13:26:33.043770'),
(13, 'auth', '0011_update_proxy_permissions', '2021-12-10 13:26:33.095561'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2021-12-10 13:26:33.156497'),
(15, 'home', '0001_initial', '2021-12-10 13:26:51.715397'),
(16, 'admin', '0001_initial', '2021-12-10 13:26:54.900851'),
(17, 'admin', '0002_logentry_remove_auto_add', '2021-12-10 13:26:54.979678'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-10 13:26:55.091713'),
(19, 'polls', '0001_initial', '2021-12-10 13:26:55.638257'),
(20, 'sessions', '0001_initial', '2021-12-10 13:26:57.408789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('yvm1ywsfm5qpd6plvnwarw40m4goyyvc', '.eJxVjMsOwiAURP-FtSGAF7i4dO83EB4XqRqalHZl_Hdp0oUmszpzZt7Mh22tfuu0-CmzC1Ps9MtiSE9qe5Efod1nnua2LlPku8KPtvPbnOl1Pdy_gxp6HetkEcqIkRIlGhJO0BkG1aDIgiA0AUjmWJQzuWACbbV2UVrEoCywzxe_pzbd:1mvgvO:QDEtTs-zGmtiIPTO1aczeqTPrgZabZylZybAWkJxyrc', '2021-12-24 14:31:02.769042');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_entrenado`
--

CREATE TABLE `home_entrenado` (
  `id` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `entrenado` tinyint(1) NOT NULL,
  `id_usuario_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `home_entrenado`
--

INSERT INTO `home_entrenado` (`id`, `fecha`, `entrenado`, `id_usuario_id`) VALUES
(4, '2021-12-10', 0, 2),
(5, '2021-12-10', 0, 3),
(6, '2021-12-10', 0, 4),
(7, '2021-12-10', 1, 5),
(9, '2021-12-10', 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_niveles`
--

CREATE TABLE `home_niveles` (
  `id` bigint(20) NOT NULL,
  `name_nivel` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `home_niveles`
--

INSERT INTO `home_niveles` (`id`, `name_nivel`, `description`) VALUES
(1, 'Amateur', ''),
(2, 'Profesional', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_normal_admin`
--

CREATE TABLE `home_normal_admin` (
  `user_id` bigint(20) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_user`
--

CREATE TABLE `home_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `dni` int(10) UNSIGNED NOT NULL CHECK (`dni` >= 0),
  `email` varchar(254) NOT NULL,
  `image` varchar(100) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `level_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `home_user`
--

INSERT INTO `home_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `is_staff`, `is_active`, `date_joined`, `first_name`, `last_name`, `dni`, `email`, `image`, `isAdmin`, `level_id`) VALUES
(2, 'pbkdf2_sha256$260000$migoqxLv4j4HqHmJzmzvou$poeEgEozUOAtrAzfjghsf0zu6DMejZnWe73qZacSeaE=', '2021-12-10 14:31:02.729736', 0, 'Arian4548', 0, 1, '2021-12-10 13:41:22.603884', 'Arian', 'Paredes', 95456325, 'arian@gmail.com', 'img/users/mike_b23ScRE.jpg', 0, 1),
(3, 'pbkdf2_sha256$260000$db833hxVQQUBauP2A8i3td$pKQEaNWPvioTzIkzp13qmLu7RaKc1A1u8cklGbLfFbE=', NULL, 0, 'Josue5646', 0, 1, '2021-12-10 13:50:23.083764', 'Josue', 'Perez', 75632145, 'josue@gmail.com', 'img/users/james.jpg', 0, 1),
(4, 'pbkdf2_sha256$260000$MT1PEGwbdvoy2uxNGHRYJ7$sjFUaqFpq3bUeaOk3F7Hp3JBCoXDgewNXT/EYFYtdLo=', NULL, 0, 'Dani45465', 0, 1, '2021-12-10 13:55:18.009154', 'Daniela', 'Perez', 75632147, 'ss@gmail.com', 'img/users/12345_d8OvNlK.png', 0, 1),
(5, 'pbkdf2_sha256$260000$gXtrgdb8F1y79J7tDkry3V$g8HI1jq021Tx5CB1qUGVf3HPfixYSY+24rCe94lEjN4=', NULL, 0, 'test', 0, 1, '2021-12-10 13:59:37.929056', 'test', 'test', 75632149, 'test1@gmail.com', 'img/users/img_3115_p3T9Tdd.jpg', 0, 1),
(7, 'pbkdf2_sha256$260000$VGSsJYpwuYzvAd8ngsAtf6$ZFZdl+hDUBwTQHoqjp0yVE+srnBA+Ql41bmi/TYGRos=', NULL, 0, 'asdsadsad', 0, 1, '2021-12-10 14:03:51.249585', 'dasdsadas', 'asdasd', 44484, 'asdsadasd@gmail.com', 'img/users/bg5_JsK8xM2.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_user_groups`
--

CREATE TABLE `home_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_user_user_permissions`
--

CREATE TABLE `home_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_usuario`
--

CREATE TABLE `home_usuario` (
  `user_id` bigint(20) NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `home_usuario`
--

INSERT INTO `home_usuario` (`user_id`, `peso`, `altura`, `direccion`, `descripcion`) VALUES
(2, 85, 1.75, 'Los Palitos', 'sfafasdsad'),
(3, 85, 1.76, 'Orb los alamos', 'asfafeeafas'),
(4, 75, 1.75, 'Los Palitos', 'asfwawadwdas'),
(5, 75, 1.55, 'test', 'adwedwwdwd'),
(7, 85, 1.23, 'asdasdas', 'dsfdsfsdfs');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polls_exercisemodel`
--

CREATE TABLE `polls_exercisemodel` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_home_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `home_entrenado`
--
ALTER TABLE `home_entrenado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_entrenado_id_usuario_id_f73ef726_fk_home_user_id` (`id_usuario_id`);

--
-- Indices de la tabla `home_niveles`
--
ALTER TABLE `home_niveles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_nivel` (`name_nivel`);

--
-- Indices de la tabla `home_normal_admin`
--
ALTER TABLE `home_normal_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `home_user`
--
ALTER TABLE `home_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `home_user_level_id_c13b5a46_fk_home_niveles_id` (`level_id`);

--
-- Indices de la tabla `home_user_groups`
--
ALTER TABLE `home_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_user_groups_user_id_group_id_b0f141dd_uniq` (`user_id`,`group_id`),
  ADD KEY `home_user_groups_group_id_87aa9e3d_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `home_user_user_permissions`
--
ALTER TABLE `home_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_user_user_permissions_user_id_permission_id_98b37912_uniq` (`user_id`,`permission_id`),
  ADD KEY `home_user_user_permi_permission_id_ccfbb3e4_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `home_usuario`
--
ALTER TABLE `home_usuario`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `polls_exercisemodel`
--
ALTER TABLE `polls_exercisemodel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `home_entrenado`
--
ALTER TABLE `home_entrenado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `home_niveles`
--
ALTER TABLE `home_niveles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `home_user`
--
ALTER TABLE `home_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `home_user_groups`
--
ALTER TABLE `home_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `home_user_user_permissions`
--
ALTER TABLE `home_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `polls_exercisemodel`
--
ALTER TABLE `polls_exercisemodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`);

--
-- Filtros para la tabla `home_entrenado`
--
ALTER TABLE `home_entrenado`
  ADD CONSTRAINT `home_entrenado_id_usuario_id_f73ef726_fk_home_user_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `home_user` (`id`);

--
-- Filtros para la tabla `home_normal_admin`
--
ALTER TABLE `home_normal_admin`
  ADD CONSTRAINT `home_normal_admin_user_id_0087faa6_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`);

--
-- Filtros para la tabla `home_user`
--
ALTER TABLE `home_user`
  ADD CONSTRAINT `home_user_level_id_c13b5a46_fk_home_niveles_id` FOREIGN KEY (`level_id`) REFERENCES `home_niveles` (`id`);

--
-- Filtros para la tabla `home_user_groups`
--
ALTER TABLE `home_user_groups`
  ADD CONSTRAINT `home_user_groups_group_id_87aa9e3d_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `home_user_groups_user_id_28bf3710_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`);

--
-- Filtros para la tabla `home_user_user_permissions`
--
ALTER TABLE `home_user_user_permissions`
  ADD CONSTRAINT `home_user_user_permi_permission_id_ccfbb3e4_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `home_user_user_permissions_user_id_28c4b0a2_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`);

--
-- Filtros para la tabla `home_usuario`
--
ALTER TABLE `home_usuario`
  ADD CONSTRAINT `home_usuario_user_id_f66a6bc3_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
