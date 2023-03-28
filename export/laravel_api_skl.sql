-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 28 Mar 2023 pada 08.53
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_api_skl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `collabs`
--

CREATE TABLE `collabs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `series` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `collabs`
--

INSERT INTO `collabs` (`id`, `series`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'none', '2023-03-21 07:55:51', NULL, NULL),
(2, 'Stranger Things', '2023-03-21 07:55:51', NULL, NULL),
(3, 'Drake\'s Nocta', '2023-03-21 07:56:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_21_073058_create_collab_table', 1),
(6, '2023_03_21_073742_create_products_table', 1),
(7, '2023_03_21_073830_create_reviews_table', 1),
(8, '2023_03_21_075051_add_price_column_to_products_table', 1),
(9, '2023_03_21_075116_add_ratee_column_to_reviews_table', 1),
(10, '2023_03_24_030804_add_image_columne_to_products_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'user login', 'ada3b9916607ad5ce6e956f92513ed57c89cc4d2be93b0b08f2ee0c7adf4254f', '[\"*\"]', NULL, '2023-03-21 23:27:28', '2023-03-21 23:27:28'),
(2, 'App\\Models\\User', 1, 'user login', '5fdd7d00f95f84c1169387d8ab0a384ddb2176b4e16f93dbbb57e82e09a6f270', '[\"*\"]', NULL, '2023-03-21 23:27:43', '2023-03-21 23:27:43'),
(3, 'App\\Models\\User', 1, 'user login', '82f425e5d112651309e0e01aad73181fe261983e894f3087e83ad620ea2b05b3', '[\"*\"]', NULL, '2023-03-21 23:39:05', '2023-03-21 23:39:05'),
(4, 'App\\Models\\User', 1, 'user login', '0089c426000fc91b579931447ebaca303a5752dd58a6ada9b07bd8b9e493772b', '[\"*\"]', NULL, '2023-03-21 23:40:05', '2023-03-21 23:40:05'),
(5, 'App\\Models\\User', 1, 'user login', '0c47ed6402753e912156693712608e509ce5139f0ea3ff8474a6c5b1593ae9ee', '[\"*\"]', NULL, '2023-03-21 23:40:14', '2023-03-21 23:40:14'),
(6, 'App\\Models\\User', 1, 'user login', '313ad7dc4294c0e25d048248fcdc9aaf7259804e01b6ec318fe3b9f5e1a177c9', '[\"*\"]', NULL, '2023-03-21 23:40:15', '2023-03-21 23:40:15'),
(8, 'App\\Models\\User', 2, 'user login', '87134d59dd65550ebec5578406ef6fff62573ac61690a3767109d54dcdf26dd6', '[\"*\"]', NULL, '2023-03-23 19:15:48', '2023-03-23 19:15:48'),
(9, 'App\\Models\\User', 2, 'user login', '4b489c92dbfa59a7e595e8082a4b570044969de44d14e7595ddbc6bc47e48501', '[\"*\"]', '2023-03-23 19:16:59', '2023-03-23 19:16:45', '2023-03-23 19:16:59'),
(11, 'App\\Models\\User', 1, 'user login', 'c0562e5f7e8121925ee730447ed00063c99de0e04f94b8f3864366aa84583f6c', '[\"*\"]', '2023-03-27 23:45:52', '2023-03-23 19:30:05', '2023-03-27 23:45:52'),
(12, 'App\\Models\\User', 1, 'user login', 'd7f562d53d960d5038f5523f82c7e460f8bf6a2925da4629d2dc12ed5fb29bb7', '[\"*\"]', '2023-03-27 23:28:36', '2023-03-27 18:13:13', '2023-03-27 23:28:36'),
(15, 'App\\Models\\User', 1, 'user login', '3671a113f5a70574e29afdcf4087fc09ad9305e5b199a61b8e0e70edd72a8b63', '[\"*\"]', NULL, '2023-03-27 23:30:11', '2023-03-27 23:30:11'),
(16, 'App\\Models\\User', 2, 'user login', 'e728873c3ef52922481bf9788db8cc3d1a262b72ce330529b457ebe33764151f', '[\"*\"]', '2023-03-27 23:46:52', '2023-03-27 23:30:30', '2023-03-27 23:46:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` bigint(20) UNSIGNED NOT NULL,
  `type` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `desc`, `image`, `owner`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Grey Bottle', ' 120000', 'd ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore', NULL, 2, 1, '2023-03-22 04:05:12', NULL, NULL),
(2, 'lawak banget', '2000', 'maulade', NULL, 2, 3, '2023-03-21 07:58:02', '2023-03-22 00:48:58', '2023-03-22 00:48:58'),
(3, 'lawak', '100000', 'lawak', NULL, 2, 2, '2023-03-22 00:12:46', '2023-03-22 00:48:04', '2023-03-22 00:48:04'),
(4, 'lawak', '100000', 'lawak', NULL, 2, 2, '2023-03-23 20:01:31', '2023-03-23 20:01:31', NULL),
(5, 'lawak', '100000', 'lawak', NULL, 2, 3, '2023-03-23 20:01:43', '2023-03-23 20:01:43', NULL),
(6, 'lawak banget', '100000', 'lawak', NULL, 2, 3, '2023-03-23 20:01:51', '2023-03-23 20:01:51', NULL),
(22, 'lawak banget', '100000', 'lawak', 'xuNhddvRDWOw80VUIoPg.png', 2, 3, '2023-03-23 21:22:11', '2023-03-23 21:22:11', NULL),
(23, 'Red Bottle', '100000', 'Ordinary Red Bottle', 'eyEsHs8VrnCagYo5svZb.png', 1, 3, '2023-03-27 18:16:32', '2023-03-27 18:26:49', '2023-03-27 18:26:49'),
(24, 'sanctum', '100000', 'no', 'U5ya8RLWbO6qVMDzeMA8.jpg', 1, 3, '2023-03-27 18:26:56', '2023-03-27 20:49:52', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `review_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `review_content`, `rating`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'mahal banget, sumpah padahal bedanya dapet stiker doang', 3, '2023-03-21 07:59:29', '2023-03-23 19:30:16', '2023-03-23 19:30:16'),
(3, 2, 1, 'yessir', 7, '2023-03-23 18:19:16', '2023-03-23 20:02:46', '2023-03-23 20:02:46'),
(4, 2, 1, 'yessirr, fire product', 10, '2023-03-23 18:21:00', '2023-03-23 20:02:48', '2023-03-23 20:02:48'),
(5, 2, 1, 'yessirr, fire product', 11, '2023-03-23 19:01:08', '2023-03-23 20:02:51', '2023-03-23 20:02:51'),
(6, 2, 1, 'yessirr, fire product gg', 10, '2023-03-23 19:14:37', '2023-03-23 20:02:55', '2023-03-23 20:02:55'),
(7, 1, 1, 'yessirr, fire product gg', 10, '2023-03-23 19:56:41', '2023-03-23 20:02:57', '2023-03-23 20:02:57'),
(8, 1, 1, 'yessirr, fire product gg', 10, '2023-03-23 19:56:42', '2023-03-23 20:03:00', '2023-03-23 20:03:00'),
(9, 1, 1, 'yessirr, fire product gg', 10, '2023-03-23 19:56:42', '2023-03-23 20:03:03', '2023-03-23 20:03:03'),
(10, 1, 1, 'yessirr, fire product gg', 10, '2023-03-23 19:56:43', '2023-03-23 20:03:08', '2023-03-23 20:03:08'),
(11, 1, 1, 'yessirr, fire product gg', 10, '2023-03-23 19:56:44', '2023-03-23 20:03:19', '2023-03-23 20:03:19'),
(12, 1, 1, 'yessirr, fire product gg', 10, '2023-03-23 19:56:44', '2023-03-23 20:03:22', '2023-03-23 20:03:22'),
(13, 1, 1, 'yessirr, fire product gg', 10, '2023-03-23 19:56:45', '2023-03-23 20:03:25', '2023-03-23 20:03:25'),
(14, 1, 1, 'yessirr, fire product gg', 10, '2023-03-23 19:56:45', '2023-03-23 20:03:28', '2023-03-23 20:03:28'),
(15, 2, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:03:42', '2023-03-27 18:34:31', '2023-03-27 18:34:31'),
(16, 2, 1, 'Keren', 10, '2023-03-23 20:03:43', '2023-03-27 18:46:35', NULL),
(17, 2, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:03:43', '2023-03-23 20:03:43', NULL),
(18, 1, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:03:46', '2023-03-23 20:03:46', NULL),
(19, 1, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:03:46', '2023-03-23 20:03:46', NULL),
(20, 3, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:03:50', '2023-03-23 20:03:50', NULL),
(21, 4, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:04:19', '2023-03-23 20:04:19', NULL),
(22, 4, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:04:20', '2023-03-23 20:04:20', NULL),
(23, 4, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:04:20', '2023-03-23 20:04:20', NULL),
(24, 5, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:04:24', '2023-03-23 20:04:24', NULL),
(25, 5, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:04:25', '2023-03-23 20:04:25', NULL),
(26, 5, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:04:25', '2023-03-23 20:04:25', NULL),
(27, 6, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:04:29', '2023-03-23 20:04:29', NULL),
(28, 6, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:04:30', '2023-03-23 20:04:30', NULL),
(29, 6, 1, 'yessirr, fire product gg', 10, '2023-03-23 20:04:31', '2023-03-23 20:04:31', NULL),
(30, 6, 1, 'yessirr, fire product gg', 10, '2023-03-27 18:27:34', '2023-03-27 18:27:34', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `balance`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'akmlrnyn', 'Akmal', 'Ranyan', 0, 'akmalranyan@gmail.com', '$2y$10$Ztvh/MogXqYAYsILTPua0uIX7XKBRlWKexTS4mY/aM/WC98F/koxq', NULL, '2023-03-21 07:56:43', '2023-03-27 20:55:41', NULL),
(2, 'Admin', 'Admin', NULL, 0, 'admin@gmail.com', '$2y$10$fm40uxC5MduY4BtKeyaW9.7FIKzSChb.2S86wu4VJp5e2NB0qK6cm', NULL, '2023-03-21 07:56:43', '2023-03-27 23:44:48', NULL),
(3, 'akmalngl', 'akmal', 'baru', 100000, 'akmalngl@gmail.com', '$2y$10$LPObYQHGxlJpbzOZydhtMut0uIJ1NzH2gUhw8B3SL0y.UdpNJQKsq', NULL, '2023-03-27 23:22:07', '2023-03-27 23:22:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `collabs`
--
ALTER TABLE `collabs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_owner_foreign` (`owner`),
  ADD KEY `products_type_foreign` (`type`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `collabs`
--
ALTER TABLE `collabs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_owner_foreign` FOREIGN KEY (`owner`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_type_foreign` FOREIGN KEY (`type`) REFERENCES `collabs` (`id`);

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
