-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2022 at 02:50 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mubaligh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `area_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone_number`, `user_id`, `area_id`, `district_id`, `active`, `admin_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admindaerah', 'admindaerah@gmail.com', '12345678', 1, NULL, 3, 1, NULL, '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL),
(2, 'adminwilayah', 'adminwilayah@gmail.com', '12345678', 2, NULL, 3, 1, NULL, '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL),
(3, 'admin kota', 'testadmindaerah@gmail.com', '123123', 8, 1, 3, 1, 2, '2021-06-07 06:49:20', '2022-01-24 06:50:38', NULL),
(6, 'admin bantul', 'adminbantul@gmail.com', '121341', 9, NULL, 1, 1, NULL, '2022-01-23 21:48:01', '2022-01-23 21:48:01', NULL),
(7, 'admin sleman', 'adminsleman@gmail.com', '36429846926', 10, 1, 2, 1, 2, '2022-01-24 06:53:43', '2022-02-15 01:06:55', NULL),
(8, 'admin gk', 'admingk@gmail.com', '123131233', 11, 1, 4, 1, 1, '2022-01-28 06:36:10', '2022-01-28 06:36:10', NULL),
(9, 'akunbaru', 'akunbaru@gmail.com', '0897257155', 13, 1, 1, 1, 1, '2022-02-15 01:44:54', '2022-02-15 01:44:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_proof` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `potencies` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `Keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `number_applicant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `name`, `address`, `phone_number`, `email`, `path_proof`, `potencies`, `district_id`, `Keterangan`, `created_at`, `updated_at`, `deleted_at`, `number_applicant`) VALUES
(1, 'test', 'test@gmail.com', '123123123', 'test@gmail.com', 'file/RguvprPgI3k647nz900sxQKHphvjWjSw77p6cfJl.jpg', 'kesehatan', 3, '', '2021-06-07 06:45:24', '2022-07-31 07:02:00', '2022-07-31 07:02:00', '2021/06/07/0'),
(2, 'test applicant', 'kasihan', '123123', 'hedinasrudin04@gmail.com', 'file/Fd4Ab8aQt5A73qEGuuzCtJhii7RWmGOsl5Jcycvb.jpg', 'kesehatan', 1, '', '2021-06-07 06:57:26', '2022-01-22 09:10:46', NULL, '2021/06/07/1'),
(3, 'rista', 'sleman', '089725716', 'rista@gmail.com', 'file/o1qW7YvwQvQZp7RZXCUMCw7JBGjKta6b1QjcMdUJ.png', 'ekonomi', 1, '', '2022-01-20 05:41:07', '2022-01-20 05:41:07', NULL, '2022/01/20/2'),
(4, 'adnan', 'bantul', '08972571664', 'adnanf783@gmail.com', 'file/oQvSW2gRvFbhWfMP9FzZHMnhyLrePx1hyH76Yq4f.txt', 'asfasdf', 5, '', '2022-01-20 06:08:57', '2022-01-20 06:08:57', NULL, '2022/01/20/3'),
(5, 'nia', 'sleman', '121341', 'adnan@gmail.com', 'file/rboLvXOFu7yE0eXNwSc2wQk9W1jEQWQbHwqYvmWP.txt', 'asfasdf', 1, '', '2022-01-20 23:08:34', '2022-01-20 23:08:34', NULL, '2022/01/21/4'),
(6, 'riski', 'riski@gmail.com', '089725716644', 'riski@gmail.com', 'file/ewceTwjMw8frHiGtJDKGdWbEEh8ZjikmBMJ49mPg.png', 'kesehatan', 3, '', '2022-01-22 08:59:43', '2022-01-22 09:20:18', '2022-01-22 09:20:18', '2022/01/22/5'),
(7, 'nanda', 'waringin', '1213411', 'rista@gmail.com', 'file/Rno4YCQsXWKpdP2SxGF0RczhE6HhrVaNKTIGu3sJ.png', 'kesehatan', 3, '', '2022-01-22 09:13:18', '2022-07-31 07:02:02', '2022-07-31 07:02:02', '2022/01/22/6'),
(8, 'riski', 'rista@gmail.com', '12134112', 'rista@gmail.com', 'file/qW6Nlfb9TsaRDjv4BQ2SbmenuXw0ezJ4WUvKCqre.jpg', 'budaya', 3, '', '2022-01-22 09:20:50', '2022-07-31 07:02:04', '2022-07-31 07:02:04', '2022/01/22/6'),
(9, 'bunga', 'ngaglik,sleman', '0897257167', 'bunga12@gmail.com', 'file/4qhiMJ2hgWlrYl0C0UlsnkzbC3q74i3zsyg3g2Lc.png', 'budaya', 2, '', '2022-01-25 00:55:04', '2022-01-25 00:55:04', NULL, '2022/01/25/7'),
(10, 'risa', 'bantul', '121341334', 'risa452@gmail.com', 'file/rXSRRvnCKyEBGhO8sKzVmeEXfk2YBLqLfaRgRV62.png', 'ekonomi', 3, '', '2022-01-28 18:14:53', '2022-07-31 07:02:06', '2022-07-31 07:02:06', '2022/01/29/8'),
(11, 'lisa', 'kulonprogo', '3253219197', 'lisa@gmail.com', 'file/LSeF8PFfqW8euLRblfHYAHDyhiEZRH0LWWXAnjFP.png', 'budaya', 3, '', '2022-01-28 18:20:16', '2022-01-28 18:20:16', NULL, '2022/01/29/9'),
(12, 'orlee', 'sleman', '121341111', 'orlee12@gmail.com', 'file/zYaBiJVAaFnd7drxSXADFj2f9MvnxWll455Ekho2.png', 'ekonomi', 2, '', '2022-02-03 22:28:24', '2022-02-03 22:28:24', NULL, '2022/02/04/10');

-- --------------------------------------------------------

--
-- Table structure for table `approved_statuses`
--

CREATE TABLE `approved_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `approved_statuses`
--

INSERT INTO `approved_statuses` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Belum diproses', '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL),
(2, 'Dalam Pemeriksaan Petugas Daerah', '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL),
(3, 'Dalam Pemeriksaan Petugas Wilayah', '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL),
(4, 'Sudah Disetujui', '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Daerah', '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL),
(2, 'Wilayah', '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articels`
--

CREATE TABLE `articels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articels`
--

INSERT INTO `articels` (`id`, `title`, `slug`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Buku Satu', 'buku-satu', '<p>percobaan pembuatan artikel&nbsp;</p>\r\n<p>Where MAIL_HOST is your domain name from Godaddy, MAIL_USERNAME is your user name from Godaddy and MAIL_PASSWORD is your password from Godaddy.</p>\r\n<p>I hope this may help you.</p>', 'image/sVY9feDQJUoTya3UepMV9IzsPXRzdtI9voerXd2M.jpg', '2022-01-21 01:25:28', '2022-01-29 00:54:31', '2022-01-29 00:54:31'),
(2, 'Buku Dua', 'buku-dua', NULL, 'image/SWqSJWI1EYJGBrbYAqQsXBM9FO55x7gwPOUUHDvp.jpg', '2022-01-24 07:00:15', '2022-01-29 00:54:33', '2022-01-29 00:54:33'),
(3, 'Buku Tiga', 'buku-tiga', NULL, 'image/IqzO4VHs5fS2O4HCfmTzed1OVpce6U3deId6t1lK.jpg', '2022-01-24 07:01:58', '2022-01-29 00:54:29', '2022-01-29 00:54:29'),
(4, 'Buku Empat', 'buku-empat', NULL, 'image/7P9RkTFNqeT7B9n9ZjG3RWXPfOY4cePAlncjfncM.jpg', '2022-01-24 07:02:15', '2022-01-29 00:54:24', '2022-01-29 00:54:24'),
(5, 'Buku Lima', 'buku-lima', NULL, 'image/Fof9EQHWA9dx2wWNgXFYOmt6PT5x7plaH3Kxe9rW.png', '2022-01-28 19:00:14', '2022-01-29 00:54:27', '2022-01-29 00:54:27'),
(6, 'Dakwah Islamiyah', 'dakwah-islamiyah', '<p><strong>Dakwah</strong>&nbsp;adalah suatu proses penyampaian, ajakan atau seruan kepada orang lain atau kepada masyarakat agar mau memeluk, mempelajari, dan mengamalkan ajaran agama secara sadar, sehingga membangkitkan dan mengembalikan potensi fitri orang itu, dan dapat hidup bahagia di dunia dan akhirat.</p>\r\n<p><strong>Tujuan utama dakwah</strong>&nbsp;adalah mewujudkan kebahagiaan dan kesejahteraan hidup di dunia dan akhirat yang diridhai oleh Allah SWT. Yakni dengan menyampaikan nilai-nilai yang dapat mendatangkan kebahagiaan dan kesejahteraan yang diridhai Allah SWT sesuai dengan segi atau bidangnya masing-masing.</p>\r\n<p><strong>Unsur unsur dakwah</strong>&nbsp;adalah komponen-komponen yang terdapat dalam setiap kegiatan&nbsp;<strong>dakwah</strong>.&nbsp;<strong>Unsur</strong>-<strong>unsur</strong>&nbsp;tersebut adalah da\'i (pelaku&nbsp;<strong>dakwah</strong>), mad\'u (mitra&nbsp;<strong>dakwah</strong>), maddah (materi&nbsp;<strong>dakwah</strong>), wailah (media&nbsp;<strong>dakwah</strong>), thariqah (metode), dan atsar (efek&nbsp;<strong>dakwah</strong>).</p>', 'image/x1s8gu0PwEsInPRJ9fmgsPNq9Sh9gaGJLA98iiWA.jpg', '2022-01-29 00:57:01', '2022-01-29 04:52:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `competences`
--

CREATE TABLE `competences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competences`
--

INSERT INTO `competences` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `value`) VALUES
(1, 'Ekonomi', '2021-06-07 06:39:57', '2022-01-28 07:19:25', NULL, 1),
(2, 'Kesehatan', '2021-06-07 06:39:57', '2022-01-28 07:19:30', NULL, 1),
(3, 'Budaya', '2021-06-07 06:39:57', '2022-01-28 07:19:20', NULL, 1),
(5, 'Ekonomi Dan Pertanian', '2022-02-03 22:30:19', '2022-02-03 22:30:37', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `province_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bantul', 1, '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL),
(2, 'Sleman', 1, '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL),
(3, 'Kota Jogja', 1, '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL),
(4, 'Gunung Kidul', 1, '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL),
(5, 'Kulon Progo', 1, '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `value`) VALUES
(1, 'SD', '2021-06-07 06:39:57', '2022-01-28 07:18:47', NULL, 1),
(2, 'SMP', '2021-06-07 06:39:57', '2022-01-28 07:18:59', NULL, 1),
(3, 'SMA', '2021-06-07 06:39:57', '2022-01-28 07:18:53', NULL, 1),
(4, 'D3', '2021-06-07 06:39:57', '2022-01-28 07:18:39', NULL, 2),
(5, 'S1', '2021-06-07 06:39:57', '2022-01-28 07:18:30', NULL, 3),
(6, 'S2', '2021-06-07 06:39:57', '2022-01-28 07:18:24', NULL, 4),
(7, 'S3', '2021-06-07 06:39:57', '2022-01-28 07:18:17', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Laki-Laki', '2021-06-07 06:39:58', '2021-06-07 06:39:58', NULL),
(2, 'Perempuan', '2021-06-07 06:39:58', '2021-06-07 06:39:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_03_063507_create_areas_table', 1),
(5, '2021_05_03_063741_create_education_table', 1),
(6, '2021_05_03_063959_create_genders_table', 1),
(7, '2021_05_03_064341_create_competences_table', 1),
(8, '2021_05_03_064507_create_approved_statuses_table', 1),
(9, '2021_05_03_064542_create_provinces_table', 1),
(10, '2021_05_03_064644_create_districts_table', 1),
(11, '2021_05_03_064756_create_admins_table', 1),
(12, '2021_05_03_142158_create_applicants_table', 1),
(13, '2021_05_03_142941_create_preachers_table', 1),
(14, '2021_05_03_143415_create_request_forgot_passwords_table', 1),
(15, '2021_05_03_152449_create_placements_table', 1),
(16, '2021_05_24_084730_create_permission_tables', 1),
(17, '2021_05_24_151654_update_api_token_in_users_table', 1),
(18, '2021_05_30_020936_add_number_applicant_in_applicants_table', 1),
(19, '2021_06_05_031854_add_value_in_table', 1),
(20, '2021_06_10_122030_create_articels_table', 2),
(21, '2021_06_24_125127_rename_request_forget_password', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('adminbantul@gmail.com', '$2y$10$ZYNQC2S/Vu0QN3LyLYrQquO98UNsRv87UhYD48Q57OFf1O8fM1qj2', '2022-01-29 21:14:36'),
('adminsleman@gmail.com', '$2y$10$UXsaLQNLMw52qXGvivrDLu8U8QPa.60wNK8qjLgdYzrLZXyH/pZIi', '2022-02-16 01:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `penempatan`
--

CREATE TABLE `penempatan` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `kompetensi` double NOT NULL,
  `pendidikan` double NOT NULL,
  `usia` double NOT NULL,
  `public_speaking` double NOT NULL,
  `pengalaman` double NOT NULL,
  `keagamaan` double NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penempatan`
--

INSERT INTO `penempatan` (`id`, `applicant_id`, `kompetensi`, `pendidikan`, `usia`, `public_speaking`, `pengalaman`, `keagamaan`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
(1, 7, 0.15, 0.1, 0.2, 0.15, 0.15, 0.25, 'lk', '2022-09-04 19:02:26', '2022-09-04 19:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin daerah access', 'web', '2021-06-07 06:39:57', '2021-06-07 06:39:57'),
(2, 'admin wilayah access', 'web', '2021-06-07 06:39:57', '2021-06-07 06:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `placements`
--

CREATE TABLE `placements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `preacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `area_agreed` tinyint(1) DEFAULT 0,
  `region_agreed` tinyint(1) DEFAULT 0,
  `approved_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `placements`
--

INSERT INTO `placements` (`id`, `applicant_id`, `preacher_id`, `area_agreed`, `region_agreed`, `approved_status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 1, 1, NULL, '2021-06-07 07:08:32', '2022-01-20 05:44:04', NULL),
(2, 2, 2, 1, 1, NULL, '2022-01-20 05:43:24', '2022-01-28 00:11:07', NULL),
(5, 7, 2, 1, 1, NULL, '2022-01-22 09:13:39', '2022-07-26 07:56:56', '2022-07-26 07:56:56'),
(10, 10, 1, 0, 0, NULL, '2022-02-03 22:31:59', '2022-07-26 07:57:03', '2022-07-26 07:57:03'),
(11, 7, 1, 1, 0, NULL, '2022-07-27 21:50:20', '2022-07-27 21:50:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preachers`
--

CREATE TABLE `preachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `age` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `competence_id` bigint(20) UNSIGNED DEFAULT NULL,
  `education_id` bigint(20) UNSIGNED DEFAULT NULL,
  `districts_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `value_saw` decimal(8,2) DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preachers`
--

INSERT INTO `preachers` (`id`, `name`, `email`, `phone_number`, `birth_place`, `birth_date`, `age`, `address`, `competence_id`, `education_id`, `districts_id`, `gender_id`, `value_saw`, `admin_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mubaligh C', 'mubaliqKetiga@gmail.com', '123', 'jogja', '2000-02-16', 20, 'Kuncen Yogyakarta', 2, 4, 3, 1, '5.00', 1, '2021-06-07 07:03:27', '2022-07-26 08:09:39', NULL),
(2, 'Mubaligh D', 'MualighKeempat@gmail.com', '12134133', 'bantul', '2001-10-25', 19, 'Babarsari Yogyakarta', 3, 4, 3, 2, '5.00', 1, '2022-01-20 05:42:11', '2022-07-26 08:11:16', NULL),
(6, 'Mubaligh A', 'mubalighPertama@gmail.com', '12134119', 'bantul', '1998-09-13', 22, 'gejayan yogyakarta', 2, 5, 3, 1, '5.00', 1, '2022-02-16 06:49:26', '2022-07-26 08:04:41', NULL),
(7, 'Mubaligh B', 'MubalighKedua@gmail.com', '12134111', 'kota jogja', '1998-05-11', 24, 'Kota Jogja', 5, 4, 3, 1, '5.00', 1, '2022-02-19 11:03:29', '2022-07-26 08:06:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preachers_skill`
--

CREATE TABLE `preachers_skill` (
  `id` int(11) NOT NULL,
  `preacher_id` int(11) NOT NULL,
  `kompetensi` int(11) NOT NULL,
  `pendidikan` int(11) NOT NULL,
  `pengalaman` int(11) NOT NULL,
  `usia` int(11) NOT NULL,
  `public_speaking` int(11) NOT NULL,
  `keagamaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `preachers_skill`
--

INSERT INTO `preachers_skill` (`id`, `preacher_id`, `kompetensi`, `pendidikan`, `pengalaman`, `usia`, `public_speaking`, `keagamaan`) VALUES
(1, 6, 3, 4, 5, 25, 2, 5),
(2, 7, 2, 2, 6, 25, 1, 3),
(3, 1, 1, 5, 1, 30, 3, 5),
(4, 2, 4, 1, 12, 32, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Yogyakarta', '2021-06-07 06:39:57', '2021-06-07 06:39:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_forget_passwords`
--

CREATE TABLE `request_forget_passwords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` tinyint(1) DEFAULT 0,
  `read_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin daerah', 'web', '2021-06-07 06:39:57', '2021-06-07 06:39:57'),
(2, 'admin wilayah', 'web', '2021-06-07 06:39:57', '2021-06-07 06:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `remember_token`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'admindaerah', 'admindaerah@gmail.com', NULL, '$2y$10$d27sDOAxm/TZqzdPydOKNekhdaVm6pebDPBzv.2.1IBL4/CpIqBMm', NULL, 'mIsdpMHkFJsDXZr17EvdH9NjLsueO3QZTeaIRyuQuvxkyzlLBu6LJl1WLsLb', 1, '2021-06-07 06:39:57', '2021-06-07 06:39:57'),
(2, 'adminwilayah', 'adminwilayah@gmail.com', NULL, '$2y$10$kyk52oce0TeqcMhaUJs5nuRwV43Gizqs6BxLt.5dNC26UIVmqXUgy', NULL, 'QVe6Wr2bCUJLz9gCLiVDdT65Y39ThXmH4SGBHub7NuJOc5Z4BdjxLmWYGfMD', 2, '2021-06-07 06:39:57', '2021-06-07 06:39:57'),
(3, 'tes admin daerah', 'testadmindaerah@gmail.com', NULL, '$2y$10$ZnOoNSvSt08CRekNuZD8l.q0syROHjXEhPIddkPsB.NG9/OqfCeUG', NULL, NULL, 0, '2021-06-07 06:49:20', '2021-06-07 06:49:20'),
(7, 'rista', 'rista@gmail.com', NULL, '$2y$10$kIar3q5vyyEk6gm542T0hesqp8SO3j1jnpbBJYujzKsM9kPcKdBVu', NULL, NULL, 0, '2022-01-20 05:47:03', '2022-01-20 05:47:03'),
(8, 'Adnan Berhasil', 'adinwilayah@gmail.com', NULL, '$2y$10$.maJM8I39ui3rcwsBFVLMOAE/KZgTcq/M1y//QtXjj1wuWcRbhurC', NULL, NULL, 0, '2022-01-21 01:24:38', '2022-01-21 01:24:38'),
(9, 'admin bantul', 'adminbantul@gmail.com', NULL, '$2y$10$RoYLy/STRf1lAkCqb.l0huObLqtP7K2VXFSMhsHHyGwNfn9fNHKVm', NULL, 'NxFgNXIGkBAaOFlLcso2a6fP2QfaRuxJBFHDHpbGE5t24ZooePQLhuMk11eq', 0, '2022-01-23 21:48:01', '2022-01-23 21:48:01'),
(10, 'admin sleman', 'adminsleman@gmail.com', NULL, '$2y$10$cosIEe8EkzVlHLPKLdSSaucTAsvP1XFOIgFWGaM5wF.FvAtzAht3a', NULL, NULL, 0, '2022-01-24 06:53:43', '2022-01-24 06:53:43'),
(11, 'admin gk', 'admingk@gmail.com', NULL, '$2y$10$a4OsKAg1SuPS5Dlw70HK8ORDsZINJbHhHeVebfbMkydPIy/QmM4vO', NULL, NULL, 0, '2022-01-28 06:36:10', '2022-01-28 06:36:10'),
(12, 'adnan', 'adminbantull@gmail.com', NULL, '$2y$10$bYaRIwBRPj1crLgbjuikQegnOkd9XhcBoZFG106n2ZUjbOKomslGi', NULL, NULL, 0, '2022-01-28 06:44:11', '2022-01-28 06:44:11'),
(13, 'akunbaru', 'akunbaru@gmail.com', NULL, '$2y$10$TTVRuXf2jwK62jpGRplPiOBCNxCtsUGmX.grccv9yWAM.9NA0QJmy', NULL, NULL, 0, '2022-02-15 01:44:54', '2022-02-15 01:44:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_user_id_foreign` (`user_id`),
  ADD KEY `admins_area_id_foreign` (`area_id`),
  ADD KEY `admins_district_id_foreign` (`district_id`),
  ADD KEY `admins_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicants_district_id_foreign` (`district_id`);

--
-- Indexes for table `approved_statuses`
--
ALTER TABLE `approved_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articels`
--
ALTER TABLE `articels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_province_id_foreign` (`province_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penempatan`
--
ALTER TABLE `penempatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `placements`
--
ALTER TABLE `placements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `placements_preacher_id_foreign` (`preacher_id`),
  ADD KEY `placements_applicant_id_foreign` (`applicant_id`),
  ADD KEY `placements_approved_status_id_foreign` (`approved_status_id`);

--
-- Indexes for table `preachers`
--
ALTER TABLE `preachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preachers_competence_id_foreign` (`competence_id`),
  ADD KEY `preachers_education_id_foreign` (`education_id`),
  ADD KEY `preachers_districts_id_foreign` (`districts_id`),
  ADD KEY `preachers_gender_id_foreign` (`gender_id`),
  ADD KEY `preachers_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `preachers_skill`
--
ALTER TABLE `preachers_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_forget_passwords`
--
ALTER TABLE `request_forget_passwords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_forgot_passwords_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `approved_statuses`
--
ALTER TABLE `approved_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articels`
--
ALTER TABLE `articels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `competences`
--
ALTER TABLE `competences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `penempatan`
--
ALTER TABLE `penempatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `placements`
--
ALTER TABLE `placements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `preachers`
--
ALTER TABLE `preachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `preachers_skill`
--
ALTER TABLE `preachers_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `request_forget_passwords`
--
ALTER TABLE `request_forget_passwords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admins_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admins_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `placements`
--
ALTER TABLE `placements`
  ADD CONSTRAINT `placements_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `placements_approved_status_id_foreign` FOREIGN KEY (`approved_status_id`) REFERENCES `approved_statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `placements_preacher_id_foreign` FOREIGN KEY (`preacher_id`) REFERENCES `preachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `preachers`
--
ALTER TABLE `preachers`
  ADD CONSTRAINT `preachers_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `preachers_competence_id_foreign` FOREIGN KEY (`competence_id`) REFERENCES `competences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `preachers_districts_id_foreign` FOREIGN KEY (`districts_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `preachers_education_id_foreign` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `preachers_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_forget_passwords`
--
ALTER TABLE `request_forget_passwords`
  ADD CONSTRAINT `request_forgot_passwords_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
