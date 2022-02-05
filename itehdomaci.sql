-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2021 at 03:58 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itehdomaci`
--

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
(4, '2021_07_29_101911_create_trainings_table', 1),
(5, '2021_07_29_101923_create_trainers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `firstname`, `lastname`, `email`, `age`, `created_at`, `updated_at`) VALUES
(78, 'Meda', 'Murray', 'rolfson.darren@marks.com', 50, '2021-07-29 11:49:25', '2021-07-29 11:49:25'),
(79, 'Jabari', 'Tremblay', 'spencer.federico@altenwerth.com', 33, '2021-07-29 11:51:34', '2021-07-29 11:51:34'),
(80, 'Mike', 'Streich', 'block.earnest@yahoo.com', 33, '2021-07-29 11:54:41', '2021-07-29 11:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `trainer_id` bigint(20) NOT NULL,
  `desc` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `user_id`, `trainer_id`, `desc`, `duration`, `date`, `created_at`, `updated_at`) VALUES
(81, 83, 78, 'Dolor et et architecto quis dolor fugit rem. Dolor rem facere architecto hic dolore ipsum aut. Facere omnis nesciunt nihil corporis asperiores ut voluptatum iste. Ipsa deserunt repellat nemo.', 65, '2021-07-29 21:00:00', '2021-07-29 11:49:25', '2021-07-29 11:49:25'),
(82, 84, 78, 'Vitae a rem ex sit facere. Consectetur atque quae sint assumenda libero. Quia sunt cumque quia.', 60, '2021-07-29 22:30:00', '2021-07-29 11:49:25', '2021-07-29 11:49:25'),
(83, 85, 78, 'Laborum nostrum tenetur quia ratione aut. Nihil amet omnis deserunt aut qui quod. Cupiditate quia omnis ut repellat voluptatem. Possimus expedita deserunt dolorem itaque asperiores et id.', 79, '2021-07-30 15:00:00', '2021-07-29 11:49:25', '2021-07-29 11:49:25'),
(84, 86, 79, 'Optio sed qui iure quas. Eaque sequi dolor consequuntur ducimus maxime reprehenderit. Qui sit iste omnis repellat impedit quidem. Reprehenderit at voluptatem voluptatum consequatur in.', 75, '2021-07-31 10:00:00', '2021-07-29 11:51:34', '2021-07-29 11:51:34'),
(86, 88, 80, 'Voluptatum nulla totam distinctio aut. Laboriosam quidem quia dolores laborum rerum odio molestiae culpa. Magnam voluptas suscipit itaque quos beatae. Doloremque non rerum consequuntur cum.', 80, '2021-07-31 15:00:00', '2021-07-29 11:54:41', '2021-07-29 11:54:41'),
(87, 89, 80, 'Deserunt possimus vero distinctio et consectetur quae. Repellat consequatur laboriosam autem sunt enim ab. Eum magnam est nulla molestiae est commodi. Magnam ipsam libero enim adipisci.', 95, '2021-07-31 17:00:00', '2021-07-29 11:54:41', '2021-07-29 11:54:41');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'djika', 'djika@djika.com', NULL, '123456', NULL, '2021-07-29 10:41:33', '2021-07-29 10:41:33'),
(83, 'Janis Renner I', 'haylee.bailey@example.org', '2021-07-29 11:49:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AEhVgIYpcI', '2021-07-29 11:49:25', '2021-07-29 11:49:25'),
(84, 'Karley Welch', 'albina77@example.org', '2021-07-29 11:49:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't7b0obLHZJ', '2021-07-29 11:49:25', '2021-07-29 11:49:25'),
(85, 'Reilly Larkin', 'runte.christian@example.com', '2021-07-29 11:49:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C9zkMM3KZ3', '2021-07-29 11:49:25', '2021-07-29 11:49:25'),
(86, 'Anais Mosciski V', 'merritt.rosenbaum@example.org', '2021-07-29 11:51:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iJ7V5UnwaM', '2021-07-29 11:51:34', '2021-07-29 11:51:34'),
(88, 'Emmitt Ledner', 'johnny93@example.com', '2021-07-29 11:54:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L1iZiGdvyV', '2021-07-29 11:54:41', '2021-07-29 11:54:41'),
(89, 'Alisha McCullough', 'leora41@example.org', '2021-07-29 11:54:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LFdhGY7WBn', '2021-07-29 11:54:41', '2021-07-29 11:54:41');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
