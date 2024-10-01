-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 21, 2024 at 09:58 AM
-- Server version: 5.7.40
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dream_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `behind` text COLLATE utf8mb4_unicode_ci,
  `mission` text COLLATE utf8mb4_unicode_ci,
  `service` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admincontacts`
--

DROP TABLE IF EXISTS `admincontacts`;
CREATE TABLE IF NOT EXISTS `admincontacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh Food Item', 'categories/MIy58nrxVdEmdH7VupQJeKqz2YoA6HbZm866FTM6.jpg', NULL, '2024-09-21 00:44:21', '2024-09-21 00:44:21'),
(2, 'India Food Item', 'categories/QlIUXPGthyupdZhFDSmH5YJCG1fq5vwXDJ60esAo.jpg', NULL, '2024-09-21 00:44:50', '2024-09-21 00:44:50'),
(3, 'Pakistan Food Item', 'categories/LxDK9sHyWWCrt9QtYdFZ1OGAvsx2nPOX35hobq1V.jpg', NULL, '2024-09-21 00:45:13', '2024-09-21 00:45:13'),
(4, 'Netherlands Food Item', 'categories/5YuG8o7ind8yYUnpJ3t7gO4SK1IBa96V6H7HjNaW.jpg', NULL, '2024-09-21 00:45:38', '2024-09-21 00:45:38'),
(5, 'Italy Food Item', 'categories/YjKlvfzas6ikvKKH8CZg2dvspWJQLH9wRKI7D4C7.jpg', NULL, '2024-09-21 00:46:05', '2024-09-21 00:46:05'),
(6, 'Romania Food Item', 'categories/FrmcLH3p9dYYIzjiaSbp0Kjz2t6fUTLxAJwgMcoa.jpg', NULL, '2024-09-21 00:47:07', '2024-09-21 00:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featureds`
--

DROP TABLE IF EXISTS `featureds`;
CREATE TABLE IF NOT EXISTS `featureds` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `information` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

DROP TABLE IF EXISTS `heroes`;
CREATE TABLE IF NOT EXISTS `heroes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_06_072612_create_heroes_table', 1),
(6, '2024_07_07_072212_create_summers_table', 1),
(7, '2024_07_07_091426_create_winters_table', 1),
(8, '2024_07_08_084510_create_usercontacts_table', 1),
(9, '2024_07_08_092413_create_admincontacts_table', 1),
(10, '2024_07_09_084343_create_abouts_table', 1),
(11, '2024_07_14_082911_create_cache_table', 1),
(12, '2024_07_16_094149_create_clients_table', 1),
(13, '2024_07_16_095457_create_featureds_table', 1),
(14, '2024_07_16_100236_create_recents_table', 1),
(15, '2024_07_29_045835_create_categories_table', 1),
(16, '2024_07_29_050255_create_subcategories_table', 1),
(17, '2024_07_29_050531_create_products_table', 1),
(18, '2024_08_18_063109_create_carts_table', 1),
(19, '2024_08_18_063132_create_orders_table', 1),
(20, '2024_08_18_110731_create_order_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_amount`, `status`, `shipping_address`, `payment_method`, `first_name`, `last_name`, `email`, `mobile_no`, `address_line1`, `address_line2`, `country`, `city`, `state`, `zip_code`, `created_at`, `updated_at`) VALUES
('9d0fc2a0-7864-4ee2-9bd2-855887542cb4', '858efe31-9eb4-48de-ad58-2e2ff281b891', '2426.00', 'Delivered', '44 Second Drive Ipsa est omnis corp', 'cash_on_delivery', 'Sazal', 'Harvey', 'sazaldreamdiver@gmail.com', '+1 (649) 677-1928', '44 Second Drive', 'Ipsa est omnis corp', 'Netherland', 'Porro fugit in illu', 'Qui in quia veniam', '86070', '2024-09-21 03:15:54', '2024-09-21 03:51:16'),
('9d0fc9f6-3479-4378-a01d-a6343047df7a', '858efe31-9eb4-48de-ad58-2e2ff281b891', '1104.00', 'Pending', '629 West White Fabien Freeway Soluta autem non rep', 'bank_transfer', 'Sazal Abdullah', 'Cherry', 'sazaldreamdiver@gmail.com', '+1 (495) 735-9483', '629 West White Fabien Freeway', 'Soluta autem non rep', 'Netherland', 'Quia omnis adipisici', 'Dolor laudantium co', '56987', '2024-09-21 03:36:24', '2024-09-21 03:36:24'),
('9d0fca52-494c-4076-af68-d7dd8a785e63', '858efe31-9eb4-48de-ad58-2e2ff281b891', '907.00', 'Pending', '11 First Avenue Dolores ut magnam re', 'bank_transfer', 'Dream Diver', 'Luna', 'sazaldreamdiver@gmail.com', '+1 (534) 496-2501', '11 First Avenue', 'Dolores ut magnam re', 'Netherland', 'Et rerum quis volupt', 'Consequatur occaeca', '55494', '2024-09-21 03:37:24', '2024-09-21 03:37:24'),
('9d0fcc3c-03d4-4a8f-abcc-9d49d5376867', '858efe31-9eb4-48de-ad58-2e2ff281b891', '552.00', 'Shipped', '99 First Lane Quia esse labore in', 'cash_on_delivery', 'Admin', 'Snow', 'sazaldreamdiver@gmail.com', '+1 (298) 624-8632', '99 First Lane', 'Quia esse labore in', 'Albania', 'Voluptas quas dolore', 'Optio deserunt quia', '12745', '2024-09-21 03:42:45', '2024-09-21 03:51:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_order_id_foreign` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `size`, `color`, `total_price`, `created_at`, `updated_at`) VALUES
(1, '9d0fc2a0-7864-4ee2-9bd2-855887542cb4', 1, 1, '244.00', NULL, NULL, '244.00', '2024-09-21 03:15:54', '2024-09-21 03:15:54'),
(2, '9d0fc2a0-7864-4ee2-9bd2-855887542cb4', 2, 2, '833.00', NULL, NULL, '1666.00', '2024-09-21 03:15:54', '2024-09-21 03:15:54'),
(3, '9d0fc2a0-7864-4ee2-9bd2-855887542cb4', 3, 3, '172.00', NULL, NULL, '516.00', '2024-09-21 03:15:54', '2024-09-21 03:15:54'),
(4, '9d0fc9f6-3479-4378-a01d-a6343047df7a', 54, 2, '552.00', NULL, NULL, '1104.00', '2024-09-21 03:36:24', '2024-09-21 03:36:24'),
(5, '9d0fca52-494c-4076-af68-d7dd8a785e63', 55, 1, '907.00', NULL, NULL, '907.00', '2024-09-21 03:37:24', '2024-09-21 03:37:24'),
(6, '9d0fcc3c-03d4-4a8f-abcc-9d49d5376867', 54, 1, '552.00', NULL, NULL, '552.00', '2024-09-21 03:42:45', '2024-09-21 03:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `old_price` decimal(8,2) DEFAULT NULL,
  `sub_description` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `information` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Regular',
  `status_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'In Stock',
  PRIMARY KEY (`id`),
  KEY `products_subcategory_id_foreign` (`subcategory_id`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `subcategory_id`, `category_id`, `name`, `title`, `sub_title`, `image`, `price`, `old_price`, `sub_description`, `description`, `information`, `created_at`, `updated_at`, `status`, `status_1`) VALUES
(1, 1, 1, 'Malcolm Cole', 'In est obcaecati imp', 'Fugit error volupta', 'products/esWVvaVCZUeTuhtAVlD3iBE7SWniaCDofqrtRzs3.png', '244.00', '2.00', 'Deserunt porro conse', 'Reprehenderit repreh', 'Quam placeat qui qu', '2024-09-21 01:57:03', '2024-09-21 01:58:37', 'Regular', 'In Stock'),
(2, 1, 6, 'Vivian Mooney', 'Laboris dolor sequi', 'Dolorum impedit qua', 'products/S0liopsYCcsmsvzWFtTZWk3VwKkYqbUzAJqeg3C6.png', '833.00', '112.00', 'Voluptatibus dolorem', 'Unde dolor quis sed', 'Quia sint possimus', '2024-09-21 01:59:29', '2024-09-21 01:59:29', 'Regular', 'In Stock'),
(3, 1, 6, 'Chase Diaz', 'Magna consequatur C', 'Sed autem voluptatem', 'products/etw2uezsdNjR2kKnIhLuwHGo8xwXmZWk7C1PzUXG.png', '172.00', '479.00', 'Laboriosam esse er', 'Ipsam vero voluptati', 'Veniam dolores cons', '2024-09-21 02:00:45', '2024-09-21 02:00:58', 'Regular', 'In Stock'),
(4, 1, 1, 'Mikayla Flores', 'Culpa deleniti et op', 'Irure ipsum qui beat', 'products/Gyk7FBzIm4ry7lndoXXtPQ6TSV3EwWOq1RhT6u4w.png', '163.00', '429.00', 'Eos labore omnis et', 'Vel ea eum quae id', 'Eos dolorem eaque cu', '2024-09-21 02:01:19', '2024-09-21 02:01:19', 'Regular', 'In Stock'),
(5, 2, 6, 'Anika Gilliam', 'Ut quis voluptatibus', 'Voluptate hic quia q', 'products/6gEeGs6adDr9UVVTCH7pL4ajQndRqUDqNIyKKYq9.png', '618.00', '468.00', 'Amet cumque quod ni', 'Harum unde est facil', 'Molestiae dolor ut e', '2024-09-21 02:02:00', '2024-09-21 02:02:36', 'Regular', 'In Stock'),
(6, 2, 3, 'Fredericka Hardin', 'Ut deserunt quos eum', 'Veritatis omnis tene', 'products/wMfjM8xdgLHk1OhkO4ERsTVsMhPO9D4D5UKYWGew.png', '998.00', '644.00', 'Omnis amet facere v', 'Et omnis reprehender', 'Impedit voluptatem', '2024-09-21 02:04:09', '2024-09-21 02:05:03', 'Regular', 'In Stock'),
(7, 2, 1, 'Amity Stevenson', 'Vitae voluptatem sim', 'Laudantium occaecat', 'products/oAWSfrcQIjESth9XFOtvEHWqxKCWxgllYv8YPbS6.png', '815.00', '951.00', 'Voluptate voluptatum', 'Dolores similique au', 'Sit laboris magni v', '2024-09-21 02:05:24', '2024-09-21 02:05:24', 'Regular', 'In Stock'),
(8, 2, 5, 'Allen Craig', 'Nulla velit similiqu', 'Odit modi voluptatem', 'products/mWsYJUc1sXDhdKaPOfscoyR7Zx1vDbboIHX7ILuW.png', '296.00', '670.00', 'Aut aliquip voluptat', 'Reiciendis inventore', 'Aut voluptate veniam', '2024-09-21 02:05:47', '2024-09-21 02:05:47', 'Regular', 'In Stock'),
(9, 3, 3, 'Olympia Cross', 'In ea rerum dolores', 'Libero inventore sed', 'products/0NM8xXm9nwKgeX4FY6JRv3MO4HqzX6YrTpxGS88V.png', '214.00', '338.00', 'Ex cum amet eos ap', 'Ipsa provident sit', 'Id fugiat ipsa non', '2024-09-21 02:06:58', '2024-09-21 02:06:58', 'Regular', 'In Stock'),
(10, 3, 5, 'Burke Madden', 'Temporibus voluptate', 'Natus maxime officii', 'products/PfCQsFHvQ1N7gYVsr8caBnPqrj8AQVjq60LlYyUm.png', '337.00', '652.00', 'Aliqua Excepturi la', 'Numquam inventore it', 'Occaecat fugiat labo', '2024-09-21 02:07:42', '2024-09-21 02:07:42', 'Regular', 'In Stock'),
(11, 4, 3, 'Hedy Clemons', 'Molestias quidem vel', 'In vel ut dolorem eo', 'products/bXAXCJYVlT59MCRSiVPt1lmVayv70q6cKXDQya9l.png', '893.00', '71.00', 'Tempor et eum dolor', 'Exercitationem molli', 'Placeat sed sit aut', '2024-09-21 02:08:03', '2024-09-21 02:08:03', 'Regular', 'In Stock'),
(12, 4, 4, 'Rafael Cameron', 'Non non dignissimos', 'Libero alias reprehe', 'products/4b7cHBbCoSNzIu3I3siKUrw288ZfRrG5Ph4nvNJS.png', '563.00', '155.00', 'Qui dolor voluptas n', 'Voluptatum quia illo', 'Et laudantium provi', '2024-09-21 02:08:41', '2024-09-21 02:08:41', 'Regular', 'In Stock'),
(13, 6, 5, 'Lenore Moss', 'Suscipit reiciendis', 'Voluptates saepe id', 'products/x8vUzwZ6dR0JPWS3puYgAuX7Kl7tivQLM3K52LLq.png', '358.00', '288.00', 'Ut in ullam fugit c', 'Quod autem quia ipsu', 'Inventore et aut vol', '2024-09-21 02:09:08', '2024-09-21 02:09:08', 'Regular', 'In Stock'),
(14, 5, 3, 'Neve Rivas', 'Sit delectus quia d', 'Omnis proident tota', 'products/s7j3cGxKj1HFnBSWlQoweOuwT5thqobNiUaZ6Q9x.png', '538.00', '691.00', 'Voluptates sunt veli', 'Deserunt in et conse', 'Nostrum omnis exerci', '2024-09-21 02:10:07', '2024-09-21 02:10:07', 'Regular', 'In Stock'),
(15, 7, 3, 'Brock Dunlap', 'Id nulla expedita ha', 'A esse velit culpa', 'products/HiYt9KoMAJJk0zoWNyqNgsl7r1GJI7Si4PNMXQJT.png', '421.00', '24.00', 'Tempor sit in repreh', 'Modi aliquid atque q', 'Rerum enim iure dolo', '2024-09-21 02:10:50', '2024-09-21 02:10:50', 'Regular', 'In Stock'),
(16, 8, 5, 'Rogan Noble', 'Architecto odio veli', 'Tempora quibusdam do', 'products/0XQbsfYZLjIUrwHVvD8ui1QSWuurEvRGQDYN9Ddh.png', '958.00', '165.00', 'Vero anim esse itaq', 'Vitae aperiam odio d', 'Lorem quasi ut eum q', '2024-09-21 02:11:12', '2024-09-21 02:11:12', 'Regular', 'In Stock'),
(17, 9, 3, 'Tara Foster', 'Consequatur esse at', 'Nihil laborum In pa', 'products/AUyiSBoMIm1EbGaPuhKyXgZWEFqXpUgIKRJoTAHs.png', '975.00', '559.00', 'Consequatur Volupta', 'Iusto anim sed porro', 'Soluta nisi quas dol', '2024-09-21 02:11:52', '2024-09-21 02:11:52', 'Regular', 'In Stock'),
(18, 10, 5, 'Carla Valencia', 'Sapiente ullamco rep', 'Quaerat voluptatem', 'products/Ro9lypiR9z8uousFcjsfOKBleVhxzzvW6SL0fnZp.png', '640.00', '173.00', 'Veniam dolorum mole', 'Ut est quia qui eum', 'Aut quod dolores qui', '2024-09-21 02:12:27', '2024-09-21 02:12:27', 'Regular', 'In Stock'),
(19, 11, 2, 'Nelle Mcclure', 'Deserunt velit repud', 'Commodi omnis volupt', 'products/JyzRhReoP6xzPLyqrD6HpKIA4p8aWyPPgVFv9i2t.png', '926.00', '776.00', 'Nostrum et ullamco v', 'Rerum ut ut qui dolo', 'Odit adipisicing inc', '2024-09-21 02:12:55', '2024-09-21 02:12:55', 'Regular', 'In Stock'),
(20, 12, 3, 'Darryl Gardner', 'Optio quo natus sin', 'Vero in ullamco aute', 'products/2WEmzb50Cow2yySR82aNvycINqH0niTTkt1k3RMb.png', '808.00', '678.00', 'Sit dolore in magna', 'Unde aspernatur fugi', 'Officia amet commod', '2024-09-21 02:13:17', '2024-09-21 02:13:17', 'Regular', 'In Stock'),
(21, 13, 3, 'Paul Mccormick', 'In id quas quia in', 'Dolor dolore volupta', 'products/U0Qw8lG2lQU5HZ9C1B1JHhsgkI3CdHl80pd2dvRV.png', '263.00', '762.00', 'Nisi vel placeat do', 'Culpa quibusdam iur', 'Dolorem reprehenderi', '2024-09-21 02:13:49', '2024-09-21 02:13:49', 'Regular', 'In Stock'),
(22, 14, 4, 'Naomi Wheeler', 'Corrupti aut praese', 'Voluptatibus beatae', 'products/CM6KIp5E4Ao0Rs0qWZWpWJ10ZazeVQfJoo3sOaWl.png', '306.00', '1.00', 'Corrupti cumque rat', 'Pariatur In aliquip', 'Quibusdam ut veniam', '2024-09-21 02:14:14', '2024-09-21 02:14:14', 'Regular', 'In Stock'),
(23, 15, 4, 'Lucas Mccarty', 'Et aliquip id et si', 'Enim impedit quas d', 'products/4UTkbEblm9KDwrDmJkqDT5dokGaKL3PzptoCQW1V.png', '543.00', '148.00', 'Nisi labore aut aper', 'Ipsa mollitia aut a', 'Omnis rerum sunt om', '2024-09-21 02:15:33', '2024-09-21 02:15:33', 'Regular', 'In Stock'),
(24, 16, 2, 'Xavier Smith', 'Veritatis nihil fuga', 'Quo laborum In lore', 'products/zxI79YYUdaavXbDxZc1sO3K2OMopFiWoexOmbdnb.png', '633.00', '411.00', 'Consequuntur est aut', 'Eum nulla voluptatum', 'Suscipit in blanditi', '2024-09-21 02:16:06', '2024-09-21 02:16:06', 'Regular', 'In Stock'),
(25, 35, 3, 'Malachi Hartman', 'Quibusdam lorem et a', 'Qui suscipit aliqua', 'products/jvdDi8y8jhWAYB2uT1N0XOfsbFeF85HPQnhHFjFu.png', '229.00', '688.00', 'Praesentium eu labor', 'Culpa nostrud exerci', 'Repudiandae voluptat', '2024-09-21 02:16:48', '2024-09-21 02:16:48', 'Regular', 'In Stock'),
(26, 4, 4, 'Jennifer Patterson', 'Occaecat molestias l', 'Quo officiis alias q', 'products/EnLcLHPWScBh35Qyx3A40QRCnxhreUQzStzAg1Ba.png', '363.00', '583.00', 'Laboriosam labore q', 'Dignissimos sit nisi', 'Corporis nisi fugit', '2024-09-21 02:17:00', '2024-09-21 02:17:08', 'Regular', 'Out of Stock'),
(27, 36, 6, 'Deirdre Dunlap', 'Ut sunt nobis volupt', 'Nulla exercitationem', 'products/01XY82WDhCzJLp3k1sMztlGDQTvvj7VqJJK9ikJ7.png', '365.00', '54.00', 'Fugiat aut numquam', 'Fugiat qui deserunt', 'Consectetur in offi', '2024-09-21 02:17:24', '2024-09-21 02:17:24', 'Regular', 'In Stock'),
(28, 41, 6, 'Noble Dyer', 'Magnam exercitation', 'Tenetur sit omnis N', 'products/z9ERz54886b9Sw2S6OPTf9zvE9dslTigVbb2goUa.png', '882.00', '80.00', 'Esse eaque ea excep', 'Eligendi eum nemo re', 'At odio ad cupiditat', '2024-09-21 02:17:42', '2024-09-21 02:17:42', 'Regular', 'In Stock'),
(29, 23, 3, 'Logan Neal', 'Atque excepteur aliq', 'Asperiores fugit li', 'products/Ts963ADTtJ0tnvVcYHWry05r4ZwETRnPrV2HZiwa.png', '675.00', '51.00', 'Veniam fugiat rem c', 'Perferendis quis et', 'Magni sit voluptas', '2024-09-21 02:17:58', '2024-09-21 02:17:58', 'Regular', 'In Stock'),
(30, 17, 1, 'Walter Estes', 'Exercitation quo omn', 'Atque vel illo ut ni', 'products/FI4LviGZUqdU6aFBOBk5vlHuSFcU1fx3tMCT4Hcu.png', '362.00', '335.00', 'Veniam molestias ma', 'Sunt cupiditate accu', 'Nulla id qui dolore', '2024-09-21 02:20:45', '2024-09-21 02:20:45', 'Regular', 'In Stock'),
(31, 18, 5, 'Wade Sargent', 'Voluptas ratione dol', 'Culpa sunt ipsam a', 'products/qXYSRupHe0dMWhEp6NKKwSdZBibTwfnXLp89xei6.png', '294.00', '985.00', 'Id ut et id rerum co', 'Ipsum quos do sed au', 'Quidem incidunt ill', '2024-09-21 02:21:11', '2024-09-21 02:21:11', 'Regular', 'In Stock'),
(32, 19, 2, 'Food', 'wsef', 'Officia ad asperiore', 'products/e9WDfWfHduNzZfKKeHa6AYV5UHqnrvDPvve5DHlz.png', '581.00', '689.00', 'fsdagfasdg', 'sdfasd', 'sdafgdsafgd', '2024-09-21 02:23:47', '2024-09-21 02:23:47', 'Regular', 'In Stock'),
(33, 20, 2, 'Edan Hoover', 'Et est quis sint cul', 'Magna minus esse ist', 'products/2ChEB5xOYYjGd6cj9CZzMmMi7KmzNZkdoFYsXouS.png', '540.00', '90.00', 'Blanditiis velit eiu', 'Est error vero nihi', 'Cumque culpa incidi', '2024-09-21 02:24:09', '2024-09-21 02:24:09', 'Regular', 'In Stock'),
(34, 56, 2, 'Kelsie Cardenas', 'Ipsam eligendi ut qu', 'Perferendis qui do i', 'products/UXqmsfgrP46xRahOJVwNr1bUX2GdrXR1nBclEFLp.png', '267.00', '95.00', 'Sit neque magna ven', 'Commodi ab aspernatu', 'Molestias quidem inc', '2024-09-21 02:24:52', '2024-09-21 02:24:52', 'Regular', 'In Stock'),
(35, 22, 2, 'Isabella Vazquez', 'Nam qui molestiae vo', 'Officia ullam suscip', 'products/8vd4V29mczJqlP2vPhkQ4zFw2jc0Fg23KM5yeK7c.png', '498.00', '445.00', 'Possimus non eos s', 'Do soluta cupidatat', 'Et suscipit iusto an', '2024-09-21 02:27:13', '2024-09-21 02:27:13', 'Regular', 'In Stock'),
(36, 23, 2, 'Xyla Lawson', 'Nihil magna earum qu', 'Et velit exercitatio', 'products/tejMoxXgA4Knu9CwVyj97ptZw7cRGcjW9TlvK61x.png', '847.00', '338.00', 'Alias quia eiusmod e', 'Ratione officia opti', 'Esse est voluptas mo', '2024-09-21 02:29:19', '2024-09-21 02:29:19', 'Regular', 'In Stock'),
(37, 24, 2, 'Colt Nixon', 'Possimus recusandae', 'Fugiat est aute qui', 'products/Ers5exQebncx05LLPfYolRN0YRLHsL9fIPfxWSRV.png', '191.00', '218.00', 'Vero velit quo dolo', 'Quia sequi exercitat', 'Minus a est labore', '2024-09-21 02:29:44', '2024-09-21 02:29:44', 'Regular', 'In Stock'),
(38, 25, 2, 'Jordan Sullivan', 'Est quasi veniam mo', 'Mollit duis sit qua', 'products/DK14vh5j93ExuadlfNnsJnJC8jsu8qMqHFcwSxze.png', '572.00', '151.00', 'Voluptatem qui ut ap', 'Id fugit cum distin', 'Quibusdam fugiat vit', '2024-09-21 02:30:09', '2024-09-21 02:30:09', 'Regular', 'In Stock'),
(39, 26, 2, 'Hamilton Everett', 'Aspernatur consectet', 'Minim cupidatat aut', 'products/Xh9fvjZAOclseSFyu7kUH88OfUsEdIwAa5B1koVL.png', '199.00', '388.00', 'Eu quisquam enim con', 'Magni suscipit ipsa', 'Nobis est distinctio', '2024-09-21 02:31:01', '2024-09-21 02:31:01', 'Regular', 'In Stock'),
(40, 27, 3, 'Keiko Scott', 'Error corrupti et N', 'Eaque fuga Iure fug', 'products/ae7S7lVVAlX55xQqjceTtAO2FjvI4d5dqseTqaa6.png', '699.00', '226.00', 'Dolores esse harum', 'In beatae ad minus s', 'Quasi ut sapiente ni', '2024-09-21 02:32:33', '2024-09-21 02:32:33', 'Regular', 'In Stock'),
(41, 28, 3, 'Food', 'qawdfwe', 'Voluptate libero et', 'products/OQUThWG4XoNWsXCLBah8CIDFw7GGwcT25WFmvwCi.png', '468.00', '690.00', 'fgeartfgaerstfgaer', 'qwefweafrera', 'tgfearstger', '2024-09-21 02:33:09', '2024-09-21 02:33:09', 'Regular', 'In Stock'),
(42, 29, 3, 'Isaiah Nielsen', 'Praesentium explicab', 'Natus rem quos ad al', 'products/lBBzu5YsZu6APfDU3SChtHAc1NI2XJmNRCSilNpZ.png', '808.00', '611.00', 'Et magna temporibus', 'Voluptatem nesciunt', 'Eligendi sunt adipis', '2024-09-21 02:34:54', '2024-09-21 02:34:54', 'Regular', 'In Stock'),
(43, 30, 3, 'Pandora Aguirre', 'Est irure ex anim s', 'In id consequuntur n', 'products/UV3bU04DiwdncxUQa6xIBlkmEqqnKwERNKMY55ar.png', '363.00', '895.00', 'Mollitia laboris rat', 'Neque officia at Nam', 'Quia asperiores volu', '2024-09-21 02:35:27', '2024-09-21 02:35:27', 'Regular', 'In Stock'),
(44, 31, 3, 'Castor Osborne', 'Aspernatur distincti', 'Ipsam et fugit pari', 'products/aJDO3kEGLAjoYtFMxCKA0kuT21G7HNZ5AkCfi618.png', '491.00', '926.00', 'Et molestias excepte', 'Quo quod vero vel ir', 'Sed ab et tenetur es', '2024-09-21 02:36:45', '2024-09-21 02:36:45', 'Regular', 'In Stock'),
(45, 32, 3, 'Tanisha Carney', 'Provident ea labori', 'Enim aliquip qui vel', 'products/MtU81zMc5abXQsWEdtr1VPfi9FTxQxBpvCmmLMUy.png', '77.00', '616.00', 'Eveniet ipsam culpa', 'Eveniet voluptatem', 'Dolor quaerat repudi', '2024-09-21 02:37:12', '2024-09-21 02:37:12', 'Regular', 'In Stock'),
(46, 33, 3, 'Elvis Powers', 'Non eos dolorem volu', 'Non commodi expedita', 'products/Ms7AbabhRj6qLlQSje8z6pYMJpW9oObGR2xLKpMk.png', '582.00', '102.00', 'Consectetur commodo', 'Dolorem error sunt', 'Illo elit quam at a', '2024-09-21 02:38:37', '2024-09-21 02:38:37', 'Regular', 'In Stock'),
(47, 34, 3, 'Roanna Page', 'Alias eius cupidatat', 'Aliqua Quas asperio', 'products/F3MMQ4i7lEXQDtoDOOyoOM3U1VNQWSlnMkzqwQqf.png', '40.00', '353.00', 'Totam nulla qui aut', 'Quidem error laudant', 'Natus necessitatibus', '2024-09-21 02:39:01', '2024-09-21 02:39:01', 'Regular', 'In Stock'),
(48, 35, 3, 'Otto Yates', 'Et nulla amet qui t', 'Itaque illum aut er', 'products/8DV76yagrhKYax4k8Nlgm6hhAxwvTtMYf09sUXco.png', '222.00', '955.00', 'Distinctio Aut nisi', 'Et ea quo ullam reru', 'Accusantium ipsum s', '2024-09-21 02:39:32', '2024-09-21 02:39:32', 'Regular', 'In Stock'),
(49, 35, 3, 'Colleen Welch', 'Qui quibusdam quae s', 'Recusandae Harum no', 'products/XdxIT2R4CT18DlfCh8ZaDXSl7cNgU7Zb5NhMuAAt.png', '257.00', '384.00', 'Dolores vel in nulla', 'Doloremque qui nisi', 'Consectetur volupta', '2024-09-21 02:40:20', '2024-09-21 02:40:20', 'Regular', 'In Stock'),
(50, 36, 3, 'Ursula Hewitt', 'Quisquam officia ali', 'Porro officiis odit', 'products/wbaxzQQzqMD8pBztuPehb84TVFNzo34JOjEgedIJ.png', '170.00', '38.00', 'Ea sunt vel enim sin', 'Eiusmod beatae ut iu', 'Cupidatat officiis e', '2024-09-21 02:40:53', '2024-09-21 02:40:53', 'Regular', 'In Stock'),
(51, 37, 3, 'Honorato Vasquez', 'Pariatur Eos anim l', 'Hic facere tempor ac', 'products/MJTKkcCS9NpjZ59RP3DMoKxom2QXUqmKGJgfUini.png', '219.00', '210.00', 'Necessitatibus venia', 'Eos reprehenderit a', 'Fugiat exercitation', '2024-09-21 02:41:26', '2024-09-21 02:41:26', 'Regular', 'In Stock'),
(52, 38, 3, 'Christopher Walls', 'Impedit anim eos q', 'Rem quo et perferend', 'products/mkYceLRoyp0CMRisocQDFzRcR56zZAPG9XtcQ6eT.png', '126.00', '970.00', 'Nisi quaerat quia ex', 'Itaque illum esse', 'Consectetur eos veni', '2024-09-21 02:42:07', '2024-09-21 02:42:07', 'Regular', 'In Stock'),
(53, 39, 4, 'Xavier Baxter', 'Explicabo Ea volupt', 'Mollit expedita eius', 'products/bKKsb3hDf951sUmWzdUUe0KhcsyXdhmEKPsNf46P.png', '100.00', '948.00', 'Expedita maiores qui', 'Iste laboris possimu', 'Aute aut non placeat', '2024-09-21 02:42:54', '2024-09-21 02:42:54', 'Regular', 'In Stock'),
(54, 39, 4, 'Wyatt Compton', 'Ipsam elit consequa', 'Ipsa perferendis ut', 'products/lDNPK0U9xvId5k5wLxWfzqCpSVJvrns7zK1Jfzw1.png', '552.00', '474.00', 'Maiores sit incidid', 'Consequatur Aute vo', 'Itaque rerum dolores', '2024-09-21 02:43:19', '2024-09-21 02:43:19', 'Regular', 'In Stock'),
(55, 40, 4, 'Dahlia Rios', 'Ut quas ut totam dol', 'Reiciendis commodo s', 'products/NJ9dIiqpjuaZ76Fli5vj1uhhNtlipCoGmT9LmHTs.png', '907.00', '699.00', 'Modi corporis nobis', 'Duis sunt eos debi', 'Voluptate ad sed por', '2024-09-21 02:43:46', '2024-09-21 02:43:46', 'Regular', 'In Stock'),
(56, 41, 4, 'Ross Chang', 'Laboriosam quis exp', 'Error repudiandae ad', 'products/wAFsVbnMVWXaVilMouKY4bJL2n3IkkalgsghJCbe.png', '497.00', '636.00', 'Facilis non harum ar', 'Porro id occaecat do', 'Libero harum qui imp', '2024-09-21 02:44:09', '2024-09-21 02:44:09', 'Regular', 'In Stock'),
(57, 42, 4, 'Russell Skinner', 'Sint aliquid sapien', 'Autem quas suscipit', 'products/fzpS0y7VC8j8dCc1RV24PnmJly0eMpwonXNLWoOz.png', '883.00', '230.00', 'Enim repellendus Au', 'Saepe mollitia est c', 'Esse inventore numqu', '2024-09-21 02:45:07', '2024-09-21 02:45:07', 'Regular', 'In Stock'),
(58, 43, 4, 'Naomi Newton', 'Cupidatat accusamus', 'Officiis aliquip aut', 'products/QncYhGKkFJIzRvBk3DhbE5mOThiohZ83eye54HVS.png', '323.00', '298.00', 'Est rem sunt consect', 'Adipisicing laborum', 'Itaque alias aliquam', '2024-09-21 02:45:52', '2024-09-21 02:45:52', 'Regular', 'In Stock'),
(59, 44, 4, 'Louis Holcomb', 'Quaerat eos eu sint', 'Velit veritatis ist', 'products/5KC5ARBbYiOeJUksZlctAEDsQsj2LKbfDCWMJQ4A.png', '227.00', '520.00', 'Aliquip mollit accus', 'Mollit pariatur Tem', 'Dolor quasi omnis po', '2024-09-21 02:46:42', '2024-09-21 02:46:42', 'Regular', 'In Stock'),
(60, 45, 4, 'Alan Kirkland', 'Temporibus totam qua', 'Cumque anim voluptas', 'products/kRgz68uMr8zGMCWrvGJD8ddN2j7awQpQcyTCixE7.png', '329.00', '34.00', 'Dolores id quisquam', 'Proident aut commod', 'Libero aut laborum', '2024-09-21 02:47:38', '2024-09-21 02:47:38', 'Regular', 'In Stock'),
(61, 46, 4, 'Arden Hutchinson', 'Itaque a et dolor as', 'Nulla commodo volupt', 'products/voyrWuV9OuDsIref5nD8ZPvwnuu6s7gNwJsOr6Zb.png', '219.00', '19.00', 'Quia delectus obcae', 'Qui quibusdam volupt', 'Est qui aut tempore', '2024-09-21 02:48:07', '2024-09-21 02:48:07', 'Regular', 'In Stock'),
(62, 47, 4, 'Kennan Mclean', 'In mollitia aut a la', 'Et non aut molestiae', 'products/rE9wisJFh1tG27g5OkmRKcWIzfl27t5XTOheBH5u.png', '311.00', '415.00', 'Quia quis velit enim', 'Eiusmod dolore conse', 'Consequuntur dolorem', '2024-09-21 02:49:15', '2024-09-21 02:49:15', 'Regular', 'In Stock'),
(63, 48, 4, 'Gavin Conley', 'Temporibus doloribus', 'Ratione dolor soluta', 'products/5fWOfi1e55yBCVgKQQs2PK10YjhBo0j6vozRNXJF.png', '354.00', '713.00', 'Et proident necessi', 'Excepteur dolore off', 'Nam modi accusamus i', '2024-09-21 02:49:38', '2024-09-21 02:49:38', 'Regular', 'In Stock'),
(64, 49, 4, 'Madison Morin', 'Delectus dolorem ad', 'Excepturi molestiae', 'products/eK14cCuLA8MqdWOPIczXudrEIXHb6GKc8BTiC0gB.png', '783.00', '581.00', 'Voluptas modi eligen', 'Ut quia sint itaque', 'Praesentium numquam', '2024-09-21 02:50:19', '2024-09-21 02:50:19', 'Regular', 'In Stock'),
(65, 50, 4, 'Clio Austin', 'Nulla sint ut dolor', 'Deserunt labore dolo', 'products/FfM4HJdJ4zvaVZuGguBJ5Jl6KVN4KchjI3ldt3fH.png', '883.00', '111.00', 'Nam omnis id lorem u', 'Ut ea quibusdam quis', 'Ad elit excepturi d', '2024-09-21 02:50:40', '2024-09-21 02:50:40', 'Regular', 'In Stock'),
(66, 51, 4, 'Selma Mcdaniel', 'Dolore iure dolor co', 'Quasi id repellendu', 'products/zSPkHEKe1BKe1H6Tt1xR1PYPRCe4MgQORRyYkZId.png', '442.00', '203.00', 'Et minima non maiore', 'Ut sapiente explicab', 'Id voluptate eos vol', '2024-09-21 02:51:15', '2024-09-21 02:51:15', 'Regular', 'In Stock'),
(67, 52, 4, 'Nomlanga Key', 'Saepe fugit totam a', 'Consequatur aut alia', 'products/PEV6esEs7zNnHoy3dsb4aXqOKN2KiVwPY1alQy2r.png', '506.00', '654.00', 'Dolores earum magnam', 'Dolorem quibusdam qu', 'Qui dicta odio provi', '2024-09-21 02:51:34', '2024-09-21 02:51:34', 'Regular', 'In Stock'),
(68, 53, 5, 'Cheyenne Yates', 'Sed id dolorem adipi', 'Ipsum nostrum sit a', 'products/wXvoKhSWo89lz72RPrX7YwUgDD8IlNtDyNeWsMPp.png', '839.00', '363.00', 'Laudantium quasi no', 'Ea esse aperiam qua', 'Ducimus dolores cor', '2024-09-21 02:54:20', '2024-09-21 02:54:20', 'Regular', 'In Stock'),
(69, 54, 5, 'Cameron Luna', 'Asperiores ipsam iur', 'Aspernatur enim maio', 'products/tEz4mCqXM7nb9V4oiIzvVWFWoyeJVZlg0KI5K6NP.png', '68.00', '625.00', 'Quae quae eos evenie', 'Corrupti voluptatem', 'Voluptate sed qui vo', '2024-09-21 02:54:52', '2024-09-21 02:54:52', 'Regular', 'In Stock'),
(70, 55, 5, 'Neve Knight', 'Duis consequatur at', 'Blanditiis vero dolo', 'products/Et5IsLKNUOrgmsK8S7qkWnEZP3KkZXEllW9AFDv2.png', '317.00', '649.00', 'Excepteur magna ipsa', 'Qui nisi et vitae ad', 'Rem eveniet soluta', '2024-09-21 02:55:27', '2024-09-21 02:55:27', 'Regular', 'In Stock'),
(71, 56, 5, 'Yuli Vincent', 'Itaque unde tempore', 'Eius non omnis perfe', 'products/yDL16DjlBrdL3AeVm9cayMnbUjF0ZfmIAEEHnx4t.png', '258.00', '345.00', 'Fugit non velit nat', 'Ad qui non odit cum', 'Aute ea inventore pe', '2024-09-21 02:56:45', '2024-09-21 02:56:45', 'Regular', 'In Stock'),
(72, 57, 5, 'Orlando Nixon', 'Aliquip cumque et al', 'Sit dolorem perspici', 'products/5FPW8g84hyUcP4W4XudOs8OatJpkVCZn74sNSf3A.png', '592.00', '870.00', 'Eos ipsum minima am', 'Adipisicing reprehen', 'Reiciendis eum dolor', '2024-09-21 03:02:50', '2024-09-21 03:02:50', 'Regular', 'In Stock'),
(73, 58, 6, 'Amity Livingston', 'A molestias tempor q', 'Veniam voluptate di', 'products/ceSMnZpjkwNiFTSgdzoVkAxpHV8WyGrhZiLdNmLp.png', '526.00', '759.00', 'Deserunt qui sint ip', 'Aliquip ipsam omnis', 'Perspiciatis dolore', '2024-09-21 03:08:24', '2024-09-21 03:08:24', 'Regular', 'In Stock'),
(74, 59, 6, 'Aidan Quinn', 'Iusto quo qui qui pa', 'Dolor quasi providen', 'products/DsHte6gUIn4oyUn6yQwJwdft2SrYeyxmoQNNRP7V.png', '23.00', '486.00', 'Totam nobis consecte', 'Aliquam quia qui sit', 'Aspernatur consequat', '2024-09-21 03:08:44', '2024-09-21 03:08:44', 'Regular', 'In Stock'),
(75, 60, 6, 'Samson Rogers', 'Proident itaque et', 'Culpa laboris totam', 'products/dKPg7pvvfDRHe6okghMrskBwKFxJZFzIWViXhq5G.png', '820.00', '932.00', 'Odit quae consectetu', 'Officiis eos aut at', 'Quod sed deserunt es', '2024-09-21 03:09:08', '2024-09-21 03:09:08', 'Regular', 'In Stock'),
(76, 61, 6, 'Maisie Stuart', 'Quis ipsum possimus', 'Nihil expedita sed d', 'products/fcrCIRQdOnWs0Gw5aMYL6NQjfu3QokHjVWazFb9H.png', '128.00', '59.00', 'Unde inventore vel a', 'In aut aut labore de', 'Sed velit praesenti', '2024-09-21 03:09:54', '2024-09-21 03:09:54', 'Regular', 'In Stock'),
(77, 62, 6, 'Madeline Randall', 'Quae provident adip', 'Ipsum rerum omnis m', 'products/VTadkfXKbdqzgxQIXH06eTrHCLf3vo7lBa6XvLUo.png', '127.00', '722.00', 'Et autem ut aut earu', 'Ad enim cum quo libe', 'Anim ullamco est ear', '2024-09-21 03:10:16', '2024-09-21 03:10:16', 'Regular', 'In Stock');

-- --------------------------------------------------------

--
-- Table structure for table `recents`
--

DROP TABLE IF EXISTS `recents`;
CREATE TABLE IF NOT EXISTS `recents` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `information` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'breakfast',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategories_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Boiled Egg', 'subcategories/yqFTNpZFF97K2BsDveNuJ3bEFa2unavPUooc8MHB.jpg', NULL, 'breakfast', '2024-09-21 00:52:15', '2024-09-21 00:52:15'),
(2, 1, 'Chicken Galantine', 'subcategories/Ww2t8KoDp0G07z5odEt8VqwibuQglOcl5Ux2FTxN.jpg', NULL, 'breakfast', '2024-09-21 00:53:04', '2024-09-21 00:53:04'),
(3, 1, 'Paneer', 'subcategories/61oWSIqWG9PLoNsBDTiJ48Wjxv9FH3GziaD9ywJG.jpg', NULL, 'breakfast', '2024-09-21 00:53:26', '2024-09-21 00:53:26'),
(4, 1, 'Sabudana Tikki', 'subcategories/x72SFRMNd15NzxiWoh8Aa4PosP7rGAPOqYJZ9yAm.jpg', NULL, 'breakfast', '2024-09-21 00:53:59', '2024-09-21 00:53:59'),
(5, 1, 'Bacon', 'subcategories/Kuuar7zEVIGwJtacaqyiBHWrClo9NVLh0fOceGJf.jpg', NULL, 'breakfast', '2024-09-21 00:54:15', '2024-09-21 00:54:15'),
(6, 1, 'Blooming', 'subcategories/zIcewOwYCyzauS7y99dlf3kU1vm0G2jSuwGZF6XS.jpg', NULL, 'breakfast', '2024-09-21 00:54:33', '2024-09-21 00:54:33'),
(7, 1, 'Sweet Potato', 'subcategories/vwAnsjVsmgo6d8MuXHH9R1s3O06jERk4XBKIRMWC.jpg', NULL, 'lunch', '2024-09-21 00:54:54', '2024-09-21 01:10:29'),
(8, 1, 'Pizza', 'subcategories/tDfZUA82BjFtJYtFe8vubXpRKqYHtN4GZrWSJRjg.jpg', NULL, 'lunch', '2024-09-21 00:55:14', '2024-09-21 01:10:33'),
(9, 1, 'Chicken', 'subcategories/ujWHz64PNbq0z4ZKQEcsoDoNqSFVy10dqNEQgGZ8.jpg', NULL, 'dinner', '2024-09-21 00:56:01', '2024-09-21 01:10:38'),
(10, 1, 'Sweet', 'subcategories/a2qfw5ZHY5ICQRA9yjb6DFrcoWTy2yIpq9foKAIS.jpg', NULL, 'dinner', '2024-09-21 00:56:23', '2024-09-21 01:10:43'),
(11, 1, 'Lemon', 'subcategories/QHC23Pp7hc9bMnVqP9ZtM1aUX34f51COWRPaGVUs.jpg', NULL, 'drinks', '2024-09-21 01:07:17', '2024-09-21 01:10:52'),
(12, 1, 'Salty lemon', 'subcategories/SPmJqLdXQkPS7NmS8UZs9bbPkJvOdL38CLDkt7Ed.jpg', NULL, 'drinks', '2024-09-21 01:07:34', '2024-09-21 01:11:01'),
(13, 1, 'Water Drink', 'subcategories/i2AHEPZFNUOnuQAtscOFFJ2W4wzYWDo0qKBBn2GO.jpg', NULL, 'dessert', '2024-09-21 01:08:02', '2024-09-21 01:11:07'),
(14, 1, 'Orange', 'subcategories/wQyfZdHlfH2SFBdHlcwGn2N7n03tbDCjnvqTSKQV.jpg', NULL, 'dessert', '2024-09-21 01:09:21', '2024-09-21 01:11:10'),
(15, 2, 'Pizza', 'subcategories/t1aAosqCLUedc7G2Wp8iW7wEWRSR9NnDbkvGkI9h.jpg', NULL, 'breakfast', '2024-09-21 01:14:32', '2024-09-21 01:14:32'),
(16, 2, 'Chicken', 'subcategories/FNuohEOUbBTZQDEHtplKByfqwLZNKSVHLeSRj0Xn.jpg', NULL, 'breakfast', '2024-09-21 01:16:38', '2024-09-21 01:16:38'),
(17, 2, 'Blooming', 'subcategories/qCwPRaYk30s1YSyQSkiKbmhUeDbIO9CJoPwL9uH5.jpg', NULL, 'breakfast', '2024-09-21 01:19:26', '2024-09-21 01:19:37'),
(18, 2, 'Argentinian', 'subcategories/w0UqcbOz7hiWKPgOEo7oAioq4WAgZFNwPY74As7y.jpg', NULL, 'breakfast', '2024-09-21 01:25:18', '2024-09-21 01:25:18'),
(19, 2, 'Sabudana Tikki', 'subcategories/wKpr3mbgQdNKWTryUzgri5cWqjFxpAgK37m2U7rK.jpg', NULL, 'lunch', '2024-09-21 01:25:41', '2024-09-21 01:27:11'),
(20, 2, 'Chicken', 'subcategories/1LFS15fL1WPjAVBFRvLayd04VyhfF0tt6erMQvJW.jpg', NULL, 'lunch', '2024-09-21 01:26:00', '2024-09-21 01:27:17'),
(21, 2, 'Sweet', 'subcategories/ZESmRTGdjHDS2bCMB42DEp9hfp9p0lvWyBTRUh0N.jpg', NULL, 'dinner', '2024-09-21 01:26:20', '2024-09-21 01:27:23'),
(22, 2, 'Blooming', 'subcategories/X5YfbjbmxzT2bb7aqXFnz09jbnj3rlknd84KxIbJ.jpg', NULL, 'dinner', '2024-09-21 01:26:40', '2024-09-21 01:27:28'),
(23, 2, 'Paneer', 'subcategories/N1tiwg4HZV4VLgabAGu3xYwi0nI9HpCYTb5Fxfwc.jpg', NULL, 'drinks', '2024-09-21 01:30:51', '2024-09-21 01:31:54'),
(24, 2, 'Sweet Potato', 'subcategories/c4UhC415hyIwbZ6asLMXHr4rL6hECLHPe1AaG3QN.jpg', NULL, 'drinks', '2024-09-21 01:31:11', '2024-09-21 01:31:59'),
(25, 2, 'Chicken', 'subcategories/5U8QWS8ME8Had9zXkVGfxjMvG7KcgCufrhaLGmX4.jpg', NULL, 'dessert', '2024-09-21 01:31:30', '2024-09-21 01:32:04'),
(26, 2, 'Sweet', 'subcategories/Dt4MoRg2VfoHq17Gjk6FJtHilhxuWywgmk1i6Uxf.jpg', NULL, 'dessert', '2024-09-21 01:31:45', '2024-09-21 01:32:11'),
(27, 3, 'Sweet', 'subcategories/KbztuTDLlS6FsiWoywBJDRTddYwC1Y3t364vECve.jpg', NULL, 'breakfast', '2024-09-21 01:33:20', '2024-09-21 01:33:20'),
(28, 3, 'Chicken', 'subcategories/XRYr2b3P1vGrlIGZ9CYKO3QjMj9Wx7pLllOa1zto.jpg', NULL, 'breakfast', '2024-09-21 01:34:20', '2024-09-21 01:34:20'),
(29, 3, 'Pizza', 'subcategories/EKSJEiFKqvkyHJyB9OheZqu8GRInpMkqLvsZTHFt.jpg', NULL, 'breakfast', '2024-09-21 01:34:37', '2024-09-21 01:38:06'),
(30, 3, 'Sweet Potato', 'subcategories/89v66hlv7m6o9bXSIXwY2TG0czUhakzTXxY2JyUT.jpg', NULL, 'breakfast', '2024-09-21 01:34:55', '2024-09-21 01:34:55'),
(31, 3, 'Bargar', 'subcategories/n9P8M3TFN4u5XEs4uOKE48r6dhJhQuiU9sCy2u4m.jpg', NULL, 'lunch', '2024-09-21 01:35:12', '2024-09-21 01:38:46'),
(32, 3, 'Porota', 'subcategories/5IEfX70zdfEs6SpUnnf8hW1cCjblQnkiwH0o1NmB.jpg', NULL, 'lunch', '2024-09-21 01:35:30', '2024-09-21 01:39:02'),
(33, 3, 'Water', 'subcategories/V2KakqJxJUtoCxScPpXXhzzmwfMVuQ0idDbwSrpm.jpg', NULL, 'dinner', '2024-09-21 01:35:52', '2024-09-21 01:40:45'),
(34, 3, 'Salat', 'subcategories/zE42LLCenp5q026qzu4pWAHlcZT9jnigHh2lJtyT.jpg', NULL, 'dinner', '2024-09-21 01:36:18', '2024-09-21 01:40:52'),
(35, 3, 'Sweet Salat', 'subcategories/JTdGHDLANioa00sycs31GUAGpH0mFZeeIDHBwj27.jpg', NULL, 'drinks', '2024-09-21 01:36:49', '2024-09-21 01:41:00'),
(36, 3, 'Pizza', 'subcategories/SWXFiMAOvy7FTtBHMr2JU2IdDUUG5TOZiCXmxH5y.jpg', NULL, 'drinks', '2024-09-21 01:37:29', '2024-09-21 01:41:06'),
(37, 3, 'Paneer', 'subcategories/vCyY10Jm4zyvq994438Fwql2gU58rL1HOECKpDAB.jpg', NULL, 'dessert', '2024-09-21 01:37:47', '2024-09-21 01:41:16'),
(38, 3, 'Bacon', 'subcategories/V4QZI5d4qrJy9vIe5MXvGpxYMrONJ2qsKv0DjARb.jpg', NULL, 'dessert', '2024-09-21 01:42:31', '2024-09-21 01:42:39'),
(39, 4, 'Bacon', 'subcategories/dO6Mm6ehROYSPlOq7sRjk1IQHfNKuBAG17EIJ4gE.jpg', NULL, 'breakfast', '2024-09-21 01:43:31', '2024-09-21 01:43:31'),
(40, 4, 'Sabudana Tikki', 'subcategories/5pDai6vJHNGWMgFWNNnOkb17ekXlkVidkqqPIfZt.jpg', NULL, 'breakfast', '2024-09-21 01:43:54', '2024-09-21 01:43:54'),
(41, 4, 'Blooming', 'subcategories/aRAnTEpRLbWJ1rhvzLh2BktiDPaCVH6AEoPnVKEa.jpg', NULL, 'breakfast', '2024-09-21 01:44:15', '2024-09-21 01:44:15'),
(42, 4, 'Chicken', 'subcategories/qeAONYyqiVJWJ9YVaaBn9n6iXrFhLPSmMcjOYXhR.jpg', NULL, 'breakfast', '2024-09-21 01:44:33', '2024-09-21 01:44:33'),
(43, 4, 'Sweet', 'subcategories/CrbL0DLie8PoRZ34J7Va9akuhCfvAVlDfOW2sAqA.jpg', NULL, 'breakfast', '2024-09-21 01:44:50', '2024-09-21 01:44:50'),
(44, 4, 'Salty lemon', 'subcategories/7fccmx7Fo34gdEwpdrwBw6hP45rHSK7bopcJqH46.jpg', NULL, 'breakfast', '2024-09-21 01:45:10', '2024-09-21 01:45:10'),
(45, 4, 'Water Drink', 'subcategories/8izVZD5qLcD212u4g5QdcVAjSlmab0F1HbxNptSf.jpg', NULL, 'lunch', '2024-09-21 01:45:26', '2024-09-21 01:48:12'),
(46, 4, 'Lemon', 'subcategories/RX2mE0DUHkgCUEsdYn4MlvztqvslTJLJ3ihICbPu.jpg', NULL, 'lunch', '2024-09-21 01:45:45', '2024-09-21 01:48:21'),
(47, 4, 'Crispy', 'subcategories/n511Rg91DOFL3f3kPiml30R9lfvlgmAviZ7eVzwU.jpg', NULL, 'dinner', '2024-09-21 01:46:10', '2024-09-21 01:48:28'),
(48, 4, 'Blooming', 'subcategories/nc3voLDfMfE2n8qheUwTM1jUA0zja4J2QKMpof7J.jpg', NULL, 'dinner', '2024-09-21 01:46:25', '2024-09-21 01:48:35'),
(49, 4, 'Juice', 'subcategories/HPqdSs1NKERsSpP0UCDWrxej1t9uNBDWFjGcaegV.jpg', NULL, 'drinks', '2024-09-21 01:46:45', '2024-09-21 01:48:44'),
(50, 4, 'Apple Juice', 'subcategories/nDQdwpt4WIws5Bc5Ttg5fPoDMwFq90pceoVlOv66.jpg', NULL, 'drinks', '2024-09-21 01:47:03', '2024-09-21 01:48:51'),
(51, 4, 'Sweet Water', 'subcategories/vzkqDrYD7kPAmQhhhWq05loYUbxxmkEq7l3oS9CK.jpg', NULL, 'dessert', '2024-09-21 01:47:24', '2024-09-21 01:48:57'),
(52, 4, 'Hot Coffee', 'subcategories/KDluwe6ocZipRLeA9tyTdb66ctWwEhBovLBsRR1C.jpg', NULL, 'dessert', '2024-09-21 01:47:44', '2024-09-21 01:49:03'),
(53, 5, 'Argentinian', 'subcategories/wDBZgB8AunKwaUOqJN3zATNaz2q9p8EB4CCzIOkC.jpg', NULL, 'breakfast', '2024-09-21 01:50:22', '2024-09-21 01:50:22'),
(54, 5, 'Pizza', 'subcategories/dLZgvZ5sc18oY0oQHqywR7QVnR14nX6XNTPNzInc.jpg', NULL, 'lunch', '2024-09-21 01:50:42', '2024-09-21 01:52:20'),
(55, 5, 'Chicken', 'subcategories/fz3OnaFaLUZd8ufubyVdDuskUUxPDUr6hWSCOPwQ.jpg', NULL, 'dinner', '2024-09-21 01:51:00', '2024-09-21 01:52:26'),
(56, 5, 'Sweet', 'subcategories/xbcKRCCUZzQbh40ECSN9FAVPY2EVrP17lOs123Az.jpg', NULL, 'drinks', '2024-09-21 01:51:40', '2024-09-21 01:52:32'),
(57, 5, 'Blooming', 'subcategories/eHzNFVJvXqNcBRNqWUezqLlqeiiRMAd42kwgTTyl.jpg', NULL, 'dessert', '2024-09-21 01:52:05', '2024-09-21 01:52:36'),
(58, 6, 'Paneer', 'subcategories/7yWioAFkcKnSV7WI89seBlDVID8Lb9j88fST9mE3.jpg', NULL, 'breakfast', '2024-09-21 01:53:03', '2024-09-21 01:53:03'),
(59, 6, 'Pizza', 'subcategories/CzlHaIZdNGuA3A1pZdz8ktvmoGwD1MCVz2KTUG6M.jpg', NULL, 'lunch', '2024-09-21 01:53:20', '2024-09-21 01:54:37'),
(60, 6, 'Bacon', 'subcategories/AvBIZEArbKQabTTa9a5xIs12P3hLPBU0MzPIelXJ.jpg', NULL, 'dinner', '2024-09-21 01:53:36', '2024-09-21 01:54:44'),
(61, 6, 'Chicken', 'subcategories/b6MQKd8atD0eFP5zcGcfyasf5zE6U9XbW5QFO9Ud.jpg', NULL, 'drinks', '2024-09-21 01:53:53', '2024-09-21 01:54:49'),
(62, 6, 'Sweet', 'subcategories/4MmZVzYrIMUNyuQQ7qMK0VFlhbdku5wvzqT193Ce.jpg', NULL, 'dessert', '2024-09-21 01:54:14', '2024-09-21 01:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `summers`
--

DROP TABLE IF EXISTS `summers`;
CREATE TABLE IF NOT EXISTS `summers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usercontacts`
--

DROP TABLE IF EXISTS `usercontacts`;
CREATE TABLE IF NOT EXISTS `usercontacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `role` enum('admin','vendor','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `vendor_short_info` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `vendor_short_info`, `remember_token`, `created_at`, `updated_at`) VALUES
('16f618b4-049c-418f-96ac-647635c4d70d', 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$tY0OlHhLsy9EPvnv8GVz3.YpokwBvjXmyztFLqw6NwuEI4XyxWi1a', NULL, NULL, NULL, 'admin', 'active', NULL, NULL, '2024-09-21 00:42:14', '2024-09-21 00:42:14'),
('e4dfaff0-f8f1-4340-93cb-f2ff616cd29d', 'Vendor', 'vendor', 'vendor@gmail.com', NULL, '$2y$10$z5CIbG0EdaFwX02jy6c8lucSRF34MfYMhbZQD8KrDcEGj8s6z59Fa', NULL, NULL, NULL, 'vendor', 'active', NULL, NULL, '2024-09-21 00:42:14', '2024-09-21 00:42:14'),
('4953fedb-7c2a-47af-8d14-50125dd15b46', 'User', 'user', 'user@gmail.com', NULL, '$2y$10$x.l/o2vhgQf1MLbEZ.kMZeFRx5OYNsvhS3nA8PEN/NYL8XgNpoOt2', NULL, NULL, NULL, 'user', 'active', NULL, NULL, '2024-09-21 00:42:15', '2024-09-21 00:42:15'),
('858efe31-9eb4-48de-ad58-2e2ff281b891', 'Sazal', 'Abdullah', 'sazaldreamdiver@gmail.com', NULL, '$2y$10$LnXOKihftgRxD12dVIIq5ecdzdXmLlL4neq5GC6M9UdnqxBczMiUW', NULL, NULL, NULL, 'user', 'active', NULL, NULL, '2024-09-21 03:12:49', '2024-09-21 03:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `winters`
--

DROP TABLE IF EXISTS `winters`;
CREATE TABLE IF NOT EXISTS `winters` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
