-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 14 2023 г., 10:47
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `garbagedb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `garbage`
--

CREATE TABLE `garbage` (
  `garbageID` int(11) NOT NULL,
  `garbage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `garbage`
--

INSERT INTO `garbage` (`garbageID`, `garbage`, `description`) VALUES
(1, 'Скло', 'бутылки, стаканы, стеклянные банкии'),
(2, 'Бумага', 'газеты, журналы, печатная продукция, макулатура'),
(3, 'Органические остатки', 'в частности пищевые отходы: овощи, фрукты, садовые отходы, обрезки, листья, трава');

-- --------------------------------------------------------

--
-- Структура таблицы `garbage_house`
--

CREATE TABLE `garbage_house` (
  `garbage_houseID` int(11) NOT NULL,
  `houseID` int(11) NOT NULL,
  `garbageID` int(11) NOT NULL,
  `currentFullness` float DEFAULT 0,
  `maxFullness` float NOT NULL,
  `priceID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `garbage_house`
--

INSERT INTO `garbage_house` (`garbage_houseID`, `houseID`, `garbageID`, `currentFullness`, `maxFullness`, `priceID`) VALUES
(17, 6, 2, 30.6, 115, 4),
(21, 7, 1, 2, 200, 8),
(22, 7, 2, 20, 100, 9),
(23, 6, 1, 72.7, 210, 10),
(24, 6, 3, 68.5, 100, 11),
(26, 1, 1, 0, 245, 13),
(27, 1, 2, 0, 150, 14),
(28, 27, 1, 0, 150, 15),
(29, 1, 3, 0, 100, 16);

-- --------------------------------------------------------

--
-- Структура таблицы `house`
--

CREATE TABLE `house` (
  `houseID` int(11) NOT NULL,
  `houseTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `house`
--

INSERT INTO `house` (`houseID`, `houseTitle`, `location`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Diamond', 'Green street', 'Big 25 storey building', '2023-04-06 21:00:00', '2023-06-06 08:09:17'),
(2, 'Small', 'Sumska', '4 storey building', '2023-03-19 18:55:30', '2023-03-19 18:55:30'),
(3, 'New', 'Plehanovska', '4 storey building', '2023-03-19 18:58:08', '2023-03-19 18:58:08'),
(4, 'Hold', 'Heroiv', '4 storey building', '2023-03-19 18:59:57', '2023-03-19 18:59:57'),
(5, 'Modern', 'Klochkovska', '4 storey building', '2023-03-19 19:01:10', '2023-05-17 06:12:51'),
(6, 'Comfort', 'Nauchnay', '11 storey building', '2023-03-19 19:02:52', '2023-06-13 20:11:26'),
(7, 'Murray, King and Dickens', '402 Metz Unions\nEast Jonatanmouth, SD 10199', '15 storey building', '2023-03-26 07:34:23', '2023-03-26 07:34:23'),
(8, 'Cruickshank, Schimmel and Sipes', '778 Connelly Plains\nChrisport, MI 33270-5907', '16 storey building', '2023-03-26 07:34:23', '2023-03-26 07:34:23'),
(9, 'Corwin-Doyle', '97697 Abby Harbor Suite 560\nDonniechester, KS 14132-0179', '17 storey building', '2023-03-26 07:34:23', '2023-03-26 07:34:23'),
(10, 'Grady-Bailey', '90587 Rolfson Track Suite 724\nEast Mervin, MA 00369-4316', '18 storey building', '2023-03-26 07:34:23', '2023-03-26 07:34:23'),
(11, 'Roob-Green', '526 Lang Flats Apt. 534\nAbshirebury, NE 38068-7713', '19 storey building', '2023-03-26 07:34:23', '2023-03-26 07:34:23'),
(12, 'Mills-Effertz', '9863 Stamm Square\nNew Samara, MI 33006-0582', '20 storey building', '2023-03-26 07:34:24', '2023-03-26 07:34:24'),
(13, 'Abernathy, Keeling and Davis', '181 Maximillia Grove\nEleanoramouth, NE 50575-1326', '21 storey building', '2023-03-26 07:34:24', '2023-03-26 07:34:24'),
(14, 'Ledner-Bednar', '6520 Viva Square Apt. 163\nWest Winnifred, MS 40414', '22 storey building', '2023-03-26 07:34:24', '2023-03-26 07:34:24'),
(15, 'Goodwin, Johns and Considine', '94516 Collier River\nLavonmouth, DE 27282', '23 storey building', '2023-03-26 07:34:24', '2023-03-26 07:34:24'),
(16, 'Schaden and Sons', '469 Anya River Suite 098\nCollinsport, IL 11946-8742', '24 storey building', '2023-03-26 07:34:24', '2023-03-26 07:34:24'),
(17, 'Big shop', 'Kiev', '25 storey building', '2023-05-17 05:56:29', '2023-05-17 05:57:02'),
(18, 'Mexican', 'Way street', '31 storey building', '2023-05-17 12:23:41', '2023-05-17 12:23:57'),
(26, 'Medium', 'Central street', '11 storey building', '2023-06-10 18:16:35', '2023-06-10 18:16:35'),
(27, 'ghfdhbghszfbhg', 'gfdchbsfhsfhbfhfd', 'gdaghshfdbhsgsdfg', '2023-06-11 21:21:04', '2023-06-11 21:21:13'),
(28, 'hfdghsdrfhs', 'hsfhdtgjhtdujrkryfhkityi', 'hsrfhdetyiyuoit7yi', '2023-06-13 20:12:41', '2023-06-13 20:12:47');

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
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2021_03_11_151108_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 19),
(1, 'App\\Models\\User', 50),
(1, 'App\\Models\\User', 51),
(1, 'App\\Models\\User', 52),
(1, 'App\\Models\\User', 53),
(1, 'App\\Models\\User', 54),
(1, 'App\\Models\\User', 55),
(1, 'App\\Models\\User', 56),
(1, 'App\\Models\\User', 57),
(1, 'App\\Models\\User', 58),
(1, 'App\\Models\\User', 59),
(1, 'App\\Models\\User', 60),
(1, 'App\\Models\\User', 61),
(1, 'App\\Models\\User', 62),
(1, 'App\\Models\\User', 63),
(1, 'App\\Models\\User', 64),
(1, 'App\\Models\\User', 65),
(1, 'App\\Models\\User', 66),
(1, 'App\\Models\\User', 67),
(1, 'App\\Models\\User', 68),
(1, 'App\\Models\\User', 69),
(1, 'App\\Models\\User', 70),
(1, 'App\\Models\\User', 71),
(1, 'App\\Models\\User', 72),
(1, 'App\\Models\\User', 73),
(1, 'App\\Models\\User', 74),
(1, 'App\\Models\\User', 75),
(1, 'App\\Models\\User', 76),
(1, 'App\\Models\\User', 77),
(1, 'App\\Models\\User', 78),
(1, 'App\\Models\\User', 79),
(1, 'App\\Models\\User', 80),
(1, 'App\\Models\\User', 81),
(1, 'App\\Models\\User', 82),
(1, 'App\\Models\\User', 83),
(1, 'App\\Models\\User', 84),
(1, 'App\\Models\\User', 85),
(1, 'App\\Models\\User', 86),
(1, 'App\\Models\\User', 87),
(1, 'App\\Models\\User', 88),
(1, 'App\\Models\\User', 89),
(1, 'App\\Models\\User', 90),
(1, 'App\\Models\\User', 91),
(1, 'App\\Models\\User', 92),
(1, 'App\\Models\\User', 93),
(1, 'App\\Models\\User', 94),
(1, 'App\\Models\\User', 95),
(1, 'App\\Models\\User', 96),
(1, 'App\\Models\\User', 97),
(1, 'App\\Models\\User', 98),
(1, 'App\\Models\\User', 99),
(1, 'App\\Models\\User', 100),
(1, 'App\\Models\\User', 101),
(1, 'App\\Models\\User', 102),
(1, 'App\\Models\\User', 103),
(1, 'App\\Models\\User', 104),
(1, 'App\\Models\\User', 105),
(1, 'App\\Models\\User', 108),
(1, 'App\\Models\\User', 110),
(1, 'App\\Models\\User', 112),
(1, 'App\\Models\\User', 113),
(1, 'App\\Models\\User', 114),
(1, 'App\\Models\\User', 115),
(1, 'App\\Models\\User', 116),
(1, 'App\\Models\\User', 117),
(1, 'App\\Models\\User', 118),
(2, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 106),
(3, 'App\\Models\\User', 111);

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

--
-- Дамп данных таблицы `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(279, 'App\\Models\\User', 105, 'token', 'd3d979f08e665e0f57fc8d1f43fd49a78a71a6d6215e6dbe53b9569d61f06a89', '[\"*\"]', '2023-05-16 05:16:19', '2023-05-16 05:15:30', '2023-05-16 05:16:19'),
(280, 'App\\Models\\User', 106, 'token', '3a6695580ed73c60bf02c05a5c2d632150471c80240ba22e3802a947210e43ef', '[\"*\"]', NULL, '2023-05-16 05:17:25', '2023-05-16 05:17:25'),
(281, 'App\\Models\\User', 106, 'token', 'f44fd22e4aa72b7a390ce7729379dacf44d52574371c0e05edcadc674348b266', '[\"*\"]', NULL, '2023-05-16 05:20:53', '2023-05-16 05:20:53'),
(282, 'App\\Models\\User', 105, 'token', 'f9e3a4a55b4c5a6576874f3f0019446ea26c6a5670eed37ae5d280358c037453', '[\"*\"]', '2023-05-16 07:08:28', '2023-05-16 05:27:02', '2023-05-16 07:08:28'),
(283, 'App\\Models\\User', 106, 'token', '729e4e925ffd950ae944dcfd9215413e2d0a3003f0c521f4155df78549241083', '[\"*\"]', NULL, '2023-05-16 05:30:03', '2023-05-16 05:30:03'),
(284, 'App\\Models\\User', 106, 'token', 'f57db7a5fe8043b7a3dda05748693dc4acf0597cc6d726ddbdf7c9cdb8ba5901', '[\"*\"]', NULL, '2023-05-16 05:30:29', '2023-05-16 05:30:29'),
(285, 'App\\Models\\User', 106, 'token', '223eb228323f7d2bd68c3828ce9e098fa2616037e79f590188db8f6e40c04673', '[\"*\"]', NULL, '2023-05-16 05:31:56', '2023-05-16 05:31:56'),
(286, 'App\\Models\\User', 106, 'token', '285384cc5a22c26676aac38b7a0af551e1270f3d47bf568a02f8130aac460be6', '[\"*\"]', NULL, '2023-05-16 05:34:08', '2023-05-16 05:34:08'),
(287, 'App\\Models\\User', 106, 'token', '8d64afb5859308b1bcf51843f9b3fb3a28c584121e19857cf357d7c1a427d249', '[\"*\"]', '2023-05-16 05:39:34', '2023-05-16 05:35:09', '2023-05-16 05:39:34'),
(288, 'App\\Models\\User', 106, 'token', '721fba0a3a446660d076c4a42355901154c566ae1036e5bde548c6a1c993b957', '[\"*\"]', '2023-05-16 05:44:47', '2023-05-16 05:40:40', '2023-05-16 05:44:47'),
(289, 'App\\Models\\User', 106, 'token', '201403e5a9b57b6c99ec01492e1245bc0d7496367cf95e30276db0b5a6d3f5e7', '[\"*\"]', '2023-05-16 05:52:00', '2023-05-16 05:45:06', '2023-05-16 05:52:00'),
(290, 'App\\Models\\User', 18, 'token', '3a1c58208ad102eeb83a17ad0a06c93029372e2fbe0c8cd6afa7cd7327b5daeb', '[\"*\"]', '2023-05-17 05:21:07', '2023-05-16 05:52:06', '2023-05-17 05:21:07'),
(291, 'App\\Models\\User', 106, 'token', '60c4507000ab01d2e4d3c0c66866006f227fc549ef13a186bb28ad91f8acfd6a', '[\"*\"]', NULL, '2023-05-16 06:16:50', '2023-05-16 06:16:50'),
(292, 'App\\Models\\User', 106, 'token', '4564bfa57ad63ab05d896c5a517e4086566397ea1a17c0e1f1c00e831fd3737e', '[\"*\"]', NULL, '2023-05-16 06:16:52', '2023-05-16 06:16:52'),
(293, 'App\\Models\\User', 106, 'token', 'd9382f84f251512de3eaa6ffbc1a74c346c7df70d6938b9f4bd54ddb122700d9', '[\"*\"]', '2023-05-16 06:17:22', '2023-05-16 06:16:59', '2023-05-16 06:17:22'),
(294, 'App\\Models\\User', 107, 'token', 'd3f6918d78370d27ceffa5b982422826626866b7698cc763add88be85a06f817', '[\"*\"]', '2023-05-16 06:18:23', '2023-05-16 06:18:22', '2023-05-16 06:18:23'),
(295, 'App\\Models\\User', 106, 'token', 'e8e2112bc309b6ecd2808cffc5d7c53080053d9fee4961b3822319da7a16050b', '[\"*\"]', '2023-05-16 06:31:25', '2023-05-16 06:23:16', '2023-05-16 06:31:25'),
(296, 'App\\Models\\User', 106, 'token', 'be693ce4eac82bc06fbb7e6f42bdb0aabe6e98dae2c4a31c843eb2cb35a83aac', '[\"*\"]', '2023-05-16 06:31:55', '2023-05-16 06:31:55', '2023-05-16 06:31:55'),
(297, 'App\\Models\\User', 106, 'token', '70ce9e4ff5d8c70dc9fbf785c88b50cda39e06f111f8623f19078cb68ff5aa13', '[\"*\"]', '2023-05-16 06:40:21', '2023-05-16 06:36:25', '2023-05-16 06:40:21'),
(298, 'App\\Models\\User', 18, 'token', '2da924b5ca1370a324fbd987a585f2ecf38c8b8aeca6a4746be7654870fd01c5', '[\"*\"]', '2023-05-16 07:10:56', '2023-05-16 06:41:48', '2023-05-16 07:10:56'),
(299, 'App\\Models\\User', 106, 'token', '266021e48546ddfac38ce0d4bfb946aa126b3d44ee3404e36c629aea9c217626', '[\"*\"]', '2023-05-17 05:31:27', '2023-05-17 05:21:47', '2023-05-17 05:31:27'),
(300, 'App\\Models\\User', 106, 'token', 'a801e7a86f12c1a4e2135f11b777315fc4157eeab93262403d059763c32792ee', '[\"*\"]', '2023-05-17 05:53:11', '2023-05-17 05:31:43', '2023-05-17 05:53:11'),
(301, 'App\\Models\\User', 18, 'token', '3e3f825f1e166598cbc8024e63860a3517bcd097ca0d620d87ff849da4756a4a', '[\"*\"]', '2023-05-17 06:26:52', '2023-05-17 05:54:12', '2023-05-17 06:26:52'),
(302, 'App\\Models\\User', 106, 'token', '4aa6a2658a99824b19d7811331a85c735a6126abc24d565a7bd4e29b4b044f0c', '[\"*\"]', '2023-05-17 06:27:33', '2023-05-17 06:27:32', '2023-05-17 06:27:33'),
(303, 'App\\Models\\User', 18, 'token', '29ad7fc368b82d6771a56ffbb35887e37437eaac75375dbcacc23e988d552286', '[\"*\"]', '2023-05-17 11:48:12', '2023-05-17 06:28:11', '2023-05-17 11:48:12'),
(304, 'App\\Models\\User', 108, 'token', 'e8b42041b5f1bf84cf2928e8ef512c6fdd9a3f0f39049b6084a895080f372aa6', '[\"*\"]', '2023-05-17 11:50:47', '2023-05-17 11:49:21', '2023-05-17 11:50:47'),
(305, 'App\\Models\\User', 106, 'token', '431017b00a54c56f3a8c9d77ef3de0b7dc4ad702ef59c84e37106511ce44cf26', '[\"*\"]', '2023-05-17 12:11:48', '2023-05-17 11:50:55', '2023-05-17 12:11:48'),
(306, 'App\\Models\\User', 18, 'token', '2d629c772cb8adcafeea44d076a8cc3ad2e3161da07449ceb61d84f0c74d34b7', '[\"*\"]', '2023-05-17 12:14:44', '2023-05-17 12:12:18', '2023-05-17 12:14:44'),
(307, 'App\\Models\\User', 106, 'token', 'be1e220d83167824dcaf8a244754b01d8e0cfef153d16dbbeb9b9019d255296b', '[\"*\"]', '2023-05-17 12:18:34', '2023-05-17 12:17:17', '2023-05-17 12:18:34'),
(308, 'App\\Models\\User', 18, 'token', 'f980032e97be4abddad69941d35a5416ba58763be436847fe78e8debfc2c6580', '[\"*\"]', '2023-05-17 12:33:56', '2023-05-17 12:19:40', '2023-05-17 12:33:56'),
(309, 'App\\Models\\User', 109, 'token', 'ec3fbd054cb4923da56982f5629d3ca9fbc41176cc7e0c2bdc698cfc8251a93a', '[\"*\"]', '2023-05-21 18:59:21', '2023-05-21 18:59:20', '2023-05-21 18:59:21'),
(310, 'App\\Models\\User', 108, 'token', '42c16c6acdd602eba2f9f56b685ae50da3dc0831ba5cc08bfb58d3b9185d00e4', '[\"*\"]', '2023-05-21 18:59:57', '2023-05-21 18:59:57', '2023-05-21 18:59:57'),
(311, 'App\\Models\\User', 18, 'token', 'e669975b9c1234e3857078bc970331d66cd0ad536398c3dede05d21860def158', '[\"*\"]', '2023-05-21 19:00:16', '2023-05-21 19:00:14', '2023-05-21 19:00:16'),
(312, 'App\\Models\\User', 106, 'token', 'd9912b55c5ee8646dab66623e3ce10db407879d84634250b706e9771e4cfce12', '[\"*\"]', '2023-05-21 19:00:36', '2023-05-21 19:00:35', '2023-05-21 19:00:36'),
(313, 'App\\Models\\User', 18, 'token', 'c7e41b79eef81b180b50ad5b48f6acf12a655e0de6a539835dee1fe22915062e', '[\"*\"]', '2023-05-25 08:07:32', '2023-05-25 08:07:30', '2023-05-25 08:07:32'),
(314, 'App\\Models\\User', 18, 'token', '1de763c2c8529ce0cd8bafc3e3be507e896abf3c4e1bed97c4532088edbbc472', '[\"*\"]', '2023-05-28 17:52:00', '2023-05-28 17:51:11', '2023-05-28 17:52:00'),
(315, 'App\\Models\\User', 18, 'token', '4d288474336bcb2a92e0bdb395b0eba6199f2b5c9cd48f726907518d74a1bc7e', '[\"*\"]', '2023-05-29 17:45:47', '2023-05-29 17:43:10', '2023-05-29 17:45:47'),
(316, 'App\\Models\\User', 18, 'token', '5d561424101769ebcd49248d9ddcd5bd22aed57ec44286099fa8bad590a0801e', '[\"*\"]', '2023-05-30 16:08:20', '2023-05-30 16:00:17', '2023-05-30 16:08:20'),
(317, 'App\\Models\\User', 18, 'token', 'dcb8e7921ad52df830b8358ddb154b77194064b5fcb8b1026bbbff07bb983523', '[\"*\"]', '2023-05-30 16:17:44', '2023-05-30 16:13:26', '2023-05-30 16:17:44'),
(318, 'App\\Models\\User', 18, 'token', '3d2b440d70e670b18bc1bae6445b0d65e9a54468582c962a294bafa677582a93', '[\"*\"]', '2023-06-01 18:30:59', '2023-06-01 15:37:58', '2023-06-01 18:30:59'),
(319, 'App\\Models\\User', 108, 'token', 'be9cbb97e13b464005b03b3ea80db00b0008047c8541dbb8e60091030c258f4a', '[\"*\"]', '2023-06-01 18:35:20', '2023-06-01 18:35:00', '2023-06-01 18:35:20'),
(320, 'App\\Models\\User', 18, 'token', '828d6a7fcf77a8ed5e3db964a4bd108bbf2ea9267a79df90abe32a85a703ae2f', '[\"*\"]', '2023-06-01 18:37:44', '2023-06-01 18:36:39', '2023-06-01 18:37:44'),
(321, 'App\\Models\\User', 106, 'token', '95bbff31d96d81cb7fa4da882c8009a785f6812726882768fb2b4ce4634590d9', '[\"*\"]', '2023-06-01 18:38:18', '2023-06-01 18:38:16', '2023-06-01 18:38:18'),
(322, 'App\\Models\\User', 18, 'token', 'eabf3a4af3586dc8b0cbd01a6efa160d58b2cbce627068e67a7f2c54bcaecdb3', '[\"*\"]', '2023-06-01 18:39:58', '2023-06-01 18:39:16', '2023-06-01 18:39:58'),
(323, 'App\\Models\\User', 18, 'token', '00946b567ff5d3e447533a360ed928841b62fe45e96572209bae572aaa64fbf5', '[\"*\"]', '2023-06-01 19:00:10', '2023-06-01 18:58:16', '2023-06-01 19:00:10'),
(324, 'App\\Models\\User', 110, 'token', '5ff5e25b5496939b2fdd73da99b2616dbe95ebbf9403c2128021dd5e935810df', '[\"*\"]', '2023-06-01 19:02:10', '2023-06-01 19:02:09', '2023-06-01 19:02:10'),
(325, 'App\\Models\\User', 18, 'token', '387b670cf4fc204872badd86fd1aa1000631599e5e5acc129332714dc2be1d94', '[\"*\"]', '2023-06-01 19:02:57', '2023-06-01 19:02:46', '2023-06-01 19:02:57'),
(326, 'App\\Models\\User', 110, 'token', 'af4eb898e0935b0068fdd88c09604ad59a0540d6314b5c7e9dabbb1b928be51b', '[\"*\"]', '2023-06-01 19:04:49', '2023-06-01 19:04:26', '2023-06-01 19:04:49'),
(327, 'App\\Models\\User', 18, 'token', '1891d8b3280a25d562573c9cf9fb68dbd04c25547d715cece6b445cfc52bbfdc', '[\"*\"]', '2023-06-01 19:05:50', '2023-06-01 19:05:19', '2023-06-01 19:05:50'),
(328, 'App\\Models\\User', 110, 'token', 'd3baba8f6f98424e7aa6e833a70b3539bfa1894c8ed6cb822156f61a05ee788e', '[\"*\"]', '2023-06-01 19:16:22', '2023-06-01 19:06:46', '2023-06-01 19:16:22'),
(329, 'App\\Models\\User', 18, 'token', '6a74e3e33db4ed7af4d613c55aefefe1171f3380a9bd28a049167c18a3fe4a1d', '[\"*\"]', '2023-06-01 19:17:39', '2023-06-01 19:16:57', '2023-06-01 19:17:39'),
(330, 'App\\Models\\User', 18, 'token', 'a3906ee8619f14b419fbd225b349b3298cf1e482979c6b501b8a2016249dc047', '[\"*\"]', '2023-06-05 15:22:49', '2023-06-04 04:55:52', '2023-06-05 15:22:49'),
(331, 'App\\Models\\User', 18, 'token', '5c874f0be37a8c4648186bf9433b572a10dcb662aef8298fb35b07c38b2161e3', '[\"*\"]', '2023-06-04 05:37:09', '2023-06-04 05:02:19', '2023-06-04 05:37:09'),
(332, 'App\\Models\\User', 18, 'token', 'e5debd955e08f8708794a291384dbb509f43c6d233163bc894e8985d9f5980ba', '[\"*\"]', '2023-06-04 05:37:28', '2023-06-04 05:37:26', '2023-06-04 05:37:28'),
(333, 'App\\Models\\User', 110, 'token', 'febf41230e4cac9df6a3b59c3344463516a84556a8603daa329665038f664c8a', '[\"*\"]', '2023-06-04 06:28:12', '2023-06-04 06:28:11', '2023-06-04 06:28:12'),
(334, 'App\\Models\\User', 110, 'token', 'beecc80ff90f0fc89ae9b1006821f7417d3eec4173f1b6f56e78dd345896f35a', '[\"*\"]', '2023-06-04 06:29:04', '2023-06-04 06:29:02', '2023-06-04 06:29:04'),
(335, 'App\\Models\\User', 106, 'token', 'e83a5d11543cf44d765bff1267534e91340d4e6de068f94ee6da6080c25db8b0', '[\"*\"]', '2023-06-05 15:25:35', '2023-06-04 06:33:31', '2023-06-05 15:25:35'),
(336, 'App\\Models\\User', 111, 'token', '1c50d3ae10d8a7c90a589b8beee805d9c33dc52cf43f3648ba8f87bfe5c23cc7', '[\"*\"]', '2023-06-04 07:02:56', '2023-06-04 07:01:38', '2023-06-04 07:02:56'),
(337, 'App\\Models\\User', 110, 'token', 'fc39681b595fef134ba6f754cea6b115d2e72a56ecfb6018e49ded95d8ed7d43', '[\"*\"]', '2023-06-04 07:05:15', '2023-06-04 07:03:40', '2023-06-04 07:05:15'),
(338, 'App\\Models\\User', 110, 'token', 'e6c9c1860207ad455bbb924e275ef84ef3d9b0d740c28799e68fd6b5c0e8c25d', '[\"*\"]', '2023-06-04 07:08:02', '2023-06-04 07:08:00', '2023-06-04 07:08:02'),
(339, 'App\\Models\\User', 18, 'token', 'a15c5d7886a5022c943dceb3e45f6a9237eb0e7cd6ad14c70056c57cf52f453d', '[\"*\"]', '2023-06-04 18:21:44', '2023-06-04 18:21:42', '2023-06-04 18:21:44'),
(340, 'App\\Models\\User', 18, 'token', 'a850c8db367104449af8a3a5b0f70b529a6163db3f8b89d4fbe8d85c7a231953', '[\"*\"]', '2023-06-05 13:48:20', '2023-06-05 13:47:16', '2023-06-05 13:48:20'),
(341, 'App\\Models\\User', 106, 'token', 'e7b64501b08067ba902db96ec8651046ade39030f9479ef88cfd7e3b03869a05', '[\"*\"]', '2023-06-05 13:59:44', '2023-06-05 13:59:41', '2023-06-05 13:59:44'),
(342, 'App\\Models\\User', 111, 'token', '5bf6661736d296e62c16a25f2a4138b2c4330bdb8c14103a5d67dcc5c5ec9263', '[\"*\"]', '2023-06-05 14:05:59', '2023-06-05 14:01:28', '2023-06-05 14:05:59'),
(343, 'App\\Models\\User', 18, 'token', '7eb27abec1634c3626764f985c0e1d163e83d953a34aac3807ba8fc0d48f6c7e', '[\"*\"]', '2023-06-05 14:29:33', '2023-06-05 14:16:58', '2023-06-05 14:29:33'),
(344, 'App\\Models\\User', 18, 'token', 'ffe3fd9acb20c2809353fd4f7e98cf1fb7f91b733dce55fa1d80b1d890e69bd8', '[\"*\"]', '2023-06-05 20:42:12', '2023-06-05 14:51:58', '2023-06-05 20:42:12'),
(345, 'App\\Models\\User', 18, 'token', 'c7352b89c26196247978ed37578588e4d1d278e79a80f6c4591ed349a2fc7e01', '[\"*\"]', NULL, '2023-06-05 15:26:01', '2023-06-05 15:26:01'),
(346, 'App\\Models\\User', 18, 'token', '11b3992434c03dbe114517166b57d091f72d29bdaece60d47bf626ad283f2d5c', '[\"*\"]', '2023-06-05 16:35:04', '2023-06-05 15:27:01', '2023-06-05 16:35:04'),
(347, 'App\\Models\\User', 110, 'token', 'befc90f18533d67cc02a4cabd9b24a240b4ac2b96368afe2a49dc291472df80e', '[\"*\"]', '2023-06-05 16:41:10', '2023-06-05 16:37:31', '2023-06-05 16:41:10'),
(348, 'App\\Models\\User', 18, 'token', '5b6a75508b79b91343f6ccb8480d0490a52de7d050324a1f40224bcbfbe1501a', '[\"*\"]', '2023-06-05 16:54:01', '2023-06-05 16:42:43', '2023-06-05 16:54:01'),
(349, 'App\\Models\\User', 112, 'token', '6dd6103452f7e17767531f47c8ec8933c660e9826c266640fcc03a6bf2b3d36a', '[\"*\"]', '2023-06-05 17:52:07', '2023-06-05 17:41:12', '2023-06-05 17:52:07'),
(350, 'App\\Models\\User', 18, 'token', 'd248cda7bae674c32b83779fdc96f7e86d182186df8a3de5e18aac475cc8095b', '[\"*\"]', '2023-06-05 18:12:53', '2023-06-05 17:52:41', '2023-06-05 18:12:53'),
(351, 'App\\Models\\User', 18, 'token', 'cfa8b4edd05c26edc8222ba00044ccc95c8440caaffa18f0d00b589f5ca52dd0', '[\"*\"]', '2023-06-05 19:44:26', '2023-06-05 19:41:14', '2023-06-05 19:44:26'),
(352, 'App\\Models\\User', 18, 'token', '53c76044732bb16dfb4fe773868252977aa9c090e67810fe2bd983cd54f1d066', '[\"*\"]', NULL, '2023-06-05 19:48:05', '2023-06-05 19:48:05'),
(353, 'App\\Models\\User', 18, 'token', 'e13010aa724ca592771c6902e33f59c49956156ed4b281bc6ccabb0306b44182', '[\"*\"]', '2023-06-05 19:52:26', '2023-06-05 19:51:18', '2023-06-05 19:52:26'),
(354, 'App\\Models\\User', 18, 'token', 'f7c0cf9ecf848f276e1e56e7b29075ee531ba2973472fe7bfe421de3107d94d6', '[\"*\"]', '2023-06-06 07:45:32', '2023-06-05 19:54:15', '2023-06-06 07:45:32'),
(355, 'App\\Models\\User', 113, 'token', '8c3c10e51ce4c2bf0e203961083df00af416830ea8d91a3394a50a553d0d9008', '[\"*\"]', '2023-06-05 20:42:54', '2023-06-05 20:42:42', '2023-06-05 20:42:54'),
(356, 'App\\Models\\User', 108, 'token', '26bec23d783b7dd89528d438da0d970ba42bfd9214c633205eaee80e6954e2b5', '[\"*\"]', '2023-06-05 20:47:16', '2023-06-05 20:47:07', '2023-06-05 20:47:16'),
(357, 'App\\Models\\User', 114, 'token', 'f6affc88e93e7404e62830f38210ef7bdb91f10c4fb2342b4382140942528724', '[\"*\"]', '2023-06-05 20:53:28', '2023-06-05 20:53:27', '2023-06-05 20:53:28'),
(358, 'App\\Models\\User', 108, 'token', '94fe0d52af0cea22f17c61757543f7a8b96c4e8c22c34478fc56d0e84e808d4c', '[\"*\"]', '2023-06-05 20:54:33', '2023-06-05 20:54:06', '2023-06-05 20:54:33'),
(359, 'App\\Models\\User', 106, 'token', '448888fbecf5bc7a5da7b60daca1c460d0cc736d6f2e706abad6c34805a43d35', '[\"*\"]', '2023-06-05 20:55:38', '2023-06-05 20:55:02', '2023-06-05 20:55:38'),
(360, 'App\\Models\\User', 18, 'token', '37ab42931b189aa8f6e02eb4c548a3dc1bf4ca3003b4693aac2615d3e10da462', '[\"*\"]', '2023-06-05 20:56:57', '2023-06-05 20:56:05', '2023-06-05 20:56:57'),
(361, 'App\\Models\\User', 115, 'token', '0e649f5872760f5e7c1e9939a11b8bf6e9dd3ac9f1816e89631988c35b3007a8', '[\"*\"]', '2023-06-06 08:07:26', '2023-06-06 08:07:24', '2023-06-06 08:07:26'),
(362, 'App\\Models\\User', 18, 'token', 'debe2c74eee12b1b94903d8a34f74c4273b9c53ef84ed7d463ce42fad6c25d7d', '[\"*\"]', '2023-06-06 08:10:27', '2023-06-06 08:08:10', '2023-06-06 08:10:27'),
(363, 'App\\Models\\User', 106, 'token', '2c8e84e4625c4d2259249d93f0a327a8f97744d337ff56bebf0a49df2f193032', '[\"*\"]', '2023-06-06 08:12:05', '2023-06-06 08:11:15', '2023-06-06 08:12:05'),
(364, 'App\\Models\\User', 108, 'token', 'c3afd3d3378e439cdf6b8206c9b89346bbe69e74453a2b74cc592802d975d687', '[\"*\"]', '2023-06-06 08:12:49', '2023-06-06 08:12:33', '2023-06-06 08:12:49'),
(365, 'App\\Models\\User', 18, 'token', 'b3773b07d03b8dff95c75530081274c3636151f98404461d64b38b651eba6ebb', '[\"*\"]', '2023-06-10 10:28:59', '2023-06-10 10:06:38', '2023-06-10 10:28:59'),
(366, 'App\\Models\\User', 108, 'token', 'c8fb8aa0893d520932659274276acde351af4d7f143be3408a2d5f82f9ad5e51', '[\"*\"]', '2023-06-10 10:40:57', '2023-06-10 10:36:26', '2023-06-10 10:40:57'),
(367, 'App\\Models\\User', 108, 'token', '6bbbe1be1b8ef4100708d8812e76c94985c0a27f6238e1f992fc1864cceeab12', '[\"*\"]', '2023-06-10 10:54:32', '2023-06-10 10:41:46', '2023-06-10 10:54:32'),
(368, 'App\\Models\\User', 106, 'token', 'b14a31eceb649e2ebb1eabf675fc21a291a7523b94f24afa58347c65599141cc', '[\"*\"]', '2023-06-10 11:15:09', '2023-06-10 10:55:16', '2023-06-10 11:15:09'),
(369, 'App\\Models\\User', 116, 'token', 'cf461aefee57a285adde5b2914f262f4ffa6c5f3db6655cd757387c7f7ad1884', '[\"*\"]', '2023-06-10 11:26:15', '2023-06-10 11:24:51', '2023-06-10 11:26:15'),
(370, 'App\\Models\\User', 18, 'token', '3f61cc353dbad07e199cb0a17a1ff0b531ee985ef68cf39b65325e670be672ee', '[\"*\"]', '2023-06-10 15:43:52', '2023-06-10 11:27:21', '2023-06-10 15:43:52'),
(371, 'App\\Models\\User', 110, 'token', 'a06b89c5eb8f8b681ff99230843438330c2d33ce716f78b79a9872bcebfb5605', '[\"*\"]', '2023-06-10 16:34:19', '2023-06-10 16:21:53', '2023-06-10 16:34:19'),
(372, 'App\\Models\\User', 106, 'token', 'c2c750234641ee55080d7307149df5dc07f98818ce8e01fa392c5c540699be18', '[\"*\"]', '2023-06-10 17:10:28', '2023-06-10 16:37:03', '2023-06-10 17:10:28'),
(373, 'App\\Models\\User', 18, 'token', '9da8344a351cc999852b6777bf41507078dceb1b45ea0bd0ee21f71b3ce0d3c0', '[\"*\"]', '2023-06-10 18:01:11', '2023-06-10 17:12:21', '2023-06-10 18:01:11'),
(374, 'App\\Models\\User', 18, 'token', 'a7d864425e59aed9a5219fb76363c027613f2be35a712722a6eba794c856db92', '[\"*\"]', '2023-06-10 18:01:31', '2023-06-10 18:01:30', '2023-06-10 18:01:31'),
(375, 'App\\Models\\User', 106, 'token', '01a0b497ff8f3ff02b077f13627192b451d89a84ee58b923b87fb00415cfa13b', '[\"*\"]', '2023-06-10 18:01:50', '2023-06-10 18:01:49', '2023-06-10 18:01:50'),
(376, 'App\\Models\\User', 18, 'token', '56b41d2a77698c646a73dde53b3be7f0b3076789e6c052b7201e46a06d53c081', '[\"*\"]', '2023-06-10 18:02:50', '2023-06-10 18:02:49', '2023-06-10 18:02:50'),
(377, 'App\\Models\\User', 106, 'token', '410d5a1bb0be640759d51f2d63437c214e5904d7d05b66d6f30c61bffe76f6d8', '[\"*\"]', '2023-06-10 18:03:38', '2023-06-10 18:03:29', '2023-06-10 18:03:38'),
(378, 'App\\Models\\User', 18, 'token', 'bb5283db85cfaf1457d45034df0193ac28bb2136e27ce2b594c23726df8f25a0', '[\"*\"]', '2023-06-10 18:16:35', '2023-06-10 18:06:15', '2023-06-10 18:16:35'),
(379, 'App\\Models\\User', 18, 'token', '9170c2d19945ef51d6237d79edb820af86b0ea6858c3be735b9a619b87e55098', '[\"*\"]', '2023-06-11 19:23:22', '2023-06-11 19:23:20', '2023-06-11 19:23:22'),
(380, 'App\\Models\\User', 106, 'token', 'acb774432dd5f44df6b2b744896aeb4cd6350a5d5e8b6eb0b5b918c0972f75c2', '[\"*\"]', '2023-06-11 19:23:47', '2023-06-11 19:23:45', '2023-06-11 19:23:47'),
(381, 'App\\Models\\User', 108, 'token', 'd716c778d9af844a042ec5c5330403830d0ef7d3c92f870cac0e671b57d04232', '[\"*\"]', '2023-06-11 19:24:11', '2023-06-11 19:24:09', '2023-06-11 19:24:11'),
(382, 'App\\Models\\User', 18, 'token', 'd980f6e8462e9b04beb7412cacfe4658a8f21a01d8bf6b44e53c17259bd392d1', '[\"*\"]', '2023-06-11 19:24:29', '2023-06-11 19:24:27', '2023-06-11 19:24:29'),
(383, 'App\\Models\\User', 18, 'token', 'b6c7d1d130c23e6bfcda7c14a99d3132a94e35c70da52c9877e21e4e402fa5b7', '[\"*\"]', '2023-06-11 20:33:26', '2023-06-11 20:33:23', '2023-06-11 20:33:26'),
(384, 'App\\Models\\User', 117, 'token', '2ba0053144e7acdf7673a8707bb46000f362d8fefe67b28962ae789d982dee0d', '[\"*\"]', '2023-06-11 21:16:04', '2023-06-11 21:16:03', '2023-06-11 21:16:04'),
(385, 'App\\Models\\User', 108, 'token', 'e68dc92fa4d05f26aff161a5ee23544799fc1a2bde0c521f9279fb2207c1563a', '[\"*\"]', '2023-06-11 21:17:19', '2023-06-11 21:16:28', '2023-06-11 21:17:19'),
(386, 'App\\Models\\User', 106, 'token', '6c89a86bee2d7c5d87cd3d3ced13c040e3825656f9bf15c654c78addaaa04340', '[\"*\"]', '2023-06-11 21:19:54', '2023-06-11 21:17:58', '2023-06-11 21:19:54'),
(387, 'App\\Models\\User', 18, 'token', 'f50179c97bfbc4821584953992cf997b14bd6e98190dd8c210d9861972ba14a1', '[\"*\"]', '2023-06-11 21:23:58', '2023-06-11 21:20:28', '2023-06-11 21:23:58'),
(388, 'App\\Models\\User', 18, 'token', '6f87b3d840aaff79dbaa6bcb232e60a4ffc7b2e943056319953edcc943bf523c', '[\"*\"]', '2023-06-13 18:19:27', '2023-06-13 18:19:25', '2023-06-13 18:19:27'),
(389, 'App\\Models\\User', 118, 'token', '77bc995fa54e353ee590a9bb70fb7263d604433b3c78cf1bc05c663dbdccf929', '[\"*\"]', '2023-06-13 20:09:00', '2023-06-13 20:08:59', '2023-06-13 20:09:00'),
(390, 'App\\Models\\User', 108, 'token', 'b459954c2f4bdc5ced41fea716c2bfef2b3db0f1ba532173c50d8078798236c2', '[\"*\"]', '2023-06-13 20:10:05', '2023-06-13 20:09:34', '2023-06-13 20:10:05'),
(391, 'App\\Models\\User', 106, 'token', '17cb2287a663c48a9eabbdcd0ebf79e072624f8db613093e6b1f98d7910482bb', '[\"*\"]', '2023-06-13 20:11:58', '2023-06-13 20:10:19', '2023-06-13 20:11:58'),
(392, 'App\\Models\\User', 18, 'token', '7bd3006b9236b16520e5271f207430b5202df7a3a3cfb6e7f22f3a65b19d4ece', '[\"*\"]', '2023-06-13 20:14:59', '2023-06-13 20:12:14', '2023-06-13 20:14:59');

-- --------------------------------------------------------

--
-- Структура таблицы `price`
--

CREATE TABLE `price` (
  `priceID` int(11) NOT NULL,
  `export_price` float NOT NULL,
  `recycling_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `price`
--

INSERT INTO `price` (`priceID`, `export_price`, `recycling_price`) VALUES
(4, 8.5, 4),
(8, 1.1, 2.3),
(9, 1, 1),
(10, 4, 5.5),
(11, 2.2, 3.5),
(13, 54, 54),
(14, 5, 3),
(15, 5, 7),
(16, 5, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'web', '2023-03-11 13:13:56', '2023-03-11 13:13:56'),
(2, 'admin', 'web', '2023-03-11 13:14:27', '2023-03-11 13:14:27'),
(3, 'moderator', 'web', '2023-03-19 11:00:08', '2023-03-19 11:00:08');

-- --------------------------------------------------------

--
-- Структура таблицы `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `houseID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `houseID`, `created_at`, `updated_at`) VALUES
(3, 'Carl', 'Cary', 'Carl@gmail.com', '$2y$10$hMmGcHFE2cGOmM5pCvKTaeVgUvZf/6gGnayviHquih3qeOBSNFRNC', 5, '2023-04-26 13:01:07', '2023-06-13 20:12:56'),
(4, 'Lala', 'Laily', 'Carl1@gmail.com', '$2y$10$173YJSgqMmMCf77ne.8dg.EWC2.0zyXX5l0B2wj74SSMnUfjwvQoC', 0, '2023-04-26 13:23:11', '2023-04-26 13:23:11'),
(5, 'Max', 'Maimy', 'Max@gmail.com', '$2y$10$ooKkAVx8O0SslPHRtvSs1urRZD1I14R/ZaFyGyAVRx5z1c0pqnw1G', 0, '2023-04-26 15:48:35', '2023-04-26 15:48:35'),
(6, 'Lary', 'Brown', 'Lary@gmail.com', '$2y$10$GfQgML5.UsJ6bNHO8FUfDeUEVzOA1t49/.gxc9tGwiw1mr7SVeabG', 1, '2023-04-27 18:18:49', '2023-04-27 18:18:49'),
(7, 'Lary', 'Lamy', 'Lary1@gmail.com', '$2y$10$bti9XGGuwa.W/EGTrsZ8de9WYYaFnPAdb4MlulFXDdjxmQkhZaFNy', 0, '2023-04-27 18:22:03', '2023-04-27 18:22:03'),
(8, 'Loly', 'Lee', 'ddaa@gmail.com', '$2y$10$Re/WnMbEcTGWaZz5ZE1XneiBVhunrUE6/Pr8vLE3VlAPp7.cLBhS.', 5, '2023-04-27 19:05:35', '2023-05-17 12:12:33'),
(12, 'Mike', 'Mimy', 'MMM@gmail.com', '$2y$10$pZBXM4wv/OG3jlqPQ9cwRehFrJ4Fw2Ss56bE/44aLe09vZr8bzS2u', 0, '2023-05-01 14:31:48', '2023-05-01 14:31:48'),
(16, 'Robert', 'Drueng', '11111@gmail.com', '$2y$10$1lSXo2BwhikhPSO8FjBvJeVPJaOhNL7nIcI/VfOBVeZVy4BfvBIE2', 6, '2023-05-03 09:07:56', '2023-05-10 16:42:20'),
(18, 'Daria', 'Limi', 'admin@gmail.com', '$2y$10$ll0Mgc/K1TKwBIAVB1G7LuOstuMT8S9X.cA7d3kkmWdyfLUE4kNAG', 6, '2023-05-11 12:22:55', '2023-06-01 19:17:28'),
(19, 'Kiki', 'Rori', 'kkk@gmail.com', '$2y$10$gKDAKG7T.JY54g2nFpVO9eyq8GkWbx3VPUbnkWyu5JfbKSUwMS1iy', 10, '2023-05-19 09:00:40', '2023-06-10 13:47:07'),
(20, 'moderator', 'moderator', 'moderator@gmail.com', '$2y$10$0KMFAvjjQt33/T2l3PPXCOMYFg0GWrxZ1IXOKpODrumyWBNys8cUO', 12, '2023-05-10 08:43:09', '2023-05-13 08:05:02'),
(21, 'Chaim', 'Corkery', 'marley.glover@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, '2023-05-26 07:31:44', '2023-05-26 07:31:44'),
(23, 'Eloisa', 'Thiel', 'gage08@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2023-05-26 07:31:44', '2023-05-26 07:31:44'),
(24, 'Noemi', 'Ebert', 'marcellus.schoen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 5, '2023-05-26 07:31:44', '2023-05-26 07:31:44'),
(25, 'Alfonzo', 'Schuster', 'luz80@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 4, '2023-05-26 07:31:44', '2023-05-26 07:31:44'),
(26, 'Maia', 'Torp', 'okozey@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2023-05-26 07:31:44', '2023-05-26 07:31:44'),
(27, 'Evalyn', 'Luettgen', 'stiedemann.annamae@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2023-05-26 07:31:44', '2023-05-26 07:31:44'),
(28, 'Dean', 'Hodkiewicz', 'jacobson.danyka@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2023-05-26 07:31:44', '2023-05-26 07:31:44'),
(29, 'Clair', 'Kemmer', 'easter.cummings@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2023-05-26 07:31:44', '2023-05-26 07:31:44'),
(30, 'Garth', 'Osinski', 'amari36@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 4, '2023-05-26 07:31:45', '2023-05-26 07:31:45'),
(41, 'Velma', 'Heller', 'fay27@example.com', '$2y$10$k8CbIOArwaeJO1HkTpmNkuE9GEHXfZlMptX6cBxcaDGfcm6b8psWC', 0, '2023-05-26 07:42:13', '2023-05-26 07:42:13'),
(42, 'Amos', 'White', 'myron.bins@example.org', '$2y$10$0kp/oM68/PZRWtabT0VElummOiVKbSpAHVEJhoDkwRTt4o9Or8HU6', 1, '2023-05-26 07:42:13', '2023-05-26 07:42:13'),
(43, 'Marlin', 'Hyatt', 'hill.michelle@example.com', '$2y$10$CPh5cvuDvunmlLlGnuGUIepq5H3z/IDMtdplXfnIY10VP9wvO25i2', 3, '2023-05-26 07:42:13', '2023-05-26 07:42:13'),
(44, 'Abelardo', 'Rath', 'grace95@example.net', '$2y$10$qAFjIN3eMXNyQaXSQTi1PuqWUSuMPkwHs9gpH9fpOxxqVrKPTDhH2', 6, '2023-05-26 07:42:13', '2023-05-30 16:42:31'),
(45, 'Earline', 'Schuppe', 'kunde.obie@example.com', '$2y$10$ai/1Rq.MSIyzhaz2Dav2RuMD8L7FY9akZdye8n.NLG2j6auEzwDae', 0, '2023-05-26 07:42:14', '2023-05-26 07:42:14'),
(46, 'Ibrahim', 'Gislason', 'tmedhurst@example.org', '$2y$10$zmTzlYFEIxKK75f3uY4zbuZAvnKEyE/3Srp/f1c51j4rGj4m0JSEW', 1, '2023-05-26 07:42:14', '2023-05-26 07:42:14'),
(47, 'Will', 'Beahan', 'jewell.huels@example.net', '$2y$10$gh7FKQahy6SyqTpTWB329.gJV0ajUOHNBlbbWTnpNU1.WU.y8ybTK', 4, '2023-05-26 07:42:14', '2023-05-26 07:42:14'),
(48, 'Hermina', 'Luettgen', 'rita14@example.com', '$2y$10$3Q8idJ9zeed/.K4NJ9pREuL693q4cQKHEMHboc.Hdx/hrd3HT72h.', 4, '2023-05-26 07:42:14', '2023-05-26 07:42:14'),
(49, 'Carleton', 'Mitchell', 'tyree79@example.org', '$2y$10$qzv7POguGrd4/O8eaX9G6OLKZ6yy2/EhoBvZTLUOL/hZBcU/u/TpW', 5, '2023-05-26 07:42:14', '2023-05-26 07:42:14'),
(50, 'Jeremie', 'McClure', 'ahuel@example.com', '$2y$10$5z/v6XJK4oI0D1rcaBXvDOcoJ0f1KF3ShQwudNGNYjjStB0UfMJuG', 11, '2023-05-26 07:42:14', '2023-05-26 07:42:14'),
(99, 'Andriy', 'Ramy', 'andriy1@gmail.com', '$2y$10$H638WbFkLk4WM2MyjPQwpOo/.0cDMACNRM/ZbjPY7nXImpafLO3bK', 9, '2023-05-31 10:45:49', '2023-05-31 10:45:49'),
(100, 'Roky', 'Dail', 'andriy@gmail.com', '$2y$10$nUtWFjbA79lW/tL4mIqUYOGtoWJhi2ETJPQy1h5TvISqqSSgeAKxe', 8, '2023-05-31 10:47:14', '2023-05-31 10:47:14'),
(101, 'Sandy', 'Slamy', 'asdasd@gm', '$2y$10$P8vy/3QjPjHl65wSBoHaHOg1jxDepLuCU9FzTCtzz398zgF2AjHr2', 7, '2023-06-01 11:23:40', '2023-06-01 11:23:40'),
(102, 'Gery', 'Bendy', 'ggg@gmail.com', '$2y$10$zvxPMfceLxRSlbPDj0qFAeELFJ93qp.AJrG9X0Xf4w1tovHEGZVte', 14, '2023-06-01 11:44:26', '2023-06-01 11:44:26'),
(103, 'Samy', 'Raily', 'aaa@gmail.com', '$2y$10$lo5FwwymGZ.gENOuJJQ/NOyWQSscoEEp.hhZcBC3KPz3iyNVmFUV6', 12, '2023-06-01 07:16:48', '2023-06-01 07:16:48'),
(104, 'Fraly', 'Laimy', 'fff@gmail.com', '$2y$10$JcX5YiPy5TvAcUY5hjXamuz89TG8s2UhZrWZWcLXyj7YFmr/y4WNK', 13, '2023-06-01 07:05:57', '2023-06-01 07:05:57'),
(105, 'Mike', 'Nichelson', 'aaa123@gmail.com', '$2y$10$WTdB5gRRymDNIoMvDL2ee.Wt6LxbhzytuC5Zw2ET9ep1JMSxHidUe', NULL, '2023-06-01 05:14:50', '2023-06-01 05:14:50'),
(106, 'Rosy', 'Raist', 'mod@gmail.com', '$2y$10$FBr6fb4YT54tpC1knm9Yg.CCRX6iBVsOgml3M.WLtBf0H1H9tCT6u', 6, '2023-06-01 05:17:08', '2023-06-01 12:03:51'),
(108, 'username', 'userlog', 'user@gmail.com', '$2y$10$mfJXr44eiZknYRa1mx29.uqeIdjrgze3ViuebpeIawE6JFlv8X5zK', 6, '2023-06-01 11:49:13', '2023-06-01 11:49:13'),
(110, 'Daria', 'Sss', 'cinderellka777@gmail.com', '$2y$10$KqbtJJcFPmIxyu/qOn0tEO0mvepFZwBCPRheXRxEKyf3blcYkRhd.', 6, '2023-06-01 19:01:34', '2023-06-04 06:28:34'),
(111, 'Dora', 'Sobko', 'daria@nure.ua', '$2y$10$JsmLmiX4/JrivYj7K36QTu/j2Sji0m9PGLRNRLtExMyDVAfgqz65y', 1, '2023-06-04 07:00:27', '2023-06-05 16:48:03'),
(116, 'Даша', 'Собко', 'daria@g', '$2y$10$DUX1HsZC1kSzXdSWIZge5.Sy/TefzRK.A9/iic1.RTG4cAg3ips3K', NULL, '2023-06-10 11:24:35', '2023-06-10 11:24:35'),
(117, 'hsfgsdfgsdf', 'gsdfgsfhg', 'gsfdgdrgdr@hdtghtd.hsfhsdrfh', '$2y$10$/6BA3.rr6sJGVGvlmV1tq.BJWfoyS4uxbMgohWsywPA4raWtF09lO', NULL, '2023-06-11 21:15:51', '2023-06-11 21:15:51'),
(118, 'hsfhd', 'hdfshdf', 'hgsfhdsr@htdgh.hsrfhyedr', '$2y$10$vC/o3ge1HZoUOQU3945I.OVgb/UofyfSRqbWxa/91vSKDUBLLfpRm', NULL, '2023-06-13 20:08:51', '2023-06-13 20:08:51');

-- --------------------------------------------------------

--
-- Структура таблицы `user_history`
--

CREATE TABLE `user_history` (
  `historyID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `garbageID` int(11) NOT NULL,
  `houseID` int(11) NOT NULL,
  `weight` double NOT NULL,
  `sum` double NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_history`
--

INSERT INTO `user_history` (`historyID`, `userID`, `garbageID`, `houseID`, `weight`, `sum`, `updated_at`, `created_at`) VALUES
(1, NULL, 777, 0, 1.4, 777, '2023-03-28 07:15:57', '2023-03-28 07:15:57'),
(2, 777, 777, 0, 1.4, 777, '2023-03-28 07:17:25', '2023-03-28 07:17:25'),
(3, 777, 777, 0, 1.4, 777, '2023-03-28 07:17:27', '2023-03-28 07:17:27'),
(4, 20, 2, 6, 5, 110, '2023-03-28 08:10:28', '2023-03-28 08:10:28'),
(5, 20, 2, 6, 5, 85, '2023-03-28 08:14:11', '2023-03-28 08:14:11'),
(6, 20, 2, 6, 0.4, 6.8, '2023-03-28 08:14:42', '2023-03-28 08:14:42'),
(7, 20, 2, 6, 0.32, 5.44, '2023-03-28 08:15:29', '2023-03-28 08:15:29'),
(8, 20, 2, 6, 0.31, 5.27, '2023-03-28 08:15:34', '2023-03-28 08:15:34'),
(9, 20, 2, 6, 0.31, 5.27, '2023-03-28 08:18:59', '2023-03-28 08:18:59'),
(10, 20, 2, 6, 0.31, 5.27, '2023-03-28 08:19:06', '2023-03-28 08:19:06'),
(11, 20, 2, 6, 0.3001, 5.1, '2023-03-28 08:19:18', '2023-03-28 08:19:18'),
(12, 20, 2, 6, 0.3099, 5.27, '2023-03-28 08:19:26', '2023-03-28 08:19:26'),
(13, 20, 2, 6, 0.3089, 5.25, '2023-03-28 08:19:32', '2023-03-28 08:19:32'),
(14, 20, 1, 6, 0.3089, 1.85, '2023-03-28 08:20:03', '2023-03-28 08:20:03'),
(15, 20, 1, 6, 0.3089, 1.85, '2023-03-28 08:21:22', '2023-03-28 08:21:22'),
(16, 20, 1, 6, 0.3089, 1.85, '2023-03-28 08:32:25', '2023-03-28 08:32:25'),
(17, 20, 1, 6, 0.3089, 1.85, '2023-03-28 08:32:37', '2023-03-28 08:32:37'),
(18, 20, 3, 6, 0.3089, 5.56, '2023-03-28 08:41:04', '2023-03-28 08:41:04'),
(19, 20, 2, 6, 0.3089, 5.25, '2023-03-28 08:41:15', '2023-03-28 08:41:15'),
(20, 20, 2, 6, 0.3089, 5.25, '2023-03-28 08:41:44', '2023-03-28 08:41:44'),
(21, 20, 2, 6, 0.3089, 5.25, '2023-03-28 08:41:49', '2023-03-28 08:41:49'),
(22, 20, 2, 6, 0.3089, 5.25, '2023-03-28 08:49:23', '2023-03-28 08:49:23'),
(23, 20, 1, 6, 0.3089, 1.85, '2023-03-28 09:24:49', '2023-03-28 09:24:49'),
(24, 20, 1, 6, 0.09, 0.54, '2023-03-28 09:25:00', '2023-03-28 09:25:00'),
(25, 20, 1, 6, 0.09, 0.54, '2023-03-28 09:25:14', '2023-03-28 09:25:14'),
(51, 18, 3, 6, 3, 54, '2023-05-16 07:10:56', '2023-05-16 07:10:56'),
(52, 106, 1, 6, 1, 6, '2023-05-17 05:24:18', '2023-05-17 05:24:18'),
(53, 106, 1, 6, 1, 6, '2023-05-17 05:24:30', '2023-05-17 05:24:30'),
(54, 106, 1, 6, 1, 6, '2023-05-17 05:27:33', '2023-05-17 05:27:33'),
(55, 106, 2, 6, 1, 17, '2023-05-17 05:27:43', '2023-05-17 05:27:43'),
(56, 106, 3, 6, 1, 18, '2023-05-17 05:28:19', '2023-05-17 05:28:19'),
(57, 106, 3, 6, 1.1, 19.8, '2023-05-17 05:28:29', '2023-05-17 05:28:29'),
(58, 106, 1, 7, 1, 3.4, '2023-05-17 05:49:28', '2023-05-17 05:49:28'),
(59, 106, 2, 7, 10, 20, '2023-05-17 05:52:53', '2023-05-17 05:52:53'),
(60, 18, 3, 6, 5, 90, '2023-05-17 05:58:02', '2023-05-17 05:58:02'),
(61, 108, 1, 6, 1.4, 8.4, '2023-05-17 11:50:02', '2023-05-17 11:50:02'),
(62, 108, 2, 6, 2.3, 39.1, '2023-05-17 11:50:07', '2023-05-17 11:50:07'),
(63, 108, 3, 6, 0.2, 3.6, '2023-05-17 11:50:13', '2023-05-17 11:50:13'),
(64, 106, 1, 6, 1, 9.5, '2023-05-17 12:18:30', '2023-05-17 12:18:30'),
(65, 18, 3, 6, 5, 28.5, '2023-05-17 12:32:02', '2023-05-17 12:32:02'),
(66, 18, 1, 6, 1, 9.5, '2023-05-17 12:32:35', '2023-05-17 12:32:35'),
(67, 108, 1, 6, 5, 47.5, '2023-06-01 18:35:19', '2023-06-01 18:35:19'),
(68, 110, 1, 6, 5, 47.5, '2023-06-01 19:06:52', '2023-06-01 19:06:52'),
(69, 110, 2, 6, 5, 62.5, '2023-06-01 19:07:05', '2023-06-01 19:07:05'),
(70, 110, 3, 6, 5, 28.5, '2023-06-01 19:07:22', '2023-06-01 19:07:22'),
(71, 110, 1, 6, 3.2, 30.4, '2023-06-01 19:07:34', '2023-06-01 19:07:34'),
(72, 110, 2, 6, 3.3, 41.25, '2023-06-01 19:07:50', '2023-06-01 19:07:50'),
(73, 110, 3, 6, 3.5, 19.95, '2023-06-01 19:08:02', '2023-06-01 19:08:02'),
(74, 110, 1, 6, 5.5, 52.25, '2023-06-01 19:15:54', '2023-06-01 19:15:54'),
(75, 110, 1, 6, 5.7, 54.15, '2023-06-01 19:16:22', '2023-06-01 19:16:22'),
(76, 18, 1, 6, 3.5, 33.25, '2023-06-05 14:22:56', '2023-06-05 14:22:56'),
(77, 18, 1, 6, 7.8, 74.1, '2023-06-05 15:21:58', '2023-06-05 15:21:58'),
(78, 18, 3, 6, 2, 11.4, '2023-06-05 18:12:53', '2023-06-05 18:12:53'),
(79, 18, 3, 6, 4, 22.8, '2023-06-05 19:57:12', '2023-06-05 19:57:12'),
(80, 108, 1, 6, 5, 47.5, '2023-06-05 20:47:16', '2023-06-05 20:47:16'),
(81, 108, 1, 6, 5, 47.5, '2023-06-05 20:54:17', '2023-06-05 20:54:17'),
(82, 108, 2, 6, 5, 62.5, '2023-06-05 20:54:21', '2023-06-05 20:54:21'),
(83, 108, 3, 6, 5, 28.5, '2023-06-05 20:54:33', '2023-06-05 20:54:33'),
(84, 18, 3, 6, 4, 22.8, '2023-06-06 05:12:31', '2023-06-06 05:12:31'),
(85, 18, 3, 6, 5, 28.5, '2023-06-06 05:12:41', '2023-06-06 05:12:41'),
(86, 18, 3, 6, 7, 39.9, '2023-06-06 05:12:47', '2023-06-06 05:12:47'),
(87, 18, 3, 6, 1, 5.7, '2023-06-06 07:45:32', '2023-06-06 07:45:32'),
(88, 18, 1, 6, 5, 47.5, '2023-06-06 08:10:18', '2023-06-06 08:10:18'),
(89, 18, 2, 6, 5, 62.5, '2023-06-06 08:10:23', '2023-06-06 08:10:23'),
(90, 108, 2, 6, 1, 12.5, '2023-06-06 08:12:49', '2023-06-06 08:12:49'),
(91, 108, 1, 6, 5, 47.5, '2023-06-10 10:40:04', '2023-06-10 10:40:04'),
(92, 108, 2, 6, 1, 12.5, '2023-06-10 10:52:32', '2023-06-10 10:52:32'),
(93, 110, 1, 6, 3, 28.5, '2023-06-10 16:34:19', '2023-06-10 16:34:19'),
(94, 106, 3, 6, 10, 57, '2023-06-10 17:08:49', '2023-06-10 17:08:49'),
(95, 106, 3, 6, 10, 57, '2023-06-10 18:03:37', '2023-06-10 18:03:37'),
(96, 108, 1, 6, 1, 9.5, '2023-06-11 21:16:54', '2023-06-11 21:16:54'),
(97, 108, 2, 6, 1, 12.5, '2023-06-11 21:17:03', '2023-06-11 21:17:03'),
(98, 108, 3, 6, 1, 5.7, '2023-06-11 21:17:06', '2023-06-11 21:17:06'),
(99, 108, 3, 6, 1, 5.7, '2023-06-11 21:17:18', '2023-06-11 21:17:18'),
(100, 106, 1, 6, 1, 9.5, '2023-06-11 21:19:54', '2023-06-11 21:19:54'),
(101, 108, 1, 6, 5, 47.5, '2023-06-13 20:09:47', '2023-06-13 20:09:47'),
(102, 108, 2, 6, 5, 62.5, '2023-06-13 20:09:51', '2023-06-13 20:09:51'),
(103, 108, 3, 6, 5, 28.5, '2023-06-13 20:09:54', '2023-06-13 20:09:54'),
(104, 106, 1, 6, 5, 47.5, '2023-06-13 20:11:58', '2023-06-13 20:11:58');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `garbage`
--
ALTER TABLE `garbage`
  ADD PRIMARY KEY (`garbageID`);

--
-- Индексы таблицы `garbage_house`
--
ALTER TABLE `garbage_house`
  ADD PRIMARY KEY (`garbage_houseID`);

--
-- Индексы таблицы `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`houseID`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`priceID`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Индексы таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `user_history`
--
ALTER TABLE `user_history`
  ADD PRIMARY KEY (`historyID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `garbage`
--
ALTER TABLE `garbage`
  MODIFY `garbageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `garbage_house`
--
ALTER TABLE `garbage_house`
  MODIFY `garbage_houseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `house`
--
ALTER TABLE `house`
  MODIFY `houseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT для таблицы `price`
--
ALTER TABLE `price`
  MODIFY `priceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT для таблицы `user_history`
--
ALTER TABLE `user_history`
  MODIFY `historyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
