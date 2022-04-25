-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 24 avr. 2022 à 20:07
-- Version du serveur :  10.3.34-MariaDB
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bota4906_yovente`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Account-1', 'Comptabilité 1', NULL, 0, 'Fond de caisse initial', 1, 1, '2018-12-18 02:58:02', '2022-01-06 15:27:31'),
(3, '21211', 'Sa', NULL, 0, NULL, 0, 0, '2018-12-18 02:58:56', '2022-01-03 16:36:31');

-- --------------------------------------------------------

--
-- Structure de la table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `billers`
--

CREATE TABLE `billers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `billers`
--

INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Yovente', 'YoventeSARL.png', 'Yovente S.A.R.L', NULL, 'yovente@yovente.com', '0622222222', 'Adresse Yovente', 'Benslimane', NULL, NULL, NULL, 1, '2022-01-07 21:33:14', '2022-01-07 21:33:14');

-- --------------------------------------------------------

--
-- Structure de la table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Çıkrıkçı', '20220107095635.jpg', 1, '2022-01-07 20:56:35', '2022-01-07 20:56:35'),
(2, 'Dilber', '20220107095651.jpg', 1, '2022-01-07 20:56:51', '2022-01-07 20:56:51'),
(3, 'Le Mirega', '20220107095703.jpg', 1, '2022-01-07 20:57:03', '2022-01-07 20:57:03'),
(4, 'Tubanur Özdemir', '20220107095716.jpg', 1, '2022-01-07 20:57:16', '2022-01-07 20:57:16');

-- --------------------------------------------------------

--
-- Structure de la table `cash_registers`
--

CREATE TABLE `cash_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cash_registers`
--

INSERT INTO `cash_registers` (`id`, `cash_in_hand`, `user_id`, `warehouse_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, 1, '2022-01-08 12:42:44', '2022-01-08 12:42:44'),
(2, 0, 23, 1, 1, '2022-01-15 23:40:24', '2022-01-15 23:40:24'),
(3, 0, 1, 2, 1, '2022-01-30 22:15:03', '2022-01-30 22:15:03');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Ensemble', '20220107104119.jpg', NULL, 1, '2022-01-07 21:41:19', '2022-01-07 21:41:19'),
(2, 'Robe Hijab', '20220107104130.jpg', NULL, 1, '2022-01-07 21:41:30', '2022-01-07 21:41:30'),
(3, 'Tunique', '20220107104142.jpg', NULL, 1, '2022-01-07 21:41:42', '2022-01-07 21:41:42');

-- --------------------------------------------------------

--
-- Structure de la table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(2, 'Dirham', 'DHS', 1, '2020-11-01 01:29:12', '2022-01-02 15:06:53');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `user_id`, `created_by`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 24, 1, 'Salma BOUKJIJ', 'Salma Company', 'salma@yovente.com', '0611111111', NULL, 'Adresse Salma BOUKJIJ', 'Benslimane', NULL, NULL, NULL, NULL, NULL, 1, '2022-01-07 21:01:16', '2022-01-15 20:13:17'),
(2, 1, 25, 1, 'Rim BOUKJIJ', 'Rim Company', 'rim@yovente.com', '0622222222', NULL, 'Adresse Salma BOUKJIJ', 'Benslimane', NULL, NULL, NULL, NULL, NULL, 1, '2022-01-30 18:58:16', '2022-01-30 18:58:16'),
(3, 1, NULL, 23, 'Faty BOUKJIJ', 'Faty Company', 'faty@yovente.com', '0699999999', NULL, 'Adresse Faty BOUKJIJ', 'Benslimane', NULL, NULL, NULL, NULL, NULL, 1, '2022-01-31 10:20:09', '2022-01-31 10:21:56'),
(4, 1, NULL, 23, 'Tarik BOUKJIJ', 'Tarik Company', 'tarik@yovente.com', '0700000000', NULL, 'Adresse Tarik BOUKJIJ', 'Meknès', NULL, NULL, NULL, NULL, NULL, 1, '2022-02-02 10:20:05', '2022-02-02 10:23:58'),
(5, 1, NULL, 31, 'Noureddine', NULL, NULL, '0660397499', NULL, 'Ain nekbi n9 b3 fes', 'Fes', NULL, NULL, NULL, NULL, NULL, 1, '2022-04-05 22:01:33', '2022-04-05 22:01:33');

-- --------------------------------------------------------

--
-- Structure de la table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Global', '0', 1, '2022-01-07 20:55:51', '2022-01-07 20:55:51');

-- --------------------------------------------------------

--
-- Structure de la table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sold_by` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `packing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivering` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `deliveries`
--

INSERT INTO `deliveries` (`id`, `reference_no`, `sale_id`, `user_id`, `sold_by`, `address`, `packing`, `pickup`, `delivering`, `delivered`, `delivered_by`, `recieved_by`, `file`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dr-20220224-111836', 1, 1, 23, 'Adresse Faty BOUKJIJ Benslimane', '24-02-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-02-24 10:18:43', '2022-02-24 10:18:43'),
(2, 'dr-20220408-122826', 7, 1, 31, 'Ain nekbi n9 b3 fes Fes', '08-04-2022', '08-04-2022', '08-04-2022', NULL, NULL, NULL, NULL, 'KHVKHVHKVVK', '3', '2022-04-07 22:28:29', '2022-04-07 22:31:08');

-- --------------------------------------------------------

--
-- Structure de la table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `code`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '69089410', 'Carburant', 1, '2022-02-03 09:38:05', '2022-02-03 09:38:05');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `livraison` int(11) NOT NULL,
  `min_withdraw` int(11) NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `currency`, `livraison`, `min_withdraw`, `staff_access`, `date_format`, `developed_by`, `invoice_format`, `state`, `theme`, `created_at`, `updated_at`, `currency_position`) VALUES
(1, 'YoVente', '20220102040718.png', '2', 50, 500, 'own', 'd-m-Y', 'T@R!K', 'standard', 1, 'default.css', '2018-07-06 06:13:11', '2022-02-17 08:57:21', 'suffix');

-- --------------------------------------------------------

--
-- Structure de la table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gift_card_recharges`
--

CREATE TABLE `gift_card_recharges` (
  `id` int(10) UNSIGNED NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hrm_settings`
--

CREATE TABLE `hrm_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en', '2018-07-07 22:59:17', '2019-12-24 17:34:20');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_17_060412_create_categories_table', 1),
(4, '2018_02_20_035727_create_brands_table', 1),
(5, '2018_02_25_100635_create_suppliers_table', 1),
(6, '2018_02_27_101619_create_warehouse_table', 1),
(7, '2018_03_03_040448_create_units_table', 1),
(8, '2018_03_04_041317_create_taxes_table', 1),
(9, '2018_03_10_061915_create_customer_groups_table', 1),
(10, '2018_03_10_090534_create_customers_table', 1),
(11, '2018_03_11_095547_create_billers_table', 1),
(12, '2018_04_05_054401_create_products_table', 1),
(13, '2018_04_06_133606_create_purchases_table', 1),
(14, '2018_04_06_154600_create_product_purchases_table', 1),
(15, '2018_04_06_154915_create_product_warhouse_table', 1),
(16, '2018_04_10_085927_create_sales_table', 1),
(17, '2018_04_10_090133_create_product_sales_table', 1),
(18, '2018_04_10_090254_create_payments_table', 1),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
(21, '2018_04_13_121436_create_quotation_table', 1),
(22, '2018_04_13_122324_create_product_quotation_table', 1),
(23, '2018_04_14_121802_create_transfers_table', 1),
(24, '2018_04_14_121913_create_product_transfer_table', 1),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3),
(27, '2018_05_20_054532_create_adjustments_table', 4),
(28, '2018_05_20_054859_create_product_adjustments_table', 4),
(29, '2018_05_21_163419_create_returns_table', 5),
(30, '2018_05_21_163443_create_product_returns_table', 5),
(31, '2018_06_02_050905_create_roles_table', 6),
(32, '2018_06_02_073430_add_columns_to_users_table', 7),
(33, '2018_06_03_053738_create_permission_tables', 8),
(36, '2018_06_21_063736_create_pos_setting_table', 9),
(37, '2018_06_21_094155_add_user_id_to_sales_table', 10),
(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11),
(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12),
(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13),
(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14),
(42, '2018_06_25_043308_change_email_to_users_table', 15),
(43, '2018_07_06_115449_create_general_settings_table', 16),
(44, '2018_07_08_043944_create_languages_table', 17),
(45, '2018_07_11_102144_add_user_id_to_returns_table', 18),
(46, '2018_07_11_102334_add_user_id_to_payments_table', 18),
(47, '2018_07_22_130541_add_digital_to_products_table', 19),
(49, '2018_07_24_154250_create_deliveries_table', 20),
(50, '2018_08_16_053336_create_expense_categories_table', 21),
(51, '2018_08_17_115415_create_expenses_table', 22),
(55, '2018_08_18_050418_create_gift_cards_table', 23),
(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24),
(57, '2018_08_25_042333_create_gift_card_recharges_table', 25),
(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26),
(59, '2018_08_26_043801_create_deposits_table', 27),
(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28),
(61, '2018_09_09_092713_create_payment_with_paypal_table', 29),
(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30),
(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31),
(65, '2018_10_26_034927_create_coupons_table', 32),
(66, '2018_10_27_090857_add_coupon_to_sales_table', 33),
(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34),
(68, '2018_11_19_094650_add_combo_to_products_table', 35),
(69, '2018_12_09_043712_create_accounts_table', 36),
(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37),
(71, '2018_12_19_103941_add_account_id_to_payments_table', 38),
(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39),
(73, '2018_12_20_082753_add_account_id_to_returns_table', 40),
(74, '2018_12_26_064330_create_return_purchases_table', 41),
(75, '2018_12_26_144210_create_purchase_product_return_table', 42),
(76, '2018_12_26_144708_create_purchase_product_return_table', 43),
(77, '2018_12_27_110018_create_departments_table', 44),
(78, '2018_12_30_054844_create_employees_table', 45),
(79, '2018_12_31_125210_create_payrolls_table', 46),
(80, '2018_12_31_150446_add_department_id_to_employees_table', 47),
(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48),
(82, '2019_01_02_075644_create_hrm_settings_table', 49),
(83, '2019_01_02_090334_create_attendances_table', 50),
(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51),
(85, '2019_02_15_183303_create_stock_counts_table', 52),
(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53),
(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54),
(89, '2019_10_14_111455_create_holidays_table', 55),
(90, '2019_11_13_145619_add_is_variant_to_products_table', 56),
(91, '2019_11_13_150206_create_product_variants_table', 57),
(92, '2019_11_13_153828_create_variants_table', 57),
(93, '2019_11_25_134041_add_qty_to_product_variants_table', 58),
(94, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 58),
(95, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 58),
(96, '2019_11_29_182201_add_variant_id_to_product_sales_table', 59),
(97, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 60),
(98, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 61),
(100, '2019_12_08_114954_add_variant_id_to_product_returns_table', 62),
(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63),
(102, '2020_02_28_103340_create_money_transfers_table', 64),
(103, '2020_07_01_193151_add_image_to_categories_table', 65),
(105, '2020_09_26_130426_add_user_id_to_deliveries_table', 66),
(107, '2020_10_11_125457_create_cash_registers_table', 67),
(108, '2020_10_13_155019_add_cash_register_id_to_sales_table', 68),
(109, '2020_10_13_172624_add_cash_register_id_to_returns_table', 69),
(110, '2020_10_17_212338_add_cash_register_id_to_payments_table', 70),
(111, '2020_10_18_124200_add_cash_register_id_to_expenses_table', 71),
(112, '2020_10_21_121632_add_developed_by_to_general_settings_table', 72),
(113, '2019_08_19_000000_create_failed_jobs_table', 73),
(114, '2020_10_30_135557_create_notifications_table', 73),
(115, '2020_11_01_044954_create_currencies_table', 74),
(116, '2020_11_01_140736_add_price_to_product_warehouse_table', 75),
(117, '2020_11_02_050633_add_is_diff_price_to_products_table', 76),
(118, '2020_11_09_055222_add_user_id_to_customers_table', 77),
(119, '2020_11_17_054806_add_invoice_format_to_general_settings_table', 78),
(120, '2021_02_10_074859_add_variant_id_to_product_adjustments_table', 79),
(121, '2021_03_07_093606_create_product_batches_table', 80),
(122, '2021_03_07_093759_add_product_batch_id_to_product_warehouse_table', 80),
(123, '2021_03_07_093900_add_product_batch_id_to_product_purchases_table', 80),
(124, '2021_03_11_132603_add_product_batch_id_to_product_sales_table', 81),
(127, '2021_03_25_125421_add_is_batch_to_products_table', 82),
(128, '2021_05_19_120127_add_product_batch_id_to_product_returns_table', 82),
(130, '2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table', 83),
(131, '2021_05_23_124848_add_product_batch_id_to_product_transfer_table', 84),
(132, '2021_05_26_153106_add_product_batch_id_to_product_quotation_table', 85),
(134, '2022_01_03_205841_add_livraison_to_general_settings_table', 86),
(135, '2022_01_06_181753_add_livraison_to_sales_table', 87),
(136, '2022_01_06_182916_add_original_price_to_product_sales_table', 88),
(142, '2022_01_16_181335_add_packing_delivering_delivered_to_deliveries_table', 89),
(143, '2022_01_31_113821_add_fullname_to_users_table', 90),
(144, '2022_02_02_095123_add_bank_settings_to_users_table', 91),
(146, '2022_02_02_105659_add_created_by_to_customers_table', 92),
(148, '2022_02_03_093218_add_min_withdraw_to_general_settings_table', 93),
(149, '2022_02_03_101436_create_withdraws_table', 94),
(150, '2022_02_04_174247_rename_withdraws_table', 95),
(152, '2022_02_04_212528_add_is_paid_to_withdrawals_table', 96),
(153, '2022_02_09_202841_add_is_valide_to_sales_table', 97);

-- --------------------------------------------------------

--
-- Structure de la table `money_transfers`
--

CREATE TABLE `money_transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `payments`
--

INSERT INTO `payments` (`id`, `payment_reference`, `user_id`, `purchase_id`, `sale_id`, `cash_register_id`, `account_id`, `amount`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES
(1, 'ppr-20220224-082631', 1, 2, NULL, NULL, 1, 2700, 0, 'Cash', NULL, '2022-02-24 07:26:31', '2022-02-24 07:26:31'),
(2, 'ppr-20220224-082702', 1, 1, NULL, NULL, 1, 3150, 0, 'Cash', NULL, '2022-02-24 07:27:02', '2022-02-24 07:27:02');

-- --------------------------------------------------------

--
-- Structure de la table `payment_with_cheque`
--

CREATE TABLE `payment_with_cheque` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_with_gift_card`
--

CREATE TABLE `payment_with_gift_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_with_paypal`
--

CREATE TABLE `payment_with_paypal` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'products-edit', 'web', '2018-06-03 01:00:09', '2018-06-03 01:00:09'),
(5, 'products-delete', 'web', '2018-06-03 22:54:22', '2018-06-03 22:54:22'),
(6, 'products-add', 'web', '2018-06-04 00:34:14', '2018-06-04 00:34:14'),
(7, 'products-index', 'web', '2018-06-04 03:34:27', '2018-06-04 03:34:27'),
(8, 'purchases-index', 'web', '2018-06-04 08:03:19', '2018-06-04 08:03:19'),
(9, 'purchases-add', 'web', '2018-06-04 08:12:25', '2018-06-04 08:12:25'),
(10, 'purchases-edit', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(11, 'purchases-delete', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(12, 'sales-index', 'web', '2018-06-04 10:49:08', '2018-06-04 10:49:08'),
(13, 'sales-add', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(14, 'sales-edit', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(15, 'sales-delete', 'web', '2018-06-04 10:49:53', '2018-06-04 10:49:53'),
(16, 'quotes-index', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(17, 'quotes-add', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(18, 'quotes-edit', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(19, 'quotes-delete', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(20, 'transfers-index', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(21, 'transfers-add', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(22, 'transfers-edit', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(23, 'transfers-delete', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(24, 'returns-index', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(25, 'returns-add', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(26, 'returns-edit', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(27, 'returns-delete', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(28, 'customers-index', 'web', '2018-06-04 23:15:54', '2018-06-04 23:15:54'),
(29, 'customers-add', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(30, 'customers-edit', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(31, 'customers-delete', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(32, 'suppliers-index', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(33, 'suppliers-add', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(34, 'suppliers-edit', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(35, 'suppliers-delete', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(36, 'product-report', 'web', '2018-06-24 23:05:33', '2018-06-24 23:05:33'),
(37, 'purchase-report', 'web', '2018-06-24 23:24:56', '2018-06-24 23:24:56'),
(38, 'sale-report', 'web', '2018-06-24 23:33:13', '2018-06-24 23:33:13'),
(39, 'customer-report', 'web', '2018-06-24 23:36:51', '2018-06-24 23:36:51'),
(40, 'due-report', 'web', '2018-06-24 23:39:52', '2018-06-24 23:39:52'),
(41, 'users-index', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(42, 'users-add', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(43, 'users-edit', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(44, 'users-delete', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(45, 'profit-loss', 'web', '2018-07-14 21:50:05', '2018-07-14 21:50:05'),
(46, 'best-seller', 'web', '2018-07-14 22:01:38', '2018-07-14 22:01:38'),
(47, 'daily-sale', 'web', '2018-07-14 22:24:21', '2018-07-14 22:24:21'),
(48, 'monthly-sale', 'web', '2018-07-14 22:30:41', '2018-07-14 22:30:41'),
(49, 'daily-purchase', 'web', '2018-07-14 22:36:46', '2018-07-14 22:36:46'),
(50, 'monthly-purchase', 'web', '2018-07-14 22:48:17', '2018-07-14 22:48:17'),
(51, 'payment-report', 'web', '2018-07-14 23:10:41', '2018-07-14 23:10:41'),
(52, 'warehouse-stock-report', 'web', '2018-07-14 23:16:55', '2018-07-14 23:16:55'),
(53, 'product-qty-alert', 'web', '2018-07-14 23:33:21', '2018-07-14 23:33:21'),
(54, 'supplier-report', 'web', '2018-07-30 03:00:01', '2018-07-30 03:00:01'),
(55, 'expenses-index', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(56, 'expenses-add', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(57, 'expenses-edit', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(58, 'expenses-delete', 'web', '2018-09-05 01:07:11', '2018-09-05 01:07:11'),
(59, 'general_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(60, 'mail_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(61, 'pos_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(62, 'hrm_setting', 'web', '2019-01-02 10:30:23', '2019-01-02 10:30:23'),
(63, 'purchase-return-index', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(64, 'purchase-return-add', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(65, 'purchase-return-edit', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(66, 'purchase-return-delete', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(67, 'account-index', 'web', '2019-01-02 22:06:13', '2019-01-02 22:06:13'),
(68, 'balance-sheet', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(69, 'account-statement', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(70, 'department', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(71, 'attendance', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(72, 'payroll', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(73, 'employees-index', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(74, 'employees-add', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(75, 'employees-edit', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(76, 'employees-delete', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(77, 'user-report', 'web', '2019-01-16 06:48:18', '2019-01-16 06:48:18'),
(78, 'stock_count', 'web', '2019-02-17 10:32:01', '2019-02-17 10:32:01'),
(79, 'adjustment', 'web', '2019-02-17 10:32:02', '2019-02-17 10:32:02'),
(80, 'sms_setting', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(81, 'create_sms', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(82, 'print_barcode', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(83, 'empty_database', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(84, 'customer_group', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(85, 'unit', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(86, 'tax', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(87, 'gift_card', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(88, 'coupon', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(89, 'holiday', 'web', '2019-10-19 08:57:15', '2019-10-19 08:57:15'),
(90, 'warehouse-report', 'web', '2019-10-22 06:00:23', '2019-10-22 06:00:23'),
(91, 'warehouse', 'web', '2020-02-26 06:47:32', '2020-02-26 06:47:32'),
(92, 'brand', 'web', '2020-02-26 06:59:59', '2020-02-26 06:59:59'),
(93, 'billers-index', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(94, 'billers-add', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(95, 'billers-edit', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(96, 'billers-delete', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(97, 'money-transfer', 'web', '2020-03-02 05:41:48', '2020-03-02 05:41:48'),
(98, 'category', 'web', '2020-07-13 12:13:16', '2020-07-13 12:13:16'),
(99, 'delivery', 'web', '2020-07-13 12:13:16', '2020-07-13 12:13:16'),
(100, 'send_notification', 'web', '2020-10-31 06:21:31', '2020-10-31 06:21:31'),
(101, 'today_sale', 'web', '2020-10-31 06:57:04', '2020-10-31 06:57:04'),
(102, 'today_profit', 'web', '2020-10-31 06:57:04', '2020-10-31 06:57:04'),
(103, 'currency', 'web', '2020-11-09 00:23:11', '2020-11-09 00:23:11'),
(104, 'backup_database', 'web', '2020-11-15 00:16:55', '2020-11-15 00:16:55'),
(105, 'withdraw-add', 'web', '2022-02-03 09:10:47', '2022-02-03 09:10:49'),
(106, 'withdraw-edit', 'web', '2022-02-03 09:10:51', '2022-02-03 09:10:52'),
(107, 'withdraw-index', 'web', '2022-02-03 09:11:09', '2022-02-03 09:11:11'),
(108, 'withdraw-delete', 'web', '2022-02-03 09:11:26', '2022-02-03 09:11:27');

-- --------------------------------------------------------

--
-- Structure de la table `pos_setting`
--

CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 3, 1, 'Stripe_Publishable_key', 'Stripe_Secret_key', '2022-01-07 22:32:23', '2022-01-07 22:32:23');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_variant`, `is_batch`, `is_diffPrice`, `featured`, `product_list`, `qty_list`, `price_list`, `product_details`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Product 1 Tunique', 'P-22-546', 'standard', 'C39', 4, 3, 1, 1, 1, '70', '150', 30, 10, NULL, NULL, NULL, NULL, NULL, NULL, '1641591753620robe-hijab-1.jpg,1641591753623robe-hijab-1-1.jpg', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '<p>Product Details Goes here !</p>', 1, '2022-01-07 21:42:53', '2022-04-07 22:04:15'),
(2, 'Product 2 Tunique', 'P-22-582', 'standard', 'C39', 2, 3, 1, 1, 1, '90', '190', 28, 10, NULL, NULL, NULL, NULL, NULL, NULL, '1641648820537z-desenliwebp.jpg', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '<p>Product Details Goes here !</p>', 1, '2022-01-08 12:34:13', '2022-04-05 17:05:00'),
(3, 'adidas', 'adidas', 'standard', 'C39', NULL, 2, 1, 1, 1, '110', '150', 1000, 100, NULL, NULL, NULL, NULL, NULL, NULL, '1649284674164213246570_824905238216247_655717660330622998_n.jpg,1649284699519201808736_812818956091542_3298576028080294456_n.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>hijab jib</p>\r\n<p>prix bach mhsob likom 150dh plus 50dh livraison oli fo9e hadchi rebah dyalkom</p>\r\n<p>les taille M L XL XXL&nbsp;</p>', 1, '2022-04-06 20:42:08', '2022-04-06 20:45:14'),
(4, 'noure', 'JIB', 'standard', 'C39', NULL, 3, 1, 1, 1, '115', '150', 100, 50, NULL, NULL, NULL, NULL, NULL, NULL, '1649285366244186341568_793650098008428_4911811735078944663_n.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-04-06 20:51:07', '2022-04-06 20:52:12'),
(5, 'ABAYA', 'ABAYA', 'standard', 'C39', NULL, 3, 1, 1, 1, '90', '115', 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, '1649285644015203145945_816367972403307_579286669622248215_n.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-04-06 20:54:43', '2022-04-06 20:56:09'),
(6, 'IFFA', 'IFFA', 'standard', 'C39', NULL, 1, 1, 1, 1, '120', '160', 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, '1649285831526185748178_793650164675088_2328725086358609550_n.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-04-06 20:59:01', '2022-04-06 20:59:01'),
(7, 'ADIDASS', 'ADIDAS NOIR GROUNA', 'standard', 'C39', NULL, 2, 1, 1, 1, '100', '150', 37, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'zummXD2dvAtI.png', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-04-06 22:03:45', '2022-04-07 20:33:11'),
(8, 'Amwaj', 'Amwaj', 'standard', 'C39', NULL, 2, 1, 1, 1, '100', '120', 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, '16493196197055A8FC759-9E18-45BF-84B8-8849F1539FC7.jpeg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>&nbsp;</strong></p>', 1, '2022-04-07 06:22:41', '2022-04-07 06:26:27'),
(9, 'Adidas', 'P-22-503', 'standard', 'C39', NULL, 1, 1, 1, 1, '60', '100', 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-04-07 21:24:35', '2022-04-07 21:24:35');

-- --------------------------------------------------------

--
-- Structure de la table `product_adjustments`
--

CREATE TABLE `product_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_batches`
--

CREATE TABLE `product_batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_purchases`
--

CREATE TABLE `product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_purchases`
--

INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `product_batch_id`, `variant_id`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 3, 10, 10, 1, 70, 0, 0, 0, 700, '2022-02-24 07:25:42', '2022-02-24 07:25:42'),
(2, 1, 1, NULL, 1, 15, 15, 1, 70, 0, 0, 0, 1050, '2022-02-24 07:25:42', '2022-02-24 07:25:42'),
(3, 1, 1, NULL, 5, 20, 20, 1, 70, 0, 0, 0, 1400, '2022-02-24 07:25:43', '2022-02-24 07:25:43'),
(7, 2, 2, NULL, 2, 5, 5, 1, 90, 0, 0, 0, 450, '2022-02-24 07:49:44', '2022-02-24 07:49:44'),
(8, 2, 2, NULL, 1, 10, 10, 1, 90, 0, 0, 0, 900, '2022-02-24 07:49:44', '2022-02-24 07:49:44'),
(9, 2, 2, NULL, 5, 15, 15, 1, 90, 0, 0, 0, 1350, '2022-02-24 07:49:44', '2022-02-24 07:49:44'),
(10, 3, 3, NULL, NULL, 1000, 1000, 1, 110, 0, 0, 0, 110000, '2022-04-06 20:45:14', '2022-04-06 20:45:14'),
(11, 4, 4, NULL, 3, 100, 100, 1, 115, 0, 0, 0, 11500, '2022-04-06 20:52:12', '2022-04-06 20:52:12'),
(12, 5, 5, NULL, 2, 1, 1, 1, 90, 0, 0, 0, 90, '2022-04-06 20:56:09', '2022-04-06 20:56:09'),
(13, 5, 5, NULL, 3, 1, 1, 1, 90, 0, 0, 0, 90, '2022-04-06 20:56:09', '2022-04-06 20:56:09'),
(14, 6, 7, NULL, 5, 10, 10, 1, 100, 0, 0, 0, 1000, '2022-04-06 22:05:00', '2022-04-06 22:05:00'),
(15, 6, 7, NULL, 1, 10, 10, 1, 100, 0, 0, 0, 1000, '2022-04-06 22:05:00', '2022-04-06 22:05:00'),
(16, 6, 7, NULL, 2, 10, 10, 1, 100, 0, 0, 0, 1000, '2022-04-06 22:05:00', '2022-04-06 22:05:00'),
(17, 6, 7, NULL, 3, 10, 10, 1, 100, 0, 0, 0, 1000, '2022-04-06 22:05:00', '2022-04-06 22:05:00'),
(18, 7, 8, NULL, 3, 1, 1, 1, 100, 0, 0, 0, 100, '2022-04-07 06:26:27', '2022-04-07 06:26:27');

-- --------------------------------------------------------

--
-- Structure de la table `product_quotation`
--

CREATE TABLE `product_quotation` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_returns`
--

CREATE TABLE `product_returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `original_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_sales`
--

INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `product_batch_id`, `variant_id`, `qty`, `sale_unit_id`, `net_unit_price`, `original_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 5, 2, 1, 350, 150, 0, 0, 0, 700, '2022-02-24 07:29:23', '2022-02-24 09:58:01'),
(2, 1, 1, NULL, 1, 2, 1, 320, 150, 0, 0, 0, 640, '2022-02-24 07:29:23', '2022-02-24 09:58:02'),
(3, 1, 1, NULL, 3, 2, 1, 300, 150, 0, 0, 0, 600, '2022-02-24 07:29:23', '2022-02-24 09:58:02'),
(4, 2, 2, NULL, 2, 2, 1, 250, 190, 0, 0, 0, 500, '2022-04-05 17:05:00', '2022-04-05 17:05:00'),
(5, 3, 1, NULL, 3, 3, 1, 290, 150, 30, 0, 0, 870, '2022-04-05 17:08:54', '2022-04-05 17:08:54'),
(6, 4, 1, NULL, 3, 2, 1, 300, 150, 0, 0, 0, 600, '2022-04-05 17:15:35', '2022-04-05 17:36:10'),
(7, 5, 1, NULL, 3, 1, 1, 150, 150, 0, 0, 0, 150, '2022-04-05 22:06:04', '2022-04-05 22:06:04'),
(8, 6, 1, NULL, 3, 2, 1, 150, 150, 0, 0, 0, 300, '2022-04-05 22:09:10', '2022-04-05 22:09:10'),
(9, 7, 1, NULL, 3, 1, 1, 150, 150, 0, 0, 0, 150, '2022-04-06 06:09:38', '2022-04-06 06:09:38'),
(10, 8, 7, NULL, 5, 3, 1, 150, 150, 0, 0, 0, 450, '2022-04-06 22:08:43', '2022-04-07 20:33:11'),
(11, 9, 1, NULL, 5, 1, 1, 300, 150, 0, 0, 0, 300, '2022-04-07 20:35:22', '2022-04-07 20:35:44'),
(12, 10, 1, NULL, 5, 1, 1, 150, 150, 0, 0, 0, 150, '2022-04-07 20:36:27', '2022-04-07 20:36:27'),
(13, 11, 1, NULL, 1, 1, 1, 200, 150, 0, 0, 0, 200, '2022-04-07 22:04:15', '2022-04-07 22:04:15');

-- --------------------------------------------------------

--
-- Structure de la table `product_transfer`
--

CREATE TABLE `product_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant_id`, `position`, `item_code`, `additional_price`, `qty`, `created_at`, `updated_at`) VALUES
(9, 1, 1, 2, 'XL-P-22-546', NULL, 11, '2022-01-07 22:26:22', '2022-04-07 22:04:15'),
(10, 1, 5, 1, 'XXL-P-22-546', NULL, 16, '2022-01-07 22:26:22', '2022-04-07 20:36:27'),
(11, 1, 3, 3, 'M-P-22-546', NULL, 1, '2022-01-07 22:26:22', '2022-04-06 06:09:38'),
(12, 2, 5, 1, 'XXL-P-22-582', NULL, 15, '2022-01-08 12:34:13', '2022-02-24 07:49:44'),
(13, 2, 1, 2, 'XL-P-22-582', NULL, 10, '2022-01-08 12:34:13', '2022-02-24 07:49:44'),
(14, 2, 2, 3, 'L-P-22-582', NULL, 3, '2022-01-08 12:34:13', '2022-04-05 17:05:00'),
(15, 4, 3, 1, '-JIB', 0, 100, '2022-04-06 20:51:07', '2022-04-06 20:52:12'),
(16, 4, 2, 2, '-JIB', NULL, 0, '2022-04-06 20:51:07', '2022-04-06 20:51:07'),
(17, 4, 1, 3, '-JIB', NULL, 0, '2022-04-06 20:51:07', '2022-04-06 20:51:07'),
(18, 4, 5, 4, '-JIB', NULL, 0, '2022-04-06 20:51:07', '2022-04-06 20:51:07'),
(19, 5, 3, 1, 'm', NULL, 1, '2022-04-06 20:54:43', '2022-04-06 20:56:09'),
(20, 5, 2, 2, 'L', NULL, 1, '2022-04-06 20:54:43', '2022-04-06 20:56:09'),
(21, 6, 3, 1, 'noir,gtona', NULL, 0, '2022-04-06 20:59:01', '2022-04-06 20:59:01'),
(22, 7, 3, 1, 'M-ADIDAS NOIR GROUNA', NULL, 10, '2022-04-06 22:03:45', '2022-04-06 22:05:00'),
(23, 7, 2, 2, 'L-ADIDAS NOIR GROUNA', NULL, 10, '2022-04-06 22:03:45', '2022-04-06 22:05:00'),
(24, 7, 1, 3, 'XL-ADIDAS NOIR GROUNA', NULL, 10, '2022-04-06 22:03:45', '2022-04-06 22:05:00'),
(25, 7, 5, 4, 'XXL-ADIDAS NOIR GROUNA', NULL, 7, '2022-04-06 22:03:45', '2022-04-07 20:33:11'),
(26, 8, 2, 1, '.L-Amwaj', NULL, 0, '2022-04-07 06:22:41', '2022-04-07 06:22:41'),
(27, 8, 3, 2, 'M-Amwaj', NULL, 1, '2022-04-07 06:22:41', '2022-04-07 06:26:27');

-- --------------------------------------------------------

--
-- Structure de la table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `product_batch_id`, `variant_id`, `warehouse_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, 3, 1, 1, NULL, '2022-01-07 22:33:32', '2022-04-06 06:09:38'),
(2, '1', NULL, 1, 1, 13, NULL, '2022-01-07 22:33:32', '2022-04-07 22:04:15'),
(3, '1', NULL, 5, 1, 16, NULL, '2022-01-07 22:33:32', '2022-04-07 20:36:27'),
(7, '2', NULL, 2, 2, 3, NULL, '2022-01-30 23:07:19', '2022-04-05 17:05:00'),
(8, '2', NULL, 1, 2, 10, NULL, '2022-01-30 23:07:20', '2022-02-24 07:49:44'),
(9, '2', NULL, 5, 2, 15, NULL, '2022-01-30 23:07:20', '2022-02-24 07:49:44'),
(10, '2', NULL, 2, 1, 0, NULL, '2022-01-30 23:20:37', '2022-01-31 00:28:54'),
(11, '2', NULL, 1, 1, 0, NULL, '2022-01-30 23:20:37', '2022-02-22 10:30:53'),
(12, '2', NULL, 5, 1, 0, NULL, '2022-01-30 23:20:38', '2022-02-22 10:30:53'),
(13, '3', NULL, NULL, 2, 1000, NULL, '2022-04-06 20:45:14', '2022-04-06 20:45:14'),
(14, '4', NULL, 3, 2, 100, NULL, '2022-04-06 20:52:12', '2022-04-06 20:52:12'),
(15, '5', NULL, 2, 2, 1, NULL, '2022-04-06 20:56:09', '2022-04-06 20:56:09'),
(16, '5', NULL, 3, 2, 1, NULL, '2022-04-06 20:56:09', '2022-04-06 20:56:09'),
(17, '7', NULL, 5, 2, 7, NULL, '2022-04-06 22:05:00', '2022-04-07 20:33:11'),
(18, '7', NULL, 1, 2, 10, NULL, '2022-04-06 22:05:00', '2022-04-06 22:05:00'),
(19, '7', NULL, 2, 2, 10, NULL, '2022-04-06 22:05:00', '2022-04-06 22:05:00'),
(20, '7', NULL, 3, 2, 10, NULL, '2022-04-06 22:05:00', '2022-04-06 22:05:00'),
(21, '8', NULL, 3, 2, 1, NULL, '2022-04-07 06:26:27', '2022-04-07 06:26:27');

-- --------------------------------------------------------

--
-- Structure de la table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'pr-20220224-082542', 1, 1, 1, 3, 45, 0, 0, 3150, 0, 0, NULL, NULL, 3150, 3150, 1, 2, NULL, NULL, '2022-02-24 07:25:42', '2022-02-24 07:27:01'),
(2, 'pr-20220224-082618', 1, 2, 1, 3, 30, 0, 0, 2700, 0, 0, 0, 0, 2700, 2700, 1, 2, 'Chrysanthemum.jpg', NULL, '2022-02-24 07:26:18', '2022-02-24 07:49:44'),
(3, 'pr-20220406-104514', 30, 2, NULL, 1, 1000, 0, 0, 110000, 0, 0, NULL, NULL, 110000, 0, 1, 1, NULL, NULL, '2022-04-06 20:45:14', '2022-04-06 20:45:14'),
(4, 'pr-20220406-105212', 30, 2, NULL, 1, 100, 0, 0, 11500, 0, 0, NULL, NULL, 11500, 0, 1, 1, NULL, NULL, '2022-04-06 20:52:12', '2022-04-06 20:52:12'),
(5, 'pr-20220406-105609', 30, 2, NULL, 2, 2, 0, 0, 180, 0, 0, NULL, NULL, 180, 0, 1, 1, NULL, NULL, '2022-04-06 20:56:09', '2022-04-06 20:56:09'),
(6, 'pr-20220407-120500', 30, 2, NULL, 4, 40, 0, 0, 4000, 0, 0, NULL, NULL, 4000, 0, 1, 1, NULL, NULL, '2022-04-06 22:05:00', '2022-04-06 22:05:00'),
(7, 'pr-20220407-082627', 30, 2, NULL, 1, 1, 0, 0, 100, 0, 0, NULL, NULL, 100, 0, 1, 1, NULL, NULL, '2022-04-07 06:26:27', '2022-04-07 06:26:27');

-- --------------------------------------------------------

--
-- Structure de la table `purchase_product_return`
--

CREATE TABLE `purchase_product_return` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `returns`
--

CREATE TABLE `returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `return_purchases`
--

CREATE TABLE `return_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Administrateur du système', 'web', 1, '2018-06-01 23:46:44', '2022-01-07 20:39:04'),
(4, 'Vendeur', 'Rôle Vendeur', 'web', 1, '2018-06-02 00:05:27', '2022-01-07 20:38:33'),
(5, 'Client', 'Rôle Client', 'web', 1, '2020-11-05 06:43:16', '2022-01-07 20:38:48');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 4),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(12, 4),
(13, 1),
(13, 4),
(14, 1),
(14, 4),
(15, 1),
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
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
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
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(69, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(105, 4),
(106, 1),
(106, 4),
(107, 1),
(107, 4),
(108, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `livraison` int(11) NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `is_valide` tinyint(1) DEFAULT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `livraison`, `grand_total`, `order_tax_rate`, `order_tax`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `is_valide`, `document`, `paid_amount`, `sale_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(1, 'vendeur-220224-082808', 23, 2, 3, 1, 1, 3, 6, 0, 0, 1940, 50, 1940, 0, 0, 0, NULL, NULL, 0, 1, 4, 1, 'Desert.jpg', NULL, NULL, NULL, '2022-02-24 07:29:23', '2022-02-24 09:58:02'),
(2, 'vendeur-220405-170434', 23, NULL, 3, 2, 1, 1, 2, 0, 0, 500, 50, 500, 0, 0, NULL, NULL, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, NULL, '2022-04-05 17:05:00', '2022-04-05 17:05:00'),
(3, 'tarik-220405-170809', 1, 1, 2, 1, 1, 1, 3, 30, 0, 870, 50, 870, 0, 0, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, '2022-04-05 17:08:54', '2022-04-05 17:08:54'),
(4, 'vendeur-220405-171523', 23, 2, 4, 1, 1, 1, 2, 0, 0, 600, 50, 600, 0, 0, 0, NULL, NULL, 0, 1, 2, 0, NULL, NULL, NULL, NULL, '2022-04-05 17:15:35', '2022-04-05 17:36:10'),
(5, 'yasmin-060422-000502', 31, NULL, 5, 1, 1, 1, 1, 0, 0, 150, 50, 150, 0, 0, NULL, NULL, NULL, NULL, 1, 2, 1, NULL, NULL, 'Fkkhfx', 'Av', '2022-04-05 22:06:04', '2022-04-05 22:06:04'),
(6, 'yasmin-060422-000759', 31, NULL, 5, 1, 1, 1, 2, 0, 0, 300, 50, 300, 0, 0, NULL, NULL, NULL, NULL, 1, 2, 1, NULL, NULL, 'Gd', NULL, '2022-04-05 22:09:10', '2022-04-05 22:09:10'),
(7, 'yasmin-060422-080855', 31, NULL, 5, 1, 1, 1, 1, 0, 0, 150, 50, 150, 0, 0, NULL, NULL, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, NULL, '2022-04-06 06:09:38', '2022-04-06 06:09:38'),
(8, 'noure-070422-000706', 30, NULL, 5, 2, 1, 1, 3, 0, 0, 450, 50, 450, 0, 0, 0, NULL, NULL, 0, 1, 2, 0, NULL, NULL, NULL, NULL, '2022-04-06 22:08:43', '2022-04-07 20:33:11'),
(9, 'yasmin-070422-223453', 31, NULL, 5, 1, 1, 1, 1, 0, 0, 300, 50, 300, 0, 0, 0, NULL, NULL, 0, 1, 2, 1, NULL, NULL, NULL, NULL, '2022-04-07 20:35:22', '2022-04-07 20:35:44'),
(10, 'noure-070422-223614', 30, NULL, 1, 1, 1, 1, 1, 0, 0, 150, 50, 150, 0, 0, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, '2022-04-07 20:36:27', '2022-04-07 20:36:27'),
(11, 'tarik-080422-000316', 1, 1, 2, 1, 1, 1, 1, 0, 0, 200, 50, 200, 0, 0, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL, NULL, '2022-04-07 22:04:15', '2022-04-07 22:04:15');

-- --------------------------------------------------------

--
-- Structure de la table `stock_counts`
--

CREATE TABLE `stock_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Supplier 1', NULL, 'Supplier 1 Company', NULL, 'supplier1@yovente.com', '0655555555', 'Adresse Supplier 1', 'Casablanca', NULL, NULL, NULL, 1, '2022-01-07 22:28:29', '2022-01-07 22:28:29');

-- --------------------------------------------------------

--
-- Structure de la table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'pce', 'Pièce', NULL, '*', 1, 1, '2022-01-07 20:57:28', '2022-01-07 20:57:28'),
(2, 'douzaine', 'Douzaine', 1, '*', 12, 1, '2022-01-09 16:19:14', '2022-01-09 16:19:14'),
(3, 'carton', 'Carton', 1, '*', 20, 1, '2022-01-09 16:19:28', '2022-01-09 16:19:28');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rib` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `rib`, `bank_name`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Tarik', 'tarik', 'boukjij', 'tarik.engineering@gmail.com', '3200009233890588399028340', 'AL BARID BANK', '$2y$10$HPt3Go.HX8PKm/9Tuh2h5uaW3yIVnf5qu9y.aWIv85AVZJbUU0slG', 'zcpbAP2BycJ8wGRKRXvllEt4W5oq231XRFslWHQWbNaTcf21pD6MgGd5oFeQ', '0689385061', 'T@R!K', 1, NULL, NULL, 1, 0, '2018-06-02 03:24:15', '2022-02-02 09:39:11'),
(23, 'Vendeur', 'vendeur', 'vendeur', 'vendeur@yovente.com', '42084724572057208572457', 'ATTIJARI WAFA BANK', '$2y$10$ZpJbd7m8PzYsUguYOjJJzu9oE7YO/Z.9bB2HyVBR5PBew8XCoPBRW', NULL, '0633333333', NULL, 4, NULL, NULL, 1, 0, '2022-01-07 21:35:45', '2022-02-02 09:39:37'),
(24, 'Salma', 'salma', 'boukjijma', 'salma@yovente.com', '', '', '$2y$10$0e2hSyrAl2X1W2XqAdnvUOVGLPK8f8xZmLhT8ItTYdqedqe2VcJbq', NULL, '0611111111', 'Salma Company', 5, NULL, NULL, 0, 1, '2022-01-15 20:13:17', '2022-01-30 19:00:17'),
(25, 'rim', 'rim', 'boukjijm', 'rim@yovente.com', '', '', '$2y$10$u6iuPGz6DHP5EVI0BGWsjOcVYKAQ4jbHTYhrwd/x23RLlrru5qPTK', NULL, '0622222222', 'Rim Company', 5, NULL, NULL, 0, 1, '2022-01-30 18:57:46', '2022-01-30 19:00:03'),
(26, 'Vendeur1', 'vendeur1', 'vendeur1', 'vendeur1@yovente.com', '', '', '$2y$10$Gk1VagRoo0AFv8xsZlOeT.4KEIu6um10ClY89DLokWCA1moANi3D2', NULL, '0688888888', NULL, 4, NULL, NULL, 0, 1, '2022-01-30 21:55:39', '2022-04-05 15:54:45'),
(27, 'faty1', 'faty', 'boukjijf', 'faty1@yovente.com', '', '', '$2y$10$7vuIzRDHIpcCdYGEXwc/beOVE6R9/jdlI79Cj/1Hbf.x.Wy8cnJAO', NULL, '0612121212', NULL, 4, NULL, NULL, 0, 1, '2022-01-31 11:19:52', '2022-04-05 15:54:45'),
(28, 'nejjar', 'fatima ezzahra', 'nejjar', 'nejjar@yovente.com', NULL, NULL, '$2y$10$1vFI/whJVJENEzQFeS/7DekOnRkUK/UuZzGUq0rEHGdIYnBsmm3fy', NULL, '0615914789', NULL, 4, NULL, NULL, 0, 1, '2022-02-09 20:06:27', '2022-02-09 20:06:45'),
(29, 'nejjar', 'fatima ezzahra', 'nejjar', 'nejjar@yovente.com', NULL, NULL, '$2y$10$gN9XZ6W9/fF9I94FQcwVK.sG0tgtoX2F5kp8CA7JMyfFw.uRJUp0K', NULL, '0612345678', NULL, 1, NULL, NULL, 0, 1, '2022-02-09 20:07:20', '2022-04-05 15:54:45'),
(30, 'noure', 'Bougteba', 'Noureddine', 'noure@yovente.com', NULL, NULL, '$2y$10$k1Lv9.BC3ekllPTg2/mmuO3g43RgXDkMu29hpFomgRudsaiuQEWc.', NULL, '0660397499', 'Yovente S.A.R.L', 1, NULL, NULL, 1, 0, '2022-04-05 15:56:19', '2022-04-05 15:56:29'),
(31, 'Yasmin', 'Yasmin', 'Bougteba', 'yasmin@gmail.com', NULL, NULL, '$2y$10$FYRiFZlcbcx1GFZ88QLSt.PS3bMLAHlTo8wfhYNBMptJULWCCcqju', NULL, '0660397499', 'Nour1', 4, NULL, NULL, 1, 0, '2022-04-05 21:48:27', '2022-04-07 20:22:33');

-- --------------------------------------------------------

--
-- Structure de la table `variants`
--

CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `variants`
--

INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'XL', '2022-01-07 21:42:53', '2022-01-07 21:42:53'),
(2, 'L', '2022-01-07 21:42:53', '2022-01-07 21:42:53'),
(3, 'M', '2022-01-07 21:42:53', '2022-01-07 21:42:53'),
(4, 'S', '2022-01-07 21:42:53', '2022-01-07 21:42:53'),
(5, 'XXL', '2022-01-07 22:26:22', '2022-01-07 22:26:22');

-- --------------------------------------------------------

--
-- Structure de la table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Entrepôt Benslimane', '0600000000', 'entrepotbenslimane@yovente.com', 'Adresse de l\'entrepôt de Benslimane', 1, '2022-01-07 20:55:19', '2022-01-07 20:55:19'),
(2, 'Entrepot Fes', '0611111111', 'entrepotfes@yovente.com', 'Adresse de l\'entrepôt de Fes', 1, '2022-01-30 21:45:51', '2022-01-30 22:03:28');

-- --------------------------------------------------------

--
-- Structure de la table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `withdraw_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_valide` tinyint(1) DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `reference_no`, `user_id`, `withdraw_amount`, `withdraw_note`, `is_valide`, `is_paid`, `created_at`, `updated_at`) VALUES
(1, 'retrait-vendeur-220227-175433', 23, '500', NULL, 0, NULL, '2022-02-27 16:54:38', '2022-02-27 16:54:38');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `money_transfers`
--
ALTER TABLE `money_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pos_setting`
--
ALTER TABLE `pos_setting`
  ADD UNIQUE KEY `pos_setting_id_unique` (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_batches`
--
ALTER TABLE `product_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_quotation`
--
ALTER TABLE `product_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_returns`
--
ALTER TABLE `product_returns`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_transfer`
--
ALTER TABLE `product_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `return_purchases`
--
ALTER TABLE `return_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stock_counts`
--
ALTER TABLE `stock_counts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `cash_registers`
--
ALTER TABLE `cash_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT pour la table `money_transfers`
--
ALTER TABLE `money_transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product_batches`
--
ALTER TABLE `product_batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `product_quotation`
--
ALTER TABLE `product_quotation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `product_transfer`
--
ALTER TABLE `product_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `return_purchases`
--
ALTER TABLE `return_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `stock_counts`
--
ALTER TABLE `stock_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
