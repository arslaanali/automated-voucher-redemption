-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2021 at 01:52 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.3.27-9+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avr`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$63RUYubr2w5891xPQSK9Y.yTn6izja8FROndHP9OslIHIYUYrnDP6', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voucher_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matchings`
--

CREATE TABLE `matchings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vouchercode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productitem` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(4, '2020_06_26_103652_create_admins_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(5, '2021_03_24_183931_create_vouchers_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(6, '2021_03_25_071602_create_products_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(7, '2021_03_25_073245_create_services_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(8, '2021_03_25_124740_create_codes_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(9, '2021_03_29_101001_add_voucherid_to_services_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(10, '2021_03_29_110313_create_matchings_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(11, '2021_03_29_122632_add_productid_to_codes_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(12, '2021_03_30_061743_add_columns_to_users', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(13, '2021_04_01_064435_create_offers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voucher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vouchercode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `productitem` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `offer_name`, `voucher_id`, `vouchercode`, `product_id`, `productitem`, `service_id`, `created_at`, `updated_at`) VALUES(1, 'Daily Offer', 12, 'HOND344', 5, 'Nokia789', '1,2,9', NULL, NULL);
INSERT INTO `offers` (`id`, `offer_name`, `voucher_id`, `vouchercode`, `product_id`, `productitem`, `service_id`, `created_at`, `updated_at`) VALUES(2, 'Weekly Offer', 10, 'MKID4945', 3, 'HPLaptopXYZBundle', '1,5,8,9,7,4', NULL, NULL);
INSERT INTO `offers` (`id`, `offer_name`, `voucher_id`, `vouchercode`, `product_id`, `productitem`, `service_id`, `created_at`, `updated_at`) VALUES(3, 'Monthly Offer', 8, 'OZEW345', 7, 'MOTOM9', '2,6,5,9,7,3,1,8,4', NULL, NULL);
INSERT INTO `offers` (`id`, `offer_name`, `voucher_id`, `vouchercode`, `product_id`, `productitem`, `service_id`, `created_at`, `updated_at`) VALUES(4, 'Yearly Offer', 3, 'JTNM034', 16, 'NASD234', '6,4,3,8,9,1,7,5', NULL, NULL);
INSERT INTO `offers` (`id`, `offer_name`, `voucher_id`, `vouchercode`, `product_id`, `productitem`, `service_id`, `created_at`, `updated_at`) VALUES(5, 'Decadely Offer', 24, 'POUD839', 2, 'PROA70', '6,1,9,8', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productitem` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(1, 'PRO456', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(4, 'SamsungA90', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(6, 'LG7882', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(8, 'MACBOOKBUNDLES', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(9, 'GTE782', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(10, 'KM093', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(11, 'FRE983', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(12, 'KIMI093', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(13, 'FAST563', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(14, 'GALAXY902', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(15, 'Iphone11Pro', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(17, 'NETS032', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(18, 'DANYT22', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(19, 'MITS932', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(20, 'COVID193', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(21, 'TEST873', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(22, 'DUARDO', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(23, 'HILL734', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(24, 'QMOB83', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(25, 'SME934', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(26, 'KGH493', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(27, 'NTN834', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(28, 'GTX944', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(29, 'NIKON334', '2021-04-02 02:05:26', '2021-04-02 02:05:26');
INSERT INTO `products` (`id`, `productitem`, `created_at`, `updated_at`) VALUES(30, 'SONY783', '2021-04-02 02:05:26', '2021-04-02 02:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `voucher_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `photos`, `link1`, `link2`, `link3`, `created_at`, `updated_at`, `voucher_id`) VALUES(1, '10% Discount', 'images/photos/photo1617347543.jpg', 'https://stackoverflow.com/', 'https://www.daraz.pk/', 'https://www.foodpanda.com/', NULL, NULL, NULL);
INSERT INTO `services` (`id`, `name`, `photos`, `link1`, `link2`, `link3`, `created_at`, `updated_at`, `voucher_id`) VALUES(2, '20% Service', 'images/photos/photo1617347589.jpg', 'https://www.vectorstock.com/', 'https://narsunprojects.com/yourplaylive2020', 'https://www.foodpanda.com/', NULL, NULL, NULL);
INSERT INTO `services` (`id`, `name`, `photos`, `link1`, `link2`, `link3`, `created_at`, `updated_at`, `voucher_id`) VALUES(3, '30% Service', 'images/photos/photo1617347634.jpg', 'https://www.vectorstock.com/', 'https://outlook.live.com/owa/', 'https://narsunprojects.com/yourplaylive2020', NULL, NULL, NULL);
INSERT INTO `services` (`id`, `name`, `photos`, `link1`, `link2`, `link3`, `created_at`, `updated_at`, `voucher_id`) VALUES(4, '40% Service', 'images/photos/photo1617347667.jpg', 'https://www.vectorstock.com/', 'https://www.daraz.pk/', 'https://www.foodpanda.com/', NULL, NULL, NULL);
INSERT INTO `services` (`id`, `name`, `photos`, `link1`, `link2`, `link3`, `created_at`, `updated_at`, `voucher_id`) VALUES(5, '50% Service', 'images/photos/photo1617347697.jpg', 'https://www.vectorstock.com/', 'https://www.daraz.pk/', 'https://www.foodpanda.com/', NULL, NULL, NULL);
INSERT INTO `services` (`id`, `name`, `photos`, `link1`, `link2`, `link3`, `created_at`, `updated_at`, `voucher_id`) VALUES(6, '60% Service', 'images/photos/photo1617347739.jpg', 'https://www.vectorstock.com/', 'https://www.daraz.pk/', 'https://www.foodpanda.com/', NULL, NULL, NULL);
INSERT INTO `services` (`id`, `name`, `photos`, `link1`, `link2`, `link3`, `created_at`, `updated_at`, `voucher_id`) VALUES(7, '70% Service', 'images/photos/photo1617347761.jpg', 'https://www.vectorstock.com/', 'https://www.daraz.pk/', 'https://www.foodpanda.com/', NULL, NULL, NULL);
INSERT INTO `services` (`id`, `name`, `photos`, `link1`, `link2`, `link3`, `created_at`, `updated_at`, `voucher_id`) VALUES(8, '80% Service', 'images/photos/photo1617347813.jpg', 'https://www.vectorstock.com/', 'https://www.daraz.pk/', 'https://www.foodpanda.com/', NULL, NULL, NULL);
INSERT INTO `services` (`id`, `name`, `photos`, `link1`, `link2`, `link3`, `created_at`, `updated_at`, `voucher_id`) VALUES(9, '90% Service', 'images/photos/photo1617347854.jpg', 'https://www.vectorstock.com/', 'https://www.daraz.pk/', 'https://www.foodpanda.com/', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `voucher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vouchercode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `productitem` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `voucher_id`, `vouchercode`, `product_id`, `productitem`) VALUES(1, 'HOND344', 'Nokia789', NULL, NULL, NULL, NULL, NULL, 12, 'HOND344', 5, '$2y$10$I0B50deBrm6E8z80jAls1.Ac/pMpvAGa0T1v0ULinCMMNkbFLrygm');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `voucher_id`, `vouchercode`, `product_id`, `productitem`) VALUES(2, 'MKID4945', 'HPLaptopXYZBundle', NULL, NULL, NULL, NULL, NULL, 10, 'MKID4945', 3, '$2y$10$ihFOEMnbcxSOpFiGHcAVqu75Ht5TRD4DgLYtLDApo5nXawCWQIQ16');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `voucher_id`, `vouchercode`, `product_id`, `productitem`) VALUES(3, 'OZEW345', 'MOTOM9', NULL, NULL, NULL, NULL, NULL, 8, 'OZEW345', 7, '$2y$10$eXEIEELFxhqT132c7IihsunVUao2fuuVHZWAMbob270wyfGWESzfe');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `voucher_id`, `vouchercode`, `product_id`, `productitem`) VALUES(4, 'JTNM034', 'NASD234', NULL, NULL, NULL, NULL, NULL, 3, 'JTNM034', 16, '$2y$10$bZuHsagFkwNIK29c8eatV.kLTBHIrd7mWEtrl0ZNqtxKZ41/lGEB2');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `voucher_id`, `vouchercode`, `product_id`, `productitem`) VALUES(5, 'POUD839', 'PROA70', NULL, NULL, NULL, NULL, NULL, 24, 'POUD839', 2, '$2y$10$VkOnb/Fvn.2Z5Zcc7fzk4eyAzqHBj0gtyrkpjI6uj30H4kuuSJh9a');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `VoucherCode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(1, 'ABCD345', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(2, 'ABC9844', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(4, 'IKMJ9333', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(5, 'POPO394', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(6, 'WEN8345', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(7, 'ROBE743', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(9, 'RXY34592', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(11, 'BUGA949', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(13, 'VEW3455', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(14, 'DSEY459', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(15, 'AMY7383', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(16, 'PYU9394', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(17, 'KIMS938', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(18, 'CARE949', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(19, 'UBER456', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(20, 'THYS738', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(21, 'VIYT3456', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(22, 'JAMQ234', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(23, 'DFRQ345', '2021-04-02 00:24:47', '2021-04-02 00:24:47');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(25, 'GUTSY34', '2021-04-02 00:24:48', '2021-04-02 00:24:48');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(26, 'DIER3432', '2021-04-02 00:24:48', '2021-04-02 00:24:48');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(27, 'THAY934', '2021-04-02 00:24:48', '2021-04-02 00:24:48');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(28, 'BEGRT73', '2021-04-02 00:24:48', '2021-04-02 00:24:48');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(29, 'UDUF945', '2021-04-02 00:24:48', '2021-04-02 00:24:48');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(30, 'FASH987', '2021-04-02 00:24:48', '2021-04-02 00:24:48');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(31, 'TFGH7865', '2021-04-02 00:26:23', '2021-04-02 00:26:23');
INSERT INTO `vouchers` (`id`, `VoucherCode`, `created_at`, `updated_at`) VALUES(32, 'TFGH7869', '2021-04-02 00:42:20', '2021-04-02 00:42:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matchings`
--
ALTER TABLE `matchings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `matchings`
--
ALTER TABLE `matchings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
