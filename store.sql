-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 22 2021 г., 16:25
-- Версия сервера: 10.4.20-MariaDB
-- Версия PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `store`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 0, 'Users', 'fa-users', '/users', NULL, '2021-12-07 02:25:14', '2021-12-07 02:25:14'),
(9, 0, 0, 'Products', 'fa-th-list', '/products', NULL, '2021-12-07 02:27:15', '2021-12-07 02:27:15'),
(10, 0, 0, 'Orders', 'fa-money', '/orders', NULL, '2021-12-07 06:32:05', '2021-12-07 06:32:05');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-12-06 07:41:23', '2021-12-06 07:41:23'),
(2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-06 07:41:33', '2021-12-06 07:41:33'),
(3, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-06 07:41:36', '2021-12-06 07:41:36'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-12-06 07:52:17', '2021-12-06 07:52:17'),
(5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-06 07:52:31', '2021-12-06 07:52:31'),
(6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-12-07 02:24:30', '2021-12-07 02:24:30'),
(7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 02:24:36', '2021-12-07 02:24:36'),
(8, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Users\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"X9d5KidmXtixyxEuNV6VpRBFJdrMkIGRFtNUdMDE\"}', '2021-12-07 02:25:13', '2021-12-07 02:25:13'),
(9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-12-07 02:25:14', '2021-12-07 02:25:14'),
(10, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-12-07 02:25:18', '2021-12-07 02:25:18'),
(11, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 02:25:20', '2021-12-07 02:25:20'),
(12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 02:25:49', '2021-12-07 02:25:49'),
(13, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Products\",\"icon\":\"fa-th-list\",\"uri\":\"\\/products\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"X9d5KidmXtixyxEuNV6VpRBFJdrMkIGRFtNUdMDE\"}', '2021-12-07 02:27:15', '2021-12-07 02:27:15'),
(14, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-12-07 02:27:15', '2021-12-07 02:27:15'),
(15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-12-07 02:27:25', '2021-12-07 02:27:25'),
(16, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 02:27:26', '2021-12-07 02:27:26'),
(17, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 02:27:42', '2021-12-07 02:27:42'),
(18, 1, 'admin/products', 'POST', '127.0.0.1', '{\"title\":\"product 1\",\"preview\":\"product 1 preview\",\"content\":\"product 1 content\",\"is_active\":\"1\",\"published_at\":\"me\",\"_token\":\"X9d5KidmXtixyxEuNV6VpRBFJdrMkIGRFtNUdMDE\",\"_previous_\":\"http:\\/\\/store.local\\/admin\\/products\"}', '2021-12-07 02:28:25', '2021-12-07 02:28:25'),
(19, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-12-07 02:28:25', '2021-12-07 02:28:25'),
(20, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-12-07 02:50:35', '2021-12-07 02:50:35'),
(21, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 02:50:37', '2021-12-07 02:50:37'),
(22, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-12-07 02:52:02', '2021-12-07 02:52:02'),
(23, 1, 'admin/products', 'POST', '127.0.0.1', '{\"image\":\"https:\\/\\/nikahnetworks.com\\/uploads\\/forget_pass_image\\/default_image.jpg\",\"title\":\"product 1\",\"preview\":\"product 1 preview\",\"content\":\"product 1 content\",\"is_active\":\"1\",\"published_at\":\"me\",\"_token\":\"X9d5KidmXtixyxEuNV6VpRBFJdrMkIGRFtNUdMDE\",\"_previous_\":\"http:\\/\\/store.local\\/admin\\/products\"}', '2021-12-07 02:52:57', '2021-12-07 02:52:57'),
(24, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-12-07 02:52:57', '2021-12-07 02:52:57'),
(25, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 02:55:44', '2021-12-07 02:55:44'),
(26, 1, 'admin/products', 'POST', '127.0.0.1', '{\"image\":\"https:\\/\\/nikahnetworks.com\\/uploads\\/forget_pass_image\\/default_image.jpg\",\"title\":\"product 2\",\"preview\":\"product 2 preview\",\"content\":\"product 2 content\",\"is_active\":\"1\",\"published_at\":\"admin\",\"_token\":\"X9d5KidmXtixyxEuNV6VpRBFJdrMkIGRFtNUdMDE\",\"_previous_\":\"http:\\/\\/store.local\\/admin\\/products\"}', '2021-12-07 02:57:25', '2021-12-07 02:57:25'),
(27, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-12-07 02:57:25', '2021-12-07 02:57:25'),
(28, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-12-07 03:00:15', '2021-12-07 03:00:15'),
(29, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 03:00:16', '2021-12-07 03:00:16'),
(30, 1, 'admin/products', 'POST', '127.0.0.1', '{\"image\":null,\"title\":\"product 3\",\"preview\":\"product 3 preview\",\"content\":\"product 3 content\",\"is_active\":null,\"published_at\":null,\"_token\":\"X9d5KidmXtixyxEuNV6VpRBFJdrMkIGRFtNUdMDE\",\"_previous_\":\"http:\\/\\/store.local\\/admin\\/products\"}', '2021-12-07 03:00:40', '2021-12-07 03:00:40'),
(31, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-12-07 03:00:40', '2021-12-07 03:00:40'),
(32, 1, 'admin/products', 'POST', '127.0.0.1', '{\"image\":null,\"title\":\"product 3\",\"preview\":\"product 3 preview\",\"content\":\"product 3 content\",\"is_active\":null,\"published_at\":null,\"_token\":\"X9d5KidmXtixyxEuNV6VpRBFJdrMkIGRFtNUdMDE\"}', '2021-12-07 03:01:29', '2021-12-07 03:01:29'),
(33, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-12-07 03:01:29', '2021-12-07 03:01:29'),
(34, 1, 'admin/products', 'POST', '127.0.0.1', '{\"image\":null,\"title\":\"product 3\",\"preview\":\"product 3 preview\",\"content\":\"product 3 content\",\"is_active\":null,\"published_at\":null,\"_token\":\"X9d5KidmXtixyxEuNV6VpRBFJdrMkIGRFtNUdMDE\"}', '2021-12-07 03:01:53', '2021-12-07 03:01:53'),
(35, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2021-12-07 03:01:53', '2021-12-07 03:01:53'),
(36, 1, 'admin/products', 'POST', '127.0.0.1', '{\"image\":null,\"title\":\"product 3\",\"preview\":\"product 3 preview\",\"content\":\"product 3 content\",\"is_active\":null,\"published_at\":null,\"_token\":\"X9d5KidmXtixyxEuNV6VpRBFJdrMkIGRFtNUdMDE\"}', '2021-12-07 03:02:35', '2021-12-07 03:02:35'),
(37, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-12-07 03:02:35', '2021-12-07 03:02:35'),
(38, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-12-07 03:02:38', '2021-12-07 03:02:38'),
(39, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 03:03:21', '2021-12-07 03:03:21'),
(40, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"image\":\"https:\\/\\/nikahnetworks.com\\/uploads\\/forget_pass_image\\/default_image.jpg\",\"title\":\"product 3\",\"preview\":\"product 3 preview\",\"content\":\"product 3 content\",\"is_active\":\"1\",\"published_at\":\"me\",\"_token\":\"X9d5KidmXtixyxEuNV6VpRBFJdrMkIGRFtNUdMDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/store.local\\/admin\\/products\"}', '2021-12-07 03:03:36', '2021-12-07 03:03:36'),
(41, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-12-07 03:03:36', '2021-12-07 03:03:36'),
(42, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 03:03:49', '2021-12-07 03:03:49'),
(43, 1, 'admin/products', 'POST', '127.0.0.1', '{\"image\":\"https:\\/\\/nikahnetworks.com\\/uploads\\/forget_pass_image\\/default_image.jpg\",\"title\":\"product 4\",\"preview\":\"product 4 Preview\",\"content\":\"product 4 Content\",\"is_active\":\"1\",\"published_at\":\"admin\",\"_token\":\"X9d5KidmXtixyxEuNV6VpRBFJdrMkIGRFtNUdMDE\",\"_previous_\":\"http:\\/\\/store.local\\/admin\\/products\"}', '2021-12-07 03:04:19', '2021-12-07 03:04:19'),
(44, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-12-07 03:04:19', '2021-12-07 03:04:19'),
(45, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 03:04:21', '2021-12-07 03:04:21'),
(46, 1, 'admin/products', 'POST', '127.0.0.1', '{\"image\":\"https:\\/\\/nikahnetworks.com\\/uploads\\/forget_pass_image\\/default_image.jpg\",\"title\":\"product 5\",\"preview\":\"product 5 Preview\",\"content\":\"product 5 Content\",\"is_active\":\"1\",\"published_at\":\"admin\",\"_token\":\"X9d5KidmXtixyxEuNV6VpRBFJdrMkIGRFtNUdMDE\",\"_previous_\":\"http:\\/\\/store.local\\/admin\\/products\"}', '2021-12-07 03:04:46', '2021-12-07 03:04:46'),
(47, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-12-07 03:04:46', '2021-12-07 03:04:46'),
(48, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2021-12-07 03:23:25', '2021-12-07 03:23:25'),
(49, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 06:24:38', '2021-12-07 06:24:38'),
(50, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 06:24:39', '2021-12-07 06:24:39'),
(51, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 06:31:28', '2021-12-07 06:31:28'),
(52, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Orders\",\"icon\":\"fa-money\",\"uri\":\"\\/orders\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"iumYTWNbqhhO9JNBFpfgEbfxkPKNTWBMYbUfiHOz\"}', '2021-12-07 06:32:05', '2021-12-07 06:32:05'),
(53, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-12-07 06:32:06', '2021-12-07 06:32:06'),
(54, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-12-07 06:32:08', '2021-12-07 06:32:08'),
(55, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2021-12-07 06:32:38', '2021-12-07 06:32:38'),
(56, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2021-12-07 06:33:06', '2021-12-07 06:33:06'),
(57, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2021-12-07 06:35:21', '2021-12-07 06:35:21'),
(58, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2021-12-07 06:38:30', '2021-12-07 06:38:30'),
(59, 1, 'admin/orders/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 06:38:35', '2021-12-07 06:38:35'),
(60, 1, 'admin/orders/14', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"name\":\"\\u041f\\u0435\\u0442\\u044f\",\"email\":\"petr@mail.ru\",\"phone\":\"12345678999\",\"address\":\"\\u0423\\u043b\\u044c\\u044f\\u043d\\u043e\\u0432\\u0441\\u043a\",\"comment\":null,\"amount\":\"3000.00\",\"status\":\"1\",\"_token\":\"ba6UBtKoOKWrOoqM80ItNHbPnsKqtGcCvygi0IaB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/store.local\\/admin\\/orders\"}', '2021-12-07 06:38:44', '2021-12-07 06:38:44'),
(61, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2021-12-07 06:38:44', '2021-12-07 06:38:44'),
(62, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 06:41:14', '2021-12-07 06:41:14'),
(63, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 06:41:15', '2021-12-07 06:41:15'),
(64, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-12-07 06:41:20', '2021-12-07 06:41:20'),
(65, 1, 'admin/auth/login', 'POST', '127.0.0.1', '{\"username\":\"admin\",\"password\":\"admin\",\"_token\":\"jaOBSf6MWuW0fbYKBvcLPzqfLas4iQ4Oj7JeqyzR\"}', '2021-12-22 11:15:09', '2021-12-22 11:15:09'),
(66, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-12-22 11:15:10', '2021-12-22 11:15:10');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2021-12-06 07:38:12', '2021-12-06 07:38:12');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$RDm3IKvDn9ADGRmYaYE3PONPpTJBfSb.w7f8K9uKp2TOIByXX/fBG', 'Administrator', NULL, 'NSom3IwkyPOnN1FQxtwY8yDSLUnSzHrkEouTWQozF0ZqQSQJbmRVgPGveOzo', '2021-12-06 07:38:12', '2021-12-06 07:38:12');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `baskets`
--

CREATE TABLE `baskets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `baskets`
--

INSERT INTO `baskets` (`id`, `created_at`, `updated_at`) VALUES
(1, '2021-12-07 03:48:26', '2021-12-22 11:23:52'),
(2, '2021-12-07 03:53:40', '2021-12-07 03:53:40'),
(3, '2021-12-07 03:53:49', '2021-12-07 03:53:49'),
(4, '2021-12-07 03:54:00', '2021-12-07 03:54:00'),
(5, '2021-12-07 03:54:17', '2021-12-07 03:54:17'),
(6, '2021-12-07 03:55:19', '2021-12-07 03:55:19'),
(8, '2021-12-07 03:59:35', '2021-12-07 03:59:35'),
(9, '2021-12-07 04:00:17', '2021-12-07 04:00:17'),
(10, '2021-12-07 04:00:50', '2021-12-07 04:00:50'),
(11, '2021-12-07 04:01:57', '2021-12-07 04:05:36'),
(12, '2021-12-07 05:00:14', '2021-12-07 05:00:14'),
(13, '2021-12-07 05:01:07', '2021-12-07 05:01:07'),
(14, '2021-12-07 05:01:07', '2021-12-07 05:01:07'),
(15, '2021-12-07 05:01:34', '2021-12-07 05:01:34'),
(16, '2021-12-07 05:01:39', '2021-12-07 05:01:39'),
(17, '2021-12-07 05:01:41', '2021-12-07 05:01:41'),
(18, '2021-12-07 05:02:38', '2021-12-07 05:02:38'),
(19, '2021-12-07 05:02:39', '2021-12-07 05:02:39'),
(20, '2021-12-07 05:02:41', '2021-12-07 05:02:41'),
(21, '2021-12-07 05:02:46', '2021-12-07 05:02:46'),
(22, '2021-12-07 05:02:47', '2021-12-07 05:02:47'),
(23, '2021-12-07 05:05:24', '2021-12-07 05:05:24'),
(24, '2021-12-07 05:05:26', '2021-12-07 05:05:26'),
(25, '2021-12-07 05:06:56', '2021-12-07 05:06:56'),
(26, '2021-12-07 05:06:57', '2021-12-07 05:06:57'),
(27, '2021-12-07 05:07:01', '2021-12-07 05:07:01'),
(28, '2021-12-07 05:07:25', '2021-12-07 05:07:25'),
(29, '2021-12-07 05:09:33', '2021-12-07 05:09:33'),
(30, '2021-12-07 05:10:51', '2021-12-07 05:10:51'),
(31, '2021-12-07 05:12:59', '2021-12-07 05:12:59'),
(32, '2021-12-07 05:26:27', '2021-12-07 05:26:27'),
(33, '2021-12-07 05:37:58', '2021-12-07 05:37:58'),
(34, '2021-12-07 05:38:35', '2021-12-07 05:38:35'),
(35, '2021-12-07 05:39:23', '2021-12-07 05:39:23'),
(36, '2021-12-07 05:40:16', '2021-12-07 05:40:16'),
(37, '2021-12-07 05:40:30', '2021-12-07 05:40:30'),
(38, '2021-12-07 05:40:47', '2021-12-07 05:40:47'),
(39, '2021-12-07 05:41:10', '2021-12-07 05:41:10'),
(40, '2021-12-07 05:48:03', '2021-12-07 05:48:03'),
(41, '2021-12-07 05:49:32', '2021-12-07 05:49:32'),
(44, '2021-12-07 05:57:12', '2021-12-07 05:57:12'),
(45, '2021-12-07 05:57:22', '2021-12-07 05:57:22'),
(46, '2021-12-07 05:57:24', '2021-12-07 05:57:24'),
(47, '2021-12-07 05:57:27', '2021-12-07 05:57:27'),
(48, '2021-12-07 05:57:31', '2021-12-07 05:57:31'),
(49, '2021-12-07 05:57:32', '2021-12-07 05:57:32'),
(50, '2021-12-07 05:57:37', '2021-12-07 05:57:37'),
(51, '2021-12-07 05:57:37', '2021-12-07 05:57:37'),
(52, '2021-12-07 05:58:25', '2021-12-07 05:58:25'),
(53, '2021-12-07 05:58:26', '2021-12-07 05:58:26'),
(59, '2021-12-07 06:38:24', '2021-12-07 06:38:24');

-- --------------------------------------------------------

--
-- Структура таблицы `basket_products`
--

CREATE TABLE `basket_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `basket_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2021_12_07_060309_create_products_table', 2),
(10, '2021_12_07_073129_create_baskets_table', 3),
(13, '2021_12_07_093143_create_orders_table', 4),
(14, '2021_12_07_093153_create_order_items_table', 4),
(15, '2021_12_07_073214_create_basket_products_table', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `comment`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Имя Фамилия', 'petr@mail.ru', '89898989898', 'Ульяновск', 'Комментарий к заказу', '0.00', 0, '2021-12-07 05:53:17', '2021-12-07 05:53:17'),
(2, 1, 'Имя Фамилия', 'petr@mail.ru', '89898989898', 'Ульяновск', 'Комментарий к заказу', '0.00', 0, '2021-12-07 05:56:53', '2021-12-07 05:56:53'),
(3, 1, 'Фамилия имя', 'mail@mail.ru', '12345678999', 'Ульяновск', 'Комментарий', '0.00', 0, '2021-12-07 06:02:41', '2021-12-07 06:02:41'),
(4, 1, 'Фамилия имя', 'mail@mail.ru', '12345678999', 'Ульяновск', 'Комментарий', '0.00', 0, '2021-12-07 06:02:56', '2021-12-07 06:02:56'),
(5, 1, 'Фамилия Имя', 'mail@mail.ru', '12345678999', 'Ульяновск', 'Комментарий', '0.00', 0, '2021-12-07 06:03:46', '2021-12-07 06:03:46'),
(6, 1, 'Фамилия имя', 'mail@mail.ru', '12345678999', 'Ульяновск', 'Комментарий', '0.00', 0, '2021-12-07 06:03:55', '2021-12-07 06:03:55'),
(7, 1, 'a', 'mail@mail.ru', '12345678999', 'Ульяновск', NULL, '0.00', 0, '2021-12-07 06:04:37', '2021-12-07 06:04:37'),
(8, 1, 'a', 'mail@mail.ru', '12345678999', 'Ульяновск', NULL, '0.00', 0, '2021-12-07 06:13:33', '2021-12-07 06:13:33'),
(9, 1, 'Фамилия имя', 'mail@mail.ru', '12345678999', 'Ульяновск', 'Комментарий', '0.00', 0, '2021-12-07 06:14:00', '2021-12-07 06:14:00'),
(10, 1, 'Фамилия имя', 'mail@mail.ru', '12345678999', 'Ульяновск', 'Комментарий', '0.00', 0, '2021-12-07 06:15:14', '2021-12-07 06:15:14'),
(11, 1, 'name', 'adress@mail.ru', '11111111111', 'adress', 'comment', '0.00', 0, '2021-12-07 06:16:36', '2021-12-07 06:16:36'),
(14, 1, 'Петя', 'petr@mail.ru', '12345678999', 'Ульяновск', NULL, '3000.00', 1, '2021-12-07 06:38:24', '2021-12-07 06:38:44');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `cost` decimal(10,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `quantity`, `cost`) VALUES
(1, 10, 4, 'product 4', '1000.00', 7, '0.00'),
(2, 11, 3, 'product 3', '1000.00', 1, '1000.00'),
(6, 14, 3, 'product 3', '1000.00', 3, '3000.00');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` int(11) NOT NULL,
  `preview` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `published_at` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `image`, `title`, `cost`, `preview`, `content`, `is_active`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'https://nikahnetworks.com/uploads/forget_pass_image/default_image.jpg', 'product 1', 1000, 'product 1 preview', 'product 1 content', 1, 'me', '2021-12-07 02:52:57', '2021-12-07 02:52:57'),
(2, 'https://nikahnetworks.com/uploads/forget_pass_image/default_image.jpg', 'product 2', 1000, 'product 2 preview', 'product 2 content', 1, 'admin', '2021-12-07 02:57:25', '2021-12-07 02:57:25'),
(3, 'https://nikahnetworks.com/uploads/forget_pass_image/default_image.jpg', 'product 3', 1000, 'product 3 preview', 'product 3 content', 1, 'me', '2021-12-07 03:02:35', '2021-12-07 03:03:36'),
(4, 'https://nikahnetworks.com/uploads/forget_pass_image/default_image.jpg', 'product 4', 1000, 'product 4 Preview', 'product 4 Content', 1, 'admin', '2021-12-07 03:04:19', '2021-12-07 03:04:19'),
(5, 'https://nikahnetworks.com/uploads/forget_pass_image/default_image.jpg', 'product 5', 1000, 'product 5 Preview', 'product 5 Content', 1, 'admin', '2021-12-07 03:04:46', '2021-12-07 03:04:46');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Петя', 'petr@mail.ru', NULL, '$2y$10$T.kr1T2JjBt/YM2Xzor5.efrduKKRgUHRrs2mf7yngsykED93EvUy', NULL, '2021-12-07 01:54:27', '2021-12-07 01:54:27');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Индексы таблицы `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Индексы таблицы `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Индексы таблицы `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Индексы таблицы `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Индексы таблицы `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Индексы таблицы `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Индексы таблицы `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Индексы таблицы `baskets`
--
ALTER TABLE `baskets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `basket_products`
--
ALTER TABLE `basket_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `basket_products_basket_id_foreign` (`basket_id`),
  ADD KEY `basket_products_products_id_foreign` (`products_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `baskets`
--
ALTER TABLE `baskets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `basket_products`
--
ALTER TABLE `basket_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `basket_products`
--
ALTER TABLE `basket_products`
  ADD CONSTRAINT `basket_products_basket_id_foreign` FOREIGN KEY (`basket_id`) REFERENCES `baskets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `basket_products_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
