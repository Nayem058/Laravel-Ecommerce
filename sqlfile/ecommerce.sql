-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2021 at 12:42 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mrs. Malika Simonis', 'Cary Turner', 1, '2021-04-07 01:31:47', '2021-04-07 01:31:47', NULL),
(2, 'Dr. Veronica Kemmer IV', 'Dr. Buster Bauch', 1, '2021-04-07 01:31:47', '2021-04-07 01:31:47', NULL),
(3, 'Aimee Kling', 'Giles Hammes', 1, '2021-04-07 01:31:47', '2021-04-07 01:31:47', NULL),
(4, 'Miss Bert Ortiz', 'Sincere Hammes', 1, '2021-04-07 01:31:47', '2021-04-07 01:31:47', NULL),
(5, 'Claudia Reilly', 'Mr. Eldon Brown', 1, '2021-04-07 01:31:47', '2021-04-07 01:31:47', NULL),
(6, 'Lawrence Nader', 'Mrs. Germaine Stroman Jr.', 1, '2021-04-07 01:31:47', '2021-04-07 01:31:47', NULL),
(7, 'Gonzalo Ward', 'Lonnie Dach', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(8, 'Alfreda Homenick', 'Ms. Karen Durgan MD', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(9, 'Prof. Hilda Herman III', 'Jewell Jenkins', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(10, 'Danny Hamill', 'Eulalia Hegmann', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(11, 'Isidro Zboncak', 'Dr. Kieran Morissette', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(12, 'Hailee Howell', 'Ruth Hagenes', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(13, 'Prof. Marquis Gleichner', 'Miss Rosella Paucek III', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(14, 'Fernando Gulgowski', 'Ms. Ashtyn Anderson', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(15, 'Bulah Dibbert', 'Bella Crist', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(16, 'Antonette Kuvalis', 'Kole Emard III', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(17, 'Jena Nitzsche', 'Mrs. Breanna Krajcik II', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(18, 'Johnathon Olson III', 'Jacey Bogisich DVM', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(19, 'Ida Olson', 'Jalon O\'Keefe', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(20, 'Ayla Pollich II', 'Mrs. Novella Pouros', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `category_slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jameson Beier', 'Zackery Deckow PhD', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(2, 'Chasity Bradtke Sr.', 'Fanny Heaney', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(3, 'Ophelia Jacobs', 'Aileen Shanahan', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(4, 'Hertha Prohaska', 'Mr. Arvel Langworth', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(5, 'Dorian Bartoletti Sr.', 'Wayne Feil II', 1, '2021-04-07 01:31:48', '2021-04-07 01:31:48', NULL),
(6, 'Lenna Beahan', 'Miss Earline Orn DDS', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(7, 'Josianne Friesen', 'Prof. Cassandre Eichmann', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(8, 'Carmine Wolff', 'Prof. Wyman Ondricka', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(9, 'Miss Esta Turcotte', 'Ms. Alba Tillman', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(10, 'Mrs. Trinity Hane IV', 'Abigail Treutel', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(11, 'Horace Rogahn', 'Cleora Mraz I', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(12, 'Jordy Osinski', 'Prof. Cristina Rowe', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(13, 'Landen Sporer', 'Miss Dolores Fritsch', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(14, 'Mr. Giovanny Heidenreich MD', 'Domenic Bode II', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(15, 'Elza Kuphal', 'Cali Breitenberg', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(16, 'Candice Kiehn', 'Filomena Wisoky DVM', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(17, 'Llewellyn Schimmel', 'Erik Carroll', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(18, 'Alvina Smitham', 'Florida Mills', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(19, 'Dr. Jesus Schamberger I', 'Dr. Cecile Hodkiewicz', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(20, 'Darby Keebler', 'Bradly O\'Kon', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(21, 'Prof. Sabina Von PhD', 'Prof. Helena Cummings', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(22, 'Claire Yundt', 'Columbus Bayer', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(23, 'Jayden Cronin', 'Kaylee Crist', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(24, 'Toni Osinski', 'Hailie Barton', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL),
(25, 'Favian Osinski', 'Roscoe Smith', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49', NULL);

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
(4, '2021_04_03_155720_create_brands_table', 1),
(5, '2021_04_05_210520_create_categories_table', 1),
(6, '2021_04_06_100014_create_sub_categories_table', 1);

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
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `cat_id`, `sub_cat`, `status`, `created_at`, `updated_at`) VALUES
(1, '9', 'Miss Dora Barton', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49'),
(2, '6', 'Maxime Tillman', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49'),
(3, '7', 'Sterling Hodkiewicz', 1, '2021-04-07 01:31:49', '2021-04-07 01:31:49'),
(4, '2', 'Harmony Hodkiewicz', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(5, '7', 'Prof. Ada Bradtke', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(6, '2', 'Missouri Legros', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(7, '6', 'Kaia Blanda', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(8, '8', 'Jaylen Doyle', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(9, '8', 'Dr. Lonnie Denesik', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(10, '3', 'Flavio Kuhlman', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(11, '3', 'Jamil Grant V', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(12, '8', 'Prof. Willa Emard', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(13, '7', 'Dr. Albert Torp', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(14, '3', 'Miss Elisabeth Kuhlman IV', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(15, '8', 'Michaela Crona Jr.', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(16, '1', 'Nikki Bayer I', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(17, '7', 'Jamil Schaefer', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(18, '6', 'Verda Kuvalis', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(19, '1', 'Danial Schmidt I', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50'),
(20, '3', 'Cierra Blick', 1, '2021-04-07 01:31:50', '2021-04-07 01:31:50');

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
(1, 'Corene Gerhold', 'kristin83@example.net', '2021-04-07 01:31:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LwX9epWC1Q', '2021-04-07 01:31:46', '2021-04-07 01:31:46'),
(2, 'Nayem Uddin', 'nayemuddin058@gmail.com', NULL, '$2y$10$Vw9i8SbQF4RkGp0rjNp8zOhBVonLDyYdIIuhquWtenCIGyc9UKxMO', NULL, '2021-04-07 01:31:46', '2021-04-07 01:31:46'),
(3, 'Velda Windler', 'milan66@kerluke.org', NULL, '$2y$10$kXhLn58ylWwTYKrGrxmg6uVeeaWeGGt8DOIhGe7aglJVUYcC6BnrO', NULL, '2021-04-07 01:31:46', '2021-04-07 01:31:46'),
(4, 'Delores Stamm', 'padberg.garrett@upton.org', NULL, '$2y$10$n0.jd27fGnkq2s8eJvwN1uSfmUF8ZXpht5gCHjr1KOTgZqSjw5pRW', NULL, '2021-04-07 01:31:46', '2021-04-07 01:31:46'),
(5, 'Maria Crona', 'oren71@hirthe.com', NULL, '$2y$10$TXmKOndc5HMojyHINLUUke0LC4cs/YV1ZjBULkyz4j6V3SDmPB/CK', NULL, '2021-04-07 01:31:46', '2021-04-07 01:31:46'),
(6, 'Celine West', 'npaucek@hotmail.com', NULL, '$2y$10$1xwW6mlIGzTsZlfO5QBWyuDU2vg9NxKg3rx2JakUqbhiyswC1lVOK', NULL, '2021-04-07 01:31:47', '2021-04-07 01:31:47'),
(7, 'Miss Leanne Hegmann', 'wwintheiser@haley.org', NULL, '$2y$10$XQmoOLPxlLT4IovlrdG8qu67nE0EsKBMqWUbS2aCHKAzvd6ShFrem', NULL, '2021-04-07 01:31:47', '2021-04-07 01:31:47'),
(8, 'Price Waters', 'rusty67@yahoo.com', NULL, '$2y$10$wmFQ/0cmscU9DCD9AzEfR.yPQOhkM3mxI5X7B/LE6IoR1O23DhD5C', NULL, '2021-04-07 01:31:47', '2021-04-07 01:31:47'),
(9, 'Frieda Smith', 'collier.ross@hotmail.com', NULL, '$2y$10$vUV46Vl43W6OiWUFMixKDeFLm8/5Py6a.Vuz0rXd9S4TOUmqALsM.', NULL, '2021-04-07 01:31:47', '2021-04-07 01:31:47'),
(10, 'Ms. Mallie Crona', 'wryan@satterfield.com', NULL, '$2y$10$4Dao7i/RH6IXH5NmXLmNte7McCBC5nc4IgHuJ1LQe66jh6saFc2bG', NULL, '2021-04-07 01:31:47', '2021-04-07 01:31:47'),
(11, 'Ms. Aletha Kessler PhD', 'herbert31@gmail.com', NULL, '$2y$10$cN8m3PM8Ypg6bQwHDkpqKOf6p8ZACkooPwNH1Y8q9VLJ5RV38Y9i2', NULL, '2021-04-07 01:31:47', '2021-04-07 01:31:47'),
(12, 'Nayem Farhan', 'nayemfarhan6246@gmail.com', NULL, '$2y$10$3kTD8fFD/9xRo/Vi7U.j7Op61sr7lhTodv8BlkVZ4kYt8KHAm5Wl.', NULL, '2021-04-07 13:00:10', '2021-04-07 13:00:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
