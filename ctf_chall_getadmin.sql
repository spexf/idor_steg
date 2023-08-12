-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 11:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ctf_chall_getadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_11_123010_create_permission_tables', 1),
(6, '2023_08_11_123615_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `status` enum('allowed','hidden') NOT NULL DEFAULT 'allowed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `user_id`, `name`, `description`, `category`, `price`, `images`, `status`, `created_at`, `updated_at`) VALUES
(1, '45622634', 1, 'Joran Fly Fishing', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum molestiae maiores quaerat porro odit blanditiis?', 'Rod', 10466089, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcT9k6lXrw7-TGyfqi81sxN8xO0jv0Ya14Jxlq32TZnl_C7Ja-4dz2h6hj0-2q_2URo-WIHYt3LYKzuEGZl8xh01mjxnTXFL4ljh1896OBd4wH5IbkcyrJSOVg', 'allowed', '2023-08-12 02:15:41', '2023-08-12 02:15:41'),
(2, '75107392', 1, 'Joran Fly Fishing', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum molestiae maiores quaerat porro odit blanditiis?', 'Rod', 8527847, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcT9k6lXrw7-TGyfqi81sxN8xO0jv0Ya14Jxlq32TZnl_C7Ja-4dz2h6hj0-2q_2URo-WIHYt3LYKzuEGZl8xh01mjxnTXFL4ljh1896OBd4wH5IbkcyrJSOVg', 'allowed', '2023-08-12 02:15:41', '2023-08-12 02:15:41'),
(3, '27684249', 1, 'Joran Fly Fishing', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum molestiae maiores quaerat porro odit blanditiis?', 'Rod', 7430861, 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRkMuQGsfK4faU5w8BMlk683rcCNmkAjKU-7ia0NInxpSR9qgiaEi6Y46RsHcxJPKltJ6Cmt9VPc3pU72YHg7HKCYIASq01IAw5QCcCSAOGfW7MNhxBFPlI8g', 'allowed', '2023-08-12 02:15:41', '2023-08-12 02:15:41'),
(4, '41194069', 1, 'Joran Fly Fishing', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum molestiae maiores quaerat porro odit blanditiis?', 'Rod', 13863753, 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRrLzOrzu_pIR8SF6LffrovGTL3XHrVrssuuqQT6z8dqqPIEjwdXQ3_xCqM-QAMzyLiDrLCgRLx17ZvoWFefouqbMSbQ6RWJSZ7n_PDM0mLSSlnRDQeN7RySw', 'allowed', '2023-08-12 02:15:41', '2023-08-12 02:15:41'),
(5, '67416710', 1, 'Joran Fly Fishing', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum molestiae maiores quaerat porro odit blanditiis?', 'Rod', 14308944, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQsHTGCriYQD3V62r8pgfb4vkWfofbHiuwzCsJJ4y0ofjk3BLdSCTtIBORBO8VEG-klYWr4Dz572ySxtnoyJY8CcS6zcQIYb_Y9sqq7ApHw3GlCQW-qJAfb', 'allowed', '2023-08-12 02:15:41', '2023-08-12 02:15:41'),
(6, '56249980', 1, 'Joran Fly Fishing', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum molestiae maiores quaerat porro odit blanditiis?', 'Rod', 5835712, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQsHTGCriYQD3V62r8pgfb4vkWfofbHiuwzCsJJ4y0ofjk3BLdSCTtIBORBO8VEG-klYWr4Dz572ySxtnoyJY8CcS6zcQIYb_Y9sqq7ApHw3GlCQW-qJAfb', 'allowed', '2023-08-12 02:15:41', '2023-08-12 02:15:41'),
(7, '19964549', 1, 'Joran Fly Fishing', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum molestiae maiores quaerat porro odit blanditiis?', 'Rod', 13157106, 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRrLzOrzu_pIR8SF6LffrovGTL3XHrVrssuuqQT6z8dqqPIEjwdXQ3_xCqM-QAMzyLiDrLCgRLx17ZvoWFefouqbMSbQ6RWJSZ7n_PDM0mLSSlnRDQeN7RySw', 'allowed', '2023-08-12 02:15:41', '2023-08-12 02:15:41'),
(8, '35050848', 1, 'Joran Fly Fishing', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum molestiae maiores quaerat porro odit blanditiis?', 'Rod', 4349956, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcT9k6lXrw7-TGyfqi81sxN8xO0jv0Ya14Jxlq32TZnl_C7Ja-4dz2h6hj0-2q_2URo-WIHYt3LYKzuEGZl8xh01mjxnTXFL4ljh1896OBd4wH5IbkcyrJSOVg', 'allowed', '2023-08-12 02:15:41', '2023-08-12 02:15:41'),
(9, '42144111', 1, 'Joran Fly Fishing', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum molestiae maiores quaerat porro odit blanditiis?', 'Rod', 13353150, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcT9k6lXrw7-TGyfqi81sxN8xO0jv0Ya14Jxlq32TZnl_C7Ja-4dz2h6hj0-2q_2URo-WIHYt3LYKzuEGZl8xh01mjxnTXFL4ljh1896OBd4wH5IbkcyrJSOVg', 'allowed', '2023-08-12 02:15:41', '2023-08-12 02:15:41'),
(10, '65023867', 1, 'Joran Fly Fishing', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum molestiae maiores quaerat porro odit blanditiis?', 'Rod', 1130184, 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRkMuQGsfK4faU5w8BMlk683rcCNmkAjKU-7ia0NInxpSR9qgiaEi6Y46RsHcxJPKltJ6Cmt9VPc3pU72YHg7HKCYIASq01IAw5QCcCSAOGfW7MNhxBFPlI8g', 'allowed', '2023-08-12 02:15:41', '2023-08-12 02:15:41'),
(11, '1249923600', 2321893810, 'TKJCyberLab{see_idor_isS_Sc4Ry!!!}', 'Insecure direct object references (IDOR) are a type of access control vulnerability that arises when an application uses user-supplied input to access objects directly.', 'Undefined', 999999999, '/assets/images/product_images/chall.png', 'hidden', '2023-08-12 02:15:41', '2023-08-12 02:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-08-12 02:15:40', '2023-08-12 02:15:40'),
(2, 'user', 'web', '2023-08-12 02:15:40', '2023-08-12 02:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'naruhodo@gmai.com', NULL, '$2y$10$90fQesP1d95F8ZCFMzz.y.QlKelBuVXyJvCI67Qnr/xTrRUKPhLMS', NULL, '2023-08-12 02:15:40', '2023-08-12 02:15:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
