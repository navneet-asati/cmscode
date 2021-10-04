-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 06:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynamic_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2a$05$9dndPCmel6.zNEKfe7xmg.fNYb/Yqk7DYIby82ZQDPsdVQHP0cgI6', '2020-11-02 16:02:14', '2020-11-05 15:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'anmol', 'anmol@gmail.com', 'test message', '2020-12-20 01:30:03', '2020-12-20 01:30:03'),
(2, 'krish', 'krish@gmail.com', 'nskdf fsljd fas f', '2020-12-20 01:34:27', '2020-12-20 01:34:27');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page_title` varchar(256) NOT NULL,
  `section_title` varchar(256) NOT NULL,
  `data` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_title`, `section_title`, `data`, `created_at`, `updated_at`) VALUES
(8, 'home', 'second_title', 'Welcome to New Vision', '2020-11-25 11:22:44', '2020-12-14 12:33:14'),
(9, 'home', 'second_text', '<h1>second text area heading</h1>\r\n\r\n<p>second text area</p>', '2020-11-25 11:22:45', '2020-11-27 10:16:14'),
(10, 'home', 'third_icon', 'third icon', '2020-11-25 11:22:45', '2020-11-27 10:16:14'),
(11, 'home', 'third_title', 'third title', '2020-11-25 11:22:45', '2020-11-27 10:16:14'),
(12, 'home', 'third_text', '<p>third text area</p>', '2020-11-25 11:22:45', '2020-11-27 10:16:14'),
(13, 'home', 'forth_icon', 'Featured Carousel Items', '2020-11-25 11:22:45', '2020-12-14 12:33:14'),
(14, 'home', 'forth_text', 'fourth image title', '2020-11-25 11:22:45', '2020-11-27 10:16:15'),
(19, 'home', 'banner_image', '14122020160796767469.jpg', '2020-11-27 10:16:15', '2020-12-14 12:11:14'),
(28, 'our_company', 'second_title', 'About Our Company', '2020-12-14 11:43:03', '2020-12-14 11:45:47'),
(29, 'our_company', 'third_title', 'Our Background and Environment', '2020-12-14 11:43:03', '2020-12-14 11:45:47'),
(30, 'our_company', 'forth_title', 'Our Team Members', '2020-12-14 11:43:03', '2020-12-14 11:45:48'),
(31, 'our_company', 'banner_image', '14122020160796614768.png', '2020-12-14 11:45:48', '2020-12-14 11:45:48');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `section_title` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `page_title`, `section_title`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(5, 'home', 'second_section', 'BEST COLLECTION', '<p>Aliquam purus arcu, congue a gravida ac, facilisis vel erat. Maecenas pretium sem.</p>', '15122020160804903144.jpg', '2020-12-15 10:47:11', '2020-12-16 10:48:12'),
(6, 'home', 'second_section', 'NEW DESIGN FOR YOUR WEBSITE', '<p>Aliquam purus arcu, congue a gravida ac, facilisis vel erat. Maecenas pretium sem at nisl malesuada, quis.</p>', '15122020160804920746.jpg', '2020-12-15 10:50:07', '2020-12-15 10:50:07'),
(7, 'home', 'second_section', 'MOST UNIQUE IDEA EVER MADE', '<p>Aliquam purus arcu, congue a gravida ac, facilisis vel erat. Maecenas.&nbsp;Hover #09F</p>', '15122020160804937396.jpg', '2020-12-15 10:52:53', '2020-12-15 10:52:53'),
(8, 'home', 'second_section', 'SIMPLE TOUCH', '<p>Please tell your friends about TemplateMo website. Thank you. Title / Text #666</p>', '15122020160804941175.jpg', '2020-12-15 10:53:31', '2020-12-15 10:53:31'),
(9, 'home', 'third_section', 'TEMPLATE USAGE', '<p>You can feel free to edit and use New Vision template for your commercial websites. Title color is #333</p>', '15122020160804978894.png', '2020-12-15 10:59:48', '2020-12-15 10:59:48'),
(10, 'home', 'third_section', 'NEW VISION', '<p><a href=\"https://templatemo.com/tm-542-new-vision\" target=\"_parent\">New Vision</a>&nbsp;comes with 4 different HTML pages and provided free of charge by TemplateMo. You can add more pages if you need. Text color is #666</p>', '15122020160804983815.png', '2020-12-15 11:00:38', '2020-12-15 11:00:38'),
(11, 'home', 'third_section', 'DOWNLOAD SITES', '<p>Do not re-distribute our template ZIP file on your website. Or contact us first. Button color is #C99</p>', '15122020160804988688.png', '2020-12-15 11:01:26', '2020-12-15 11:01:26'),
(12, 'home', 'slider', 'cat post', '<p><strong>BEST</strong> HTML TEMPLATE</p>', '16122020160813793027.jpg', '2020-12-16 11:28:50', '2020-12-16 11:28:50'),
(13, 'home', 'slider', 'bird', '<p><strong>TOP</strong> CSS THEME</p>', '16122020160813799827.jpg', '2020-12-16 11:29:58', '2020-12-16 11:29:58'),
(14, 'home', 'slider', 'FLOWER', '<p><strong>BEST </strong>FLOWERS</p>', '16122020160813805949.jpg', '2020-12-16 11:30:59', '2020-12-16 11:30:59'),
(15, 'home', 'slider', 'FOREST', '<p><strong>GREAT&nbsp;</strong>FOREST THEME</p>', '16122020160813813058.jpg', '2020-12-16 11:32:10', '2020-12-16 11:32:10'),
(16, 'home', 'slider', 'DEAR', '<p><strong>BEST </strong>ANIMAL THEME COLLECTION</p>', '16122020160813822390.jpg', '2020-12-16 11:33:43', '2020-12-16 11:33:43'),
(17, 'home', 'slider', 'FLOWERS', '<p>BEST FLOOERS THEME</p>', '16122020160813827457.jpg', '2020-12-16 11:34:34', '2020-12-16 11:34:34');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
