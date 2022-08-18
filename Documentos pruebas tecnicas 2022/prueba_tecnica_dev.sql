-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2022 a las 13:14:16
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba_tecnica_dev`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Administrativa y Financiera', NULL, NULL),
(2, 'Ingeniería', NULL, NULL),
(5, 'Desarrollo de Negocio', NULL, NULL),
(6, 'Proyectos', NULL, NULL),
(7, 'Servicios', NULL, NULL),
(8, 'Calidad', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `boletin` int(11) NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `email`, `sexo`, `area_id`, `boletin`, `descripcion`, `created_at`, `updated_at`) VALUES
(2, 'olivo roncancio act', 'olivo@hotmail.com', 'F', 1, 1, 'test mov', '2022-05-20 23:55:28', '2022-05-23 14:37:22'),
(3, 'jose maria gabriel', 'josega300@hotmail.com', 'M', 2, 0, 'prueba', '2022-05-21 10:04:15', '2022-05-23 13:53:29'),
(4, 'Pedro Pérez act', 'pperez@example.co', 'M', 7, 0, 'Hola mundo', NULL, '2022-05-23 13:56:17'),
(5, 'Amalia Bayona act', 'abayona_act@example.co', 'M', 2, 0, 'Para contactar a Amalia Bayona, puede escribir al correo electrónico abayona@example.co', NULL, '2022-05-23 14:06:27'),
(6, 'Paula', 'paula@mailo.com', 'M', 1, 1, 'test josega', '2022-05-22 03:12:31', '2022-05-23 14:29:32'),
(7, 'olivo mendez', 'josegabriel300@gmail.com', 'M', 1, 1, 'prueba', '2022-05-23 05:40:09', '2022-05-23 05:40:09'),
(8, 'jose perez', 'josega301@hotmail.com', 'M', 7, 1, 'test mov', '2022-05-23 05:44:40', '2022-05-23 05:44:40'),
(9, 'jose gabriel yyu', 'jhon@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:02:27', '2022-05-23 06:02:27'),
(10, 'jose gabriel yyu', 'jhon200@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:04:13', '2022-05-23 06:04:13'),
(11, 'jose gabriel yyu', 'jhon201@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:07:08', '2022-05-23 06:07:08'),
(12, 'jose gabriel yyu', 'jhon202@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:07:58', '2022-05-23 06:07:58'),
(13, 'jose gabriel yyu', 'jhon203@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:08:28', '2022-05-23 06:08:28'),
(14, 'jose gabriel yyu', 'jhon204@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:09:18', '2022-05-23 06:09:18'),
(15, 'jose gabriel yyu', 'jhon205@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:10:29', '2022-05-23 06:10:29'),
(16, 'jose gabriel yyu', 'jhon206@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:11:16', '2022-05-23 06:11:16'),
(17, 'jose gabriel yyu', 'jhon207@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:13:00', '2022-05-23 06:13:00'),
(18, 'alex perez', 'jhon208@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:23:47', '2022-05-23 06:23:47'),
(19, 'alex perez', 'jhon209@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:30:13', '2022-05-23 06:30:13'),
(20, 'alex perez', 'jhon210@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:32:23', '2022-05-23 06:32:23'),
(21, 'alex  andrea perez', 'jhon211@mail.com', 'M', 1, 0, 'test axct', '2022-05-23 06:39:45', '2022-05-23 13:29:07'),
(22, 'alex perez', 'jhon212@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:46:57', '2022-05-23 06:46:57'),
(23, 'alex perez', 'jhon213@mail.com', 'M', 1, 1, 'test', '2022-05-23 06:47:39', '2022-05-23 06:47:39'),
(25, 'julio torres', 'torres2@mail.com', 'M', 1, 1, 'prueba', '2022-05-23 07:02:39', '2022-05-23 07:02:39'),
(26, 'Paula sorie', 'sorie@mail.com', 'F', 1, 1, 'prueba test', '2022-05-23 07:21:08', '2022-05-23 14:37:09'),
(27, 'otto f', 'otot@mail.com', 'M', 1, 1, 'prueba', '2022-05-23 10:03:17', '2022-05-23 10:03:17'),
(28, 'angy pulido act', 'angy@mail.com', 'M', 8, 1, 'prueba test', '2022-05-23 10:09:31', '2022-05-23 12:30:16'),
(29, 'harris tecn', 'arris@mail.com', 'M', 5, 1, 'test josega', '2022-05-23 16:00:41', '2022-05-23 16:01:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_rol`
--

CREATE TABLE `empleado_rol` (
  `empleado_id` bigint(20) UNSIGNED NOT NULL,
  `rol_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_roles`
--

CREATE TABLE `empleado_roles` (
  `empleado_id` bigint(20) UNSIGNED NOT NULL,
  `rol_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleado_roles`
--

INSERT INTO `empleado_roles` (`empleado_id`, `rol_id`, `created_at`, `updated_at`) VALUES
(27, 1, '2022-05-23 06:02:27', '2022-05-23 06:02:27'),
(27, 2, '2022-05-23 06:02:27', '2022-05-23 06:02:27'),
(27, 3, '2022-05-23 06:02:27', '2022-05-23 06:02:27'),
(27, 4, '2022-05-23 06:02:27', '2022-05-23 06:02:27'),
(27, 5, '2022-05-23 06:02:27', '2022-05-23 06:02:27'),
(28, 1, '2022-05-23 12:30:16', '2022-05-23 12:30:16'),
(28, 2, '2022-05-23 12:30:16', '2022-05-23 12:30:16'),
(21, 1, '2022-05-23 13:37:16', '2022-05-23 13:37:16'),
(21, 2, '2022-05-23 13:37:16', '2022-05-23 13:37:16'),
(21, 7, '2022-05-23 13:37:17', '2022-05-23 13:37:17'),
(21, 8, '2022-05-23 13:37:17', '2022-05-23 13:37:17'),
(3, 4, '2022-05-23 14:02:21', '2022-05-23 14:02:21'),
(26, 3, '2022-05-23 14:37:09', '2022-05-23 14:37:09'),
(26, 5, '2022-05-23 14:37:09', '2022-05-23 14:37:09'),
(26, 6, '2022-05-23 14:37:09', '2022-05-23 14:37:09'),
(26, 7, '2022-05-23 14:37:09', '2022-05-23 14:37:09'),
(2, 2, '2022-05-23 14:37:23', '2022-05-23 14:37:23'),
(2, 3, '2022-05-23 14:37:23', '2022-05-23 14:37:23'),
(29, 4, '2022-05-23 16:01:25', '2022-05-23 16:01:25'),
(29, 5, '2022-05-23 16:01:25', '2022-05-23 16:01:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_20_180858_areas', 1),
(6, '2022_05_20_182258_areas', 2),
(7, '2022_05_20_182735_areas', 3),
(8, '2022_05_20_182746_empleados', 3),
(9, '2022_05_20_182906_roles', 4),
(10, '2022_05_20_182919_empleado_rol', 4),
(11, '2022_05_23_021637_empleado_roles', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Desarrollador', NULL, NULL),
(2, 'Analista', NULL, NULL),
(3, 'Tester', NULL, NULL),
(4, 'Diseñador', NULL, NULL),
(5, 'Profesional PMO', NULL, NULL),
(6, 'Profesional de servicios', NULL, NULL),
(7, 'Auxiliar administrativo', NULL, NULL),
(8, 'Codirector', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'josega pulido', 'josegabriel300@gmail.com', NULL, '$2y$10$QMBJkewzKDGdN3wxhwlRyeYtAH2bSCitDKa2GJdEPRAdMjv6O0wzu', 'p2X4OveQgUU8Ewd7v5f0HauYZnTUNpCMoU5Msr1pBPdTlDIPFigu5VWJTPwr', '2022-05-20 23:43:43', '2022-05-20 23:43:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empleados_area_id_index` (`area_id`);

--
-- Indices de la tabla `empleado_rol`
--
ALTER TABLE `empleado_rol`
  ADD KEY `empleado_rol_empleado_id_index` (`empleado_id`),
  ADD KEY `empleado_rol_rol_id_index` (`rol_id`);

--
-- Indices de la tabla `empleado_roles`
--
ALTER TABLE `empleado_roles`
  ADD KEY `empleado_roles_empleado_id_index` (`empleado_id`),
  ADD KEY `empleado_roles_rol_id_index` (`rol_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empleado_rol`
--
ALTER TABLE `empleado_rol`
  ADD CONSTRAINT `empleado_rol_empleado_id_foreign` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `empleado_rol_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empleado_roles`
--
ALTER TABLE `empleado_roles`
  ADD CONSTRAINT `empleado_roles_empleado_id_foreign` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `empleado_roles_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
