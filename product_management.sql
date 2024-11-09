-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 09, 2024 at 01:59 PM
-- Server version: 8.3.0
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_07_064159_create_products', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(8,2) NOT NULL,
  `stock` int DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_product_id_unique` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `name`, `description`, `price`, `stock`, `image`, `created_at`, `updated_at`) VALUES
(1, 'C01', 'Canon EOS 4000D', 'Brand - Canon, Model - Canon EOS 4000D, Type - Only Camera Body', 37000.00, 5, 'images/2KFi52rBo1TUwEZAOzib9C0uLZSqMTpAoBTTqTh2.webp', '2024-11-09 01:40:25', '2024-11-09 01:46:20'),
(2, 'C02', 'Sony ZV-E10', 'Sony ZV-E10 Interchangeable-Lens Vlog Mirrorless Camera Body without Lens', 80000.00, 10, 'images/xhzbpmHUJA7S2ZYF9wlWs1pWMWU1RF8KiKPfXxy0.webp', '2024-11-09 01:44:28', '2024-11-09 01:44:28'),
(4, 'L04', 'Acer Aspire Lite AL15-52', 'Acer Aspire Lite AL15-52 Intel Core i5 1235U 8GB RAM 512GB SSD 15.6 Inch FHD Display Steel Gray Laptop', 63900.00, 10, 'images/fdCCJkxW6qlHtqu7SiulWiBwUQPuDAv8mwgFmn6X.webp', '2024-11-09 01:48:40', '2024-11-09 01:48:40'),
(5, 'L05', 'HP ProBook 440', 'HP ProBook 440 G10 Intel Core i7 1355U 8GB RAM, 512GB SSD 14 Inch FHD Display Silver Laptop', 118000.00, 5, 'images/WZI7O9a0wQHVJifxdbp9L1DQ1QQr7LeoPV7TNGRG.webp', '2024-11-09 01:49:42', '2024-11-09 01:49:42'),
(6, 'M01', 'Dahua DHI-LM22-L200', 'Dahua DHI-LM22-L200 22 Inch Display FHD HDMI, VGA Black Monitor', 8200.00, 25, 'images/HPiiNEt41MciA0urR37UyqB3NwgYl0gCyUBVAVub.webp', '2024-11-09 01:50:44', '2024-11-09 01:50:44'),
(7, 'M02', 'Dell D2020H 19.5 Monitor', 'Dell D2020H 19.5 Inch HD+ HDMI, VGA TN Black Monitor', 9500.00, 8, 'images/ELx5rICl3pduEoQdDBWU4BzexJI20LEu8bb1S73v.png', '2024-11-09 01:51:40', '2024-11-09 01:52:27'),
(8, 'P01', 'Pantum P2500W', 'Pantum P2500W Single Function Mono Laser Printer', 11800.00, 12, 'images/BIxto9YbJtIEsCe2h6UPYvGHhbWyyIRrzFDs99nx.webp', '2024-11-09 01:53:27', '2024-11-09 01:53:27'),
(9, 'P02', 'Canon imageCLASS LBP226dw Printer', 'Canon imageCLASS LBP226dw Single Function Mono Laser Printer', 50000.00, 8, 'images/zQhsEs50zZlSm99iwFuPZsYRlAS6wByyhfVICGE0.webp', '2024-11-09 01:54:25', '2024-11-09 01:54:25'),
(10, 'P03', 'HP DeskJet Ink Printer', 'HP DeskJet Ink Advantage 2336 All-in-One Printer', 9000.00, 10, 'images/gmbKJx0IbfZ3go6CzVK6CiVK4WCa4FXdK1ovEd2l.webp', '2024-11-09 01:55:14', '2024-11-09 02:24:30'),
(11, 'P04', 'Brother DCP-T720DW  Printer', 'Brother DCP-T720DW Multifunction Color Ink Printer', 31000.00, 6, 'images/4mIdctRXLjQ7AdRjxCO8jRHVFLeSeHEf74YYjRFw.webp', '2024-11-09 01:56:04', '2024-11-09 01:56:04'),
(12, 'Pr01', 'Intel Core i3 Processor', 'Intel 10th Gen Comet Lake Core i3 10105 Processor', 10800.00, 30, 'images/KzCYVudPjLsSdAMuiHTEPCpIujU9DsqB3cm3VEpD.webp', '2024-11-09 01:57:12', '2024-11-09 01:57:12'),
(13, 'K01', 'A4TECH Keyboard', 'A4TECH FK11 Grey USB FN-Hotkeys Multimedia Mini Keyboard with Bangla', 950.00, 50, 'images/KcYPN1aINnoe8ATjT7RNA2ZRhMykS9DbGcgBw7m7.webp', '2024-11-09 01:58:04', '2024-11-09 02:19:17'),
(15, 'Pow01', 'Power Supply 500W', 'Revenger Lite/Low Power 350W Non Modular 80 Plus Black Power Supply', 1500.00, 40, 'images/qgTkLTHMWrKnBAJfX6gBBLX0sv9FN9SMcRK4oJRM.webp', '2024-11-09 07:45:03', '2024-11-09 07:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('tlhj3zFf3A002HVRyExAm5WfaMEMYsVz8M3eMfQ5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0tHdDlXbHA4U1c2WVNvUWVCRnNxQk01MDRQR0dycEpHVG5DSWpORCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cy8xMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731160768);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
