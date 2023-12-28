-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 12, 2023 at 10:23 PM
-- Server version: 8.0.34-0ubuntu0.22.04.1
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learndora`
--

-- --------------------------------------------------------

--
-- Table structure for table `absences`
--

CREATE TABLE `absences` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `absences` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `approve` int NOT NULL DEFAULT '0',
  `group_id` int DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`, `deleted_at`, `approve`, `group_id`, `price`) VALUES
(18, 37, 6, '2022-03-15 11:53:00', '2022-05-24 15:00:52', '2022-05-24 15:00:52', 1, 40, 20),
(19, 1, 5, '2022-03-30 02:59:00', '2022-05-24 15:00:52', '2022-05-24 15:00:52', 1, 40, 20),
(20, 1, 6, '2022-05-24 14:44:49', '2022-05-24 15:00:47', '2022-05-24 15:00:47', 0, NULL, NULL),
(21, 1, 5, '2022-05-24 15:01:02', '2022-05-24 15:01:28', '2022-05-24 15:01:28', 0, NULL, NULL),
(22, 1, 5, '2022-05-24 15:01:42', '2022-05-24 15:17:08', '2022-05-24 15:17:08', 0, NULL, NULL),
(23, 1, 6, '2022-05-24 15:02:46', '2022-05-24 15:17:13', '2022-05-24 15:17:13', 0, NULL, NULL),
(24, 37, 5, '2022-05-24 15:17:00', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 1, NULL, NULL),
(25, 40, 6, '2022-06-05 20:48:20', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 1, 40, 592),
(26, 1, 6, '2022-07-13 13:48:00', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 1, 42, NULL),
(27, 1, 26, '2022-07-18 03:46:00', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 1, 40, NULL),
(28, 62, 14, '2022-08-09 07:51:08', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 7),
(29, 77, 6, '2022-08-09 08:09:00', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 1, 41, 50),
(30, 1, 10, '2022-08-09 20:12:52', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 15),
(31, 1, 19, '2022-08-09 20:34:43', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 7),
(32, 64, 10, '2022-08-14 05:21:03', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 15),
(33, 64, 28, '2022-08-16 07:38:13', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 5),
(34, 77, 29, '2022-08-21 10:54:00', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 1, 42, 20),
(35, 78, 5, '2022-09-04 05:14:00', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 1, 42, NULL),
(36, 79, 10, '2022-09-19 07:34:27', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 15),
(37, 78, 30, '2022-09-20 09:04:36', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 20),
(38, 1, 30, '2022-09-20 10:21:36', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 20),
(39, 1, 5, '2022-09-20 10:39:18', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 5),
(40, 78, 13, '2022-09-27 10:52:22', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(41, 78, 10, '2022-09-27 10:52:46', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 15),
(42, 78, 6, '2022-09-27 10:55:25', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 50),
(43, 80, 11, '2022-09-28 05:20:59', '2022-10-05 10:20:47', '2022-10-05 10:20:47', 0, NULL, NULL),
(44, 79, 5, '2022-09-29 06:15:00', '2022-10-05 10:20:47', '2022-10-05 10:20:47', 1, 44, 5),
(45, 79, 31, '2022-09-29 06:26:04', '2022-10-05 10:20:47', '2022-10-05 10:20:47', 0, NULL, NULL),
(46, 78, 5, '2022-10-05 04:32:00', '2022-10-05 10:20:47', '2022-10-05 10:20:47', 1, 44, NULL),
(47, 1, 5, '2022-10-05 09:36:00', '2022-10-05 10:20:47', '2022-10-05 10:20:47', 1, 44, NULL),
(48, 78, 5, '2022-10-05 09:46:00', '2022-10-05 10:20:47', '2022-10-05 10:20:47', 1, 44, NULL),
(49, 78, 5, '2022-10-05 09:58:00', '2022-10-05 10:20:47', '2022-10-05 10:20:47', 1, 44, NULL),
(50, 78, 5, '2022-10-05 10:00:00', '2022-10-05 10:20:47', '2022-10-05 10:20:47', 1, 44, NULL),
(51, 78, 5, '2022-10-05 10:03:00', '2022-10-05 10:20:47', '2022-10-05 10:20:47', 1, NULL, NULL),
(52, 1, 31, '2022-10-05 10:19:00', '2022-10-05 10:20:47', '2022-10-05 10:20:47', 1, 44, 200),
(53, 78, 11, '2022-10-05 10:22:47', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(54, 78, 5, '2022-10-05 10:23:00', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 1, 44, NULL),
(55, 1, 31, '2022-10-05 10:23:00', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 1, 44, 20),
(56, 78, 5, '2022-10-05 10:33:00', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 1, NULL, 20),
(57, 78, 32, '2022-10-05 10:37:00', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 1, NULL, 20),
(58, 80, 5, '2022-11-06 05:29:00', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 1, 44, NULL),
(59, 1, 32, '2022-11-10 09:16:36', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 20),
(60, 1, 29, '2022-11-10 09:20:00', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 1, 42, 20),
(61, 37, 6, '2022-11-15 06:32:39', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 50),
(62, 86, 11, '2023-01-02 06:39:07', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(63, 87, 5, '2023-01-02 08:16:57', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 5),
(64, 87, 6, '2023-01-02 08:20:17', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 50),
(65, 87, 10, '2023-01-02 08:21:29', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 15),
(66, 88, 14, '2023-01-03 13:07:09', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 7),
(67, 89, 6, '2023-01-04 18:25:30', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 50),
(68, 89, 23, '2023-01-04 18:29:48', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(69, 85, 12, '2023-01-10 08:23:53', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(70, 87, 11, '2023-01-10 08:32:24', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(71, 91, 11, '2023-01-17 13:04:24', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(72, 91, 12, '2023-01-17 13:04:48', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(73, 91, 13, '2023-01-17 13:05:19', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(74, 91, 16, '2023-01-17 13:51:41', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(75, 91, 18, '2023-01-17 13:51:55', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(76, 91, 27, '2023-01-17 13:52:18', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(77, 91, 26, '2023-01-17 13:52:30', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(78, 91, 22, '2023-01-17 13:53:42', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(79, 37, 32, '2023-03-18 23:29:07', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 20),
(80, 37, 29, '2023-03-18 23:46:21', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 20),
(81, 37, 30, '2023-03-28 09:16:31', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 20),
(82, 92, 5, '2023-03-28 07:52:38', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 5),
(83, 92, 6, '2023-03-28 07:56:21', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 50),
(84, 93, 29, '2023-03-28 08:29:07', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 20),
(85, 94, 5, '2023-03-29 16:27:18', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(86, 94, 6, '2023-03-29 16:32:26', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 50),
(87, 92, 29, '2023-03-29 17:18:54', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 20),
(88, 92, 32, '2023-03-29 17:37:26', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 20),
(89, 95, 5, '2023-04-02 06:43:28', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(90, 95, 29, '2023-04-02 06:44:02', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, 20),
(91, 96, 29, '2023-04-02 07:30:32', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(92, 1, 35, '2023-04-07 08:09:52', '2023-04-07 08:10:39', '2023-04-07 08:10:39', 0, NULL, NULL),
(93, 1, 32, '2023-04-07 08:10:00', '2023-04-07 08:15:34', NULL, 1, 40, 20),
(94, 37, 35, '2023-04-08 06:33:00', '2023-04-08 06:34:58', NULL, 1, 45, 0),
(95, 98, 5, '2023-06-05 04:02:58', '2023-06-05 04:02:58', NULL, 0, NULL, NULL),
(96, 1, 67, '2023-08-13 14:34:47', '2023-08-13 14:34:47', NULL, 0, NULL, 2000),
(97, 1, 70, '2023-08-17 09:35:54', '2023-08-17 09:35:54', NULL, 0, NULL, NULL),
(98, 1, 71, '2023-08-17 09:51:30', '2023-08-17 09:51:30', NULL, 0, NULL, NULL),
(101, 1, 65, '2023-08-18 08:41:14', '2023-08-18 08:41:14', NULL, 0, NULL, 10000),
(104, 99, 68, NULL, NULL, NULL, 1, NULL, NULL),
(106, 99, 67, '2023-08-21 16:09:38', '2023-08-21 16:09:38', NULL, 0, NULL, 2000),
(107, 99, 65, '2023-08-24 14:04:35', '2023-08-24 14:04:35', NULL, 0, NULL, 10000),
(108, 99, 77, '2023-08-24 14:04:58', '2023-08-24 14:04:58', NULL, 0, NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_trainer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `title`, `file`, `lesson_id`, `created_at`, `updated_at`, `id_trainer`) VALUES
(1, 'Assignment 1', '[{\"download_link\":\"assignments\\/April2022\\/AX9KhUvdkhtH4DXKQe5Y.json\",\"original_name\":\"gas.postman_collection.json\"},{\"download_link\":\"assignments\\/April2022\\/mV6BDoNld4ZYpKibM1Yw.txt\",\"original_name\":\"hts-log.txt\"}]', 11, '2022-03-09 02:55:00', '2022-11-10 09:25:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`, `content`, `image`) VALUES
(11, NULL, 1, 'training-courses', 'training-courses', '2022-04-20 17:17:24', '2022-04-20 17:17:24', NULL, 'training-course', 'categories/April2022/gRXwNGznmoU0vpdaSs5i.jpeg'),
(15, NULL, 1, 'backend', 'backend', '2023-03-18 23:01:33', '2023-03-18 23:01:33', NULL, 'خهتتنؤلاخهت خهيرخح حخخحيب هخحا حي حجب خلل', NULL),
(16, NULL, 1, 'softwire', 'softwire', '2023-04-03 08:10:45', '2023-04-03 08:11:48', NULL, 'softwire engineering', 'categories/April2023/HM0p6VLdx8z350yc5mdy.png');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `name`, `course`, `course_date`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'علاء عبدالرحمن طير البر', 'علوم البراين فوج', '2022-04-17', '2022-04-16 22:57:00', '2022-06-05 17:12:00', 37);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `commenter_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commenter_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `child_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `commenter_id`, `commenter_type`, `guest_name`, `guest_email`, `commentable_type`, `commentable_id`, `comment`, `approved`, `child_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '13', 'App\\User', NULL, NULL, 'App\\Course', '1', 'this is the best instructor evaaaa', 1, NULL, '2022-04-20 17:28:50', '2020-04-20 23:03:48', '2022-04-20 17:28:50'),
(2, '2', 'App\\User', NULL, NULL, 'App\\Course', '1', 'i love this instructor toooooo', 1, 1, '2022-04-20 17:28:50', '2020-04-20 23:04:15', '2022-04-20 17:28:50'),
(3, '2', 'App\\User', NULL, NULL, 'App\\Course', '1', 'i wnat to work with him', 1, NULL, '2022-04-20 17:28:50', '2020-04-20 23:12:09', '2022-04-20 17:28:50'),
(4, '13', 'App\\User', NULL, NULL, 'App\\Course', '1', 'he has another courses you would like . visit his official website', 1, 2, '2020-04-21 00:06:18', '2020-04-20 23:49:18', '2020-04-21 00:06:18'),
(5, '1', 'App\\User', NULL, NULL, 'App\\Course', '1', 'If your ache was more for someone to see your despair than to answer it with hope, then please write back, or post in the comments for some community love.', 1, NULL, '2022-01-24 13:17:13', '2020-04-20 23:51:51', '2022-01-24 13:17:13'),
(6, '2', 'App\\User', NULL, NULL, 'App\\Course', '1', 'let\'s have another shot', 1, 5, '2022-04-20 17:28:50', '2020-04-20 23:53:09', '2022-04-20 17:28:50'),
(7, '1', 'App\\User', NULL, NULL, 'App\\Course', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1, NULL, '2022-04-20 17:28:50', '2020-04-21 09:28:48', '2022-04-20 17:28:50'),
(8, '13', 'App\\User', NULL, NULL, 'App\\Course', '1', 'a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1, 7, '2022-04-20 17:28:50', '2020-04-25 23:15:01', '2022-04-20 17:28:50'),
(9, '1', 'App\\User', NULL, NULL, 'App\\Course', '1', 'zeft', 1, NULL, '2022-04-20 17:28:50', '2022-01-25 18:23:07', '2022-04-20 17:28:50'),
(10, '1', 'App\\User', NULL, NULL, 'App\\Course', '1', 'nice', 1, 8, '2022-04-20 17:28:50', '2022-01-25 18:23:31', '2022-04-20 17:28:50'),
(11, '1', 'App\\Models\\User', NULL, NULL, 'App\\Course', '1', 'kkdkskdk', 1, 8, '2022-04-20 17:28:50', '2022-04-06 08:02:01', '2022-04-20 17:28:50'),
(12, '1', 'App\\Models\\User', NULL, NULL, 'App\\Course', '1', 'ksskakska', 1, 2, '2022-04-20 17:28:50', '2022-04-17 20:42:39', '2022-04-20 17:28:50'),
(13, '1', 'App\\Models\\User', NULL, NULL, 'App\\Course', '5', 'nice comment', 1, NULL, '2023-08-08 12:10:52', '2022-05-08 06:32:39', '2023-08-08 12:10:52'),
(14, '1', 'App\\Models\\User', NULL, NULL, 'App\\Course', '5', 'nice course', 1, NULL, '2023-08-08 12:10:52', '2022-05-24 15:21:48', '2023-08-08 12:10:52'),
(15, '1', 'App\\Models\\User', NULL, NULL, 'App\\Course', '5', 'sdfjkdfjjsd', 1, NULL, '2023-08-08 12:10:52', '2022-11-10 09:19:26', '2023-08-08 12:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `email`, `subject`, `message`) VALUES
(4, 'Keeley Murray', '2022-03-02 07:52:20', '2022-03-02 07:52:20', NULL, 'your.email+fakedata46606@gmail.com', 'Keeley Murray', 'Ex aspernatur quia.'),
(5, 'Claudia Kreiger', '2022-03-02 07:59:20', '2022-03-02 07:59:20', NULL, 'your.email+fakedata19732@gmail.com', 'Claudia Kreiger', 'Qui beatae aperiam deserunt distinctio illum mollitia est.'),
(6, 'Murphy Robertson', '2022-03-20 13:34:15', '2022-03-20 13:34:15', NULL, 'fywotefoja@mailinator.com', 'Quasi et ea voluptat', 'Dolorem explicabo D'),
(7, 'Dieter Valdez', '2022-03-20 13:35:05', '2022-03-20 13:35:05', NULL, 'xytuhi@mailinator.com', 'Totam eaque aut volu', 'Voluptatem Deleniti'),
(8, 'madl', '2022-08-09 08:35:53', '2022-08-09 08:35:53', NULL, 'dsadfa@gmail.com', 'djkse', 'edw'),
(9, 'Lewis Hughes', '2022-08-21 09:16:29', '2022-08-21 09:16:29', NULL, 'ahmedgadallah1899@gmail.com', 'Harum aspernatur est', 'Fugiat nisi rerum l'),
(10, 'Aaron Hull', '2022-08-21 09:20:40', '2022-08-21 09:20:40', NULL, 'lavev@mailinator.com', 'Do in consectetur c', 'In quis est expedita'),
(11, 'Sydney Workman', '2022-08-21 09:20:53', '2022-08-21 09:20:53', NULL, 'ahmedgadallah1889@gmail.com', 'Non temporibus sequi', 'A quis nesciunt mag'),
(12, 'Victoria Carres', '2022-11-08 08:23:45', '2022-11-08 08:23:45', NULL, 'victoriacarres917@gmail.com', 'Rebranding for dsk.thedatacademy.com', 'Hi there,\r\n\r\nWe are wondering if you\'ve considered revamping your brand for your existing business, or whether you have plans to start a new business. Having a cohesive design throughout your website and social media accounts is more important than ever.\r\n\r\nWe offer an all-inclusive brand toolkit that allows you to upgrade your visuals to the next level. Our kit includes everything from a logo to color options, social media covers, business cards and even custom social media posts that implement the new design. \r\n\r\nWe conceptualize and create a stunning and cohesive design that echoes through your social media, website and physical items.\r\n\r\nWould you like to see some of our work?\r\n\r\nIf you\'re interested, simply hit reply and we can discuss further.\r\n\r\nKind Regards,\r\nVictoria'),
(13, 'Angela Ball', '2022-12-05 04:32:51', '2022-12-05 04:32:51', NULL, 'angelaballj774@yahoo.com', 'Instagram Promotion: Grow your followers by 400-1200 each month', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 400-1200+ followers per month.\r\n- Real, human followers: People follow you because they are interested in your business or niche.\r\n- Safe: All actions are made manually. We do not use any bots.\r\n\r\nThe price is just $60 per month, and we can start immediately.\r\n\r\nIf you are interested, and would like to see some of our previous work, let me know and we can discuss further.\r\n\r\nKind Regards,\r\nAngela'),
(14, 'Allen Young', '2022-12-27 18:11:38', '2022-12-27 18:11:38', NULL, 'allen@loansrapid.online', 'Something to consider', 'Hello,\r\n\r\nI hope you are doing well, and business is Great!\r\n\r\nAs a business owner you already know how hard it can be to get your hands on some working capital!\r\n\r\nHowever, all that has changed! \r\n\r\nExpress Capital is a Direct Lender who would like to offer you a working capital loan up to 500k.\r\n \r\nGet pre-qualified in less than 30 seconds without having your credit pulled or submitting a single document. \r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.expresscapitalcorp.com \r\n\r\n\r\nWarm Regards,\r\n\r\nAllen Young\r\nExpress Capital\r\nwww.expresscapitalcorp.com \r\n\r\n\r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.expresscapitalcorp.com/unsubscribe \r\n\r\nor write to:\r\n\r\nExpress Capital\r\n9169 W State St #3242\r\nGarden City, ID 83714'),
(15, 'Hussain Mohamed AlMaimani', '2023-01-02 08:27:33', '2023-01-02 08:27:33', NULL, 'hussain.maimani99@gmail.com', 'art course', 'fkbsfnllf'),
(16, 'Eric Jones', '2023-01-02 20:40:46', '2023-01-02 20:40:46', NULL, 'ericjonesmyemail@gmail.com', 'There they go…', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at thedatacademy.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=thedatacademy.com'),
(17, 'Mike Chandter', '2023-01-03 17:41:25', '2023-01-03 17:41:25', NULL, 'no-replyPlealge@gmail.com', 'Content Marketing to rank thedatacademy.com', 'Hi there \r\n \r\nI Just checked your thedatacademy.com ranks and saw that your site is trending down for some time. \r\n \r\nIf you are looking for a trend reversal, we have the right solution for you \r\n \r\nWe are offering affordable Content Marketing plans with humanly written SEO content \r\n \r\nFor more information, please check our offers \r\nhttps://www.digital-x-press.com/product/content-marketing/ \r\n \r\nThanks and regards \r\nMike Chandter'),
(18, 'Evan Roberts', '2023-01-04 18:40:16', '2023-01-04 18:40:16', NULL, 'evan@cashagents.online', 'May I ask you something?', 'Hello,\r\n\r\nIs the lack of working capital holding your business back? \r\n\r\nDon’t let things like bad credit or a short time in business keep you from getting the funds you need.\r\n\r\nIf you deposit more than 10k per month you’re already qualified!\r\n\r\nExpress Capital will offer you up to two times your monthly deposits without any collateral or personal guarantees. \r\n\r\nGet pre-qualified in less than 30 seconds without a credit check or submitting a single document.\r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.expresscapitalcorp.com \r\n\r\n\r\n\r\nWarm Regards,\r\n\r\nEvan Roberts\r\nExpress Capital\r\nwww.expresscapitalcorp.com\r\n\r\n \r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.expresscapitalcorp.com/unsubscribe \r\n\r\nor write to:\r\n\r\nExpress Capital\r\n9169 W State St #3242\r\nGarden City, ID 83714'),
(19, 'Mike Cramer', '2023-01-04 22:27:22', '2023-01-04 22:27:22', NULL, 'no-replyPlealge@gmail.com', 'Increase the DR of your thedatacademy.com in ahrefs', 'Hi there \r\n \r\nJust checked your thedatacademy.com in ahrefs and saw that you could use an authority boost. \r\n \r\nWith our service you will get a guaranteed ahrefs score within just 3 months time. This will increase the organic visibility and strengthen your website authority, thus getting it stronger against G updates as well. \r\n \r\nFor more information, please check our offers \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Semrush DA is now possible \r\nhttps://www.monkeydigital.co/semrush-da/ \r\n \r\nThanks and regards \r\nMike Cramer\r\n \r\n \r\n \r\nPS: For a limited time, we`ll add ahrefs UR50+ for free.'),
(20, 'Alejandro Daugherty', '2023-01-07 11:53:54', '2023-01-07 11:53:54', NULL, 'alejandro.daugherty@gmail.com', 'Hi Build your content on your website.', 'Build your articles on your website.\r\n\r\nWhat you will get:\r\n\r\nA profitable site: Write at lightning speed with Artificial Intelligence.\r\n\r\nQuick to learn: Easy to use.\r\n\r\nTake advantage of the free trial\r\n\r\nIt\'s easy, just sign up here:\r\n\r\nhttps://www.jasper.ai/free-trial?fpr=yaelle96\r\n\r\nSee you on the other side'),
(21, 'IsabellaStah', '2023-01-09 02:01:40', '2023-01-09 02:01:40', NULL, 'isabellaStah@mondmema.tk', 'Gіrl\'ѕ сouplе. Ԝe wаnt to mееt а mаn!...', 'Ηello!\r\nΙ apоlоgizе for the overlу spесifiс mеѕsаgе.\r\nMy girlfriend and I lоvе eaсh other. Αnd we are аll grеаt.\r\nBut... wе nеed a mаn.\r\nWе arе 26 years оld, frоm Rоmаniа, wе аlsо knоw englіѕh.\r\nԜe nеvеr gеt borеd! And nоt only іn tаlk...\r\nМy nаme іs Iѕаbellа, my рrofile іѕ here: http://ziestulat.tk/item-45246/'),
(22, 'Zlatina', '2023-01-09 13:30:22', '2023-01-09 13:30:22', NULL, 'tinamarketing1@yahoo.com', 'Social Media Account Management For Your Brand', 'Hello, \r\nI came across your website and I fell in love with your brand! My name is Zlatina and I am blogger & social media expert based in Miami. I noticed that your brand has the potential to attract much more engagement and new customers through social media platforms. \r\nThanks to the effective strategy I have developed, I have helped more than 150 brands to increase their sales, followers, and brand awareness. I would love to manage your social media accounts and grow your presence on the platforms, if interested. \r\nThe packages I currently offer are: \r\n1) Instagram account management (25 posts; 25 stories) – $600 per month. \r\n2) Management of 3 social media accounts (Pinterest, Instagram, Facebook, Tiktok or Twitter - 25 posts on each account) - $950 per month. \r\nIf you are interested, please email me at laelegantiacollab@hotmail.com, and I will send you my media kit, where you can find a ‘before’ and ‘after’ of accounts I manage and the results you can expect from the service. \r\nBest wishes, \r\nZlatina'),
(23, 'Hussain Mohamed AlMaimani', '2023-01-10 08:43:49', '2023-01-10 08:43:49', NULL, 'hussain.maimani99@gmail.com', 'art course', 'i want to know more about art course what are the deliverables'),
(24, 'Mike Abramson', '2023-01-10 11:39:39', '2023-01-10 11:39:39', NULL, 'no-replyPlealge@gmail.com', 'NEW: Semrush Backlinks', 'Hi there \r\n \r\nThis is Mike Abramson\r\n \r\nLet me introduce to you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your thedatacademy.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\n \r\nRegards \r\n \r\nMike Abramson\r\n \r\nmike@strictlydigital.net'),
(25, 'Waheed Mohammed', '2023-01-11 14:44:13', '2023-01-11 14:44:13', NULL, 'ujn2esbgakah@opayq.com', 'Financing Opportunity', 'Hello, \r\n \r\nWe provide funding through our venture capital company to both start-up and existing companies either looking for funding for expansion or to accelerate growth in their company. We have a structured joint venture investment plan in which we are interested in an annual return on investment not more than 10% ROI. We are also currently structuring a convertible debt and loan financing of 3% interest repayable annually with no early repayment penalties. If you have a business plan or executive summary, I can review to \r\nunderstand a much better idea of your business and what you are looking to do, this will assist in determining the best possible investment structure we can pursue and discuss more extensively. If you are interested in any of the above, kindly respond to us via this email. waheed@almarisinvestmentgroup.com \r\nWaheedalgore22@gmail.com \r\nSincerely \r\nEngineer Waheed Mohammed \r\nChief Financial Officer \r\nAl-Maris Investment Group'),
(26, 'Christina Henderson', '2023-01-11 17:08:30', '2023-01-11 17:08:30', NULL, 'christinahendersones6@gmail.com', 'Instagram Promotion: 400-1200 new followers each month', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 400-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you\'d like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nChristina'),
(27, 'Allen Young', '2023-01-11 18:27:14', '2023-01-11 18:27:14', NULL, 'allen@loansrapid.online', 'Something to consider', 'Hello,\r\n\r\nI hope you are doing well, and business is Great!\r\n\r\nAs a business owner you already know how hard it can be to get your hands on some working capital!\r\n\r\nHowever, all that has changed! \r\n\r\nExpress Capital is a Direct Lender who would like to offer you a working capital loan up to 500k.\r\n \r\nGet pre-qualified in less than 30 seconds without having your credit pulled or submitting a single document. \r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.expresscapitalcorp.com \r\n\r\n\r\nWarm Regards,\r\n\r\nAllen Young\r\nExpress Capital\r\nwww.expresscapitalcorp.com \r\n\r\n\r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.expresscapitalcorp.com/unsubscribe \r\n\r\nor write to:\r\n\r\nExpress Capital\r\n9169 W State St #3242\r\nGarden City, ID 83714'),
(28, 'Aliyah Smith', '2023-01-12 09:29:58', '2023-01-12 09:29:58', NULL, 'jessicasmith@mygsuite.co', 'Question', 'Hi,\r\n\r\nMy name is Jessica. Sorry to reach out like this on your contact form.\r\n\r\nI help US and Canadian businesses receive press about their business.\r\n\r\nPositive press builds trust and connection with your audience. If you’re not building press you’re leaving money on the table.\r\n\r\nWe can have your business on Fox, NBC, Digital Journal, Yahoo, all the way up to Bloomberg within the week.\r\n\r\nThis press can be shared on social media and also used to increase your organic rankings.\r\n\r\nIs this of interest to you?\r\n\r\nIf so, I will send over a completely free of charge press release written about your business, and if you like it, we will distribute it for a fee.\r\n\r\nNo catch.\r\n\r\nAll you have to do is respond with YES.\r\n\r\nI hope you’re having an excellent day,\r\nJessica Smith\r\n\r\nIf I bugged you and you’d prefer to never hear from me again, please just let me know.\r\n\r\n602 West Hastings Street #814 Vancouver, BC V6B 1P2 Canada'),
(29, 'Raymond', '2023-01-12 10:08:07', '2023-01-12 10:08:07', NULL, 's1.thecctvpro@gmail.com', 'Underwater cameras', 'Dear Sir/mdm, \r\nHope you are doing well \r\nWe supply 4G solar cameras, explosion-proof cameras and underwater cameras for commercial use. Use of applications: ships, construction sites, oil rigs and nuclear reactor etc.. \r\nDo contact us for any enquiries and visit our website below \r\nWe also have nitrile gloves if you need some \r\nWhatsapp: +65 87695655 \r\nEmail: sales@thecctvpro.com \r\nW: https://www.thecctvpro.com/ \r\nIf you wish to unsubscribe, do reply to our email. \r\nregards, \r\nRaymond'),
(30, 'Joseph Joseph', '2023-01-14 20:37:24', '2023-01-14 20:37:24', NULL, 'free@freeaiwriting.com', 'Are you still in business?', 'Dear, \r\n\r\nI came across thedatacademy.com and wanted to share this great free AI tool. \r\n\r\nWith this tool you write blogs and ads 10 times faster and with much higher conversion rates. \r\nYou can use the tool for free via freeaiwriting.com \r\n\r\nThe AI can write blogs, advertising copy, youtube videos and even entire books. \r\nWe would love to hear your feedback. \r\n\r\n\r\nKind regards, \r\nJoseph\r\nFreeaiwriting.com'),
(31, 'Eric Jones', '2023-01-15 03:42:59', '2023-01-15 03:42:59', NULL, 'ericjonesmyemail@gmail.com', 'Cool website!', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - thedatacademy.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across thedatacademy.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=thedatacademy.com'),
(32, 'Thomas Murphy', '2023-01-16 17:29:46', '2023-01-16 17:29:46', NULL, 'thomas@fundingfast.online', 'Is now a good time?', 'Hello,\r\n\r\nI hope life is treating you kind and business is AWESOME!\r\n\r\nJust wondering if you would consider a Working Capital Loan for your business\r\nif the price and terms were acceptable to you?\r\n\r\nExpress Capital is a Direct Lender specializing in working capital loans up to 500k. \r\n\r\nWe don’t require collateral and our approval process is fully automated. \r\n\r\nReceive your decision is less than 30 seconds without having your credit pulled or submitting a single document. \r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.expresscapitalcorp.com \r\n\r\n\r\n\r\nWarm Regards,\r\n\r\nThomas Murphy\r\nExpress Capital\r\nwww.expresscapitalcorp.com \r\n\r\n\r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.expresscapitalcorp.com/unsubscribe \r\n\r\nor write to:\r\n\r\nExpress Capital\r\n9169 W State St #3242\r\nGarden City, ID 83714'),
(33, 'Mark Mcneil', '2023-01-17 03:37:44', '2023-01-17 03:37:44', NULL, 'bestseotools7@gmail.com', 'almost illegal', 'Did you see this? It feels illegal\r\n\r\nhttps://youtube.com/shorts/b7X0jvWJICA?feature=share\r\n\r\nMark\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n9169 W State St #1614   Garden City, ID 83714\r\n\r\nAvoid Marketing Messages Here:\r\nhttps://voicesearch1.skin/?info=thedatacademy.com'),
(34, 'Mike Gilson', '2023-01-17 22:54:50', '2023-01-17 22:54:50', NULL, 'no-replyPlealge@gmail.com', 'Improve local visibility for thedatacademy.com', 'If you have a local business and want to rank it on google maps in a specific area then this service is for you. \r\n \r\nGoogle Map Stacking is one of the best ways to rank your GMB in a specific mile radius. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/product/google-maps-pointers/ \r\n \r\nThanks and Regards \r\nMike Gilson\r\n \r\n \r\nPS: Want an all in one Local Plan that includes everything? \r\nhttps://www.speed-seo.net/product/local-seo-package/'),
(35, 'Katy Trilly', '2023-01-18 14:43:32', '2023-01-18 14:43:32', NULL, 'katytrilly9@gmail.com', 'Explainer Videos for thedatacademy.com', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site thedatacademy.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=bWz-ELfJVEI\r\nhttps://www.youtube.com/watch?v=Y46aNG-Y3rM\r\nhttps://www.youtube.com/watch?v=hJCFX1AjHKk\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $259\r\n1-2 minutes = $379\r\n2-3 minutes = $489\r\n\r\n*All prices above are in USD and include a full script, voice-over and video.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nKaty'),
(36, 'Bernardo Palos', '2023-01-19 05:51:25', '2023-01-19 05:51:25', NULL, 'epp.roseanna@hotmail.com', 'Have you heard about the new Ai technologies that are coming out?', 'It is said by yahoo finance that by 2030 90 percent of content on the web will be created by Ai, the other 10 percent will agmented content with Ai\r\nthere is a new Ai tool called Jasper that helps create content for you with a click of a button for your blog or business\r\n\r\nClick the Link here to start your free trial -> https://tinyurl.com/Jasper-Free-Trial-Ai-Writer\r\n\r\nFrom\r\nBernardo Palos\r\n\r\nIf you dont want to hear about jasper anymore from me fill out this form correctly: https://tinyurl.com/Jasper-Contact-Removal'),
(37, 'Evan Roberts', '2023-01-19 17:28:19', '2023-01-19 17:28:19', NULL, 'evan@cashagents.online', 'May I ask you something?', 'Hello,\r\n\r\nIs the lack of working capital holding your business back? \r\n\r\nDon’t let things like bad credit or a short time in business keep you from getting the funds you need.\r\n\r\nIf you deposit more than 10k per month you’re already qualified!\r\n\r\nExpress Capital will offer you up to two times your monthly deposits without any collateral or personal guarantees. \r\n\r\nGet pre-qualified in less than 30 seconds without a credit check or submitting a single document.\r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.expresscapitalcorp.com \r\n\r\n\r\n\r\nWarm Regards,\r\n\r\nEvan Roberts\r\nExpress Capital\r\nwww.expresscapitalcorp.com\r\n\r\n \r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.expresscapitalcorp.com/unsubscribe \r\n\r\nor write to:\r\n\r\nExpress Capital\r\n9169 W State St #3242\r\nGarden City, ID 83714');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `rate` varchar(900) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `trainer_id` int DEFAULT NULL,
  `home` int NOT NULL DEFAULT '0',
  `learn` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `requirements` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` int DEFAULT NULL,
  `id_trainer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `slug`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`, `rate`, `category_id`, `price`, `trainer_id`, `home`, `learn`, `requirements`, `type`, `id_trainer`) VALUES
(5, 'Strategic planning and the role of information', 'strategic-planning-and-the-role-of-information', '<p>The course is vaey good jop fallThe course is vaey good jop fall</p>', 'courses/July2022/FGUyQOvv3KweOsxZni3y.jpeg', '2022-04-20 17:27:22', '2023-08-08 12:10:52', '2023-08-08 12:10:52', '5', 11, 0, 3, 0, '', '', 2, NULL),
(6, 'Math genius', 'Math-genius', '<p>1023</p>', 'courses/April2023/EK8Nb7cQb7tw1YtgLmum.jpg', '2022-04-21 01:59:28', '2023-08-08 12:10:52', '2023-08-08 12:10:52', '', 11, 50, NULL, 0, '<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\"><br><span class=\"Y2IQFc\" lang=\"en\"><span class=\"Y2IQFc\" lang=\"en\">Target group: For school students from grade 1 to 12 </span></span></p>\n<p class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\"><span class=\"Y2IQFc\" lang=\"en\">About the lesson: An integrated program that qualifies our children to link mathematics with their daily lives, free themselves from their fears about mathematics, and develop higher abilities.</span></span></p>\n<p class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\"><span class=\"Y2IQFc\" lang=\"en\">Goals: Children acquire future skills such as self-confidence, analytical thinking skills, and skills to deal with technology </span></span></p>\n</div>\n<p>&nbsp;</p>', '<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\"><span class=\"Y2IQFc\" lang=\"en\">\n\nCourse Requirments:\n\n</span>\n\nThere is no Requirments\n</span></pre>\n</div>', 2, NULL),
(29, 'new course', 'new-course', '<p style=\"text-align: left;\"><strong><em>New</em> </strong></p>', 'courses/April2023/wwshErpZBBFdb1tyi7lE.JPG', '2022-08-21 10:49:20', '2023-08-08 12:10:52', '2023-08-08 12:10:52', '4', 11, 0, 2, 0, '<p>new learning</p>', '<p>reqs</p>', 1, NULL),
(30, 'Introduction to SPSS', 'introduction-to-spss', '<p>SPSS</p>', NULL, '2022-09-18 04:34:24', '2023-08-08 12:10:52', '2023-08-08 12:10:52', '3', 11, 20, 4, 0, '', '', 0, NULL),
(32, 'Power BI', 'power-bi', '<p>klk</p>', NULL, '2022-10-05 10:29:47', '2023-08-08 12:10:52', '2023-08-08 12:10:52', '2', 11, 20, NULL, 0, '', '', 2, NULL),
(35, 'Flutter', 'flutter', '<p>flutter course</p>', 'courses/April2023/eRYq5p820AKy9UkypGAU.png', '2023-04-03 08:14:50', '2023-08-08 12:10:52', '2023-08-08 12:10:52', NULL, 16, 0, 2, 0, '<p>the flutter course</p>', '<p>there is no requirements</p>', 2, NULL),
(65, 'mohamad303030', 'mohamad303030', '<p>hhgfhg</p> ', 'storage/courses/mohamad303030/edit.blade.php - idea - Visual Studio Code 02_06_2023 11_09_21 ص.png', '2023-08-08 12:04:04', '2023-08-08 12:17:43', NULL, NULL, 15, 10000, NULL, 0, '<p>mjghf</p>', '<p>hfhfh</p>', 1, 10),
(66, 'ayman', 'ayman', '<p>56654654</p>', 'storage/courses/ayman/edit.blade.php - idea - Visual Studio Code 02_06_2023 11_09_21 ص.png', '2023-08-08 13:06:34', '2023-08-08 13:06:34', NULL, NULL, 11, 56465, NULL, 0, '<p>hjhg</p>', '<p>hghfhgf</p>', 1, 10),
(67, 'laravel', 'laravel', '<p>12315</p>', 'storage/courses/laravel/aaa.py - Visual Studio Code 11_06_2023 11_21_14 م.png', '2023-08-08 13:07:08', '2023-08-08 13:07:08', NULL, NULL, 15, 2000, NULL, 0, '<p>hgjhghj</p>', '<p>hfhgf</p>', 1, 10),
(68, 'php', 'php', '<p>fghjkl</p>', 'storage/courses/php/loginscreen – loginScreen.dart [loginscreen] 17_06_2023 11_37_11 م.png', '2023-08-08 13:09:49', '2023-08-08 13:09:49', NULL, NULL, 15, 10000, NULL, 0, '<p>ds,hjd</p>', '<p>jhjj</p>', 2, 10),
(69, 'javascript', 'javascript', '<p>mkhijh</p>', 'storage/courses/javascript/test.css - New folder - Visual Studio Code 30_07_2023 11_40_56 م.png', '2023-08-08 13:18:47', '2023-08-08 13:18:47', NULL, NULL, 16, 500, NULL, 0, '<p>545465</p>', '<p>ugjgjgjh</p>', 1, 11),
(70, '2021', '2021', '<p>ghfggf</p>', NULL, '2023-08-17 09:35:44', '2023-08-17 09:49:55', '2023-08-17 09:49:55', NULL, 11, 0, 10, 0, '<p>ljlkjlj</p>', '<p>jkkjkjkh</p>', 0, NULL),
(71, 'iiiii', 'iiiii', '<p>iiii</p>', 'courses/August2023/t73DhAq3mi2neKJTMghY.jpeg', '2023-08-17 09:51:05', '2023-08-17 13:19:23', '2023-08-17 13:19:23', NULL, 15, 0, 10, 0, '<p>hjjgjjh</p>', '<p>jgjhgjg</p>', 1, NULL),
(72, 'oooo', 'oooo', '<p>oooo</p>', 'courses/August2023/8GtL7hQ3cni537vjRRcj.jpeg', '2023-08-17 11:55:45', '2023-08-17 13:19:19', '2023-08-17 13:19:19', NULL, 15, 0, 10, 0, '<p>gfdg</p>', '<p>kjhj</p>', 1, NULL),
(73, 'yasser', 'yasser', '<p>kjhkjh</p>', 'storage/courses/yasser/photo-1575936123452-b67c3203c357.jpeg', '2023-08-17 13:17:53', '2023-08-23 13:36:20', '2023-08-23 13:36:20', NULL, 15, 700, NULL, 0, '<p>654</p>', '<p>64654</p>', 1, 12),
(74, 'mohamad', 'mohamad', '<p>bgfh</p>', 'courses/August2023/O39tSS99hOSlB1m9fJyo.jpeg', '2023-08-18 08:45:58', '2023-08-18 08:45:58', NULL, '5', 11, 700, 10, 0, '<p>lkkjhkj</p>', '<p>kjjgjgjhg</p>', 0, NULL),
(75, 'mysql', 'mysql', '<p>mysql</p>', 'storage/courses/mysql/Screenshot from 2023-08-19 16-39-27.png', '2023-08-23 13:34:16', '2023-08-23 13:34:16', NULL, NULL, 15, 1000, NULL, 0, '<p>mysql</p>', '<p>mysql</p>', 1, 12),
(76, 'ayman', 'ayman', '<p>ayman</p>', 'storage/courses/ayman/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 13:37:24', '2023-08-23 13:37:24', NULL, NULL, 15, 1000, NULL, 0, '<p>ayman</p>', '<p>ayman</p>', 1, 12),
(77, '020', '020', '<p>020</p>', 'storage/courses/020/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 13:44:32', '2023-08-23 13:44:32', NULL, NULL, 11, 20, NULL, 0, '<p>020</p>', '<p>20</p>', 1, 12),
(78, 'mohamad20', 'mohamad20', '<p>mohamad20</p>', 'storage/courses/mohamad20/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 13:49:29', '2023-08-23 13:49:29', NULL, NULL, 11, 2000, NULL, 0, '<p>mohamad20</p>', '<p>mohamad20</p>', 1, 12),
(79, '98797', '98797', '<p>897</p>', 'storage/courses/98797/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 13:52:11', '2023-08-23 13:52:11', NULL, NULL, 11, 1000, NULL, 0, '<p>5464564</p>', '<p>65465465</p>', 1, 12),
(80, '98797', '98797', '<p>897</p>', 'storage/courses/98797/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 13:52:30', '2023-08-23 13:52:30', NULL, NULL, 11, 1000, NULL, 0, '<p>5464564</p>', '<p>65465465</p>', 1, 12),
(81, '6546+4', '65464', '<p>646456</p>', 'storage/courses/6546+4/Screenshot from 2023-08-19 16-38-54.png', '2023-08-23 13:53:54', '2023-08-23 13:53:54', NULL, NULL, 11, 31, NULL, 0, '<p>646</p>', '<p>465</p>', 1, 12),
(82, 'mjhg', 'mjhg', '<p>hhfh</p>', 'storage/courses/mjhg/Screenshot from 2023-08-19 16-38-24.png', '2023-08-23 13:55:32', '2023-08-23 13:55:32', NULL, NULL, 11, 89451, NULL, 0, '<p>jg</p>', '<p>hgff</p>', 1, 12),
(83, '654654', '654654', '<p>654654</p>', 'storage/courses/654654/Screenshot from 2023-08-19 16-18-38.png', '2023-08-23 13:56:10', '2023-08-23 13:56:10', NULL, NULL, 11, 100, NULL, 0, '<p>kjh</p>', '<p>lkhjk</p>', 1, 12),
(84, 'aymanlkjjh', 'aymanlkjjh', '<p>hjhfh</p>', 'storage/courses/aymanlkjjh/Screenshot from 2023-08-19 16-38-24.png', '2023-08-23 13:59:44', '2023-08-23 13:59:44', NULL, NULL, 11, 894654, NULL, 0, '<p>654</p>', '<p>54</p>', 1, 12),
(85, '64654', '64654', '<p>65464</p>', 'storage/courses/64654/Screenshot from 2023-08-19 16-38-54.png', '2023-08-23 14:00:15', '2023-08-23 14:00:15', NULL, NULL, 11, 56564, NULL, 0, '<p>kjjh</p>', '<p>ghgfh</p>', 1, 12),
(86, 'uuuu', 'uuuu', '<p>uuu</p>', 'storage/courses/uuuu/Screenshot from 2023-08-19 16-39-04.png', NULL, NULL, NULL, NULL, 11, 154, NULL, 0, '<p>kjg</p>', '<p>fhgf</p>', 1, 12),
(87, 'ayman978', 'ayman978', '<p>879798</p>', 'storage/courses/ayman978/Screenshot from 2023-08-19 16-38-54.png', NULL, NULL, NULL, NULL, 11, 1000, NULL, 0, '<p>65445</p>', '<p>6564</p>', 1, 12),
(88, 'khjdsjhfs', 'khjdsjhfs', '<p>jgdhfgjs</p>', 'storage/courses/khjdsjhfs/Screenshot from 2023-08-19 16-38-24.png', '2023-08-23 14:03:50', '2023-08-23 14:03:50', NULL, NULL, 11, 1000, NULL, 0, '<p>546</p>', '<p>4564564</p>', 1, 12),
(89, 'ertfyh', 'ertfyh', '<p>rdtfg</p>', 'storage/courses/ertfyh/Screenshot from 2023-08-19 16-38-54.png', '2023-08-23 14:06:33', '2023-08-23 14:06:33', NULL, NULL, 11, 1000, NULL, 0, '<p>65465</p>', '<p>6465</p>', 1, 12),
(90, 'jufgdshgyfy', 'jufgdshgyfy', '<p>fyfyftfd</p>', 'storage/courses/jufgdshgyfy/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 14:07:21', '2023-08-23 14:07:21', NULL, NULL, 11, 1000, NULL, 0, '<p>gyuyf</p>', '<p>tdtrdtr</p>', 1, 12),
(91, 'jufgdshgyfy', 'jufgdshgyfy', '<p>fyfyftfd</p>', 'storage/courses/jufgdshgyfy/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 14:08:38', '2023-08-23 14:08:38', NULL, NULL, 11, 1000, NULL, 0, '<p>gyuyf</p>', '<p>tdtrdtr</p>', 1, 12),
(92, 'jufgdshgyfy', 'jufgdshgyfy', '<p>fyfyftfd</p>', 'storage/courses/jufgdshgyfy/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 14:08:40', '2023-08-23 14:08:40', NULL, NULL, 11, 1000, NULL, 0, '<p>gyuyf</p>', '<p>tdtrdtr</p>', 1, 12),
(93, 'jufgdshgyfy', 'jufgdshgyfy', '<p>fyfyftfd</p>', 'storage/courses/jufgdshgyfy/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 14:08:51', '2023-08-23 14:08:51', NULL, NULL, 11, 1000, NULL, 0, '<p>gyuyf</p>', '<p>tdtrdtr</p>', 1, 12),
(94, 'jufgdshgyfy', 'jufgdshgyfy', '<p>fyfyftfd</p>', 'storage/courses/jufgdshgyfy/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 14:08:52', '2023-08-23 14:08:52', NULL, NULL, 11, 1000, NULL, 0, '<p>gyuyf</p>', '<p>tdtrdtr</p>', 1, 12),
(95, 'jufgdshgyfy', 'jufgdshgyfy', '<p>fyfyftfd</p>', 'storage/courses/jufgdshgyfy/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 14:09:11', '2023-08-23 14:09:11', NULL, NULL, 11, 1000, NULL, 0, '<p>gyuyf</p>', '<p>tdtrdtr</p>', 1, 12),
(96, 'jufgdshgyfy', 'jufgdshgyfy', '<p>fyfyftfd</p>', 'storage/courses/jufgdshgyfy/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 14:09:21', '2023-08-23 14:09:21', NULL, NULL, 11, 1000, NULL, 0, '<p>gyuyf</p>', '<p>tdtrdtr</p>', 1, 12),
(97, 'jufgdshgyfy', 'jufgdshgyfy', '<p>fyfyftfd</p>', 'storage/courses/jufgdshgyfy/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 14:09:47', '2023-08-23 14:09:47', NULL, NULL, 11, 1000, NULL, 0, '<p>gyuyf</p>', '<p>tdtrdtr</p>', 1, 12),
(98, 'jufgdshgyfy', 'jufgdshgyfy', '<p>fyfyftfd</p>', 'storage/courses/jufgdshgyfy/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 14:10:36', '2023-08-23 14:10:36', NULL, NULL, 11, 1000, NULL, 0, '<p>gyuyf</p>', '<p>tdtrdtr</p>', 1, 12),
(99, 'jufgdshgyfy', 'jufgdshgyfy', '<p>fyfyftfd</p>', 'storage/courses/jufgdshgyfy/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 14:10:53', '2023-08-23 14:10:53', NULL, NULL, 11, 1000, NULL, 0, '<p>gyuyf</p>', '<p>tdtrdtr</p>', 1, 12),
(100, 'jufgdshgyfy', 'jufgdshgyfy', '<p>fyfyftfd</p>', 'storage/courses/jufgdshgyfy/Screenshot from 2023-08-19 16-39-04.png', '2023-08-23 14:11:29', '2023-08-23 14:11:29', NULL, NULL, 11, 1000, NULL, 0, '<p>gyuyf</p>', '<p>tdtrdtr</p>', 1, 12),
(101, '4554', '4554', '<p>5\r\n45\r\n45</p>', 'storage/courses/4554/Screenshot from 2023-08-19 16-38-24.png', '2023-08-23 14:12:03', '2023-08-23 14:12:03', NULL, NULL, 11, 1000, NULL, 0, '<p>56464</p>', '<p>5654</p>', 1, 12),
(102, 'ay,abjhj', 'ayabjhj', '<p>hghfyfg</p>', 'storage/courses/ay,abjhj/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:12:52', '2023-08-23 14:12:52', NULL, NULL, 11, 1000, NULL, 0, '<p>fhhgf</p>', '<p>hgfhgf</p>', 1, 12),
(103, '6894', '6894', '<p>64654</p>', 'storage/courses/6894/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:13:17', '2023-08-23 14:13:17', NULL, NULL, 11, 1000, NULL, 0, '<p>354654</p>', '<p>65465</p>', 1, 12),
(104, '6894', '6894', '<p>64654</p>', 'storage/courses/6894/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:13:19', '2023-08-23 14:13:19', NULL, NULL, 11, 1000, NULL, 0, '<p>354654</p>', '<p>65465</p>', 1, 12),
(105, '6894', '6894', '<p>64654</p>', 'storage/courses/6894/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:13:36', '2023-08-23 14:13:36', NULL, NULL, 11, 1000, NULL, 0, '<p>354654</p>', '<p>65465</p>', 1, 12),
(106, '6894', '6894', '<p>64654</p>', 'storage/courses/6894/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:13:45', '2023-08-23 14:13:45', NULL, NULL, 11, 1000, NULL, 0, '<p>354654</p>', '<p>65465</p>', 1, 12),
(107, '6894', '6894', '<p>64654</p>', 'storage/courses/6894/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:14:00', '2023-08-23 14:14:00', NULL, NULL, 11, 1000, NULL, 0, '<p>354654</p>', '<p>65465</p>', 1, 12),
(108, '6894', '6894', '<p>64654</p>', 'storage/courses/6894/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:14:02', '2023-08-23 14:14:02', NULL, NULL, 11, 1000, NULL, 0, '<p>354654</p>', '<p>65465</p>', 1, 12),
(109, '6894', '6894', '<p>64654</p>', 'storage/courses/6894/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:16:18', '2023-08-23 14:16:18', NULL, NULL, 11, 1000, NULL, 0, '<p>354654</p>', '<p>65465</p>', 1, 12),
(110, 'jhfhgf', 'jhfhgf', '<p>hfhgfhgfh</p>', 'storage/courses/jhfhgf/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:16:52', '2023-08-23 14:16:52', NULL, NULL, 11, 56646, NULL, 0, '<p>hgfhf</p>', '<p>mjg</p>', 2, 12),
(111, 'khkj', 'khkj', '<p>hjgjhg</p>', 'storage/courses/khkj/Screenshot from 2023-08-19 16-18-38.png', '2023-08-23 14:17:54', '2023-08-23 14:17:54', NULL, NULL, 11, 5546, NULL, 0, '<p>654654</p>', '<p>6564</p>', 1, 12),
(112, '5465', '5465', '<p>465456456</p>', 'storage/courses/5465/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:18:27', '2023-08-23 14:18:27', NULL, NULL, 11, 1000, NULL, 0, '<p>kjgjh</p>', '<p>hhgfg</p>', 1, 12),
(113, 'khdfjkhjk', 'khdfjkhjk', '<p>hkjjh</p>', 'storage/courses/khdfjkhjk/Screenshot from 2023-08-19 16-38-46.png', NULL, NULL, NULL, NULL, 11, 65465, NULL, 0, '<p>65465</p>', '<p>4546654</p>', 1, 12),
(114, 'jyyujj', 'jyyujj', '<p>gjhjhgjh</p>', 'storage/courses/jyyujj/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:23:10', '2023-08-23 14:23:10', NULL, NULL, 11, 1000, NULL, 0, '<p>jhjghg</p>', '<p>5464564</p>', 1, 12),
(115, 'jyyujj', 'jyyujj', '<p>gjhjhgjh</p>', 'storage/courses/jyyujj/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:24:42', '2023-08-23 14:24:42', NULL, NULL, 11, 1000, NULL, 0, '<p>jhjghg</p>', '<p>5464564</p>', 1, 12),
(116, 'jyyujj', 'jyyujj', '<p>gjhjhgjh</p>', 'storage/courses/jyyujj/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:25:02', '2023-08-23 14:25:02', NULL, NULL, 11, 1000, NULL, 0, '<p>jhjghg</p>', '<p>5464564</p>', 1, 12),
(117, 'jyyujj', 'jyyujj', '<p>gjhjhgjh</p>', 'storage/courses/jyyujj/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:25:54', '2023-08-23 14:25:54', NULL, NULL, 11, 1000, NULL, 0, '<p>jhjghg</p>', '<p>5464564</p>', 1, 12),
(118, 'jyyujj', 'jyyujj', '<p>gjhjhgjh</p>', 'storage/courses/jyyujj/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:29:26', '2023-08-23 14:29:26', NULL, NULL, 11, 1000, NULL, 0, '<p>jhjghg</p>', '<p>5464564</p>', 1, 12),
(119, 'jyyujj', 'jyyujj', '<p>gjhjhgjh</p>', 'storage/courses/jyyujj/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:30:07', '2023-08-23 14:30:07', NULL, NULL, 11, 1000, NULL, 0, '<p>jhjghg</p>', '<p>5464564</p>', 1, 12),
(120, 'jyyujj', 'jyyujj', '<p>gjhjhgjh</p>', 'storage/courses/jyyujj/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:30:32', '2023-08-23 14:30:32', NULL, NULL, 11, 1000, NULL, 0, '<p>jhjghg</p>', '<p>5464564</p>', 1, 12),
(121, 'jyyujj', 'jyyujj', '<p>gjhjhgjh</p>', 'storage/courses/jyyujj/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:31:20', '2023-08-23 14:31:20', NULL, NULL, 11, 1000, NULL, 0, '<p>jhjghg</p>', '<p>5464564</p>', 1, 12),
(122, 'jyyujj', 'jyyujj', '<p>gjhjhgjh</p>', 'storage/courses/jyyujj/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:36:06', '2023-08-23 14:36:06', NULL, NULL, 11, 1000, NULL, 0, '<p>jhjghg</p>', '<p>5464564</p>', 1, 12),
(123, 'jyyujj', 'jyyujj', '<p>gjhjhgjh</p>', 'storage/courses/jyyujj/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:43:05', '2023-08-23 14:43:05', NULL, NULL, 11, 1000, NULL, 0, '<p>jhjghg</p>', '<p>5464564</p>', 1, 12),
(124, 'jkkjhjk', 'jkkjhjk', '<p>jgjhgjh</p>', 'storage/courses/jkkjhjk/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:44:27', '2023-08-23 14:44:27', NULL, NULL, 11, 700, NULL, 0, '<p>564654</p>', '<p>65456465</p>', 1, 12),
(125, 'jkkjhjk', 'jkkjhjk', '<p>jgjhgjh</p>', 'storage/courses/jkkjhjk/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:45:43', '2023-08-23 14:45:43', NULL, NULL, 11, 700, NULL, 0, '<p>564654</p>', '<p>65456465</p>', 1, 12),
(126, 'jkkjhjk', 'jkkjhjk', '<p>jgjhgjh</p>', 'storage/courses/jkkjhjk/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:46:03', '2023-08-23 14:46:03', NULL, NULL, 11, 700, NULL, 0, '<p>564654</p>', '<p>65456465</p>', 1, 12),
(127, 'jkkjhjk', 'jkkjhjk', '<p>jgjhgjh</p>', 'storage/courses/jkkjhjk/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:46:25', '2023-08-23 14:46:25', NULL, NULL, 11, 700, NULL, 0, '<p>564654</p>', '<p>65456465</p>', 1, 12),
(128, 'jkkjhjk', 'jkkjhjk', '<p>jgjhgjh</p>', 'storage/courses/jkkjhjk/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:46:41', '2023-08-23 14:46:41', NULL, NULL, 11, 700, NULL, 0, '<p>564654</p>', '<p>65456465</p>', 1, 12),
(129, 'jkkjhjk', 'jkkjhjk', '<p>jgjhgjh</p>', 'storage/courses/jkkjhjk/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:47:23', '2023-08-23 14:47:23', NULL, NULL, 11, 700, NULL, 0, '<p>564654</p>', '<p>65456465</p>', 1, 12),
(130, 'jkkjhjk', 'jkkjhjk', '<p>jgjhgjh</p>', 'storage/courses/jkkjhjk/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:47:33', '2023-08-23 14:47:33', NULL, NULL, 11, 700, NULL, 0, '<p>564654</p>', '<p>65456465</p>', 1, 12),
(131, 'jkkjhjk', 'jkkjhjk', '<p>jgjhgjh</p>', 'storage/courses/jkkjhjk/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:47:35', '2023-08-23 14:47:35', NULL, NULL, 11, 700, NULL, 0, '<p>564654</p>', '<p>65456465</p>', 1, 12),
(132, 'jkkjhjk', 'jkkjhjk', '<p>jgjhgjh</p>', 'storage/courses/jkkjhjk/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:47:35', '2023-08-23 14:47:35', NULL, NULL, 11, 700, NULL, 0, '<p>564654</p>', '<p>65456465</p>', 1, 12),
(133, 'jkkjhjk', 'jkkjhjk', '<p>jgjhgjh</p>', 'storage/courses/jkkjhjk/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:47:50', '2023-08-23 14:47:50', NULL, NULL, 11, 700, NULL, 0, '<p>564654</p>', '<p>65456465</p>', 1, 12),
(134, 'jkkjhjk', 'jkkjhjk', '<p>jgjhgjh</p>', 'storage/courses/jkkjhjk/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:48:06', '2023-08-23 14:48:06', NULL, NULL, 11, 700, NULL, 0, '<p>564654</p>', '<p>65456465</p>', 1, 12),
(135, 'jkkjhjk', 'jkkjhjk', '<p>jgjhgjh</p>', 'storage/courses/jkkjhjk/Screenshot from 2023-08-19 16-38-46.png', '2023-08-23 14:49:03', '2023-08-23 14:49:03', NULL, NULL, 11, 700, NULL, 0, '<p>564654</p>', '<p>65456465</p>', 1, 12),
(136, 'aymanjjjj', 'aymanjjjj', '<p>aymanjjjj</p>', 'storage/courses/aymanjjjj/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 06:15:43', '2023-08-24 06:15:43', NULL, NULL, 11, 1000, NULL, 0, '<p>aymanjjjj</p>', '<p>aymanjjjj</p>', 1, 12),
(137, 'aymanjjjj', 'aymanjjjj', '<p>aymanjjjj</p>', 'storage/courses/aymanjjjj/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 06:16:39', '2023-08-24 06:16:39', NULL, NULL, 11, 1000, NULL, 0, '<p>aymanjjjj</p>', '<p>aymanjjjj</p>', 1, 12),
(138, 'aymanjjjj', 'aymanjjjj', '<p>aymanjjjj</p>', 'storage/courses/aymanjjjj/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 06:17:04', '2023-08-24 06:17:04', NULL, NULL, 11, 1000, NULL, 0, '<p>aymanjjjj</p>', '<p>aymanjjjj</p>', 1, 12),
(139, 'aymanjjjj', 'aymanjjjj', '<p>aymanjjjj</p>', 'storage/courses/aymanjjjj/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 06:18:08', '2023-08-24 06:18:08', NULL, NULL, 11, 1000, NULL, 0, '<p>aymanjjjj</p>', '<p>aymanjjjj</p>', 1, 12),
(140, 'hffhh', 'hffhh', '<p>fhgfhgf</p>', 'storage/courses/hffhh/Screenshot from 2023-08-19 16-38-46.png', '2023-08-24 06:18:45', '2023-08-24 06:18:45', NULL, NULL, 15, 65654, NULL, 0, '<p>jkjhg</p>', '<p>jggh</p>', 1, 12),
(141, 'ertyui', 'ertyui', '<p>dsdfjkl</p>', 'storage/courses/ertyui/Screenshot from 2023-08-19 16-38-46.png', '2023-08-24 06:19:56', '2023-08-24 06:19:56', NULL, NULL, 15, 1000, NULL, 0, '<p>mhgj</p>', '<p>hgjghj</p>', 1, 12),
(142, 'ajgjg', 'ajgjg', '<p>jhgjhgjhg</p>', 'storage/courses/ajgjg/Screenshot from 2023-08-19 16-38-46.png', '2023-08-24 06:21:54', '2023-08-24 06:21:54', NULL, NULL, 15, 1000, NULL, 0, '<p>mhg</p>', '<p>jhjg</p>', 1, 12),
(143, 'ajgjg', 'ajgjg', '<p>jhgjhgjhg</p>', 'storage/courses/ajgjg/Screenshot from 2023-08-19 16-38-46.png', '2023-08-24 06:24:43', '2023-08-24 06:24:43', NULL, NULL, 15, 1000, NULL, 0, '<p>mhg</p>', '<p>jhjg</p>', 1, 12),
(144, 'jhgj', 'jhgj', '<p>jgjhgjh</p>', 'storage/courses/jhgj/Screenshot from 2023-08-19 16-39-27.png', '2023-08-24 06:25:14', '2023-08-24 06:25:14', NULL, NULL, 15, 1000, NULL, 0, '<p>kjhj</p>', '<p>hhgjhg</p>', 1, 12),
(145, 'jhgujgjhg', 'jhgujgjhg', '<p>jhjgjg</p>', 'storage/courses/jhgujgjhg/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 06:25:35', '2023-08-24 06:25:35', NULL, NULL, 11, 1000, NULL, 0, '<p>hjgjg</p>', '<p>gjhgj</p>', 1, 12),
(146, 'jhgujgjhg', 'jhgujgjhg', '<p>jhjgjg</p>', 'storage/courses/jhgujgjhg/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 06:27:28', '2023-08-24 06:27:28', NULL, NULL, 11, 1000, NULL, 0, '<p>hjgjg</p>', '<p>gjhgj</p>', 1, 12),
(147, 'jhgujgjhg', 'jhgujgjhg', '<p>jhjgjg</p>', 'storage/courses/jhgujgjhg/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 06:28:00', '2023-08-24 06:28:00', NULL, NULL, 11, 1000, NULL, 0, '<p>hjgjg</p>', '<p>gjhgj</p>', 1, 12),
(148, 'jhgujgjhg', 'jhgujgjhg', '<p>jhjgjg</p>', 'storage/courses/jhgujgjhg/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 06:29:17', '2023-08-24 06:29:17', NULL, NULL, 11, 1000, NULL, 0, '<p>hjgjg</p>', '<p>gjhgj</p>', 1, 12),
(149, 'pohj', 'pohj', '<p>gjgjhg</p>', 'storage/courses/pohj/Screenshot from 2023-08-19 16-18-38.png', '2023-08-24 09:10:50', '2023-08-24 09:10:50', NULL, NULL, 11, 2534, NULL, 0, '<p>jhghfh</p>', '<p>fhfhfg</p>', 1, 12),
(150, 'jhjhfjf', 'jhjhfjf', '<p>hgfh</p>', 'storage/courses/jhjhfjf/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 09:11:18', '2023-08-24 09:11:18', NULL, NULL, 11, 1000, NULL, 0, '<p>fhhgf</p>', '<p>hgfhgf</p>', 1, 12),
(151, 'jhjhfjf', 'jhjhfjf', '<p>hgfh</p>', 'storage/courses/jhjhfjf/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 09:11:58', '2023-08-24 09:11:58', NULL, NULL, 11, 1000, NULL, 0, '<p>fhhgf</p>', '<p>hgfhgf</p>', 1, 12),
(152, 'jhjhfjf', 'jhjhfjf', '<p>hgfh</p>', 'storage/courses/jhjhfjf/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 09:18:27', '2023-08-24 09:18:27', NULL, NULL, 11, 1000, NULL, 0, '<p>fhhgf</p>', '<p>hgfhgf</p>', 1, 12),
(153, 'jhjhfjf', 'jhjhfjf', '<p>hgfh</p>', 'storage/courses/jhjhfjf/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 09:32:56', '2023-08-24 09:32:56', NULL, NULL, 11, 1000, NULL, 0, '<p>fhhgf</p>', '<p>hgfhgf</p>', 1, 12),
(154, 'PHP3', 'php3', '<p>hgfh</p>', 'storage/courses/PHP3/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 09:35:13', '2023-08-24 09:35:13', NULL, NULL, 11, 1000, NULL, 0, '<p>fhhgf</p>', '<p>hgfhgf</p>', 1, 12),
(155, 'PHP3', 'php3', '<p>hgfh</p>', 'storage/courses/PHP3/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 09:36:49', '2023-08-24 09:36:49', NULL, NULL, 11, 1000, NULL, 0, '<p>fhhgf</p>', '<p>hgfhgf</p>', 1, 12),
(156, 'PHP3', 'php3', '<p>hgfh</p>', 'storage/courses/PHP3/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 09:40:34', '2023-08-24 09:40:34', NULL, NULL, 11, 1000, NULL, 0, '<p>fhhgf</p>', '<p>hgfhgf</p>', 1, 12),
(157, 'PHP3', 'php3', '<p>hgfh</p>', 'storage/courses/PHP3/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 09:48:15', '2023-08-24 09:48:15', NULL, NULL, 11, 1000, NULL, 0, '<p>fhhgf</p>', '<p>hgfhgf</p>', 1, 12),
(158, 'PHP4', 'php4', '<p>hgfh</p>', 'storage/courses/PHP4/Screenshot from 2023-08-19 16-38-54.png', '2023-08-24 10:35:30', '2023-08-24 10:35:30', NULL, NULL, 11, 1000, NULL, 0, '<p>fhhgf</p>', '<p>hgfhgf</p>', 1, 12),
(159, 'PHP5', 'php5', '<p>hgfghfh</p>', 'storage/courses/PHP5/Screenshot from 2023-08-19 16-38-24.png', '2023-08-24 10:52:49', '2023-08-24 10:52:49', NULL, NULL, 11, 1000, NULL, 0, '<p>kjjh</p>', '<p>gjhgj</p>', 1, 12),
(160, 'php 16', 'php-16', '<p>kjhjhkjh</p>', 'storage/courses/php 16/Screenshot from 2023-08-19 16-38-24.png', '2023-08-24 11:33:15', '2023-08-24 11:33:15', NULL, NULL, 11, 1000, NULL, 0, '<p>lkjljk</p>', '<p>kjkj</p>', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `course_favourites`
--

CREATE TABLE `course_favourites` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_favourites`
--

INSERT INTO `course_favourites` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(10, 1, 70, '2023-08-17 09:46:59', '2023-08-17 09:46:59'),
(11, 1, 71, '2023-08-17 10:06:59', '2023-08-17 10:06:59'),
(12, 1, 74, '2023-08-18 08:48:49', '2023-08-18 08:48:49'),
(13, 108, 65, '2023-08-29 04:59:33', '2023-08-29 04:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `course_ratings`
--

CREATE TABLE `course_ratings` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `rate` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_ratings`
--

INSERT INTO `course_ratings` (`id`, `user_id`, `course_id`, `rate`, `created_at`, `updated_at`) VALUES
(1, 2, 6, 3, '2022-05-15 03:13:48', '2022-05-15 03:13:48'),
(2, 37, 6, 2, '2022-05-15 03:14:01', '2022-05-15 03:14:01'),
(3, 38, 5, 4, '2022-05-15 03:14:15', '2022-05-15 03:14:15'),
(5, 1, 6, 5, '2022-05-15 04:37:50', '2022-05-24 14:45:13'),
(6, 1, 5, 3, '2022-05-17 04:02:06', '2022-05-17 04:02:06'),
(7, 37, 29, 5, '2023-03-18 23:44:48', '2023-03-18 23:44:48'),
(8, 37, 32, 5, '2023-03-28 09:15:24', '2023-03-28 09:15:24'),
(9, 94, 5, 5, '2023-03-29 16:27:36', '2023-03-29 16:27:36'),
(10, 96, 29, 3, '2023-04-02 07:31:10', '2023-04-02 07:31:10'),
(11, 1, 35, 5, '2023-04-04 04:49:09', '2023-04-04 04:49:38');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 0, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 0, 0, 0, 0, '{}', 2),
(24, 4, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 6),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 7),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 8),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 9),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 10),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 11),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0}}', 14),
(66, 6, 'page_belongsto_page_relationship', 'relationship', 'pages sub of', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Page\",\"table\":\"pages\",\"type\":\"belongsTo\",\"column\":\"sub_of\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(67, 6, 'sub_of', 'text', 'Sub Of', 0, 1, 1, 1, 1, 1, '{}', 13),
(68, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(70, 10, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:courses,slug\"}}', 3),
(71, 10, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(72, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0}}', 5),
(73, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(74, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(75, 10, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(76, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 11, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(78, 11, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:lessons,slug\"}}', 3),
(79, 11, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 4),
(80, 11, 'course_id', 'text', 'Course Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(81, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(82, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(83, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 13),
(84, 11, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0}}', 8),
(85, 11, 'lesson_belongsto_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(96, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 13, 'comment', 'text', 'Comment', 1, 1, 1, 0, 0, 1, '{}', 3),
(100, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 5),
(101, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(102, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(103, 13, 'comment_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"commenter_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(106, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(107, 14, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(108, 14, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:resources,slug\"}}', 3),
(109, 14, 'lesson_id', 'text', 'Lesson Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(110, 14, 'link', 'file', 'Link', 0, 1, 1, 1, 1, 1, '{}', 5),
(111, 14, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 7),
(112, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(113, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(114, 14, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 10),
(115, 14, 'resource_belongsto_lesson_relationship', 'relationship', 'lessons', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Lesson\",\"table\":\"lessons\",\"type\":\"belongsTo\",\"column\":\"lesson_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(116, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(117, 15, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(118, 15, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0}}', 3),
(119, 15, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 4),
(120, 15, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:news,slug\"}}', 5),
(121, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(122, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(123, 15, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(124, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(125, 16, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(126, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0}}', 3),
(127, 16, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 4),
(128, 16, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:events,slug\"}}', 5),
(129, 16, 'start_date', 'timestamp', 'Start Date', 0, 1, 1, 1, 1, 1, '{}', 6),
(130, 16, 'end_date', 'timestamp', 'End Date', 0, 1, 1, 1, 1, 1, '{}', 7),
(131, 16, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 8),
(132, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(133, 16, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 10),
(142, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(143, 23, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(144, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(145, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(146, 23, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 5),
(147, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(148, 25, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(149, 25, 'mobile', 'text', 'Mobile', 0, 1, 1, 1, 1, 1, '{}', 3),
(150, 25, 'gender', 'text', 'Gender', 0, 1, 1, 1, 1, 1, '{}', 4),
(151, 25, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 5),
(152, 25, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0}}', 6),
(153, 25, 'age', 'text', 'Age', 0, 1, 1, 1, 1, 1, '{}', 7),
(154, 25, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 8),
(155, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(156, 25, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 10),
(157, 25, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:trainers,slug\"}}', 11),
(158, 11, 'lesson_belongsto_trainer_relationship', 'relationship', 'trainers', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Trainer\",\"table\":\"trainers\",\"type\":\"belongsTo\",\"column\":\"trainer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(159, 25, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 12),
(160, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(161, 26, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(162, 26, 'course_id', 'select_dropdown', 'Course Id', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"course_id\"}}', 3),
(163, 26, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 4),
(164, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(165, 26, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(167, 26, 'applicant_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"scope\":\"type\",\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(168, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(169, 28, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(170, 28, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(171, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(172, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(173, 28, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(174, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(175, 29, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(176, 29, 'content', 'rich_text_box', 'Content', 0, 0, 1, 1, 1, 1, '{}', 4),
(177, 29, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0}}', 5),
(178, 29, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 6),
(179, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(180, 29, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(181, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(182, 30, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(183, 30, 'title2', 'text', 'Title2', 0, 1, 1, 1, 1, 1, '{}', 3),
(184, 30, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0}}', 4),
(185, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(186, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(187, 30, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(188, 30, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 8),
(189, 4, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(190, 10, 'course_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(191, 10, 'rate', 'text', 'Rate', 0, 0, 0, 0, 0, 0, '{}', 11),
(192, 10, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 17),
(193, 10, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 7),
(194, 10, 'course_belongsto_trainer_relationship', 'relationship', 'trainers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Trainer\",\"table\":\"trainers\",\"type\":\"belongsTo\",\"column\":\"trainer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(195, 10, 'trainer_id', 'text', 'Trainer Id', 0, 1, 1, 1, 1, 1, '{}', 16),
(196, 11, 'trainer_id', 'text', 'Trainer Id', 0, 0, 0, 0, 0, 0, '{}', 12),
(198, 10, 'home', 'select_dropdown', 'Home', 1, 0, 0, 0, 0, 0, '{\"default\":\"0\",\"options\":{\"0\":\"yes\",\"1\":\"no\"}}', 15),
(199, 10, 'learn', 'rich_text_box', 'Learn', 0, 0, 1, 1, 1, 1, '{}', 8),
(200, 10, 'requirements', 'rich_text_box', 'Requirements', 0, 0, 1, 1, 1, 1, '{}', 9),
(201, 16, 'organizer', 'text', 'Organizer', 0, 1, 1, 1, 1, 1, '{}', 11),
(202, 16, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 12),
(203, 16, 'email', 'text', 'Email', 0, 0, 1, 1, 1, 1, '{}', 13),
(204, 16, 'website', 'text', 'Website', 0, 0, 1, 1, 1, 1, '{}', 14),
(205, 16, 'coordinates', 'coordinates', 'Coordinates', 0, 0, 1, 1, 1, 1, '{}', 15),
(206, 26, 'approve', 'select_dropdown', 'Approve', 1, 1, 1, 1, 1, 1, '{\"default\":\"Deny\",\"options\":{\"0\":\"Deny\",\"1\":\"Approve\"}}', 7),
(208, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 7),
(209, 1, 'provider', 'text', 'Provider', 0, 1, 1, 1, 1, 1, '{}', 13),
(210, 1, 'provider_id', 'text', 'Provider Id', 0, 1, 1, 1, 1, 1, '{}', 14),
(211, 13, 'commenter_id', 'text', 'Commenter Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(212, 13, 'commenter_type', 'text', 'Commenter Type', 0, 0, 0, 1, 1, 1, '{}', 4),
(213, 13, 'guest_name', 'text', 'Guest Name', 0, 0, 0, 1, 1, 1, '{}', 5),
(214, 13, 'guest_email', 'text', 'Guest Email', 0, 0, 0, 1, 1, 1, '{}', 6),
(215, 13, 'commentable_type', 'text', 'Commentable Type', 1, 0, 0, 1, 1, 1, '{}', 7),
(216, 13, 'commentable_id', 'text', 'Commentable Id', 1, 0, 0, 1, 1, 1, '{}', 8),
(217, 13, 'approved', 'text', 'Approved', 1, 1, 1, 1, 1, 1, '{}', 10),
(218, 13, 'child_id', 'text', 'Child Id', 0, 0, 0, 1, 1, 1, '{}', 2),
(219, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(220, 31, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(221, 31, 'course_id', 'text', 'Course Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(222, 31, 'trainer_id', 'text', 'Trainer Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(223, 31, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(224, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(225, 31, 'group_belongsto_course_relationship', 'relationship', 'course', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(226, 31, 'group_belongsto_trainer_relationship', 'relationship', 'trainer', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Trainer\",\"table\":\"trainers\",\"type\":\"belongsTo\",\"column\":\"trainer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(227, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(228, 32, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(229, 32, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{}', 5),
(230, 32, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(231, 32, 'images', 'multiple_images', 'Images', 0, 0, 1, 1, 1, 1, '{}', 8),
(232, 32, 'p_category_id', 'text', 'P Category Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(233, 32, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 11),
(234, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(235, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(236, 32, 'product_belongsto_p_category_relationship', 'relationship', 'Product Category', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\PCategory\",\"table\":\"p_categories\",\"type\":\"belongsTo\",\"column\":\"p_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(237, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(238, 33, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(239, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(240, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(241, 10, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"On Site\",\"1\":\"Online\",\"2\":\"Offline\"}}', 16),
(242, 11, 'lesson_duration', 'text', 'Lesson Duration', 0, 1, 1, 1, 1, 1, '{}', 11),
(243, 4, 'content', 'text', 'Content', 0, 1, 1, 1, 1, 1, '{}', 9),
(244, 4, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 10),
(245, 25, 'job', 'text', 'Job', 0, 1, 1, 1, 1, 1, '{}', 13),
(246, 26, 'group_id', 'text', 'Group Id', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"group_id\"}}', 8),
(248, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(249, 34, 'name', 'text', 'Name', 0, 1, 1, 0, 0, 1, '{}', 2),
(250, 34, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(251, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(252, 34, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(253, 34, 'email', 'text', 'Email', 0, 1, 1, 0, 0, 1, '{}', 3),
(254, 34, 'subject', 'text', 'Subject', 0, 1, 1, 0, 0, 1, '{}', 4),
(255, 34, 'message', 'text_area', 'Message', 0, 1, 1, 0, 0, 1, '{}', 5),
(256, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(257, 35, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(258, 35, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 3),
(259, 35, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(260, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(261, 25, 'experience', 'text', 'Experience', 0, 1, 1, 1, 1, 1, '{}', 14),
(262, 32, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:p_categories,slug\"}}', 3),
(263, 33, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:p_categories,slug\"}}', 3),
(264, 32, 'brief', 'text_area', 'Brief', 0, 0, 1, 1, 1, 1, '{}', 10),
(265, 32, 'qty', 'number', 'Qty', 0, 1, 1, 1, 1, 1, '{}', 6),
(268, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(269, 36, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(270, 36, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 3),
(271, 36, 'lesson_id', 'text', 'Lesson Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(272, 36, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(273, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(274, 36, 'assignment_belongsto_lesson_relationship', 'relationship', 'lessons', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Lesson\",\"table\":\"lessons\",\"type\":\"belongsTo\",\"column\":\"lesson_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(275, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(276, 37, 'user_id', 'hidden', 'User Id', 0, 0, 0, 0, 0, 0, '{}', 2),
(277, 37, 'total_price', 'disabled', 'Total Price', 0, 1, 1, 1, 1, 1, '{}', 3),
(278, 37, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(279, 37, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 6),
(280, 37, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(281, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(282, 37, 'first_name', 'text', 'First Name', 0, 1, 1, 1, 1, 1, '{}', 9),
(283, 37, 'last_name', 'text', 'Last Name', 0, 1, 1, 1, 1, 1, '{}', 10),
(284, 37, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 11),
(285, 37, 'state', 'text', 'State', 0, 1, 1, 1, 1, 1, '{}', 12),
(286, 37, 'city', 'text', 'City', 0, 1, 1, 1, 1, 1, '{}', 13),
(287, 37, 'postal_code', 'text', 'Postal Code', 0, 1, 1, 1, 1, 1, '{}', 14),
(288, 37, 'status', 'radio_btn', 'Status', 0, 1, 0, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Pending\",\"1\":\"Shipping\",\"2\":\"Completed\",\"3\":\"Canceled\"}}', 15),
(290, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(291, 38, 'order_id', 'text', 'Order Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(292, 38, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(293, 38, 'product_price', 'text', 'Product Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(294, 38, 'product_qty', 'text', 'Product Qty', 0, 1, 1, 1, 1, 1, '{}', 5),
(295, 38, 'product_total', 'text', 'Product Total', 0, 1, 1, 1, 1, 1, '{}', 6),
(296, 38, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(297, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(298, 37, 'order_hasmany_order_item_relationship', 'relationship', 'order_items', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\OrderItem\",\"table\":\"order_items\",\"type\":\"hasMany\",\"column\":\"order_id\",\"key\":\"id\",\"label\":\"order_details\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(299, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(300, 39, 'icon', 'select_dropdown', 'Icon', 0, 1, 1, 1, 1, 1, '{\"default\":\"ti-facebook\",\"options\":{\"ti-facebook\":\"facebook\",\"ti-youtube\":\"youtube\",\"ti-google\":\"google\",\"ti-skype\":\"skype\",\"ti-apple\":\"apple\",\"ti-control-play\":\"play\",\"ti-vimeo\":\"vimeo\",\"ti-twitter\":\"twitter\",\"ti-instagram\":\"instagram\",\"ti-linkedin\":\"linkedin\"}}', 2),
(301, 39, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 3),
(302, 39, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 4),
(303, 39, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(304, 11, 'link', 'text', 'Link', 0, 0, 0, 0, 0, 0, '{}', 12),
(305, 40, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(306, 40, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 2),
(307, 40, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(308, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(309, 29, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:our_services,slug\"}}', 3),
(310, 41, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(311, 41, 'assignment_id', 'text', 'Assignment Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(312, 41, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(313, 41, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 4),
(314, 41, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(315, 41, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(316, 41, 'resolf_belongsto_assignment_relationship', 'relationship', 'assignments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Assignment\",\"table\":\"assignments\",\"type\":\"belongsTo\",\"column\":\"assignment_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(317, 41, 'resolf_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(318, 44, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(319, 44, 'question', 'text', 'Question', 1, 1, 1, 1, 1, 1, '{}', 3),
(320, 44, 'question_type_id', 'text', 'Question Type Id', 1, 0, 0, 0, 0, 0, '{}', 2),
(321, 44, 'media_url', 'text', 'Media Url', 0, 0, 0, 0, 0, 0, '{}', 5),
(322, 44, 'media_type', 'text', 'Media Type', 0, 0, 0, 0, 0, 0, '{}', 6),
(323, 44, 'is_active', 'radio_btn', 'Is Active', 1, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"No\",\"1\":\"Yes\"}}', 7),
(324, 44, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(325, 44, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(326, 44, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 10),
(327, 45, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(328, 45, 'question_type', 'text', 'Question Type', 1, 1, 1, 1, 1, 1, '{}', 2),
(329, 45, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(330, 45, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(331, 45, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 5),
(332, 44, 'question_belongsto_question_type_relationship', 'relationship', 'question_types', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Models\\\\QuestionType\",\"table\":\"question_types\",\"type\":\"belongsTo\",\"column\":\"question_type_id\",\"key\":\"id\",\"label\":\"question_type\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(333, 47, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(334, 47, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(335, 47, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 4),
(336, 47, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 5),
(337, 47, 'total_marks', 'number', 'Total Marks', 1, 1, 1, 1, 1, 1, '{}', 6),
(338, 47, 'pass_marks', 'number', 'Pass Marks', 1, 0, 0, 0, 0, 0, '{}', 7),
(339, 47, 'max_attempts', 'number', 'Max Attempts', 1, 0, 0, 0, 0, 0, '{}', 8),
(340, 47, 'is_published', 'radio_btn', 'Is Published', 1, 0, 0, 0, 0, 0, '{\"default\":\"0\",\"options\":{\"0\":\"No\",\"1\":\"Yes\"}}', 9),
(341, 47, 'media_url', 'text', 'Media Url', 0, 0, 0, 0, 0, 0, '{}', 10),
(342, 47, 'media_type', 'text', 'Media Type', 0, 0, 0, 0, 0, 0, '{}', 11),
(343, 47, 'duration', 'number', 'Duration', 1, 0, 1, 1, 1, 1, '{}', 12),
(344, 47, 'valid_from', 'timestamp', 'Valid From', 1, 1, 1, 1, 1, 1, '{}', 13),
(345, 47, 'valid_upto', 'timestamp', 'Valid to', 0, 1, 1, 1, 1, 1, '{}', 14),
(346, 47, 'time_between_attempts', 'number', 'Time Between Attempts', 1, 0, 0, 0, 0, 0, '{}', 15),
(347, 47, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 16),
(348, 47, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(349, 47, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 18),
(350, 49, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(351, 49, 'quiz_id', 'text', 'Quiz Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(352, 49, 'question_id', 'text', 'Question Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(353, 49, 'marks', 'text', 'Marks', 1, 1, 1, 1, 1, 1, '{}', 6),
(354, 49, 'negative_marks', 'text', 'Negative Marks', 1, 1, 1, 1, 1, 1, '{}', 7),
(355, 49, 'is_optional', 'radio_btn', 'Is Optional', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"No\",\"1\":\"Yes\"}}', 8),
(356, 49, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{}', 9),
(357, 49, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(358, 49, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(359, 49, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 12),
(360, 49, 'quiz_question_belongsto_quiz_relationship', 'relationship', 'quizzes', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Quiz\",\"table\":\"quizzes\",\"type\":\"belongsTo\",\"column\":\"quiz_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(361, 49, 'quiz_question_belongsto_question_relationship', 'relationship', 'questions', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Question\",\"table\":\"questions\",\"type\":\"belongsTo\",\"column\":\"question_id\",\"key\":\"id\",\"label\":\"question\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(362, 50, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(363, 50, 'question_id', 'text', 'Question Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(364, 50, 'option', 'text', 'Option', 0, 1, 1, 1, 1, 1, '{}', 4),
(365, 50, 'media_url', 'text', 'Media Url', 0, 0, 0, 0, 0, 0, '{}', 5),
(366, 50, 'media_type', 'text', 'Media Type', 0, 0, 0, 0, 0, 0, '{}', 6),
(367, 50, 'is_correct', 'radio_btn', 'Is Correct', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Wrong Answer\",\"1\":\"Correct Answer\"}}', 7),
(368, 50, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(369, 50, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(370, 50, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 10),
(372, 50, 'question_option_belongsto_question_relationship', 'relationship', 'questions', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Question\",\"table\":\"questions\",\"type\":\"belongsTo\",\"column\":\"question_id\",\"key\":\"id\",\"label\":\"question\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(373, 47, 'course_id', 'text', 'Course Id', 0, 1, 1, 1, 1, 1, '{}', 19),
(374, 47, 'quiz_belongsto_course_relationship', 'relationship', 'course', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(375, 51, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(376, 51, 'quiz_id', 'text', 'Quiz Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(377, 51, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(378, 51, 'score', 'text', 'Score', 0, 1, 1, 1, 1, 1, '{}', 4),
(379, 51, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(380, 51, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(381, 51, 'quiz_score_belongsto_quiz_relationship', 'relationship', 'quizzes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Quiz\",\"table\":\"quizzes\",\"type\":\"belongsTo\",\"column\":\"quiz_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(382, 51, 'quiz_score_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(414, 55, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(415, 55, 'event_id', 'text', 'Event Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(416, 55, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(417, 55, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(418, 55, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(419, 55, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(420, 55, 'event_record_belongsto_event_relationship', 'relationship', 'events', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Event\",\"table\":\"events\",\"type\":\"belongsTo\",\"column\":\"event_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"applicants\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(421, 26, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 9),
(422, 55, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 7),
(423, 57, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(424, 57, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(425, 57, 'course_id', 'text', 'Course Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(426, 57, 'group_id', 'text', 'Group Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(427, 57, 'lesson_id', 'text', 'Lesson Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(428, 57, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(429, 57, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(430, 57, 'absence_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(431, 57, 'absence_belongsto_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(432, 57, 'absence_belongsto_group_relationship', 'relationship', 'groups', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Group\",\"table\":\"groups\",\"type\":\"belongsTo\",\"column\":\"group_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(433, 57, 'absence_belongsto_lesson_relationship', 'relationship', 'lessons', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Lesson\",\"table\":\"lessons\",\"type\":\"belongsTo\",\"column\":\"lesson_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(434, 57, 'absences', 'text', 'Absences', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"absence\",\"1\":\"Attended\"}}', 8),
(435, 58, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(436, 58, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(437, 58, 'course', 'text', 'Course', 0, 1, 1, 1, 1, 1, '{}', 3),
(438, 58, 'course_date', 'date', 'Course Date', 0, 1, 1, 1, 1, 1, '{}', 4),
(439, 58, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(440, 58, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(441, 25, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 15),
(442, 25, 'trainer_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"scope\":\"trainer\",\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(443, 59, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(444, 59, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 3),
(445, 59, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(446, 59, 'course_id', 'text', 'Course Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(447, 59, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(448, 59, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(449, 59, 'introduction_belongsto_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(450, 60, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(451, 60, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(452, 60, 'course_id', 'text', 'Course Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(453, 60, 'rate', 'text', 'Rate', 0, 1, 1, 1, 1, 1, '{}', 4),
(454, 60, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(455, 60, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(456, 60, 'course_rating_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(457, 60, 'course_rating_belongsto_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(458, 1, 'user_belongsto_user_relationship', 'relationship', 'parent', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(459, 1, 'telephone', 'text', 'Telephone', 0, 1, 1, 1, 1, 1, '{}', 6),
(460, 1, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 15),
(461, 61, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(462, 61, 'user_id', 'text', 'User Id', 0, 1, 1, 0, 0, 1, '{}', 2),
(463, 61, 'topic', 'text', 'Topic', 0, 1, 1, 1, 1, 1, '{\"rule\":{\"topic\":\"required\"}}', 3),
(464, 61, 'start_at', 'timestamp', 'Start At', 0, 1, 1, 1, 1, 1, '{\"rule\":{\"topic\":\"required\"}}', 4),
(465, 61, 'duration', 'number', 'Duration', 0, 1, 1, 1, 1, 1, '{\"rule\":{\"duration\":\"required|numeric|gt:0\"}}', 5),
(466, 61, 'password', 'text', 'Password', 0, 1, 1, 0, 0, 1, '{}', 6),
(467, 61, 'start_url', 'text', 'Start Url', 0, 1, 1, 0, 0, 1, '{}', 7),
(468, 61, 'join_url', 'text', 'Join Url', 0, 1, 1, 0, 0, 1, '{}', 8),
(469, 61, 'group_id', 'text', 'Group Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(470, 61, 'lesson_id', 'text', 'Lesson Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(471, 61, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(472, 61, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(473, 61, 'meeting_belongsto_group_relationship', 'relationship', 'groups', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Group\",\"table\":\"groups\",\"type\":\"belongsTo\",\"column\":\"group_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(474, 61, 'meeting_belongsto_lesson_relationship', 'relationship', 'lessons', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Lesson\",\"table\":\"lessons\",\"type\":\"belongsTo\",\"column\":\"lesson_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(475, 61, 'meeting_belongsto_user_relationship', 'relationship', 'users', 1, 1, 1, 0, 0, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(476, 58, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(477, 58, 'certificate_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(478, 62, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(479, 62, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(480, 62, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(481, 62, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(482, 62, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(483, 63, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(484, 63, 'gateway', 'text', 'Gateway', 0, 1, 1, 1, 1, 1, '{}', 2),
(485, 63, 'reference_id', 'text', 'Reference Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(486, 63, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 4),
(487, 63, 'amount', 'text', 'Amount', 0, 1, 1, 1, 1, 1, '{}', 5),
(488, 63, 'data', 'text', 'Data', 0, 0, 1, 1, 1, 1, '{}', 6),
(489, 63, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(490, 63, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(491, 63, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(492, 63, 'payment_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(498, 26, 'applicant_belongsto_group_relationship', 'relationship', 'groups', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Group\",\"table\":\"groups\",\"type\":\"belongsTo\",\"column\":\"group_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(499, 26, 'applicant_belongsto_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(501, 64, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(502, 64, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(503, 64, 'lesson_id', 'text', 'Lesson Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(504, 64, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 0, '{}', 4),
(505, 64, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 0, '{}', 5),
(506, 64, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 0, '{}', 6),
(507, 64, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 0, '{}', 7),
(508, 64, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(509, 64, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(510, 64, 'group_id', 'text', 'Group Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(511, 64, 'course_id', 'text', 'Course Id', 0, 1, 1, 1, 1, 1, '{}', 11),
(512, 64, 'video_belongsto_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(513, 64, 'video_belongsto_group_relationship', 'relationship', 'groups', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Group\",\"table\":\"groups\",\"type\":\"belongsTo\",\"column\":\"group_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(514, 64, 'video_belongsto_lesson_relationship', 'relationship', 'lessons', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Lesson\",\"table\":\"lessons\",\"type\":\"belongsTo\",\"column\":\"lesson_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(515, 25, 'password', 'password', 'Password', 0, 1, 1, 1, 1, 1, '{}', 16),
(516, 10, 'course_belongsto_trainer_relationship_1', 'relationship', 'trainers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Trainer\",\"table\":\"trainers\",\"type\":\"belongsTo\",\"column\":\"id_trainer\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":null}', 18),
(517, 11, 'lesson_belongsto_trainer_relationship_1', 'relationship', 'trainers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Lesson\",\"table\":\"trainers\",\"type\":\"belongsTo\",\"column\":\"id_trainer\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":null}', 14),
(518, 14, 'resource_belongsto_trainer_relationship', 'relationship', 'trainers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Trainer\",\"table\":\"trainers\",\"type\":\"belongsTo\",\"column\":\"id_trainer\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":null}', 11),
(519, 36, 'assignment_belongsto_trainer_relationship', 'relationship', 'trainers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Trainer\",\"table\":\"trainers\",\"type\":\"belongsTo\",\"column\":\"id_trainer\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":null}', 8),
(520, 41, 'resolf_belongsto_trainer_relationship', 'relationship', 'trainers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Trainer\",\"table\":\"trainers\",\"type\":\"belongsTo\",\"column\":\"id_trainer\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":null}', 9),
(521, 35, 'partner_belongsto_trainer_relationship', 'relationship', 'trainers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Trainer\",\"table\":\"trainers\",\"type\":\"belongsTo\",\"column\":\"id_trainer\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":null}', 6),
(522, 31, 'group_belongsto_trainer_relationship_1', 'relationship', 'trainers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Trainer\",\"table\":\"trainers\",\"type\":\"belongsTo\",\"column\":\"id_trainer\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":null}', 9),
(544, 66, 'postchilder_belongsto_trainer_relationship', 'relationship', 'trainers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Trainer\",\"table\":\"trainers\",\"type\":\"belongsTo\",\"column\":\"trainer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(545, 67, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(546, 67, 'post_id', 'number', 'Post Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(547, 67, 'liks', 'number', 'Liks', 0, 1, 1, 1, 1, 1, '{}', 3),
(548, 67, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(549, 67, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(550, 67, 'lik_belongsto_postchilder_relationship', 'relationship', 'postchilders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Postchilder\",\"table\":\"postchilders\",\"type\":\"belongsTo\",\"column\":\"post_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(561, 70, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(562, 70, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(563, 70, 'image', 'file', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(564, 70, 'video', 'file', 'Video', 0, 1, 1, 1, 1, 1, '{}', 4);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(565, 70, 'school', 'text', 'School', 0, 1, 1, 1, 1, 1, '{}', 5),
(566, 70, 'constructor', 'text', 'Constructor', 0, 1, 1, 1, 1, 1, '{}', 6),
(567, 70, 'trainer_id', 'text', 'Trainer Id', 1, 1, 1, 1, 1, 1, '{}', 7),
(568, 70, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(569, 70, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(570, 70, 'postchildern_belongsto_trainer_relationship', 'relationship', 'trainers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Trainer\",\"table\":\"trainers\",\"type\":\"belongsTo\",\"column\":\"trainer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"absences\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(571, 70, 'body', 'text_area', 'Body', 0, 1, 1, 1, 1, 1, '{}', 10),
(572, 67, 'lik_belongstomany_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"liks\",\"pivot\":\"1\",\"taggable\":null}', 7),
(580, 73, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(581, 73, 'post_id', 'text', 'Post Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(582, 73, 'likes', 'text', 'Likes', 0, 1, 1, 1, 1, 1, '{}', 3),
(583, 73, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(584, 73, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(585, 73, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-04-08 09:31:29', '2022-05-24 05:14:11'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-04-08 09:31:29', '2020-04-08 09:31:29'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-04-08 09:31:29', '2020-04-08 09:31:29'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-04-08 09:32:07', '2022-04-20 17:16:03'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-04-08 09:32:07', '2020-04-12 11:00:21'),
(10, 'courses', 'courses', 'Course', 'Courses', NULL, 'App\\Course', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"trainer\"}', '2020-04-12 11:23:44', '2023-01-01 04:14:32'),
(11, 'lessons', 'lessons', 'Lesson', 'Lessons', NULL, 'App\\Lesson', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-04-12 11:32:25', '2022-08-27 23:57:57'),
(13, 'comments', 'comments', 'Comment', 'Comments', NULL, 'App\\Comment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-04-12 12:05:34', '2020-04-21 11:23:05'),
(14, 'resources', 'resources', 'Resource', 'Resources', NULL, 'App\\Resource', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-04-12 12:16:40', '2020-04-21 11:29:18'),
(15, 'news', 'news', 'News', 'News', NULL, 'App\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-04-12 12:27:17', '2022-04-24 04:01:13'),
(16, 'events', 'events', 'Event', 'Events', NULL, 'App\\Event', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-04-12 12:30:24', '2022-04-24 12:48:12'),
(23, 'mohamds', 'mohamds', 'Mohamd', 'Mohamds', NULL, 'App\\Mohamd', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-04-12 19:46:03', '2020-04-12 19:46:03'),
(25, 'trainers', 'trainers', 'Trainer', 'Trainers', NULL, 'App\\Trainer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-04-12 21:05:21', '2023-06-01 08:16:49'),
(26, 'applicants', 'applicants', 'Applicant', 'Applicants', NULL, 'App\\Applicant', NULL, 'App\\Http\\Controllers\\dashboard\\ApplicantController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-04-12 21:15:56', '2023-04-07 08:15:08'),
(27, 'faq', 'faq', 'Faq', 'Faqs', NULL, 'App\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-04-13 08:00:58', '2020-04-13 08:00:58'),
(28, 'faqs', 'faqs', 'Faq', 'Faqs', NULL, 'App\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-04-13 08:03:04', '2020-04-13 08:03:04'),
(29, 'our_services', 'our-services', 'Our Service', 'Our Services', NULL, 'App\\OurService', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-04-13 08:10:40', '2022-03-28 12:02:37'),
(30, 'sliders', 'sliders', 'Slider', 'Sliders', NULL, 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-04-13 09:18:32', '2020-04-13 09:18:32'),
(31, 'groups', 'groups', 'Group', 'Groups', NULL, 'App\\Group', NULL, 'App\\Http\\Controllers\\dashboard\\GroupController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-04 14:57:33', '2022-02-05 09:06:28'),
(32, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-07 23:11:41', '2022-03-06 07:35:19'),
(33, 'p_categories', 'p-categories', 'P Category', 'P Categories', NULL, 'App\\PCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-07 23:13:16', '2022-03-03 08:06:22'),
(34, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-02 03:09:31', '2022-03-02 03:10:34'),
(35, 'partners', 'partners', 'Partner', 'Partners', NULL, 'App\\Partner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-02 04:11:10', '2022-03-02 04:11:10'),
(36, 'assignments', 'assignments', 'Assignment', 'Assignments', NULL, 'App\\Assignment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-09 02:50:01', '2022-03-09 02:50:43'),
(37, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-09 09:57:39', '2022-03-09 12:10:19'),
(38, 'order_items', 'order-items', 'Order Item', 'Order Items', NULL, 'App\\OrderItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-09 11:29:58', '2022-03-09 11:29:58'),
(39, 'socials', 'social-media', 'Social', 'Social Media', NULL, 'App\\Social', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-15 09:54:35', '2022-03-15 09:57:46'),
(40, 'newsletters', 'newsletters', 'Newsletter', 'Newsletter', NULL, 'App\\Newsletter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-20 13:28:40', '2022-03-20 13:28:40'),
(41, 'resolves', 'resolves', 'Resolf', 'Resolves', NULL, 'App\\Resolf', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-30 02:24:46', '2022-03-30 02:26:18'),
(44, 'questions', 'questions', 'Question', 'Questions', NULL, 'App\\Models\\Question', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-31 03:09:40', '2022-09-01 04:00:50'),
(45, 'question_types', 'question-types', 'Question Type', 'Question Types', NULL, 'App\\Models\\QuestionType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-31 03:12:36', '2022-03-31 03:12:36'),
(47, 'quizzes', 'quizzes', 'Quiz', 'Quizzes', NULL, 'App\\Models\\Quiz', NULL, 'App\\Http\\Controllers\\dashboard\\QuizController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-01 01:40:35', '2022-09-14 17:01:38'),
(49, 'quiz_questions', 'quiz-questions', 'Quiz Question', 'Quiz Questions', NULL, 'App\\Models\\QuizQuestion', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-01 09:56:57', '2022-04-01 10:05:35'),
(50, 'question_options', 'question-options', 'Question Option', 'Question Options', NULL, 'App\\Models\\QuestionOption', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-01 12:19:39', '2022-09-01 05:09:17'),
(51, 'quiz_scores', 'quiz-scores', 'Quiz Score', 'Quiz Scores', NULL, 'App\\QuizScore', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-04 01:51:05', '2022-04-04 01:53:01'),
(55, 'event_records', 'event-records', 'Event Record', 'Event Records', NULL, 'App\\EventRecord', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-10 05:09:36', '2022-04-12 06:12:16'),
(57, 'absences', 'absences', 'Absence', 'Absences', NULL, 'App\\Absence', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-16 07:08:34', '2022-04-16 07:14:32'),
(58, 'certificates', 'certificates', 'Certificate', 'Certificates', NULL, 'App\\Certificate', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-16 09:02:43', '2022-06-05 17:08:39'),
(59, 'introductions', 'introductions', 'Introduction', 'Introductions', NULL, 'App\\Introduction', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-17 04:35:19', '2022-04-17 04:36:13'),
(60, 'course_ratings', 'course-ratings', 'Course Rating', 'Course Ratings', NULL, 'App\\CourseRating', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-05-15 01:30:02', '2022-05-15 01:31:31'),
(61, 'meetings', 'meetings', 'Meeting', 'Meetings', NULL, 'App\\Meeting', NULL, 'App\\Http\\Controllers\\dashboard\\MeetingController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-01 12:33:23', '2022-06-01 12:48:47'),
(62, 'skills', 'skills', 'Skill', 'Skills', NULL, 'App\\Skill', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-06-11 23:36:25', '2022-06-11 23:36:25'),
(63, 'payments', 'payments', 'Payment', 'Payments', NULL, 'App\\Payment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-30 03:35:40', '2022-06-30 03:44:33'),
(64, 'videos', 'videos', 'Video', 'sessions', NULL, 'App\\Video', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-08 19:27:22', '2023-04-08 19:34:09'),
(66, 'postchilders', 'postchilders', 'Postchilder', 'Postchildrens', 'voyager-certificate', 'App\\Postchildern', 'TCG\\Voyager\\Policies\\PostchildernPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-09-19 10:46:24', '2023-09-19 13:34:28'),
(67, 'liks', 'liks', 'Lik', 'Liks', NULL, 'App\\Lik', NULL, 'Link', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-09-19 13:24:51', '2023-09-19 13:26:00'),
(70, 'postchilderns', 'postchilderns', 'Postchildern', 'Postchilderns', NULL, 'App\\Postchildern', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-09-19 13:45:52', '2023-09-19 15:10:24'),
(73, 'likes', 'likes', 'Like', 'Likes', NULL, 'App\\Like', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-09-20 10:25:18', '2023-09-20 11:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `dymantic_instagram_basic_profiles`
--

CREATE TABLE `dymantic_instagram_basic_profiles` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dymantic_instagram_feed_tokens`
--

CREATE TABLE `dymantic_instagram_feed_tokens` (
  `id` int UNSIGNED NOT NULL,
  `profile_id` int UNSIGNED NOT NULL,
  `access_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_fullname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_profile_picture` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `organizer` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coordinates` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `image`, `description`, `slug`, `start_date`, `end_date`, `created_at`, `updated_at`, `deleted_at`, `organizer`, `phone`, `email`, `website`, `coordinates`) VALUES
(1, 'learn english', 'events\\April2020\\A7rQtqk74BLfxTUxSCfb.jpg', '<p>In a lot of various jobs, psycho tests are something you will have to deal with girls becomes. In a lot of various jobs, psycho tests are something you will have to deal with girls becomes. In a lot of various jobs, psycho tests are something you will have to deal with girls becomes.</p>', 'learn-english', '2020-04-27 17:43:00', '2020-04-19 06:43:00', '2020-04-14 13:44:00', '2022-04-20 16:18:14', '2022-04-20 16:18:14', 'mohamed newer', '+20010024323424', 'alaa.tair.elbarr@gmail.com', 'https://www.google.com.eg/', 0x000000000101000000561f590a926034403ec0a44286f34740),
(2, 'learn arabic', 'events\\April2020\\2xyZvp808HWmQRTSW2bY.jpg', '<p>In a lot of various jobs, psycho tests are something you will have to deal with girls becomes. In a lot of various jobs, psycho tests are something you will have to deal with girls becomes. In a lot of various jobs, psycho tests are something you will have to deal with girls becomes.</p>', 'learn-arabic', '2020-04-21 17:44:00', '2020-04-10 19:44:00', '2020-04-14 13:44:00', '2022-04-20 16:18:14', '2022-04-20 16:18:14', 'medhat el adl', '123-54-545', 'don.tair101@gmail.com', 'www.facebook.com', 0x00000000010100000086eeedf19df93e40e4af7f8dda013e40),
(3, 'teach students', 'events\\April2020\\HDrjkXlowcTN5QPhNBR5.jpg', '<p>industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'teach-students', '2020-04-25 17:45:00', '2020-04-27 17:05:00', '2020-04-14 13:46:00', '2022-04-20 16:18:14', '2022-04-20 16:18:14', 'Alaa Tair El barr', '010024323424', 'alaa2117@yahoo.com', 'www.google.com', 0x000000000101000000963a6d324f4a5dc09240834d9d5b4040),
(4, 'Seminar on Personal Data Protection Law', 'events/April2022/hKhArINEQan4BPoGQB2l.jpeg', '<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<h2 id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\"><strong><span class=\"Y2IQFc\" lang=\"en\">Seminar topics</span></strong></h2>\n</div>\n<h2 style=\"text-align: right;\">&nbsp;</h2>\n<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\">definition of law</span></pre>\n</div>\n<p style=\"text-align: right;\">&nbsp;</p>\n<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\">Rights of the owner of personal data<br /><br />Obligations of the data controller and data processor<br /><br /></span><span class=\"Y2IQFc\" lang=\"en\">Exceptions<br /><br /></span><span class=\"Y2IQFc\" lang=\"en\">Penalties<br /><br /><br /></span></pre>\n<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\">prsented by Dr. Riyadh Al-Balushi<br /></span></pre>\n<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\">Date April 13, 2022</span></pre>\n</div>\n</div>\n</div>\n<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\">Time 9:30 to 10:30 pm</span></pre>\n</div>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', 'seminar-on-personal-data-protection-law', '2022-04-13 21:30:00', '2022-04-13 22:30:00', '2022-04-20 16:27:00', '2022-04-21 05:35:05', NULL, 'Horizons Company', '+968 94706981', NULL, 'https://www.hrz-stat.com/', 0x0000000001010000002bfa43334f4a5dc09240834d9d5b4040),
(5, 'Information life cycle: from cradle to grave', 'events/April2022/Ml9dhwdRJwwH7BYNgwTO.jpeg', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\">Axles</span></pre>\n<p>&nbsp;</p>\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\">pre-formation stage\nformation stage\npost-formation stage\ngrowth stage\nboom stage</span></pre>\n<p>Introduction by DR Ahmed bin Mohammed Al Qasimi<br /><br />Date 15 March 2022<br />Time 6:30 to 8:30 pm</p>\n<p>&nbsp;</p>', 'dwrh-hyah-almalwmat-mn-almhd-ala-allhd', '2022-04-15 18:30:00', '2022-04-15 20:33:00', '2022-04-20 16:35:00', '2022-04-21 05:34:52', NULL, 'Horizons Company', '+968 94706981', NULL, 'https://www.hrz-stat.com/', 0x0000000001010000002bfa43334f4a5dc09240834d9d5b4040),
(6, ' International city and country rankings: methodology, data. Transparency', 'events/April2022/T1MCjby2nBLXqe6UASr0.jpg', '', 'altsnyfat-aldwlyh-llmdn-walbld-almnhjyh-walbyanat-alshfafyh', '2021-09-28 08:02:00', '2022-04-24 08:02:00', '2022-04-24 06:03:59', '2022-04-24 06:03:59', NULL, '', '+968 94706981', NULL, 'http://www.hrz-stat.com/', 0x0000000001010000002bfa43334f4a5dc09240834d9d5b4040),
(7, 'UN World Data Forum', 'events/April2022/f6gV4rCM6vzgZ4mOW26J.jpg', '', 'un-world-data-forum', '2021-10-03 14:46:00', '2022-04-24 14:46:00', '2022-04-24 12:47:23', '2022-04-24 12:47:23', NULL, '', '+968 94706981', NULL, NULL, 0x0000000001010000002bfa43334f4a5dc09240834d9d5b4040);

-- --------------------------------------------------------

--
-- Table structure for table `event_records`
--

CREATE TABLE `event_records` (
  `id` int UNSIGNED NOT NULL,
  `event_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_records`
--

INSERT INTO `event_records` (`id`, `event_id`, `name`, `email`, `created_at`, `updated_at`, `phone`) VALUES
(3, 3, 'Melissa Frank', 'zupik@mailinator.com', '2022-04-12 06:48:59', '2022-04-12 06:48:59', '+1 (921) 572-5933'),
(4, 2, 'nusiba', 'nsuiba@gmail.com', '2022-04-20 05:57:32', '2022-04-20 05:57:32', '02836373'),
(5, 1, 'Vincent Parsons', 'mygujo@mailinator.com', '2022-04-20 06:26:45', '2022-04-20 06:26:45', '+1 (781) 659-1132'),
(6, 5, 'sban', 'ghas@klhsdklfla.com', '2023-01-17 12:31:58', '2023-01-17 12:31:58', '23498374236');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Customer Implementation Technician', '<p>Customer Implementation TechnicianCustomer Implementation TechnicianCustomer Implementation TechnicianCustomer Implementation TechnicianCustomer Implementation TechnicianCustomer Implementation Technician</p>', '2022-03-02 09:50:20', '2022-03-02 09:50:20', NULL),
(2, 'Chief Solutions Planner', '<p>Chief Solutions PlannerChief Solutions PlannerChief Solutions PlannerChief Solutions PlannerChief Solutions PlannerChief Solutions Planner</p>', '2022-03-02 09:50:33', '2022-03-02 09:50:33', NULL),
(3, 'Product Research Facilitator', '<p>Product Research FacilitatorProduct Research FacilitatorProduct Research FacilitatorProduct Research FacilitatorProduct Research FacilitatorProduct Research FacilitatorProduct Research Facilitator</p>', '2022-03-02 09:50:47', '2022-03-02 09:50:47', NULL),
(4, 'Human Paradigm Executive', '<p>Human Paradigm ExecutiveHuman Paradigm ExecutiveHuman Paradigm ExecutiveHuman Paradigm ExecutiveHuman Paradigm ExecutiveHuman Paradigm ExecutiveHuman Paradigm ExecutiveHuman Paradigm ExecutiveHuman Paradigm ExecutiveHuman Paradigm Executive</p>', '2022-03-02 09:51:07', '2022-03-02 09:51:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `trainer_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_trainer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `course_id`, `trainer_id`, `created_at`, `updated_at`, `id_trainer`) VALUES
(39, 'jsjasjk', 1, 1, '2022-02-07 02:05:00', '2022-02-07 02:05:21', NULL),
(40, 'يوم البيانات المفتوحة', 26, 4, '2022-02-17 06:25:00', '2022-07-18 03:45:39', NULL),
(41, 'group 1', 3, 2, '2022-02-19 14:25:18', '2022-02-19 14:25:18', NULL),
(42, 'new course Group', 29, 3, '2022-08-21 10:50:46', '2022-08-21 10:50:46', NULL),
(43, 'SPSS G1', 30, 4, '2022-09-18 04:35:10', '2022-09-18 04:35:10', NULL),
(44, 'تقنية المعلومات', 31, 1, '2022-09-29 04:57:15', '2022-09-29 04:57:15', NULL),
(45, 'flutter group', 35, 2, '2023-04-03 08:16:18', '2023-04-03 08:16:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_times`
--

CREATE TABLE `group_times` (
  `id` int UNSIGNED NOT NULL,
  `group_id` int DEFAULT NULL,
  `group_day` int DEFAULT NULL,
  `group_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_times`
--

INSERT INTO `group_times` (`id`, `group_id`, `group_day`, `group_time`, `created_at`, `updated_at`) VALUES
(46, 39, 0, '07:05:00', '2022-02-07 02:05:07', '2022-02-07 02:05:07'),
(49, 39, 3, '06:45:00', '2022-02-16 13:46:11', '2022-02-16 13:46:11'),
(52, 41, 0, '07:25:00', '2022-02-19 14:25:18', '2022-02-19 14:25:18'),
(53, 41, 2, '07:26:00', '2022-02-19 14:25:18', '2022-02-19 14:25:18'),
(55, 42, 1, '06:23:00', '2022-03-29 13:22:43', '2022-03-29 13:22:43'),
(56, 42, 3, '04:21:00', '2022-03-29 13:22:43', '2022-03-29 13:22:43'),
(57, 42, 1, '23:06:00', '2022-08-21 10:50:46', '2022-08-21 10:50:46'),
(58, 42, 3, '13:51:00', '2022-08-21 10:50:46', '2022-08-21 10:50:46'),
(59, 43, 0, '10:59:00', '2022-09-18 04:35:10', '2022-09-18 04:35:10'),
(60, 44, 6, '09:00:00', '2022-09-29 04:57:15', '2022-09-29 04:57:15'),
(61, 44, 0, '11:00:00', '2022-09-29 04:57:15', '2022-09-29 04:57:15'),
(62, 45, 6, '20:00:00', '2023-04-03 08:16:18', '2023-04-03 08:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `introductions`
--

CREATE TABLE `introductions` (
  `id` int UNSIGNED NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `introductions`
--

INSERT INTO `introductions` (`id`, `link`, `title`, `course_id`, `created_at`, `updated_at`) VALUES
(1, '654136015', 'Aspernatur laborum c', 1, '2022-04-17 05:11:00', '2022-04-17 05:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trainer_id` int DEFAULT NULL,
  `lesson_duration` double DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_trainer` int DEFAULT NULL,
  `course_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`, `deleted_at`, `image`, `trainer_id`, `lesson_duration`, `link`, `id_trainer`, `course_id`) VALUES
(1, 'Google', 'google', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<p>&nbsp;</p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: -53px; top: -14.0156px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>', '2020-04-12 11:38:00', '2022-04-21 15:16:23', '2022-04-21 15:16:23', 'lessons\\April2020\\XQZnUeF6hTSyTBfcFlnq.png', 2, 1.5, 'Join Zoom Meeting https://zoom.us/j/93513996547?pwd=NGoxc3hFNmFRM0lsWkthWlVXOEg5UT09  Meeting ID: 935 1399 6547 Passcode: hVT950', NULL, NULL),
(2, 'OOP', 'oop', '<p><span style=\"color: #717171; font-family: \'Open Sans\', sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vehicula mauris ac facilisis congue. Fusce sem enim, rhoncus volutpat condimentum ac, placerat semper ligula. Suspendisse in viverra justo, eu placerat urna. Vestibulum blandit diam suscipit nibh mattis ullamcorper. Nullam a condimentum nulla, ut facilisis enim. Aliquam sagittis ipsum ex, sed luctus augue venenatis ut. Fusce at rutrum tellus, ac elementum neque. In nec velit orci. Etiam purus felis, pellentesque sit amet tincidunt at, iaculis quis erat. Morbi imperdiet sodales sapien nec rhoncus. Donec placerat mi et libero iaculis, id maximus est vestibulum. Etiam augue augue, auctor at ornare eget, porta ac nisl. Aliquam et mattis dolor, et aliquet ligula</span></p>', '2020-04-14 09:36:00', '2022-04-21 15:16:23', '2022-04-21 15:16:23', NULL, 1, 1, NULL, NULL, NULL),
(3, 'Aut ut in magni fugi', 'Et maiores esse mini', '<p>Voluptatem, alias pr.</p>', '2022-03-15 11:02:00', '2022-04-21 15:16:23', '2022-04-21 15:16:23', NULL, 1, 15, NULL, NULL, NULL),
(4, 'Dicta asperiores in ', 'Maiores suscipit bea', '<p>Excepturi obcaecati .</p>', '2022-03-15 11:02:00', '2022-04-21 15:16:23', '2022-04-21 15:16:23', NULL, 2, 6, NULL, NULL, NULL),
(5, 'first Session', 'first-session', '<p>first Session</p>\n<p>&nbsp;</p>', '2022-04-21 15:31:22', '2022-07-18 03:37:29', '2022-07-18 03:37:29', NULL, 3, 30, NULL, NULL, NULL),
(6, 'second Session', 'second-session', '<p>second Session</p>', '2022-04-21 15:32:00', '2022-07-18 03:37:29', '2022-07-18 03:37:29', NULL, 3, 46, NULL, NULL, NULL),
(7, 'Third Session', 'third-session', '<p>Third Session</p>', '2022-04-21 15:38:10', '2022-07-18 03:37:29', '2022-07-18 03:37:29', NULL, 3, 22, NULL, NULL, NULL),
(8, 'Fourth Session', 'aljlsh-alrayah', '<p>Fourth Session</p>', '2022-04-21 15:39:53', '2022-07-18 03:37:29', '2022-07-18 03:37:29', NULL, 3, 40, NULL, NULL, NULL),
(9, 'Open Data Day', 'open-data-day', '', '2022-07-18 03:39:00', '2022-07-18 03:45:54', NULL, NULL, 4, 2, NULL, NULL, NULL),
(11, 'new course first lesson', 'new-course-first-lesson', '<p>lesson</p>', '2022-08-21 10:51:58', '2022-08-21 10:51:58', NULL, 'lessons/August2022/AH82XmTLc7XLJaCT5qAu.jpg', 3, 2, NULL, NULL, NULL),
(12, 'SPSS SES 1', 'spss-ses-1', '', '2022-09-18 04:35:35', '2022-09-18 04:35:35', NULL, NULL, NULL, 2, NULL, NULL, NULL),
(13, 'تقنية المعلومات', 'تقنية المعلومات', '', '2022-09-29 04:58:00', '2023-04-07 08:19:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `likes` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `likes`, `created_at`, `updated_at`, `user_id`) VALUES
(59, 2, 1, '2023-09-20 16:37:38', '2023-09-21 12:13:26', 1),
(60, 3, 1, '2023-09-20 16:37:49', '2023-09-21 05:42:30', 112),
(61, 2, 1, '2023-09-21 05:53:03', '2023-09-21 05:53:03', 113);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `topic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `join_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `group_id` int DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `user_id`, `topic`, `start_at`, `duration`, `password`, `start_url`, `join_url`, `group_id`, `lesson_id`, `created_at`, `updated_at`) VALUES
(3, 1, 'الإجتماع السنوي', '2022-08-21 14:00:00', 30, 'w3dgta', 'https://zoom.us/s/97565425704?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Ild3WXRoVV9HVE51ZnRBOHp1eGVaeXciLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEsIndjZCI6ImF3MSIsImNsdCI6MCwibW51bSI6Ijk3NTY1NDI1NzA0IiwiZXhwIjoxNjU0MTU2Njg3LCJpYXQiOjE2NTQxNDk0ODcsImFpZCI6ImUxZ0YxR3pGUXphR0JEVVMyc09zYXciLCJjaWQiOiIifQ.JUwZQQRzuTj0H-LfrwiDymsuPFfJeCphZXBCJU9Bans', 'https://zoom.us/j/97565425704?pwd=by9TK2JsQlMwUlZMdnRvYlpqU3NkUT09', 42, 11, '2022-06-02 03:58:00', '2022-08-21 11:00:19'),
(4, 37, NULL, '2022-11-15 10:00:49', 2, NULL, 'https://us02web.zoom.us/s/82835047426?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IldScy0yOTB6U3FXY0gtOHA0c2pTY3ciLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEsIndjZCI6InVzMDIiLCJjbHQiOjAsIm1udW0iOiI4MjgzNTA0NzQyNiIsImV4cCI6MTY2ODUxMzY0OSwiaWF0IjoxNjY4NTA2NDQ5LCJhaWQiOiJubVA4dDR3eVN5MlJWMkNBSDc1T213IiwiY2lkIjoiIn0.jsutz4THsMVnPe0QJ2O4LDabmIHG-Dx8LRqGWYgIQVA', 'https://us02web.zoom.us/j/82835047426', 43, 12, '2022-11-15 10:00:49', '2022-11-15 10:00:49'),
(5, 1, NULL, '2023-01-17 12:38:09', NULL, NULL, 'https://us02web.zoom.us/s/82826597733?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IldScy0yOTB6U3FXY0gtOHA0c2pTY3ciLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEsIndjZCI6InVzMDIiLCJjbHQiOjAsIm1udW0iOiI4MjgyNjU5NzczMyIsImV4cCI6MTY3Mzk2NjI5MCwiaWF0IjoxNjczOTU5MDkwLCJhaWQiOiJubVA4dDR3eVN5MlJWMkNBSDc1T213IiwiY2lkIjoiIn0.YzFi0h0TaztwF8AqrbTNGcXX5OvJg9HCZZW7O0UHQGk', 'https://us02web.zoom.us/j/82826597733', 40, 9, '2023-01-17 12:38:10', '2023-01-17 12:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-04-08 09:31:29', '2020-04-08 09:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2020-04-08 09:31:29', '2022-02-05 09:18:31', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-04-08 09:31:29', '2022-06-06 21:57:21', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 2, '2020-04-08 09:31:29', '2022-02-05 09:18:32', 'voyager.users.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2020-04-08 09:31:30', '2020-04-12 19:30:35', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-04-08 09:31:30', '2020-04-12 19:30:31', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-04-08 09:31:30', '2020-04-12 19:30:31', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-04-08 09:31:30', '2020-04-12 19:30:31', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-04-08 09:31:30', '2020-04-12 19:30:31', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2020-04-08 09:31:30', '2020-04-12 19:30:35', 'voyager.settings.index', NULL),
(12, 1, 'Categories', '', '_self', 'voyager-categories', '#000000', NULL, 6, '2020-04-08 09:32:07', '2020-04-12 21:29:45', 'voyager.categories.index', 'null'),
(13, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 4, '2020-04-08 09:32:07', '2022-06-06 21:57:21', 'voyager.posts.index', NULL),
(14, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 3, '2020-04-08 09:32:07', '2022-06-06 21:57:21', 'voyager.pages.index', NULL),
(16, 1, 'Courses', '', '_self', NULL, NULL, NULL, 10, '2020-04-12 11:23:44', '2022-08-07 17:35:38', 'voyager.courses.index', NULL),
(17, 1, 'Lessons', '', '_self', NULL, NULL, NULL, 13, '2020-04-12 11:32:25', '2022-08-07 17:36:11', 'voyager.lessons.index', NULL),
(19, 1, 'Comments', '', '_self', NULL, NULL, NULL, 16, '2020-04-12 12:05:34', '2022-08-07 17:36:11', 'voyager.comments.index', NULL),
(20, 1, 'Resources', '', '_self', NULL, NULL, NULL, 17, '2020-04-12 12:16:41', '2022-08-07 17:36:11', 'voyager.resources.index', NULL),
(21, 1, 'News', '', '_self', NULL, NULL, NULL, 24, '2020-04-12 12:27:18', '2022-08-07 17:38:15', 'voyager.news.index', NULL),
(22, 1, 'Events', '', '_self', NULL, NULL, NULL, 25, '2020-04-12 12:30:25', '2022-08-07 17:38:15', 'voyager.events.index', NULL),
(28, 1, 'Trainers', '', '_self', NULL, NULL, NULL, 18, '2020-04-12 21:05:22', '2022-08-07 17:36:07', 'voyager.trainers.index', NULL),
(29, 1, 'Applicants', '', '_self', NULL, NULL, NULL, 9, '2020-04-12 21:15:56', '2022-08-07 17:35:38', 'voyager.applicants.index', NULL),
(31, 1, 'Faqs', '', '_self', NULL, NULL, NULL, 26, '2020-04-13 08:03:04', '2022-08-07 17:38:15', 'voyager.faqs.index', NULL),
(32, 1, 'Our Services', '', '_self', NULL, NULL, NULL, 27, '2020-04-13 08:10:40', '2022-08-07 17:38:15', 'voyager.our-services.index', NULL),
(33, 1, 'Sliders', '', '_self', NULL, '#000000', NULL, 28, '2020-04-13 09:18:32', '2022-08-07 17:38:15', 'voyager.sliders.index', 'null'),
(34, 1, 'Groups', '', '_self', NULL, NULL, NULL, 11, '2022-02-04 14:57:33', '2022-08-07 17:36:11', 'voyager.groups.index', NULL),
(35, 1, 'Products', '', '_self', NULL, NULL, NULL, 29, '2022-02-07 23:11:41', '2022-08-07 17:37:52', 'voyager.products.index', NULL),
(36, 1, 'Shop Categories', '', '_self', NULL, '#000000', NULL, 30, '2022-02-07 23:13:17', '2022-08-07 17:37:52', 'voyager.p-categories.index', 'null'),
(37, 1, 'Contacts', '', '_self', NULL, NULL, NULL, 31, '2022-03-02 03:09:31', '2022-08-07 17:37:52', 'voyager.contacts.index', NULL),
(38, 1, 'Partners', '', '_self', NULL, NULL, NULL, 32, '2022-03-02 04:11:10', '2022-08-07 17:37:52', 'voyager.partners.index', NULL),
(39, 1, 'Assignments', '', '_self', NULL, NULL, NULL, 21, '2022-03-09 02:50:01', '2022-08-07 17:37:58', 'voyager.assignments.index', NULL),
(40, 1, 'Orders', '', '_self', NULL, NULL, NULL, 33, '2022-03-09 09:57:39', '2022-08-07 17:37:20', 'voyager.orders.index', NULL),
(41, 1, 'Order Items', '', '_self', NULL, NULL, NULL, 34, '2022-03-09 11:29:58', '2022-08-07 17:37:20', 'voyager.order-items.index', NULL),
(42, 1, 'Social Media', '', '_self', NULL, NULL, NULL, 35, '2022-03-15 09:54:35', '2022-08-07 17:37:20', 'voyager.social-media.index', NULL),
(43, 1, 'Newsletter', '', '_self', NULL, NULL, NULL, 36, '2022-03-20 13:28:40', '2022-08-07 17:37:20', 'voyager.newsletters.index', NULL),
(44, 1, 'Resolves', '', '_self', NULL, NULL, NULL, 22, '2022-03-30 02:24:46', '2022-08-07 17:38:11', 'voyager.resolves.index', NULL),
(45, 1, 'Questions', '', '_self', NULL, NULL, 50, 1, '2022-03-31 03:09:41', '2022-04-01 12:27:13', 'voyager.questions.index', NULL),
(47, 1, 'Quizzes', '', '_self', NULL, NULL, 50, 3, '2022-04-01 01:40:35', '2022-04-01 12:27:34', 'voyager.quizzes.index', NULL),
(48, 1, 'Quiz Questions', '', '_self', NULL, NULL, 50, 4, '2022-04-01 09:56:57', '2022-04-01 12:27:37', 'voyager.quiz-questions.index', NULL),
(49, 1, 'Question Options', '', '_self', NULL, NULL, 50, 2, '2022-04-01 12:19:39', '2022-04-01 12:27:29', 'voyager.question-options.index', NULL),
(50, 1, 'Exam', '', '_self', 'voyager-book', '#000000', NULL, 20, '2022-04-01 12:27:02', '2022-08-07 17:37:29', NULL, ''),
(51, 1, 'Quiz Scores', '', '_self', NULL, NULL, 50, 5, '2022-04-04 01:51:05', '2022-04-04 02:57:38', 'voyager.quiz-scores.index', NULL),
(55, 1, 'Event Records', '', '_self', NULL, NULL, NULL, 37, '2022-04-10 05:09:36', '2022-08-07 17:34:38', 'voyager.event-records.index', NULL),
(57, 1, 'Absences', '', '_self', NULL, NULL, NULL, 38, '2022-04-16 07:08:35', '2022-08-07 17:34:38', 'voyager.absences.index', NULL),
(58, 1, 'Certificates', '', '_self', NULL, NULL, NULL, 23, '2022-04-16 09:02:43', '2022-08-07 17:38:15', 'voyager.certificates.index', NULL),
(59, 1, 'Introductions', '', '_self', NULL, NULL, NULL, 19, '2022-04-17 04:35:20', '2022-08-07 17:36:07', 'voyager.introductions.index', NULL),
(60, 1, 'Course Ratings', '', '_self', NULL, NULL, NULL, 12, '2022-05-15 01:30:02', '2022-08-07 17:36:11', 'voyager.course-ratings.index', NULL),
(61, 1, 'Meetings', '', '_self', NULL, NULL, NULL, 15, '2022-06-01 12:33:25', '2022-08-07 17:36:11', 'voyager.meetings.index', NULL),
(62, 1, 'Skills', '', '_self', NULL, NULL, NULL, 39, '2022-06-11 23:36:25', '2022-06-11 23:36:25', 'voyager.skills.index', NULL),
(63, 1, 'Payments', '', '_self', NULL, NULL, NULL, 40, '2022-06-30 03:35:40', '2022-06-30 03:35:40', 'voyager.payments.index', NULL),
(64, 1, 'sessions', '', '_self', NULL, NULL, NULL, 41, '2023-04-08 19:27:22', '2023-04-08 19:27:22', 'voyager.videos.index', NULL),
(66, 1, 'Postchilders', '', '_self', 'voyager-certificate', NULL, NULL, 42, '2023-09-19 10:46:24', '2023-09-19 10:46:24', 'voyager.postchilders.index', NULL),
(67, 1, 'Liks', '', '_self', NULL, NULL, NULL, 43, '2023-09-19 13:24:51', '2023-09-19 13:24:51', 'voyager.liks.index', NULL),
(69, 1, 'Postchilderns', '', '_self', NULL, NULL, NULL, 44, '2023-09-19 13:45:52', '2023-09-19 13:45:52', 'voyager.postchilderns.index', NULL),
(71, 1, 'Likes', '', '_self', NULL, NULL, NULL, 45, '2023-09-20 10:25:18', '2023-09-20 10:25:18', 'voyager.likes.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_01_01_000000_add_voyager_user_fields', 1),
(3, '2016_01_01_000000_create_data_types_table', 1),
(4, '2016_05_19_173453_create_menu_table', 1),
(5, '2016_10_21_190000_create_roles_table', 1),
(6, '2016_10_21_190000_create_settings_table', 1),
(7, '2016_11_30_135954_create_permission_table', 1),
(8, '2016_11_30_141208_create_permission_role_table', 1),
(9, '2016_12_26_201236_data_types__add__server_side', 1),
(10, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(11, '2017_01_14_005015_create_translations_table', 1),
(12, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(13, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(14, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(15, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(16, '2017_08_05_000000_add_group_to_settings_table', 1),
(17, '2017_11_26_013050_add_user_role_relationship', 1),
(18, '2017_11_26_015000_create_user_roles_table', 1),
(19, '2018_03_11_000000_add_user_settings', 1),
(20, '2018_03_14_000000_add_details_to_data_types_table', 1),
(21, '2018_03_16_000000_make_settings_value_nullable', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(27, '2014_10_12_100000_create_password_resets_table', 3),
(28, '2018_06_30_113500_create_comments_table', 4),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 5),
(30, '2021_05_22_053359_create_quizzes_table', 6),
(31, '2022_04_04_015726_edit_quiz_attempt_answers_migration', 7),
(32, '2022_05_15_031532_create_instagram_basic_profile_table', 7),
(33, '2022_05_15_031532_create_instagram_feed_token_table', 7),
(34, '2023_08_18_145221_add_facebook_id_column', 8),
(35, '2023_08_18_160222_add_google_id_column', 9),
(36, '2023_08_18_172417_add_linkedin_id_column', 10),
(37, '2023_08_23_161957_create_notifications_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `mohamds`
--

CREATE TABLE `mohamds` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `description`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'What is Lorem Ipsum?', 'news\\April2020\\n5hOCpj6xYQrxXYhgSEA.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'what-is-lorem-ipsum', '2020-04-14 10:53:21', '2022-04-26 02:58:04', '2022-04-26 02:58:04'),
(2, 'Why do we use it?', 'news\\April2020\\HIqIScoBUZVz5m4tPemJ.jpg', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'why-do-we-use-it', '2020-04-14 10:54:07', '2022-04-24 04:00:02', '2022-04-24 04:00:02'),
(3, 'Statical Programs', 'news/April2022/eisgmkdd27D0XqzUeYZ5.jpg', '<h3>MaxStat</h3>\n<p>You can create statistical analysis in three simple steps, easy to use and especially useful for students and business editors</p>\n<p><a title=\"Max Stat\" href=\"https://maxstat.de/en/home-en/\" target=\"_blank\" rel=\"noopener\">Max Stat</a></p>\n<p>&nbsp;</p>\n<h3>MATLAB</h3>\n<p>Creates a programming environment for algorithm creation, data analysis, numerical computation, and visualization.</p>\n<p>Helps create tables, graphs, equations, and a wide range of other tools to help easily create and edit artwork</p>\n<p><a title=\"Go to MATLAB\" href=\"https://www.mathworks.com/products/matlab.html\" target=\"_blank\" rel=\"noopener\">MATLAB</a></p>\n<p>&nbsp;</p>\n<h3>AcaStat</h3>\n<p class=\"elementor-image-box-description\">Available on both Windows and other iOS operating system, it is one of the very effective statistics software. It allows you to format variables like values and labels and easily configure controls which is one of its exclusive features. Furthermore, it allows you to import data from your spreadsheet files using the clone tool and quickly analyzes the data that helps you design logistic details, OLS, and frequency tables.</p>\n<p><a title=\"Go to Aca Stat\" href=\"http://www.acastat.com/\" target=\"_blank\" rel=\"noopener\">AcaStat</a></p>\n<p>&nbsp;</p>\n<h3>AdamSoft</h3>\n<p class=\"elementor-image-box-description\">Free and open source software that can run on any system that supports Java. It can implement a large variety of analytical techniques such as data mining, record linking methods, cluster analysis, graphs, logistic regression and lining, etc. Bonus &ndash; This program can also read and write statistical data values from various sources such as Oracle, ODBC data sources, text files, MySQL, Excel spreadsheets and PostgreSQL.</p>\n<p class=\"elementor-image-box-description\">&nbsp;</p>\n<p><a title=\"AdamSoft\" href=\"http://adamsoft.sourceforge.net/download.html\" target=\"_blank\" rel=\"noopener\">AdamSoft</a></p>\n<p>&nbsp;</p>\n<h3>Stawing</h3>\n<p class=\"elementor-image-box-description\">The software helps users to conveniently define an analysis framework that provides a high degree of confidence for statistical outputs and you can also access basic charts such as bar charts and graph that can be sent to spreadsheets.</p>\n<p class=\"elementor-image-box-description\">&nbsp;</p>\n<p class=\"elementor-image-box-description\">&nbsp;</p>\n<p><a title=\"Stawing\" href=\"https://www.qualtrics.com/iq/stats-iq/\" target=\"_blank\" rel=\"noopener\">Stawing</a></p>\n<p>&nbsp;</p>\n<h3 class=\"elementor-image-box-title\">&nbsp;</h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>https://www.statistix.com/</p>\n<h3>Stata</h3>\n<p>&nbsp;</p>\n<p class=\"elementor-image-box-description\">A complete statistical software package that provides everything you need to perform data analysis, graphics, and data management. All you need is a computer with enough memory, and the software can accept huge amounts of data and create graphs very fast. It can also perform various types of regressions, validate data from surveys, and will accept a variance of data inputs for use in processing. It can evaluate data sets over time, save everything you\'ve analyzed, clean and arrange the data, create a redundant variable, and export your output</p>\n<p>&nbsp;</p>\n<p><a title=\"Stata\" href=\"https://www.stata.com/\" target=\"_blank\" rel=\"noopener\">Stata</a></p>\n<p>&nbsp;</p>\n<h3>Statistix</h3>\n<p>&nbsp;</p>\n<p class=\"elementor-image-box-description\">A complete statistical software package that provides everything you need to perform data analysis, graphics, and data management. All you need is a computer with enough memory, and the software can accept huge amounts of data and create graphs very fast. It can also perform various types of regressions, validate data from surveys, and will accept a variance of data inputs for use in processing. It can evaluate data sets over time, save everything you\'ve analyzed, clean and arrange the data, create a redundant variable, and export your output</p>\n<p>&nbsp;</p>\n<p><a title=\"Statistix\" href=\"https://www.statistix.com/\" target=\"_blank\" rel=\"noopener\">Statistix</a></p>\n<p>&nbsp;</p>\n<h3>SAS Bussines Inteligence</h3>\n<p>&nbsp;</p>\n<p class=\"elementor-image-box-description\">It helps integrate and find data on your own, generate and share interactive reports, spark your passion with simple analytics, and track key measures so that when something goes wrong, you\'ll know how to do it. Among its advantages is its ability to quickly display data and detect patterns. Features like heat maps help you see where the maximum traffic is. It also allows integration with other open source software such as R.</p>\n<p>&nbsp;</p>\n<p><a title=\"SAS Bussines Intelligence\" href=\"https://www.sas.com/en_us/solutions/business-intelligence.html\" target=\"_blank\" rel=\"noopener\">SAS Bussines Intelligence</a></p>\n<p>&nbsp;</p>\n<h3 class=\"elementor-image-box-title\">Intrinsic Noise Analyzer</h3>\n<h3 class=\"elementor-image-box-title\">&nbsp;</h3>\n<h3>&nbsp;</h3>\n<p>&nbsp;</p>\n<p class=\"elementor-image-box-description\">It helps integrate and find data on your own, generate and share interactive reports, spark your passion with simple analytics, and track key measures so that when something goes wrong, you\'ll know how to do it. Among its advantages is its ability to quickly display data and detect patterns. Features like heat maps help you see where the maximum traffic is. It also allows integration with other open source software such as R.</p>\n<p>&nbsp;</p>\n<h3 class=\"elementor-image-box-title\"><a title=\"Intrinsic Noise Analyzer\" href=\"https://www.softpedia.com/get/Science-CAD/Intrinsic-Noise-Analyzer.shtml\" target=\"_blank\" rel=\"noopener\">Intrinsic Noise Analyzer</a></h3>\n<p>&nbsp;</p>\n<h3 class=\"elementor-image-box-title\">Mondarian</h3>\n<h3 class=\"elementor-image-box-title\">&nbsp;</h3>\n<h3 class=\"elementor-image-box-title\">&nbsp;</h3>\n<h3>&nbsp;</h3>\n<p>&nbsp;</p>\n<p class=\"elementor-image-box-description\">It helps integrate and find data on your own, generate and share interactive reports, spark your passion with simple analytics, and track key measures so that when something goes wrong, you\'ll know how to do it. Among its advantages is its ability to quickly display data and detect patterns. Features like heat maps help you see where the maximum traffic is. It also allows integration with other open source software such as R.</p>\n<p>&nbsp;</p>\n<h3 class=\"elementor-image-box-title\"><a title=\"Mondarian\" href=\"https://sourceforge.net/projects/mondrian/\" target=\"_blank\" rel=\"noopener\">Mondarian</a></h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h3 class=\"elementor-image-box-title\">Data Hero</h3>\n<h3 class=\"elementor-image-box-title\">&nbsp;</h3>\n<h3 class=\"elementor-image-box-title\">&nbsp;</h3>\n<h3>&nbsp;</h3>\n<p>&nbsp;</p>\n<p class=\"elementor-image-box-description\">The software offers data visualization and a dashboard specifically for business needs. It comes with a user-friendly design and attractive features to allow business stakeholders to reveal their vision within their data and pass it on to their team.</p>\n<p class=\"elementor-image-box-description\">&nbsp;</p>\n<p class=\"elementor-image-box-description\">&nbsp;</p>\n<p>&nbsp;</p>\n<h3 class=\"elementor-image-box-title\"><a title=\"Data Hero\" href=\"https://datahero.com/\" target=\"_blank\" rel=\"noopener\">Data Hero</a></h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h3 class=\"elementor-image-box-title\">Whatagraph</h3>\n<h3 class=\"elementor-image-box-title\">&nbsp;</h3>\n<h3 class=\"elementor-image-box-title\">&nbsp;</h3>\n<h3>&nbsp;</h3>\n<p>&nbsp;</p>\n<p class=\"elementor-image-box-description\">Statistical software that creates visual reports to help you understand and monitor the data behind the performance of your digital campaigns, website, and e-commerce portal. This setting allows you to set up automatic delivery of reports to your chosen email recipients, ensuring that everyone is up to date with the latest data. It allows you to create custom reports using the chosen metrics, add your own logo and even change the color scheme. Whatagraph helps you create reports in a jiffy which can be downloaded in PDF format directly from your email or your home screen.</p>\n<p class=\"elementor-image-box-description\">&nbsp;</p>\n<p class=\"elementor-image-box-description\">&nbsp;</p>\n<p class=\"elementor-image-box-description\">&nbsp;</p>\n<p>&nbsp;</p>\n<h3 class=\"elementor-image-box-title\"><a title=\"Whatagraph\" href=\"https://whatagraph.com/pricing\" target=\"_blank\" rel=\"noopener\">Whatagraph</a></h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><br /><br /></p>\n<p>&nbsp;</p>', 'Statical Programs', '2020-04-14 10:54:00', '2022-04-24 03:52:31', NULL),
(4, 'Books', 'news/April2022/JgUZhhAMOZVIOINrtfsv.jpeg', '<h4 class=\"elementor-heading-title elementor-size-default\">Understanding Statistics and Experimental Design</h4>\n<p><img title=\"Understanding Statistics and Experimental Design\" src=\"https://lms.thedatacademy.com/public/storage/news/April2022/SharedScreenshot.jpg\" alt=\"Understanding Statistics and Experimental Design\" width=\"300\" height=\"300\" /></p>\n<p><a title=\"Understanding-Statistics-and-Experimental-Design.\" href=\"https://www.hrz-stat.com/wp-content/uploads/2021/10/Understanding-Statistics-and-Experimental-Design.pdf\" target=\"_blank\" rel=\"noopener\">Understanding-Statistics-and-Experimental-Design.</a></p>\n<h4 class=\"elementor-heading-title elementor-size-default\">&nbsp;</h4>\n<h4 class=\"elementor-heading-title elementor-size-default\">Think Stats</h4>\n<p><img title=\"Think Stats\" src=\"https://lms.thedatacademy.com/public/storage/news/April2022/SharedScreenshot1.jpg\" alt=\"Think Stats\" width=\"300\" height=\"300\" /></p>\n<p><a title=\"Think Stats\" href=\"https://www.hrz-stat.com/wp-content/uploads/2021/10/Think-Stats.pdf\" target=\"_blank\" rel=\"noopener\">Think Stats</a></p>\n<p>&nbsp;</p>\n<h4 class=\"elementor-heading-title elementor-size-default\">The Elements Of Data Analytics Style</h4>\n<h4 class=\"elementor-heading-title elementor-size-default\"><img title=\"The Element Of Data Analytics Style\" src=\"https://lms.thedatacademy.com/public/storage/news/April2022/SharedScreenshot2.jpg\" alt=\"The Element Of Data Analytics Style\" /></h4>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><a title=\"The Elements Of Data Analytics Style\" href=\"https://www.hrz-stat.com/wp-content/uploads/2021/10/The-Elements-of-Data-Analytic-Style.pdf\" target=\"_blank\" rel=\"noopener\">The Elements Of Data Analytics Style</a></p>\n<p>&nbsp;</p>', 'Books', '2020-04-14 10:54:00', '2022-04-26 02:58:19', NULL),
(5, '3 ways to spot a bad statistic', 'news/April2022/sLfmFUzbPJArLYdX5ZnR.jpg', '<div class=\"text_block clearfix\">\n<p><span style=\"font-weight: 400;\">&ldquo; I want to give you guys three questions that will help you be able to spot some bad statistics. So, question number one is: Can you see uncertainty? One of things that has really changed people&rsquo;s relationship with numbers, and even their trust in the media, has been the use of political polls. I personally have many issues with political polls because I think the role of journalists is actually to report the facts and not attempt to predict them, especially when those predictions can actually damage democracy by signaling to people: do not bother to vote for that guy, he doesn&rsquo;t have a chance. Let us set that aside for now and talk about the accuracy of this endeavor.&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">Based on national elections in the UK, Italy, Israel and of course, the most recent US presidential election, using polls to predict electoral outcomes is about as accurate as using the moon to predict hospital admissions. No, seriously, I used actual data from an academic study to draw this. There are a lot of reasons why polling has become so inaccurate. Our societies have become really diverse, which makes it difficult for pollsters to get a really nice representative sample of the population for their polls. People are really reluctant to answer their phones to pollsters, and also, shockingly enough, people might lie. But you wouldn&rsquo;t necessarily know that to look at the media. For one thing, the probability of a Hillary Clinton win was communicated with decimal places. We don&rsquo;t use decimal places to describe the temperature. How on earth can predicting the behavior of 230 million voters in this country be that precise? And then there were those sleek charts. See, a lot of data visualizations will overstate certainty, and it works &mdash; these charts can numb our brains to criticism. When you hear a statistic, you might feel skeptical. As soon as it&rsquo;s buried in a chart, it feels like some kind of objective science, and it&rsquo;s not.&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">So I was trying to find ways to better communicate this to people, to show people the uncertainty in our numbers. What I did was I started taking real data sets, and turning them into hand-drawn visualizations, so that people can see how imprecise the data is; so people can see that a human did this, a human found the data and visualized it. For example, instead of finding out the probability of getting the flu in any given month, you can see the rough distribution of flu season. This is &mdash;&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">a bad shot to show in February. But it&rsquo;s also more responsible data visualization, because if you were to show the exact probabilities, maybe that would encourage people to get their flu jabs at the wrong time.&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">The point of these shaky lines is so that people remember these imprecisions, but also so they don&rsquo;t necessarily walk away with a specific number, but they can remember important facts. Facts like injustice and inequality leave a huge mark on our lives. Facts like Black Americans and Native Americans have shorter life expectancies than those of other races, and that isn&rsquo;t changing anytime soon. Facts like prisoners in the US can be kept in solitary confinement cells that are smaller than the size of an average parking space.&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">The point of these visualizations is also to remind people of some really important statistical concepts, concepts like averages. So let&rsquo;s say you hear a claim like, &ldquo;The average swimming pool in the US contains 6.23 fecal accidents.&rdquo; That doesn&rsquo;t mean every single swimming pool in the country contains exactly 6.23 turds. So in order to show that, I went back to the original data, which comes from the CDC, who surveyed 47 swimming facilities. And I just spent one evening redistributing poop. So you can kind of see how misleading averages can be. OK, so the second question that you guys should be asking yourselves to spot bad numbers is: Can I see myself in the data? This question is also about averages in a way, because part of the reason why people are so frustrated with these national statistics, is they don&rsquo;t really tell the story of who&rsquo;s winning and who&rsquo;s losing from national policy. It&rsquo;s easy to understand why people are frustrated with global averages when they don&rsquo;t match up with their personal experiences. I wanted to show people the way data relates to their everyday lives. I started this advice column called &ldquo;Dear Mona,&rdquo; where people would write to me with questions and concerns and I&rsquo;d try to answer them with data. People asked me anything. questions like, &ldquo;Is it normal to sleep in a separate bed to my wife?&rdquo; &ldquo;Do people regret their tattoos?&rdquo; &ldquo;What does it mean to die of natural causes?&rdquo;&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">All of these questions are great, because they make you think about ways to find and communicate these numbers. If someone asks you, &ldquo;How much pee is a lot of pee?&rdquo; which is a question that I got asked, you really want to make sure that the visualization makes sense to as many people as possible. These numbers aren&rsquo;t unavailable. Sometimes they&rsquo;re just buried in the appendix of an academic study. And they&rsquo;re certainly not inscrutable; if you really wanted to test these numbers on urination volume, you could grab a bottle and try it for yourself.&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">The point of this isn&rsquo;t necessarily that every single data set has to relate specifically to you. I&rsquo;m interested in how many women were issued fines in France for wearing the face veil, or the niqab, even if I don&rsquo;t live in France or wear the face veil. The point of asking where you fit in is to get as much context as possible. So it&rsquo;s about zooming out from one data point, like the unemployment rate is five percent, and seeing how it changes over time, or seeing how it changes by educational status &mdash; this is why your parents always wanted you to go to college &mdash; or seeing how it varies by gender. Nowadays, male unemployment rate is higher than the female unemployment rate. Up until the early &rsquo;80s, it was the other way around. This is a story of one of the biggest changes that&rsquo;s happened in American society, and it&rsquo;s all there in that chart, once you look beyond the averages. The axes are everything; once you change the scale, you can change the story.&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">OK, so the third and final question that I want you guys to think about when you&rsquo;re looking at statistics is: How was the data collected? So far, I&rsquo;ve only talked about the way data is communicated, but the way it&rsquo;s collected matters just as much. I know this is tough, because methodologies can be opaque and actually kind of boring, but there are some simple steps you can take to check this.&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">I&rsquo;ll use one last example here. One poll found that 41 percent of Muslims in this country support jihad, which is obviously pretty scary, and it was reported everywhere in 2015. When I want to check a number like that, I&rsquo;ll start off by finding the original questionnaire. It turns out that journalists who reported on that statistic ignored a question lower down on the survey that asked respondents how they defined &ldquo;jihad.&rdquo; And most of them defined it as, &ldquo;Muslims&rsquo; personal, peaceful struggle to be more religious.&rdquo; Only 16 percent defined it as, &ldquo;violent holy war against unbelievers.&rdquo; This is the really important point: based on those numbers, it&rsquo;s totally possible that no one in the survey who defined it as violent holy war also said they support it. Those two groups might not overlap at all.&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">It&rsquo;s also worth asking how the survey was carried out. This was something called an opt-in poll, which means anyone could have found it on the internet and completed it. There&rsquo;s no way of knowing if those people even identified as Muslim. And finally, there were 600 respondents in that poll. There are roughly three million Muslims in this country, according to Pew Research Center. That means the poll spoke to roughly one in every 5,000 Muslims in this country.&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">This is one of the reasons why government statistics are often better than private statistics. A poll might speak to a couple hundred people, maybe a thousand, or if you&rsquo;re L&rsquo;Oreal, trying to sell skin care products in 2005, then you spoke to 48 women to claim that they work.&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">Private companies don&rsquo;t have a huge interest in getting the numbers right, they just need the right numbers. Government statisticians aren&rsquo;t like that. In theory, at least, they&rsquo;re totally impartial, not least because most of them do their jobs regardless of who&rsquo;s in power. They&rsquo;re civil servants. And to do their jobs properly, they don&rsquo;t just speak to a couple hundred people. Those unemployment numbers I keep on referencing come from the Bureau of Labor Statistics, and to make their estimates, they speak to over 140,000 businesses in this country.&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">I get it, it&rsquo;s frustrating. If you want to test a statistic that comes from a private company, you can buy the face cream for you and a bunch of friends, test it out, if it doesn&rsquo;t work, you can say the numbers were wrong. But how do you question government statistics? You just keep checking everything. Find out how they collected the numbers. Find out if you&rsquo;re seeing everything on the chart you need to see. But don&rsquo;t give up on the numbers altogether, because if you do, we&rsquo;ll be making public policy decisions in the dark, using nothing but private interests to guide us.&rdquo;</span></p>\n<p><strong>Mona Chalabi &ndash; A British data journalist and writer of Iraqi descent</strong></p>\n</div>\n<p>&nbsp;</p>', '3-ways-to-spot-a-bad-statistic', '2022-04-24 05:35:27', '2022-04-24 05:35:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'mosyqevy@mailinator.com', '2022-03-20 13:39:15', '2022-03-20 13:39:15'),
(2, 'fywotefoja@mailinator.com', '2022-03-22 08:31:36', '2022-03-22 08:31:36'),
(3, 'mazin.abdulrahman@aims.ac.rw', '2022-08-21 08:16:39', '2022-08-21 08:16:39'),
(4, 'ahmedgadallah1889@gmail.com', '2022-08-21 09:15:38', '2022-08-21 09:15:38'),
(5, 'ahmedgadallah1889@gmail.com', '2022-08-21 09:16:01', '2022-08-21 09:16:01'),
(6, 'admin@demo.com', '2023-03-18 14:52:08', '2023-03-18 14:52:08'),
(7, 'admin@demo.com', '2023-03-18 14:52:09', '2023-03-18 14:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('058bf6ff-4d59-46c9-a75a-1addab258a46', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 99, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', '2023-08-24 13:44:07', '2023-08-24 11:33:15', '2023-08-24 13:44:07'),
('0a5f58ed-b586-47b7-994f-4960fb0a5132', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 96, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 11:33:15', '2023-08-24 11:33:15'),
('16327131-904c-4866-868a-695316f8e8ba', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 95, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 10:52:49', '2023-08-24 10:52:49'),
('1d92390b-90b2-49b5-99ef-49e72ba87646', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 89, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 11:33:15', '2023-08-24 11:33:15'),
('21d8d145-0f38-424b-b2e9-ff19fcd4c69b', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 107, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', '2023-08-24 14:17:08', '2023-08-24 10:52:49', '2023-08-24 14:17:08'),
('28724a67-c105-4519-b229-a73441d67094', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 91, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 11:33:15', '2023-08-24 11:33:15'),
('33cc73b4-7e73-4c7f-a899-06c098a9829a', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 92, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 10:52:49', '2023-08-24 10:52:49'),
('3b3f97aa-89ad-4256-862a-7c5fc49ce8b8', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 88, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 10:52:49', '2023-08-24 10:52:49'),
('405160c2-42b5-4d7d-b183-15e392485169', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 107, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', '2023-08-24 14:17:08', '2023-08-24 11:33:15', '2023-08-24 14:17:08'),
('47acb5de-5a5f-491b-a154-6491895c5912', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 99, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', '2023-08-24 13:44:07', '2023-08-24 10:52:49', '2023-08-24 13:44:07'),
('5185124f-3525-4951-8f87-e2dd350a9dec', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 91, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 10:52:49', '2023-08-24 10:52:49'),
('56ebf80e-fff7-41fb-905e-0b3b38318e58', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 37, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 10:52:49', '2023-08-24 10:52:49'),
('6c3a9bdb-5f3f-4c8a-af55-858b0abcfe2f', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 37, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 11:33:15', '2023-08-24 11:33:15'),
('7d13906a-96df-4866-9633-6be4f5de7d88', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 1, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', '2023-08-29 08:37:19', '2023-08-24 11:33:15', '2023-08-29 08:37:19'),
('8d35b0a8-176e-43f2-9bdb-4d376eea6497', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 106, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', '2023-08-24 14:16:55', '2023-08-24 10:52:49', '2023-08-24 14:16:55'),
('91971654-7823-42d6-b6a5-344ca9774868', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 97, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 11:33:15', '2023-08-24 11:33:15'),
('ab515a7b-db8e-460e-915f-a564ad06b11a', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 90, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 11:33:15', '2023-08-24 11:33:15'),
('ab6e5a0e-fd19-4db1-90cb-d86af4fe71af', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 90, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 10:52:49', '2023-08-24 10:52:49'),
('baa68687-1ff4-4d8a-abd7-b6beb80e6924', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 1, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', '2023-08-29 08:37:19', '2023-08-24 10:52:49', '2023-08-29 08:37:19'),
('c3a0ec1f-03b6-4467-906a-7f41a3e7f266', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 92, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 11:33:15', '2023-08-24 11:33:15'),
('ca4d4a48-8953-4159-a8e6-e8acc1477597', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 97, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 10:52:49', '2023-08-24 10:52:49'),
('cf65ea50-297b-4704-9dbe-fcc4ffe2c040', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 38, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 10:52:49', '2023-08-24 10:52:49'),
('d7c6e31d-1f85-4c03-95cd-0f21d33f1aeb', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 38, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 11:33:15', '2023-08-24 11:33:15'),
('d81c25c8-449c-4960-8bd9-38f9b86f49ae', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 95, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 11:33:15', '2023-08-24 11:33:15'),
('df0e0253-d09e-430e-a2c0-3b79049fa166', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 96, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 10:52:49', '2023-08-24 10:52:49'),
('e4f6b564-f702-42fc-91c9-54f1d2405d7c', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 106, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', '2023-08-24 14:16:55', '2023-08-24 11:33:15', '2023-08-24 14:16:55'),
('eef5b4c3-4faf-4b22-822e-585b015aa9ff', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 89, '{\"trainer_name\":\"mohamadayman\",\"course_id\":159,\"course_title\":\"PHP5\",\"course_image\":\"storage\\/courses\\/PHP5\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 10:52:49', '2023-08-24 10:52:49'),
('fd06ad81-9ea5-4b45-a288-fd59c7b4c977', 'App\\Notifications\\CreateCourse', 'App\\Models\\User', 88, '{\"trainer_name\":\"mohamadayman\",\"course_id\":160,\"course_title\":\"php 16\",\"course_image\":\"storage\\/courses\\/php 16\\/Screenshot from 2023-08-19 16-38-24.png\",\"massage\":\"A new course has been uploaded by him\"}', NULL, '2023-08-24 11:33:15', '2023-08-24 11:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_price`, `address`, `phone`, `created_at`, `updated_at`, `first_name`, `last_name`, `email`, `state`, `city`, `postal_code`, `status`) VALUES
(31, 1, 2, 'Nisi ut similique qu', '+1 (483) 404-3672', '2022-05-17 06:10:18', '2022-05-17 06:10:18', 'Leonard', 'Decker', 'xywigypyk@mailinator.com', 'Sed qui vel consequa', 'Elit eius assumenda', 'Ut mollit itaque duc', 0),
(32, 57, 2, 'MUSCAT', '+96897676022', '2022-05-19 09:02:56', '2022-05-19 09:02:56', 'mohammed', 'alsaadi', 'mohd.alsaadi87+1@gmail.com', 'Muscat', 'SEEB', '130', 0),
(33, 1, 2, 'Vel in proident arc', '+1 (427) 659-2369', '2022-07-05 09:13:12', '2022-07-05 09:13:12', 'Yardley', 'Shepherd', 'muhyr@mailinator.com', 'Eligendi distinctio', 'Est a incididunt en', 'Autem non libero qua', 0),
(34, 1, 0, 'Pariatur Velit volu', '+1 (369) 227-5759', '2022-07-13 13:49:58', '2022-07-13 13:49:58', 'Yoshio', 'Hernandez', 'dekywu@mailinator.com', 'Qui sequi qui volupt', 'Adipisicing explicab', 'Animi quo eveniet', 0),
(35, 62, 4, 'KG3 St Kicukiro', '+25094567704', '2022-08-09 08:16:40', '2022-08-09 08:16:40', 'Mazin', 'Abdullatif', 'mazin.abdulrahman@aims.ac.rw', 'Select Region', 'Kigali', '00000', 0),
(36, 62, 2, 'KG3 St Kicukiro', '+25094567704', '2022-08-09 08:19:46', '2022-08-09 08:19:46', 'Mazin', 'Abdullatif', 'mazin.abdulrahman@aims.ac.rw', 'Select Region', 'Kigali', '00000', 0),
(37, 1, 2, 'Perspiciatis rem no', '+1 (501) 996-9748', '2022-08-11 16:28:06', '2022-08-11 16:28:06', 'Shay', 'Underwood', 'jimak@mailinator.com', 'Et pariatur Adipisc', 'Ab fuga Esse iure o', 'Explicabo Impedit', 0),
(38, 1, 0, 'Perspiciatis rem no', '+1 (501) 996-9748', '2022-08-11 16:28:55', '2022-08-11 16:28:55', 'Shay', 'Underwood', 'jimak@mailinator.com', 'Et pariatur Adipisc', 'Ab fuga Esse iure o', 'Explicabo Impedit', 0),
(39, 1, 2, 'Qui non dolor in pra', '+1 (704) 798-5252', '2022-08-11 16:47:22', '2022-08-11 16:47:22', 'Hayley', 'Mckee', 'towi@mailinator.com', 'Id nostrum sit et l', 'Sunt officia fugit', 'Earum eius qui non e', 0),
(40, 64, 2, 'KG3 St Kicukiro', '+25094567704', '2022-08-14 05:22:11', '2022-08-14 05:22:11', 'Mazin', 'Abdullatif', 'mazin.abdulrahman@aims.ac.rw', 'Select Region', 'Kigali', '00000', 0),
(41, 64, 0, 'KG3 St Kicukiro', '+25094567704', '2022-08-14 05:22:28', '2022-08-14 05:22:28', 'Mazin', 'Abdullatif', 'mazin.abdulrahman@aims.ac.rw', 'Select Region', 'Kigali', '00000', 0),
(42, 65, 2, 'Elit rem deserunt t', '+1 (282) 155-6754', '2022-08-14 21:22:40', '2022-08-14 21:22:40', 'Madeline', 'Larsen', 'kutoga@mailinator.com', 'Quo omnis adipisicin', 'Et laudantium sint', 'Recusandae Unde mag', 0),
(43, 37, 4, 'Ab iusto cupiditate', '+1 (948) 135-8429', '2022-08-14 21:43:29', '2022-08-14 21:43:29', 'Ruby', 'Mercado', 'gowatygamo@mailinator.com', 'Assumenda sunt conse', 'Tempora labore aperi', 'Cillum voluptates ea', 0),
(44, 37, 0, 'Ab iusto cupiditate', '+1 (948) 135-8429', '2022-08-14 21:43:38', '2022-08-14 21:43:38', 'Ruby', 'Mercado', 'gowatygamo@mailinator.com', 'Assumenda sunt conse', 'Tempora labore aperi', 'Cillum voluptates ea', 0),
(45, 64, 2, 'KG3 St Kicukiro', '+25094567704', '2022-08-16 07:46:22', '2022-08-16 07:46:22', 'Mazin', 'Abdullatif', 'mazin.abdulrahman@aims.ac.rw', 'Select Region', 'Kigali', '00000', 0),
(46, 78, 2, 'KG3 St Kicukiro', '+25094567704', '2022-08-21 07:15:24', '2022-08-21 07:15:24', 'Mazin', 'Abdullatif', 'mazin.abdulrahman@aims.ac.rw', 'Select Region', 'Kigali', '00000', 0),
(47, 78, 0, 'KG3 St Kicukiro', '+25094567704', '2022-08-21 07:15:29', '2022-08-21 07:15:29', 'Mazin', 'Abdullatif', 'mazin.abdulrahman@aims.ac.rw', 'Select Region', 'Kigali', '00000', 0),
(48, 78, 2, 'KG3 St Kicukiro', '+25094567704', '2022-08-21 07:16:07', '2022-08-21 07:16:07', 'Mazin', 'Abdullatif', 'mazin.abdulrahman@aims.ac.rw', 'Select Region', 'Kigali', '00000', 0),
(49, 78, 2, 'KG3 St Kicukiro', '+25094567704', '2022-08-21 08:52:30', '2022-08-21 08:52:30', 'Mazin', 'Abdullatif', 'mazin.abdulrahman@aims.ac.rw', 'Select Region', 'Kigali', '00000', 0),
(50, 78, 0, 'KG3 St Kicukiro', '+25094567704', '2022-08-21 08:52:39', '2022-08-21 08:52:39', 'Mazin', 'Abdullatif', 'mazin.abdulrahman@aims.ac.rw', 'Select Region', 'Kigali', '00000', 0),
(51, 1, 2, 'Voluptas porro eaque', '+1 (252) 349-5471', '2022-08-24 03:25:28', '2022-08-24 03:25:28', 'Jordan', 'Coleman', 'roha@mailinator.com', 'Voluptas asperiores', 'Irure laborum Repre', 'Labore nobis laborum', 0),
(52, 1, 0, 'Voluptas porro eaque', '+1 (252) 349-5471', '2022-08-24 03:25:38', '2022-08-24 03:25:38', 'Jordan', 'Coleman', 'roha@mailinator.com', 'Voluptas asperiores', 'Irure laborum Repre', 'Labore nobis laborum', 0),
(53, 1, 2, 'Quo adipisicing et c', '+1 (857) 644-3123', '2022-09-20 10:38:03', '2022-09-20 10:38:03', 'Shoshana', 'Ewing', 'zesep@mailinator.com', 'Velit veritatis solu', 'Sit in molestias po', 'Omnis est quidem cu', 0),
(54, 1, 2, 'Id sed repellendus', '+1 (282) 215-2244', '2022-09-28 12:27:37', '2022-09-28 12:27:37', 'Thor', 'Ferguson', 'cymivuvi@mailinator.com', 'Est sint nostrud fu', 'Maiores suscipit sed', 'Unde voluptate facil', 0),
(55, 1, 6, 'Oman,Seeb', '96894706981', '2022-11-09 07:26:41', '2022-11-09 07:26:41', 'ahmed', 'adel', 'ahmedgadallah1889@gmail.com', 'seeb', 'seeb', '121', 0),
(56, 1, 2, 'Oman,Seeb', '96894706981', '2022-11-09 07:28:18', '2022-11-09 07:28:18', 'ahmed', 'adel', 'ahmedgadallah1889@gmail.com', 'seeb', 'seeb', '121', 0),
(57, 1, 2, 'djsdjk', '032932', '2022-11-10 09:37:59', '2022-11-10 09:37:59', 'ahme', 'ajj', 'ahmed@hshdh', 'cbjdal', 'sahdks', '3784', 0),
(58, 87, 2, 'alkhoudh', '98953232', '2023-01-10 08:38:21', '2023-01-10 08:38:21', 'hussain', 'almaimani', 'hussain.maimani99@gmail.com', 'muscat', 'muscat', '111', 0),
(59, 1, 2, 'Ullamco elit tempor', '+1 (889) 205-7562', '2023-01-21 08:03:54', '2023-01-21 08:03:54', 'Brenna', 'Fowler', 'qyzisu@mailinator.com', 'Ut est ea ea omnis e', 'Numquam ipsa alias', 'Ullamco quas qui eni', 0),
(60, 83, 2, 'sdkksdfjklkl', '121939294', '2023-01-22 08:48:33', '2023-01-22 08:48:33', 'ahmed', 'jsj', 'klcdjkl@kdsfjkfjkl', 'ksd', 'kdkjlds', '123', 0),
(61, 83, 0, 'sdkksdfjklkl', '121939294', '2023-01-22 08:51:01', '2023-01-22 08:51:01', 'ahmed', 'jsj', 'klcdjkl@kdsfjkfjkl', 'ksd', 'kdkjlds', '123', 0),
(62, 83, 0, 'sdkksdfjklkl', '121939294', '2023-01-22 08:52:22', '2023-01-22 08:52:22', 'ahmed', 'jsj', 'klcdjkl@kdsfjkfjkl', 'ksd', 'kdkjlds', '123', 0),
(63, 83, 2, 'dfkfddfkfkd', '2324543646', '2023-01-22 08:55:06', '2023-01-22 08:55:06', 'jkdsjksdjsdjk', 'jkdsjksdj', 'klsddkl@jsdjklsdjkl.com', 'ldfldfl;k', 'kldfkkl', '234435', 0),
(64, 83, 2, 'jklsdfjkldskl`', '3248588239', '2023-01-22 08:55:58', '2023-01-22 08:55:58', 'ksdlklsdkls', 'dfklfkl', 'kjldffksdkl@jkdfkldfkl.com', 'jklxjkl', 'jkldkkljsklj', '213112', 0),
(65, 37, 6, 'Eyept', '010131315541', '2023-03-28 09:12:44', '2023-03-28 09:12:44', 'hajdh', 'oud', 'a.com246890@gmail.com', 'lkjbdsiud', 'شبين الكوم', 'kldiohb', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_qty` int DEFAULT NULL,
  `product_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_price`, `product_qty`, `product_total`, `created_at`, `updated_at`) VALUES
(29, 31, 5, 2, 1, 2, '2022-05-17 06:10:18', '2022-05-17 06:10:18'),
(30, 32, 5, 2, 1, 2, '2022-05-19 09:02:56', '2022-05-19 09:02:56'),
(31, 33, 5, 2, 1, 2, '2022-07-05 09:13:12', '2022-07-05 09:13:12'),
(32, 34, 5, 0, 1, 0, '2022-07-13 13:49:58', '2022-07-13 13:49:58'),
(33, 35, 5, 2, 2, 4, '2022-08-09 08:16:40', '2022-08-09 08:16:40'),
(34, 36, 5, 2, 1, 2, '2022-08-09 08:19:46', '2022-08-09 08:19:46'),
(35, 37, 5, 2, 1, 2, '2022-08-11 16:28:06', '2022-08-11 16:28:06'),
(36, 39, 4, 2, 1, 2, '2022-08-11 16:47:22', '2022-08-11 16:47:22'),
(37, 40, 4, 2, 1, 2, '2022-08-14 05:22:11', '2022-08-14 05:22:11'),
(38, 42, 5, 2, 1, 2, '2022-08-14 21:22:40', '2022-08-14 21:22:40'),
(39, 43, 5, 2, 2, 4, '2022-08-14 21:43:29', '2022-08-14 21:43:29'),
(40, 45, 5, 2, 1, 2, '2022-08-16 07:46:22', '2022-08-16 07:46:22'),
(41, 46, 5, 2, 1, 2, '2022-08-21 07:15:24', '2022-08-21 07:15:24'),
(42, 48, 5, 2, 1, 2, '2022-08-21 07:16:07', '2022-08-21 07:16:07'),
(43, 49, 5, 2, 1, 2, '2022-08-21 08:52:30', '2022-08-21 08:52:30'),
(44, 51, 5, 2, 1, 2, '2022-08-24 03:25:28', '2022-08-24 03:25:28'),
(45, 53, 5, 2, 1, 2, '2022-09-20 10:38:03', '2022-09-20 10:38:03'),
(46, 54, 5, 2, 1, 2, '2022-09-28 12:27:37', '2022-09-28 12:27:37'),
(47, 55, 5, 2, 3, 6, '2022-11-09 07:26:41', '2022-11-09 07:26:41'),
(48, 56, 4, 2, 1, 2, '2022-11-09 07:28:18', '2022-11-09 07:28:18'),
(49, 57, 5, 2, 1, 2, '2022-11-10 09:37:59', '2022-11-10 09:37:59'),
(50, 58, 5, 2, 1, 2, '2023-01-10 08:38:21', '2023-01-10 08:38:21'),
(51, 59, 5, 2, 1, 2, '2023-01-21 08:03:54', '2023-01-21 08:03:54'),
(52, 60, 5, 2, 1, 2, '2023-01-22 08:48:33', '2023-01-22 08:48:33'),
(53, 63, 5, 2, 1, 2, '2023-01-22 08:55:06', '2023-01-22 08:55:06'),
(54, 64, 5, 2, 1, 2, '2023-01-22 08:55:58', '2023-01-22 08:55:58'),
(55, 65, 4, 2, 1, 2, '2023-03-28 09:12:44', '2023-03-28 09:12:44'),
(56, 65, 5, 2, 2, 4, '2023-03-28 09:12:44', '2023-03-28 09:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `our_services`
--

CREATE TABLE `our_services` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_services`
--

INSERT INTO `our_services` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`, `deleted_at`, `slug`) VALUES
(1, 'Training Package ', '<p>Research Methodology</p>\n<p>Evidence Based Polices</p>\n<p>Translation information Into knowledge</p>\n<p>Statistical Analysis</p>\n<p>Data Collection</p>\n<p>Writing Statistical Statistical Report</p>\n<p>Proposal Writing</p>\n<p>Literature Review</p>\n<p>Basic And Advanced Statistical Analysis</p>\n<p>Preparation of Plans And Strategies</p>\n<p>Optimum Use of Information</p>\n<p>Manuscript Writing</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', 'our-services/May2022/2qsulRRA7ml9OhTn0Cfk.gif', '2022-03-28 11:39:00', '2022-05-17 03:43:59', NULL, 'training-package'),
(2, 'Product package', '<div class=\"elementor-container elementor-column-gap-default\" style=\"box-sizing: border-box; display: flex; margin-right: auto; margin-left: auto; position: relative; max-width: 1200px; padding: 0px !important;\">\n<div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-22c2bf2\" style=\"box-sizing: border-box; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); min-height: 1px; position: relative; display: flex; width: 1200px;\" data-id=\"22c2bf2\" data-element_type=\"column\">\n<div class=\"elementor-widget-wrap elementor-element-populated\" style=\"box-sizing: border-box; position: relative; width: 1200px; flex-wrap: wrap; align-content: flex-start; display: flex; padding: 10px; margin: 0px; --e-column-margin-right: 0px; --e-column-margin-left: 0px;\">\n<div class=\"elementor-element elementor-element-500851a0 animated-fast elementor-widget elementor-widget-heading animated fadeInUp\" style=\"box-sizing: border-box; animation-name: fadeInUp; animation-duration: 0.75s; animation-fill-mode: both; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; width: 1180px; text-align: center;\" data-id=\"500851a0\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;fadeInUp&quot;}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\" style=\"box-sizing: border-box; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s; margin: 0px; padding: 36px 0px 0px;\">\n<p style=\"text-align: left;\">Product Package includes<br /><br /></p>\n<ol>\n<li style=\"text-align: left;\"><span style=\"color: #555555; font-family: Tajawal;\">Data Manipulation</span></li>\n<li style=\"text-align: left;\"><span style=\"color: #555555; font-family: Tajawal;\">Data Analysis</span></li>\n<li style=\"text-align: left;\"><span style=\"color: #555555; font-family: Tajawal;\">Creating Reports for Decision Makers<br /></span></li>\n<li style=\"text-align: left;\"><span style=\"color: #555555; font-family: Tajawal;\">Policy Brief<br /></span></li>\n<li style=\"text-align: left;\"><span style=\"color: #555555; font-family: Tajawal;\">Indicators Guideline</span></li>\n<li style=\"text-align: left;\"><span style=\"color: #555555; font-family: Tajawal;\">Mobile application<br /><br /></span></li>\n</ol>\n</div>\n</div>\n</div>\n</div>\n</div>', 'our-services/May2022/871QRo4tQw6ltW1tp1BW.jpg', '2022-03-28 11:55:00', '2022-05-11 02:47:51', NULL, 'product-package'),
(3, 'Data Package ', '<p><a class=\"elementor-accordion-title\" style=\"box-sizing: border-box; background-color: transparent; color: #ffb223; text-decoration-line: none; transition: all 0.25s ease 0s; box-shadow: none; font-size: 1.3em; outline: 0px !important;\" href=\"https://www.hrz-stat.com/service/\">ADMINISTRATIVE RECORDS</a></p>\n<p>&nbsp; &nbsp; Collection of Related in dicators under one umbrella</p>\n<p>&nbsp;</p>\n<p><a class=\"elementor-accordion-title\" style=\"box-sizing: border-box; background-color: transparent; color: #ffb223; text-decoration-line: none; transition: all 0.25s ease 0s; box-shadow: none; font-size: 1.3em; outline: 0px !important; user-select: auto !important;\" href=\"https://www.hrz-stat.com/service/\">RESEARCH AND STUDIES</a></p>\n<ol>\n<li>Field work (team for data collection)</li>\n<li>Interview (phone call, face-to-face)</li>\n<li>Data entering logistic services (devices, KIOSK system)</li>\n<li>Design study prepare survey</li>\n<li>Selecting sample size electronic</li>\n</ol>', 'our-services/May2022/PaX1X359DZmyYTVSesLH.jpeg', '2022-03-28 12:01:00', '2022-05-11 02:34:13', NULL, 'data-package'),
(4, 'Teaching Package ', '<p><strong>Teaching Package includes</strong></p>\n<p>&nbsp;</p>\n<ul>\n<li>Research methodology</li>\n<li>Strategic Planning</li>\n<li>Official Statistics</li>\n</ul>\n<p>&nbsp;</p>', 'our-services/May2022/dBJ5EB9juW2CO4zVL9Al.png', '2022-04-21 15:58:00', '2022-05-11 02:33:55', NULL, 'teaching-package');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_of` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `sub_of`) VALUES
(1, 1, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages\\April2020\\hyo0H4B3qEvSIN6RrZbZ.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-04-08 09:32:07', '2020-04-15 19:26:47', 0),
(2, 1, 'Test', 'Nam cursus imperdiet elit. Fusce sollicitudin eget nulla in condimentum. Nullam dignissim id magna non tempus. Vivamus molestie nulla nec pharetra dignissim. Suspendisse auctor nisi et neque vehicula pulvinar. Quisque quis tempus magna. Quisque sed luctus nunc sapien.', NULL, 'pages\\April2020\\KQ1n3plwcTOdubciDLdN.jpg', 'daily-life-of-studying-at-educo', NULL, NULL, 'ACTIVE', '2020-04-14 12:02:32', '2020-04-14 12:02:32', 0),
(5, 1, 'Sub-Test', 'Nam cursus imperdiet elit. Fusce sollicitudin eget nulla in condimentum. Nullam dignissim id magna non tempus. Vivamus molestie nulla nec pharetra dignissim. Suspendisse auctor nisi et neque vehicula pulvinar. Quisque quis tempus magna. Quisque sed luctus nunc sapien.', NULL, 'pages\\April2020\\KQ1n3plwcTOdubciDLdN.jpg', 'daily-life', NULL, NULL, 'ACTIVE', '2020-04-14 12:02:32', '2020-04-14 12:02:32', 2);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_trainer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `link`, `created_at`, `updated_at`, `id_trainer`) VALUES
(1, 'partners/May2022/1emr2FzvUz9pxnpS36DH.png', NULL, '2022-03-08 12:46:00', '2022-05-18 10:18:07', NULL),
(2, 'partners/May2022/Q9inVN0wjE7rMarKoIBt.png', NULL, '2022-03-08 12:46:00', '2022-05-18 10:18:22', NULL),
(3, 'partners/May2022/Ibg3BYPavup5AUVByWT6.png', NULL, '2022-03-08 12:47:00', '2022-05-18 10:17:13', NULL),
(4, 'partners/May2022/5IPGLQmTkahXOpRa8gnE.png', NULL, '2022-03-08 12:47:00', '2022-05-18 10:17:24', NULL),
(5, 'partners/May2022/1DjqFdaa2rW0BR2RSRek.png', NULL, '2022-03-08 12:47:00', '2022-05-18 10:17:36', NULL),
(6, 'partners/May2022/rwJIShNgYPCUjsfRtJUr.png', NULL, '2022-03-08 12:47:00', '2022-05-18 10:17:53', NULL),
(7, 'partners/May2022/lyHp5PBNY1qddsZXPt3g.png', NULL, '2022-05-18 10:18:40', '2022-05-18 10:18:40', NULL),
(8, 'partners/May2022/7Y3NZRdBxZ76HLbdtpR0.png', NULL, '2022-05-18 10:18:52', '2022-05-18 10:18:52', NULL),
(9, 'partners/May2022/Wn2HLRfjinQoiPXQjPBQ.png', NULL, '2022-05-18 10:19:06', '2022-05-18 10:19:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mohamadaymam737@gmail.com', '$2y$10$HJwJV3O2IqjUppLovVGtJ.LhsV4pGWwI1.LY.1l3VP5lFVgR7pBlK', '2023-06-11 10:16:50'),
('mohamadaymam737@gmail.com', 'M2PyE5TYqkIMl9Qf9yuVuLCSj5WaCxvImhgqEemgddmgbDtPlzim9HUPAbU9krpn', '2023-06-11 10:23:09'),
('mohamadaymam737@gmail.com', 'pPX8RKBRWk9KDE0cyibz1W4RvpI4JOAcVjeBLyLjtlbwVT62QolwG4unTcCVp5rS', '2023-06-11 10:23:40'),
('mohamadaymam737@gmail.com', 'l6RovgA3xtOmkUYTkLneupNyiigBWmOyO5RCAcY4NeMxU1ZvQkMB0T2l533R78Wx', '2023-06-11 10:24:17'),
('mohamadaymam737@gmail.com', 'Qhn173EGvxRUMb6Vmaf15Z2zLq0EiCUnCazKikCNZZ1DucKT0kusJZw9iyWzW1mu', '2023-06-11 10:24:30'),
('mohamadaymam737@gmail.com', 'uDCdUwDtHr5nni4Q22n1qGVNsi5jFcLlH8J7VQVG5AD9X7jRzFIjRHsBzLOmTyQh', '2023-06-11 10:24:33'),
('mohamadaymam737@gmail.com', 'udhxFlRLehIUP9bhB9m3oDscIuVXlZsO495hp0MvzzqcKYmuATUeG8jTz70s10Fm', '2023-06-11 10:24:53'),
('mohamadaymam737@gmail.com', 'stkr0xrOTwYXHyY8ZKCHA7o2g5K3mqqQjZCs0xAKEKpPiGZ5C01NUtE5sdKHG9Kq', '2023-06-11 10:26:35'),
('mohamadaymam737@gmail.com', '6jGISsvZZVCUEA7Y15tEeIEHbgAwT8Qi8lpsHc1cKC7arQbkAha8HtzXKA2uorVy', '2023-06-11 10:26:42'),
('admin@admin.com', 'gDxKcmX59T0GzzrxgloGTMNbvixenpkOnJYtnx57UYH6Pt0DUzs6rhpJVKipwuoX', '2023-06-11 11:08:26'),
('admin@admin.com', 'cVgm97x8GTBWegYIe4sFJS2FXAZGZnxjcFhTQd5QVh6F5Y6AItPA3RUhSndPeb78', '2023-06-11 11:09:11'),
('admin@admin.com', 'BXq93e6Ih7h8eT7awxFInDc1o8MYoA9qkHHc3MgJg4LULZFEc25VeB14owuBVdQE', '2023-06-11 11:10:26'),
('mohamadayman2024@gmail.com', 'SUqICySnIdbBYgFzx1BKGBMGf8O2xUMy8MIlzhh7WWaQQMdDNFQ4m6wgKFx3eBaA', '2023-07-21 10:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int UNSIGNED NOT NULL,
  `gateway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
 `payment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `gateway`, `reference_id`, `status`, `amount`, `data`, `user_id`, `created_at`, `updated_at`, `payment_type`, `order_id`) VALUES
(1, 'thawani', 'checkout_CEnL3JK3RDJMZrlDT2L3yKK5B82WLEfkZlhkn0gJYuJWsPO8r8', 'paid', 10000, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_CEnL3JK3RDJMZrlDT2L3yKK5B82WLEfkZlhkn0gJYuJWsPO8r8\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"test product\",\"unit_amount\":10200,\"quantity\":2}],\"total_amount\":20400,\"currency\":\"OMR\",\"success_url\":\"http:\\/\\/localhost:8000\\/payment\\/callback\\/success\",\"cancel_url\":\"http:\\/\\/localhost:8000\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"mode\":\"payment\",\"invoice\":\"20220630125346\",\"metadata\":null,\"created_at\":\"2022-06-30T05:40:31.0721948\",\"expire_at\":\"2022-07-01T05:40:31.037684\",\"subscription\":null}}', 1, '2022-06-30 03:40:34', '2022-06-30 03:41:07', NULL, NULL),
(2, 'thawani', 'checkout_OI8MwXX8mog357BIIrZWpN4wBKJCP2xhcgtDZ8XggWyhNfAo6b', 'paid', 7, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_OI8MwXX8mog357BIIrZWpN4wBKJCP2xhcgtDZ8XggWyhNfAo6b\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"Artificial Intelligence Workshop (secon\",\"unit_amount\":700,\"quantity\":1}],\"total_amount\":700,\"currency\":\"OMR\",\"success_url\":\"http:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"http:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20220810132374\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-08-10T09:15:29.3383262\",\"expire_at\":\"2022-08-11T09:15:29.2999277\"}}', 1, '2022-08-10 09:15:33', '2022-08-10 09:43:06', 'course', 31),
(3, 'thawani', 'checkout_Wn5lrQIoXd1EjGjVXEbdBDslJ8xBZx8XHeaTcFRerdqltboeVC', 'pending', 200, NULL, 1, '2022-08-11 16:47:25', '2022-08-11 16:47:25', 'order', 39),
(4, 'thawani', 'checkout_EXYjchzCVROmWukGQ7WSXA7LDlWdJHIPC4ekWt5oWSjo0DDFap', 'paid', 15, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_EXYjchzCVROmWukGQ7WSXA7LDlWdJHIPC4ekWt5oWSjo0DDFap\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"paython programming\",\"unit_amount\":1500,\"quantity\":1}],\"total_amount\":1500,\"currency\":\"OMR\",\"success_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20220814133040\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-08-14T05:21:00.8715787\",\"expire_at\":\"2022-08-15T05:21:00.832358\"}}', 64, '2022-08-14 05:21:03', '2022-08-14 05:21:27', 'course', 32),
(5, 'thawani', 'checkout_WyL0cR704Gk5G560pr4aAhogxod1PlgaWwdfWWy7pb67MGPWcR', 'pending', 200, NULL, 65, '2022-08-14 21:22:42', '2022-08-14 21:22:42', 'order', 42),
(6, 'thawani', 'checkout_VLkgWSOEOrz4nYXhOBnKnSYZVr88ueQN2MTzl6SRMo37s5xgLz', 'pending', 400, NULL, 37, '2022-08-14 21:43:31', '2022-08-14 21:43:31', 'order', 43),
(7, 'thawani', 'checkout_g2rslZC61XObp8vmJxZ5h0ncqJe68XNnTZ3TUJpliDmIj1H8Fw', 'paid', 5, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_g2rslZC61XObp8vmJxZ5h0ncqJe68XNnTZ3TUJpliDmIj1H8Fw\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"simplify the denominator\",\"unit_amount\":500,\"quantity\":1}],\"total_amount\":500,\"currency\":\"OMR\",\"success_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20220816133418\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-08-16T07:38:10.610262\",\"expire_at\":\"2022-08-17T07:38:10.5743342\"}}', 64, '2022-08-16 07:38:13', '2022-08-16 07:44:29', 'course', 33),
(8, 'thawani', 'checkout_hSsU3RD8LaWjPRjupUBXDRPAhTtQSIva4xfCOlmU55ovZiEBhq', 'paid', 200, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_hSsU3RD8LaWjPRjupUBXDRPAhTtQSIva4xfCOlmU55ovZiEBhq\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"A guide to using SPSS\",\"unit_amount\":200,\"quantity\":1}],\"total_amount\":200,\"currency\":\"OMR\",\"success_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20220816133419\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-08-16T07:46:20.9466646\",\"expire_at\":\"2022-08-17T07:46:20.9047767\"}}', 64, '2022-08-16 07:46:23', '2022-08-16 07:46:59', 'order', 45),
(9, 'thawani', 'checkout_4cy3oVtIlDxW488fRDhUreF8Z0JPlp8rxrWNmMddJgrO458jId', 'paid', 200, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_4cy3oVtIlDxW488fRDhUreF8Z0JPlp8rxrWNmMddJgrO458jId\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"A guide to using SPSS\",\"unit_amount\":200,\"quantity\":1}],\"total_amount\":200,\"currency\":\"OMR\",\"success_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20220821134323\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-08-21T07:16:04.1601375\",\"expire_at\":\"2022-08-22T07:16:04.1191927\"}}', 78, '2022-08-21 07:16:07', '2022-08-21 07:16:31', 'order', 48),
(10, 'thawani', 'checkout_vGsye23kSdASwEMFOudkY10o20VlPmOotIMUe1Zoo7gWzmRQ2o', 'paid', 20, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_vGsye23kSdASwEMFOudkY10o20VlPmOotIMUe1Zoo7gWzmRQ2o\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"new course\",\"unit_amount\":2000,\"quantity\":1}],\"total_amount\":2000,\"currency\":\"OMR\",\"success_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20220821134356\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-08-21T10:54:13.1179246\",\"expire_at\":\"2022-08-22T10:54:13.07766\"}}', 1, '2022-08-21 10:54:13', '2022-08-21 10:54:40', 'course', 34),
(11, 'thawani', 'checkout_ZJfpRs7tnPUVfAGx5knvh7L72evfSDizd1cTdzwkTFDHVPud6M', 'pending', 200, NULL, 1, '2022-08-24 03:25:30', '2022-08-24 03:25:30', 'order', 51),
(12, 'thawani', 'checkout_kfpgBaoNaxfnfLLdTYFhBlBsfZFg0GD0bBZ83jS2ogpdXTyTZp', 'pending', 15, NULL, 79, '2022-09-19 07:34:27', '2022-09-19 07:34:27', 'course', 36),
(13, 'thawani', 'checkout_FyKbNTCExfkDThsKG73XfUO0SnFi2inHj0PQZDRssACpRtwGIG', 'pending', 15, NULL, 79, '2022-09-19 07:34:48', '2022-09-19 07:34:48', 'course', 36),
(14, 'thawani', 'checkout_xaCkbcUbUSngpoT74xC6s7lx1FAJg6ARnh3XEfgwgYRkL2UueP', 'pending', 15, NULL, 79, '2022-09-19 07:35:28', '2022-09-19 07:35:28', 'course', 36),
(15, 'thawani', 'checkout_7MlWwhbwYGu1vaeFvDNpVHazUKkKF4lSBAQx0KhKdwfTfOhBGz', 'pending', 15, NULL, 79, '2022-09-19 07:35:48', '2022-09-19 07:35:48', 'course', 36),
(16, 'thawani', 'checkout_0Era5TPEIFR7u8PFIUAC310CVLX0691QohMwUcT1GysyJioExk', 'pending', 15, NULL, 79, '2022-09-19 07:36:08', '2022-09-19 07:36:08', 'course', 36),
(17, 'thawani', 'checkout_FpGhzav9BjI5CoymchlfCDmWn81kTU8vPxKegZqxeAQ7r38Dj6', 'pending', 20, NULL, 78, '2022-09-20 09:04:36', '2022-09-20 09:04:36', 'course', 37),
(18, 'thawani', 'checkout_xAs56uCJTPUTd0BcwdLn0jkqqoJJ3p5gLrI2HzerVidwNgU7T2', 'paid', 20, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_xAs56uCJTPUTd0BcwdLn0jkqqoJJ3p5gLrI2HzerVidwNgU7T2\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"Introduction to SPSS\",\"unit_amount\":2000,\"quantity\":1}],\"total_amount\":2000,\"currency\":\"OMR\",\"success_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20220920138765\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-09-20T10:21:32.9512002\",\"expire_at\":\"2022-09-21T10:21:32.916785\"}}', 1, '2022-09-20 10:21:36', '2022-09-20 10:35:40', 'course', 38),
(19, 'thawani', 'checkout_YiuO0RzI727FsE0pPQEe3pKg4KL9EgnnHS7lnd37kSnRMazY9c', 'pending', 200, NULL, 1, '2022-09-20 10:38:05', '2022-09-20 10:38:05', 'order', 53),
(20, 'thawani', 'checkout_qKNJXCgAe6ADP8qRrshYdn0qgvFV6rX2yhYyNWWQcjcHVfIgIQ', 'pending', 500, NULL, 1, '2022-09-20 10:39:18', '2022-09-20 10:39:18', 'course', 39),
(21, 'thawani', 'checkout_Dhswu9VGBZRYyRkP134yVyGOUaQAZy9f8DQDynQqUd6nkcVd5x', 'pending', 500, NULL, 1, '2022-09-20 10:40:04', '2022-09-20 10:40:04', 'course', 39),
(22, 'thawani', 'checkout_w8twYwmzf3K63rax6gZRtSQZK8Ojnu2Ieqz5bmQb5gm1fGCzrD', 'pending', 500, NULL, 1, '2022-09-20 10:40:51', '2022-09-20 10:40:51', 'course', 39),
(23, 'thawani', 'checkout_vpDFUEm9kzlS1kxt6XvgpU6AVHCXgouGBjgyotuWVljuNYZlhB', 'pending', 15000, NULL, 78, '2022-09-27 10:52:46', '2022-09-27 10:52:46', 'course', 41),
(24, 'thawani', 'checkout_LxUtd0UoqQnr3JDzmQdi3QECWX5iRYw9o7ylsICsU8MIAUxa0g', 'pending', 50000, NULL, 78, '2022-09-27 10:55:25', '2022-09-27 10:55:25', 'course', 42),
(25, 'thawani', 'checkout_62gnRwqHibda7Y41s3k95pcwGUsSY7SehjBzVCcekyzbaSZXhP', 'paid', 200, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_62gnRwqHibda7Y41s3k95pcwGUsSY7SehjBzVCcekyzbaSZXhP\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"A guide to using SPSS\",\"unit_amount\":200,\"quantity\":1}],\"total_amount\":200,\"currency\":\"OMR\",\"success_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"https:\\/\\/dskk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20220928139872\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-09-28T12:27:35.1048616\",\"expire_at\":\"2022-09-29T12:27:35.0511108\"}}', 1, '2022-09-28 12:27:39', '2022-09-28 12:29:23', 'order', 54),
(26, 'thawani', 'checkout_dTnDotFGfsAS8BmU6UCMXNtW65w69IO0TUfWJcZ1hNTVydzkcK', 'paid', 20000, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_dTnDotFGfsAS8BmU6UCMXNtW65w69IO0TUfWJcZ1hNTVydzkcK\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"Power BI\",\"unit_amount\":2000,\"quantity\":1}],\"total_amount\":2000,\"currency\":\"OMR\",\"success_url\":\"https:\\/\\/dsk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"https:\\/\\/dsk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20221005140903\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-10-05T10:33:50.3141054\",\"expire_at\":\"2022-10-06T10:33:50.2782634\"}}', 78, '2022-10-05 10:33:52', '2022-10-05 10:35:55', 'course', 56),
(27, 'thawani', 'checkout_nbuIt2YbagVxbtKFRWR4ysx0pCaExvq78CPWMBwIsxFy2hvFyu', 'paid', 20000, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_nbuIt2YbagVxbtKFRWR4ysx0pCaExvq78CPWMBwIsxFy2hvFyu\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"Power BI\",\"unit_amount\":2000,\"quantity\":1}],\"total_amount\":2000,\"currency\":\"OMR\",\"success_url\":\"https:\\/\\/dsk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"https:\\/\\/dsk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20221005140904\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-10-05T10:37:30.2037455\",\"expire_at\":\"2022-10-06T10:37:30.1621842\"}}', 78, '2022-10-05 10:37:32', '2022-10-05 10:38:07', 'course', 57),
(28, 'thawani', 'checkout_H8sDwlYifsGXhCLLf0jC6Q26s3hczRggCztgfuRsVIyCuZIrPy', 'pending', 600, NULL, 1, '2022-11-09 07:26:43', '2022-11-09 07:26:43', 'order', 55),
(29, 'thawani', 'checkout_IBPVvLe42sgxEqSQJfyqXFPG7U8upxDr6NVRlUHSxAg4V5jlAd', 'paid', 200, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_IBPVvLe42sgxEqSQJfyqXFPG7U8upxDr6NVRlUHSxAg4V5jlAd\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"Which statistical test should I use ?\",\"unit_amount\":200,\"quantity\":1}],\"total_amount\":200,\"currency\":\"OMR\",\"success_url\":\"https:\\/\\/dsk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"https:\\/\\/dsk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20221109147710\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-11-09T07:28:18.1734428\",\"expire_at\":\"2022-11-10T07:28:18.1152737\"}}', 1, '2022-11-09 07:28:20', '2022-11-09 07:29:03', 'order', 56),
(30, 'thawani', 'checkout_NQBChwLzym2nlaNApQSCgGtXZSXe4j8xade4KCyF0kqOBeRFg1', 'paid', 20000, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_NQBChwLzym2nlaNApQSCgGtXZSXe4j8xade4KCyF0kqOBeRFg1\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"Power BI\",\"unit_amount\":2000,\"quantity\":1}],\"total_amount\":2000,\"currency\":\"OMR\",\"success_url\":\"https:\\/\\/dsk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"https:\\/\\/dsk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20221110148017\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-11-10T09:16:33.4152331\",\"expire_at\":\"2022-11-11T09:16:33.370888\"}}', 1, '2022-11-10 09:16:36', '2022-11-10 09:16:57', 'course', 59),
(31, 'thawani', 'checkout_FdavLsHi2gqxD2NvbG35PbuETsQY25d1I9Q6XTfwUgYaZjOtzl', 'paid', 20000, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_FdavLsHi2gqxD2NvbG35PbuETsQY25d1I9Q6XTfwUgYaZjOtzl\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"new course\",\"unit_amount\":2000,\"quantity\":1}],\"total_amount\":2000,\"currency\":\"OMR\",\"success_url\":\"https:\\/\\/dsk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"https:\\/\\/dsk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20221110148018\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-11-10T09:20:10.2193956\",\"expire_at\":\"2022-11-11T09:20:10.178791\"}}', 1, '2022-11-10 09:20:13', '2022-11-10 09:20:29', 'course', 60),
(32, 'thawani', 'checkout_UEZ20uQIUiqk8GsgiIvKAk0ZKaa0BQidhSy8nyVJozT3hnyVLz', 'paid', 200, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_UEZ20uQIUiqk8GsgiIvKAk0ZKaa0BQidhSy8nyVJozT3hnyVLz\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"A guide to using SPSS\",\"unit_amount\":200,\"quantity\":1}],\"total_amount\":200,\"currency\":\"OMR\",\"success_url\":\"https:\\/\\/dsk.thedatacademy.com\\/payment\\/callback\\/success\",\"cancel_url\":\"https:\\/\\/dsk.thedatacademy.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20221110148021\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2022-11-10T09:37:58.8033814\",\"expire_at\":\"2022-11-11T09:37:58.7650691\"}}', 1, '2022-11-10 09:38:02', '2022-11-10 09:38:19', 'order', 57),
(33, 'thawani', 'checkout_Lc48Sk6PExoHUpDp8C2WM1NSN7MDDtLBCjI9Hrovz8OzCA3Lua', 'pending', 50000, NULL, 37, '2022-11-15 06:32:39', '2022-11-15 06:32:39', 'course', 61),
(34, 'thawani', 'checkout_3c78hnzhUikW99drO2QRbce0S3HTCcKTflzafwAX7UqKzbDoyx', 'pending', 5000, NULL, 87, '2023-01-02 08:16:57', '2023-01-02 08:16:57', 'course', 63),
(35, 'thawani', 'checkout_3j0FOUQkWgnQj3ZAbMfSgSYdRtDd9fm9Zmr3rC9I0KaH28IUmq', 'pending', 5000, NULL, 87, '2023-01-02 08:18:26', '2023-01-02 08:18:26', 'course', 63),
(36, 'thawani', 'checkout_EyArpQmPHECyHXSlhY1W5l1Rt4stfgGLOt2yMfQfojq8eqUMs1', 'pending', 50000, NULL, 87, '2023-01-02 08:20:17', '2023-01-02 08:20:17', 'course', 64),
(37, 'thawani', 'checkout_6uDTi1KSoXTlQiqgXQUQ2F6zdd7iqznMYeuXaRlYbTVdh4SaHm', 'pending', 50000, NULL, 87, '2023-01-02 08:21:02', '2023-01-02 08:21:02', 'course', 64),
(38, 'thawani', 'checkout_vkrg2y1B8jptaoyb5n8rvEgMy6KCkpn4nOvo2Q1f0VbgIWXZbz', 'pending', 15000, NULL, 87, '2023-01-02 08:21:29', '2023-01-02 08:21:29', 'course', 65),
(39, 'thawani', 'checkout_dVHdFAsKUuAIALmstGCXogAETvWZqz4MjhzafQYfPq2CzwmPON', 'pending', 7000, NULL, 88, '2023-01-03 13:07:09', '2023-01-03 13:07:09', 'course', 66),
(40, 'thawani', 'checkout_35wYk2WGAiCVNclBUC7oGziE2vDbjlDteAMTB37bPWciEr0OB7', 'pending', 50000, NULL, 89, '2023-01-04 18:25:30', '2023-01-04 18:25:30', 'course', 67),
(41, 'thawani', 'checkout_t4tl05g7MDmbwTxbX4F7d54YKZSK8hRevaB4Qsh1dGxqtbPxb5', 'pending', 50000, NULL, 89, '2023-01-04 18:25:32', '2023-01-04 18:25:32', 'course', 67),
(42, 'thawani', 'checkout_ZdG7UOkVEcr2GSglBGBW7eWX9DGXFnD6rQl5Dy2WwgGg4QEsOR', 'pending', 200, NULL, 83, '2023-01-22 08:56:00', '2023-01-22 08:56:00', 'order', 64),
(43, 'thawani', 'checkout_WpjD2TK9tYYdFciiIiNfEtqWJIGskANrv4RqSNuqY1I2ZrzQej', 'pending', 50, NULL, 37, '2023-03-18 17:27:09', '2023-03-18 17:27:09', 'course', 61),
(44, 'thawani', 'checkout_Zbo62v7t6keG4GLc6YJySDVwGEzg7OotHhxktX9BlfGQH1AO2d', 'pending', 50, NULL, 37, '2023-03-18 17:27:50', '2023-03-18 17:27:50', 'course', 61),
(45, 'thawani', 'checkout_4vY2GqntJPUAYeh7uXMTNDOIIfBW9MPBUgjLzWQdaXbDtvAt21', 'pending', 50, NULL, 37, '2023-03-18 17:49:36', '2023-03-18 17:49:36', 'course', 61),
(46, 'thawani', 'checkout_yv99uSH1COBNOeLppQpJ3mATGnhCDKjJOgXD1mqGz12KMNtyn5', 'pending', 20, NULL, 37, '2023-03-18 23:29:07', '2023-03-18 23:29:07', 'course', 79),
(47, 'thawani', 'checkout_8wIMRQAiolSy3TyYbnWWAn7dObCZLJBWtjt4xhKIKMDWK3C7FB', 'pending', 20, NULL, 37, '2023-03-18 23:46:21', '2023-03-18 23:46:21', 'course', 80),
(48, 'thawani', 'checkout_3Nn3jxLZIl8ppiJ3iAevjgqIYXIovxtbtu4HByY7ZHEiAhiBjD', 'pending', 20, NULL, 37, '2023-03-28 09:16:31', '2023-03-28 09:16:31', 'course', 81),
(49, 'thawani', 'checkout_A3doaxGNSePIwzdSizPYz0ovD7NcTFhX4U2n4GfID8kx9zINDk', 'pending', 5, NULL, 92, '2023-03-28 07:52:38', '2023-03-28 07:52:38', 'course', 82),
(50, 'thawani', 'checkout_iC2o7DaWTuC1MHm4GTN0Bzu3l2v0IIKnZJJaxvaKcBZ84eUY7H', 'pending', 5, NULL, 92, '2023-03-28 07:54:50', '2023-03-28 07:54:50', 'course', 82),
(51, 'thawani', 'checkout_R1jOQ1dx6xSf4IL0FAvoukFqlpNNECGbcSRR8AOJcu77NASH0g', 'pending', 50, NULL, 92, '2023-03-28 07:56:21', '2023-03-28 07:56:21', 'course', 83),
(52, 'thawani', 'checkout_n1BCMEj7E9U52ENHwsF00Z9FfcQg1j0bfA5JJY2cVZp64u0g6M', 'pending', 20, NULL, 93, '2023-03-28 08:29:07', '2023-03-28 08:29:07', 'course', 84),
(53, 'thawani', 'checkout_Dw7NBcuLlYCeXhSj2M2Spdpiazd1kM7noqnaEPSwwLAhGqZ1wj', 'pending', 50, NULL, 94, '2023-03-29 16:32:26', '2023-03-29 16:32:26', 'course', 86),
(54, 'thawani', 'checkout_swIsuE8dSAXnhLPqqWJiod4qq8CkQ7vFDTskyBcATIeax4vX4L', 'pending', 20, NULL, 92, '2023-03-29 17:18:54', '2023-03-29 17:18:54', 'course', 87),
(55, 'thawani', 'checkout_BlybsqxD3kdUWZv82SMEfJeFyA10ZjMdE02eJuT5E69CW5UEBx', 'pending', 20, NULL, 92, '2023-03-29 17:37:26', '2023-03-29 17:37:26', 'course', 88),
(56, 'thawani', 'checkout_DlJh6JvYeaBuCLwkDw9Q54528pkqy81fg2rIYJOALbAduzui2j', 'pending', 20, NULL, 95, '2023-04-02 06:44:02', '2023-04-02 06:44:02', 'course', 90),
(57, 'thawani', 'checkout_OwnEBvtOa9QSnm9ZcGW0twhA1ff6MyX4gW4UC3HBiMHlYNc388', 'paid', 20, '{\"success\":true,\"code\":2000,\"description\":\"session retrieved successfully\",\"data\":{\"session_id\":\"checkout_OwnEBvtOa9QSnm9ZcGW0twhA1ff6MyX4gW4UC3HBiMHlYNc388\",\"client_reference_id\":null,\"customer_id\":null,\"products\":[{\"name\":\"Power BI\",\"unit_amount\":2000,\"quantity\":1}],\"total_amount\":2000,\"currency\":\"OMR\",\"success_url\":\"http:\\/\\/learntojobs.inomtechs.com\\/payment\\/callback\\/success\",\"cancel_url\":\"http:\\/\\/learntojobs.inomtechs.com\\/payment\\/callback\\/cancel\",\"payment_status\":\"paid\",\"invoice\":\"20230407182359\",\"save_card_on_success\":false,\"metadata\":null,\"created_at\":\"2023-04-07T13:40:48.9795541\",\"expire_at\":\"2023-04-08T13:40:48.918883\"}}', 1, '2023-04-07 08:10:51', '2023-04-07 08:11:34', 'course', 93),
(58, 'thawani', 'checkout_m8o7vD5nELaGI2uXPzUYRwZcOn1dS8YAHvk9QvugDTsFSsqxBR', 'pending', 2000, NULL, 1, '2023-08-13 14:34:47', '2023-08-13 14:34:47', 'course', 96),
(59, 'thawani', 'checkout_y8oowBNC1tFhBXohcw5P91wW8B6xLwSY95Uqp7d6Qh6GuobP7o', 'pending', 2000, NULL, 1, '2023-08-13 14:34:52', '2023-08-13 14:34:52', 'course', 96),
(60, 'thawani', 'checkout_sEupSM3NVKHAuLRsvQvT3aNEpUBEbRj7WoxP6C88ywrgGGmRMa', 'pending', 2000, NULL, 1, '2023-08-13 14:35:00', '2023-08-13 14:35:00', 'course', 96),
(61, 'thawani', 'checkout_iEPNMyENt3toAOALv2jyoT4pQewD0jGrFe4cEGwRl2S2vAoEXc', 'pending', 2000, NULL, 1, '2023-08-13 14:35:43', '2023-08-13 14:35:43', 'course', 96),
(62, 'thawani', 'checkout_7XbVAQ7PZ8vbYD1toaBGWdNMP9VJL6xk3b1OodUSd6F8uBPlLc', 'pending', 10000, NULL, 1, '2023-08-18 08:41:14', '2023-08-18 08:41:14', 'course', 101),
(63, 'thawani', 'checkout_ufwxwQv7WfGbUfszCIeS8T5QM9SCs6tNmjxoFf1Q0ESs6elbL2', 'pending', 10000, NULL, 1, '2023-08-18 08:41:47', '2023-08-18 08:41:47', 'course', 101),
(64, 'thawani', 'checkout_v7pBma8pLhCNNgfswSniSDJVvxkaxEOGjrgp5bt5MLBfnAQp06', 'pending', 10000, NULL, 1, '2023-08-18 08:42:07', '2023-08-18 08:42:07', 'course', 101),
(65, 'thawani', 'checkout_xxpuHTrnSs5snfxoO3yrF8F81bhydnrFpM478UO3ulKkS5kTU9', 'pending', 10000, NULL, 1, '2023-08-18 08:50:35', '2023-08-18 08:50:35', 'course', 101),
(66, 'thawani', 'checkout_HnxedmWS6gmqWuPphM6BzNnkL1NOyHmPJXYffsbWHlGppj08Yw', 'pending', 10000, NULL, 1, '2023-08-18 09:02:59', '2023-08-18 09:02:59', 'course', 101),
(67, 'thawani', 'checkout_xZJpF9QDHlSZNNa5rLQPRKhRa4ur0s8Xm6vRaHsyQldAG3xoSZ', 'pending', 10000, NULL, 1, '2023-08-18 10:54:40', '2023-08-18 10:54:40', 'course', 101),
(68, 'thawani', 'checkout_iZN1HJND2OJ3BO2RBgkpUsyfFTqHt7f8O1mD122fh95ZpwNmBh', 'pending', 10000, NULL, 1, '2023-08-18 11:02:17', '2023-08-18 11:02:17', 'course', 101),
(69, 'thawani', 'checkout_ztblkCaQi2x57h32qeDg4eiL6SnIAHeIyGIAv0rE5Ti2XBjlCN', 'pending', 10000, NULL, 1, '2023-08-18 11:04:22', '2023-08-18 11:04:22', 'course', 101),
(70, 'thawani', 'checkout_24v1jpql9WGhIsufqL9YlG0pEQvDyyVBp9ojOWrzRt8sl5Mdbm', 'pending', 2000, NULL, 99, '2023-08-21 16:09:38', '2023-08-21 16:09:38', 'course', 106),
(71, 'thawani', 'checkout_gwlWZxo59SvlfEaxwOmHq4eB9db7D5doKZFVfIdcZaP4LHkfMD', 'pending', 10000, NULL, 99, '2023-08-24 14:04:35', '2023-08-24 14:04:35', 'course', 107),
(72, 'thawani', 'checkout_6jOzllRdHywF1NZZFSeMwx9bvPEFs4BoPzUtZWWHqmXmwp0UAl', 'pending', 2000, NULL, 99, '2023-08-24 14:04:46', '2023-08-24 14:04:46', 'course', 106),
(73, 'thawani', 'checkout_iuylC1jKvdHiJREOmIgfRaZQZ3AZQ4RgnPqZiDrfaM4VHdhEA9', 'pending', 20, NULL, 99, '2023-08-24 14:04:58', '2023-08-24 14:04:58', 'course', 108);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(2, 'browse_bread', NULL, '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(3, 'browse_database', NULL, '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(4, 'browse_media', NULL, '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(5, 'browse_compass', NULL, '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(6, 'browse_menus', 'menus', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(7, 'read_menus', 'menus', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(8, 'edit_menus', 'menus', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(9, 'add_menus', 'menus', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(10, 'delete_menus', 'menus', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(11, 'browse_roles', 'roles', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(12, 'read_roles', 'roles', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(13, 'edit_roles', 'roles', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(14, 'add_roles', 'roles', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(15, 'delete_roles', 'roles', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(16, 'browse_users', 'users', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(17, 'read_users', 'users', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(18, 'edit_users', 'users', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(19, 'add_users', 'users', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(20, 'delete_users', 'users', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(21, 'browse_settings', 'settings', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(22, 'read_settings', 'settings', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(23, 'edit_settings', 'settings', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(24, 'add_settings', 'settings', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(25, 'delete_settings', 'settings', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(26, 'browse_hooks', NULL, '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(27, 'browse_categories', 'categories', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(28, 'read_categories', 'categories', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(29, 'edit_categories', 'categories', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(30, 'add_categories', 'categories', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(31, 'delete_categories', 'categories', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(32, 'browse_posts', 'posts', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(33, 'read_posts', 'posts', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(34, 'edit_posts', 'posts', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(35, 'add_posts', 'posts', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(36, 'delete_posts', 'posts', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(37, 'browse_pages', 'pages', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(38, 'read_pages', 'pages', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(39, 'edit_pages', 'pages', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(40, 'add_pages', 'pages', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(41, 'delete_pages', 'pages', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(47, 'browse_courses', 'courses', '2020-04-12 11:23:44', '2020-04-12 11:23:44'),
(48, 'read_courses', 'courses', '2020-04-12 11:23:44', '2020-04-12 11:23:44'),
(49, 'edit_courses', 'courses', '2020-04-12 11:23:44', '2020-04-12 11:23:44'),
(50, 'add_courses', 'courses', '2020-04-12 11:23:44', '2020-04-12 11:23:44'),
(51, 'delete_courses', 'courses', '2020-04-12 11:23:44', '2020-04-12 11:23:44'),
(52, 'browse_lessons', 'lessons', '2020-04-12 11:32:25', '2020-04-12 11:32:25'),
(53, 'read_lessons', 'lessons', '2020-04-12 11:32:25', '2020-04-12 11:32:25'),
(54, 'edit_lessons', 'lessons', '2020-04-12 11:32:25', '2020-04-12 11:32:25'),
(55, 'add_lessons', 'lessons', '2020-04-12 11:32:25', '2020-04-12 11:32:25'),
(56, 'delete_lessons', 'lessons', '2020-04-12 11:32:25', '2020-04-12 11:32:25'),
(62, 'browse_comments', 'comments', '2020-04-12 12:05:34', '2020-04-12 12:05:34'),
(63, 'read_comments', 'comments', '2020-04-12 12:05:34', '2020-04-12 12:05:34'),
(64, 'edit_comments', 'comments', '2020-04-12 12:05:34', '2020-04-12 12:05:34'),
(65, 'add_comments', 'comments', '2020-04-12 12:05:34', '2020-04-12 12:05:34'),
(66, 'delete_comments', 'comments', '2020-04-12 12:05:34', '2020-04-12 12:05:34'),
(67, 'browse_resources', 'resources', '2020-04-12 12:16:41', '2020-04-12 12:16:41'),
(68, 'read_resources', 'resources', '2020-04-12 12:16:41', '2020-04-12 12:16:41'),
(69, 'edit_resources', 'resources', '2020-04-12 12:16:41', '2020-04-12 12:16:41'),
(70, 'add_resources', 'resources', '2020-04-12 12:16:41', '2020-04-12 12:16:41'),
(71, 'delete_resources', 'resources', '2020-04-12 12:16:41', '2020-04-12 12:16:41'),
(72, 'browse_news', 'news', '2020-04-12 12:27:17', '2020-04-12 12:27:17'),
(73, 'read_news', 'news', '2020-04-12 12:27:17', '2020-04-12 12:27:17'),
(74, 'edit_news', 'news', '2020-04-12 12:27:17', '2020-04-12 12:27:17'),
(75, 'add_news', 'news', '2020-04-12 12:27:17', '2020-04-12 12:27:17'),
(76, 'delete_news', 'news', '2020-04-12 12:27:17', '2020-04-12 12:27:17'),
(77, 'browse_events', 'events', '2020-04-12 12:30:25', '2020-04-12 12:30:25'),
(78, 'read_events', 'events', '2020-04-12 12:30:25', '2020-04-12 12:30:25'),
(79, 'edit_events', 'events', '2020-04-12 12:30:25', '2020-04-12 12:30:25'),
(80, 'add_events', 'events', '2020-04-12 12:30:25', '2020-04-12 12:30:25'),
(81, 'delete_events', 'events', '2020-04-12 12:30:25', '2020-04-12 12:30:25'),
(102, 'browse_mohamds', 'mohamds', '2020-04-12 19:46:03', '2020-04-12 19:46:03'),
(103, 'read_mohamds', 'mohamds', '2020-04-12 19:46:03', '2020-04-12 19:46:03'),
(104, 'edit_mohamds', 'mohamds', '2020-04-12 19:46:03', '2020-04-12 19:46:03'),
(105, 'add_mohamds', 'mohamds', '2020-04-12 19:46:03', '2020-04-12 19:46:03'),
(106, 'delete_mohamds', 'mohamds', '2020-04-12 19:46:03', '2020-04-12 19:46:03'),
(107, 'browse_trainers', 'trainers', '2020-04-12 21:05:21', '2020-04-12 21:05:21'),
(108, 'read_trainers', 'trainers', '2020-04-12 21:05:21', '2020-04-12 21:05:21'),
(109, 'edit_trainers', 'trainers', '2020-04-12 21:05:21', '2020-04-12 21:05:21'),
(110, 'add_trainers', 'trainers', '2020-04-12 21:05:21', '2020-04-12 21:05:21'),
(111, 'delete_trainers', 'trainers', '2020-04-12 21:05:21', '2020-04-12 21:05:21'),
(112, 'browse_applicants', 'applicants', '2020-04-12 21:15:56', '2020-04-12 21:15:56'),
(113, 'read_applicants', 'applicants', '2020-04-12 21:15:56', '2020-04-12 21:15:56'),
(114, 'edit_applicants', 'applicants', '2020-04-12 21:15:56', '2020-04-12 21:15:56'),
(115, 'add_applicants', 'applicants', '2020-04-12 21:15:56', '2020-04-12 21:15:56'),
(116, 'delete_applicants', 'applicants', '2020-04-12 21:15:56', '2020-04-12 21:15:56'),
(117, 'browse_faq', 'faq', '2020-04-13 08:00:59', '2020-04-13 08:00:59'),
(118, 'read_faq', 'faq', '2020-04-13 08:00:59', '2020-04-13 08:00:59'),
(119, 'edit_faq', 'faq', '2020-04-13 08:00:59', '2020-04-13 08:00:59'),
(120, 'add_faq', 'faq', '2020-04-13 08:00:59', '2020-04-13 08:00:59'),
(121, 'delete_faq', 'faq', '2020-04-13 08:00:59', '2020-04-13 08:00:59'),
(122, 'browse_faqs', 'faqs', '2020-04-13 08:03:04', '2020-04-13 08:03:04'),
(123, 'read_faqs', 'faqs', '2020-04-13 08:03:04', '2020-04-13 08:03:04'),
(124, 'edit_faqs', 'faqs', '2020-04-13 08:03:04', '2020-04-13 08:03:04'),
(125, 'add_faqs', 'faqs', '2020-04-13 08:03:04', '2020-04-13 08:03:04'),
(126, 'delete_faqs', 'faqs', '2020-04-13 08:03:04', '2020-04-13 08:03:04'),
(127, 'browse_our_services', 'our_services', '2020-04-13 08:10:40', '2020-04-13 08:10:40'),
(128, 'read_our_services', 'our_services', '2020-04-13 08:10:40', '2020-04-13 08:10:40'),
(129, 'edit_our_services', 'our_services', '2020-04-13 08:10:40', '2020-04-13 08:10:40'),
(130, 'add_our_services', 'our_services', '2020-04-13 08:10:40', '2020-04-13 08:10:40'),
(131, 'delete_our_services', 'our_services', '2020-04-13 08:10:40', '2020-04-13 08:10:40'),
(132, 'browse_sliders', 'sliders', '2020-04-13 09:18:32', '2020-04-13 09:18:32'),
(133, 'read_sliders', 'sliders', '2020-04-13 09:18:32', '2020-04-13 09:18:32'),
(134, 'edit_sliders', 'sliders', '2020-04-13 09:18:32', '2020-04-13 09:18:32'),
(135, 'add_sliders', 'sliders', '2020-04-13 09:18:32', '2020-04-13 09:18:32'),
(136, 'delete_sliders', 'sliders', '2020-04-13 09:18:32', '2020-04-13 09:18:32'),
(137, 'browse_groups', 'groups', '2022-02-04 14:57:33', '2022-02-04 14:57:33'),
(138, 'read_groups', 'groups', '2022-02-04 14:57:33', '2022-02-04 14:57:33'),
(139, 'edit_groups', 'groups', '2022-02-04 14:57:33', '2022-02-04 14:57:33'),
(140, 'add_groups', 'groups', '2022-02-04 14:57:33', '2022-02-04 14:57:33'),
(141, 'delete_groups', 'groups', '2022-02-04 14:57:33', '2022-02-04 14:57:33'),
(142, 'browse_products', 'products', '2022-02-07 23:11:41', '2022-02-07 23:11:41'),
(143, 'read_products', 'products', '2022-02-07 23:11:41', '2022-02-07 23:11:41'),
(144, 'edit_products', 'products', '2022-02-07 23:11:41', '2022-02-07 23:11:41'),
(145, 'add_products', 'products', '2022-02-07 23:11:41', '2022-02-07 23:11:41'),
(146, 'delete_products', 'products', '2022-02-07 23:11:41', '2022-02-07 23:11:41'),
(147, 'browse_p_categories', 'p_categories', '2022-02-07 23:13:16', '2022-02-07 23:13:16'),
(148, 'read_p_categories', 'p_categories', '2022-02-07 23:13:16', '2022-02-07 23:13:16'),
(149, 'edit_p_categories', 'p_categories', '2022-02-07 23:13:16', '2022-02-07 23:13:16'),
(150, 'add_p_categories', 'p_categories', '2022-02-07 23:13:16', '2022-02-07 23:13:16'),
(151, 'delete_p_categories', 'p_categories', '2022-02-07 23:13:16', '2022-02-07 23:13:16'),
(152, 'browse_contacts', 'contacts', '2022-03-02 03:09:31', '2022-03-02 03:09:31'),
(153, 'read_contacts', 'contacts', '2022-03-02 03:09:31', '2022-03-02 03:09:31'),
(154, 'edit_contacts', 'contacts', '2022-03-02 03:09:31', '2022-03-02 03:09:31'),
(155, 'add_contacts', 'contacts', '2022-03-02 03:09:31', '2022-03-02 03:09:31'),
(156, 'delete_contacts', 'contacts', '2022-03-02 03:09:31', '2022-03-02 03:09:31'),
(157, 'browse_partners', 'partners', '2022-03-02 04:11:10', '2022-03-02 04:11:10'),
(158, 'read_partners', 'partners', '2022-03-02 04:11:10', '2022-03-02 04:11:10'),
(159, 'edit_partners', 'partners', '2022-03-02 04:11:10', '2022-03-02 04:11:10'),
(160, 'add_partners', 'partners', '2022-03-02 04:11:10', '2022-03-02 04:11:10'),
(161, 'delete_partners', 'partners', '2022-03-02 04:11:10', '2022-03-02 04:11:10'),
(162, 'browse_assignments', 'assignments', '2022-03-09 02:50:01', '2022-03-09 02:50:01'),
(163, 'read_assignments', 'assignments', '2022-03-09 02:50:01', '2022-03-09 02:50:01'),
(164, 'edit_assignments', 'assignments', '2022-03-09 02:50:01', '2022-03-09 02:50:01'),
(165, 'add_assignments', 'assignments', '2022-03-09 02:50:01', '2022-03-09 02:50:01'),
(166, 'delete_assignments', 'assignments', '2022-03-09 02:50:01', '2022-03-09 02:50:01'),
(167, 'browse_orders', 'orders', '2022-03-09 09:57:39', '2022-03-09 09:57:39'),
(168, 'read_orders', 'orders', '2022-03-09 09:57:39', '2022-03-09 09:57:39'),
(169, 'edit_orders', 'orders', '2022-03-09 09:57:39', '2022-03-09 09:57:39'),
(170, 'add_orders', 'orders', '2022-03-09 09:57:39', '2022-03-09 09:57:39'),
(171, 'delete_orders', 'orders', '2022-03-09 09:57:39', '2022-03-09 09:57:39'),
(172, 'browse_order_items', 'order_items', '2022-03-09 11:29:58', '2022-03-09 11:29:58'),
(173, 'read_order_items', 'order_items', '2022-03-09 11:29:58', '2022-03-09 11:29:58'),
(174, 'edit_order_items', 'order_items', '2022-03-09 11:29:58', '2022-03-09 11:29:58'),
(175, 'add_order_items', 'order_items', '2022-03-09 11:29:58', '2022-03-09 11:29:58'),
(176, 'delete_order_items', 'order_items', '2022-03-09 11:29:58', '2022-03-09 11:29:58'),
(177, 'browse_socials', 'socials', '2022-03-15 09:54:35', '2022-03-15 09:54:35'),
(178, 'read_socials', 'socials', '2022-03-15 09:54:35', '2022-03-15 09:54:35'),
(179, 'edit_socials', 'socials', '2022-03-15 09:54:35', '2022-03-15 09:54:35'),
(180, 'add_socials', 'socials', '2022-03-15 09:54:35', '2022-03-15 09:54:35'),
(181, 'delete_socials', 'socials', '2022-03-15 09:54:35', '2022-03-15 09:54:35'),
(182, 'browse_newsletters', 'newsletters', '2022-03-20 13:28:40', '2022-03-20 13:28:40'),
(183, 'read_newsletters', 'newsletters', '2022-03-20 13:28:40', '2022-03-20 13:28:40'),
(184, 'edit_newsletters', 'newsletters', '2022-03-20 13:28:40', '2022-03-20 13:28:40'),
(185, 'add_newsletters', 'newsletters', '2022-03-20 13:28:40', '2022-03-20 13:28:40'),
(186, 'delete_newsletters', 'newsletters', '2022-03-20 13:28:40', '2022-03-20 13:28:40'),
(187, 'browse_resolves', 'resolves', '2022-03-30 02:24:46', '2022-03-30 02:24:46'),
(188, 'read_resolves', 'resolves', '2022-03-30 02:24:46', '2022-03-30 02:24:46'),
(189, 'edit_resolves', 'resolves', '2022-03-30 02:24:46', '2022-03-30 02:24:46'),
(190, 'add_resolves', 'resolves', '2022-03-30 02:24:46', '2022-03-30 02:24:46'),
(191, 'delete_resolves', 'resolves', '2022-03-30 02:24:46', '2022-03-30 02:24:46'),
(192, 'browse_questions', 'questions', '2022-03-31 03:09:40', '2022-03-31 03:09:40'),
(193, 'read_questions', 'questions', '2022-03-31 03:09:40', '2022-03-31 03:09:40'),
(194, 'edit_questions', 'questions', '2022-03-31 03:09:40', '2022-03-31 03:09:40'),
(195, 'add_questions', 'questions', '2022-03-31 03:09:40', '2022-03-31 03:09:40'),
(196, 'delete_questions', 'questions', '2022-03-31 03:09:40', '2022-03-31 03:09:40'),
(197, 'browse_question_types', 'question_types', '2022-03-31 03:12:36', '2022-03-31 03:12:36'),
(198, 'read_question_types', 'question_types', '2022-03-31 03:12:36', '2022-03-31 03:12:36'),
(199, 'edit_question_types', 'question_types', '2022-03-31 03:12:36', '2022-03-31 03:12:36'),
(200, 'add_question_types', 'question_types', '2022-03-31 03:12:36', '2022-03-31 03:12:36'),
(201, 'delete_question_types', 'question_types', '2022-03-31 03:12:36', '2022-03-31 03:12:36'),
(202, 'browse_quizzes', 'quizzes', '2022-04-01 01:40:35', '2022-04-01 01:40:35'),
(203, 'read_quizzes', 'quizzes', '2022-04-01 01:40:35', '2022-04-01 01:40:35'),
(204, 'edit_quizzes', 'quizzes', '2022-04-01 01:40:35', '2022-04-01 01:40:35'),
(205, 'add_quizzes', 'quizzes', '2022-04-01 01:40:35', '2022-04-01 01:40:35'),
(206, 'delete_quizzes', 'quizzes', '2022-04-01 01:40:35', '2022-04-01 01:40:35'),
(207, 'browse_quiz_questions', 'quiz_questions', '2022-04-01 09:56:57', '2022-04-01 09:56:57'),
(208, 'read_quiz_questions', 'quiz_questions', '2022-04-01 09:56:57', '2022-04-01 09:56:57'),
(209, 'edit_quiz_questions', 'quiz_questions', '2022-04-01 09:56:57', '2022-04-01 09:56:57'),
(210, 'add_quiz_questions', 'quiz_questions', '2022-04-01 09:56:57', '2022-04-01 09:56:57'),
(211, 'delete_quiz_questions', 'quiz_questions', '2022-04-01 09:56:57', '2022-04-01 09:56:57'),
(212, 'browse_question_options', 'question_options', '2022-04-01 12:19:39', '2022-04-01 12:19:39'),
(213, 'read_question_options', 'question_options', '2022-04-01 12:19:39', '2022-04-01 12:19:39'),
(214, 'edit_question_options', 'question_options', '2022-04-01 12:19:39', '2022-04-01 12:19:39'),
(215, 'add_question_options', 'question_options', '2022-04-01 12:19:39', '2022-04-01 12:19:39'),
(216, 'delete_question_options', 'question_options', '2022-04-01 12:19:39', '2022-04-01 12:19:39'),
(217, 'browse_quiz_scores', 'quiz_scores', '2022-04-04 01:51:05', '2022-04-04 01:51:05'),
(218, 'read_quiz_scores', 'quiz_scores', '2022-04-04 01:51:05', '2022-04-04 01:51:05'),
(219, 'edit_quiz_scores', 'quiz_scores', '2022-04-04 01:51:05', '2022-04-04 01:51:05'),
(220, 'add_quiz_scores', 'quiz_scores', '2022-04-04 01:51:05', '2022-04-04 01:51:05'),
(221, 'delete_quiz_scores', 'quiz_scores', '2022-04-04 01:51:05', '2022-04-04 01:51:05'),
(237, 'browse_event_records', 'event_records', '2022-04-10 05:09:36', '2022-04-10 05:09:36'),
(238, 'read_event_records', 'event_records', '2022-04-10 05:09:36', '2022-04-10 05:09:36'),
(239, 'edit_event_records', 'event_records', '2022-04-10 05:09:36', '2022-04-10 05:09:36'),
(240, 'add_event_records', 'event_records', '2022-04-10 05:09:36', '2022-04-10 05:09:36'),
(241, 'delete_event_records', 'event_records', '2022-04-10 05:09:36', '2022-04-10 05:09:36'),
(247, 'browse_absences', 'absences', '2022-04-16 07:08:34', '2022-04-16 07:08:34'),
(248, 'read_absences', 'absences', '2022-04-16 07:08:34', '2022-04-16 07:08:34'),
(249, 'edit_absences', 'absences', '2022-04-16 07:08:34', '2022-04-16 07:08:34'),
(250, 'add_absences', 'absences', '2022-04-16 07:08:34', '2022-04-16 07:08:34'),
(251, 'delete_absences', 'absences', '2022-04-16 07:08:34', '2022-04-16 07:08:34'),
(252, 'browse_certificates', 'certificates', '2022-04-16 09:02:43', '2022-04-16 09:02:43'),
(253, 'read_certificates', 'certificates', '2022-04-16 09:02:43', '2022-04-16 09:02:43'),
(254, 'edit_certificates', 'certificates', '2022-04-16 09:02:43', '2022-04-16 09:02:43'),
(255, 'add_certificates', 'certificates', '2022-04-16 09:02:43', '2022-04-16 09:02:43'),
(256, 'delete_certificates', 'certificates', '2022-04-16 09:02:43', '2022-04-16 09:02:43'),
(257, 'browse_introductions', 'introductions', '2022-04-17 04:35:19', '2022-04-17 04:35:19'),
(258, 'read_introductions', 'introductions', '2022-04-17 04:35:19', '2022-04-17 04:35:19'),
(259, 'edit_introductions', 'introductions', '2022-04-17 04:35:19', '2022-04-17 04:35:19'),
(260, 'add_introductions', 'introductions', '2022-04-17 04:35:19', '2022-04-17 04:35:19'),
(261, 'delete_introductions', 'introductions', '2022-04-17 04:35:19', '2022-04-17 04:35:19'),
(262, 'browse_course_ratings', 'course_ratings', '2022-05-15 01:30:02', '2022-05-15 01:30:02'),
(263, 'read_course_ratings', 'course_ratings', '2022-05-15 01:30:02', '2022-05-15 01:30:02'),
(264, 'edit_course_ratings', 'course_ratings', '2022-05-15 01:30:02', '2022-05-15 01:30:02'),
(265, 'add_course_ratings', 'course_ratings', '2022-05-15 01:30:02', '2022-05-15 01:30:02'),
(266, 'delete_course_ratings', 'course_ratings', '2022-05-15 01:30:02', '2022-05-15 01:30:02'),
(267, 'browse_meetings', 'meetings', '2022-06-01 12:33:25', '2022-06-01 12:33:25'),
(268, 'read_meetings', 'meetings', '2022-06-01 12:33:25', '2022-06-01 12:33:25'),
(269, 'edit_meetings', 'meetings', '2022-06-01 12:33:25', '2022-06-01 12:33:25'),
(270, 'add_meetings', 'meetings', '2022-06-01 12:33:25', '2022-06-01 12:33:25'),
(271, 'delete_meetings', 'meetings', '2022-06-01 12:33:25', '2022-06-01 12:33:25'),
(272, 'browse_skills', 'skills', '2022-06-11 23:36:25', '2022-06-11 23:36:25'),
(273, 'read_skills', 'skills', '2022-06-11 23:36:25', '2022-06-11 23:36:25'),
(274, 'edit_skills', 'skills', '2022-06-11 23:36:25', '2022-06-11 23:36:25'),
(275, 'add_skills', 'skills', '2022-06-11 23:36:25', '2022-06-11 23:36:25'),
(276, 'delete_skills', 'skills', '2022-06-11 23:36:25', '2022-06-11 23:36:25'),
(277, 'browse_payments', 'payments', '2022-06-30 03:35:40', '2022-06-30 03:35:40'),
(278, 'read_payments', 'payments', '2022-06-30 03:35:40', '2022-06-30 03:35:40'),
(279, 'edit_payments', 'payments', '2022-06-30 03:35:40', '2022-06-30 03:35:40'),
(280, 'add_payments', 'payments', '2022-06-30 03:35:40', '2022-06-30 03:35:40'),
(281, 'delete_payments', 'payments', '2022-06-30 03:35:40', '2022-06-30 03:35:40'),
(282, 'browse_videos', 'videos', '2023-04-08 19:27:22', '2023-04-08 19:27:22'),
(283, 'read_videos', 'videos', '2023-04-08 19:27:22', '2023-04-08 19:27:22'),
(284, 'edit_videos', 'videos', '2023-04-08 19:27:22', '2023-04-08 19:27:22'),
(285, 'add_videos', 'videos', '2023-04-08 19:27:22', '2023-04-08 19:27:22'),
(286, 'delete_videos', 'videos', '2023-04-08 19:27:22', '2023-04-08 19:27:22'),
(292, 'browse_postchilders', 'postchilders', '2023-09-19 10:46:24', '2023-09-19 10:46:24'),
(293, 'read_postchilders', 'postchilders', '2023-09-19 10:46:24', '2023-09-19 10:46:24'),
(294, 'edit_postchilders', 'postchilders', '2023-09-19 10:46:24', '2023-09-19 10:46:24'),
(295, 'add_postchilders', 'postchilders', '2023-09-19 10:46:24', '2023-09-19 10:46:24'),
(296, 'delete_postchilders', 'postchilders', '2023-09-19 10:46:24', '2023-09-19 10:46:24'),
(297, 'browse_liks', 'liks', '2023-09-19 13:24:51', '2023-09-19 13:24:51'),
(298, 'read_liks', 'liks', '2023-09-19 13:24:51', '2023-09-19 13:24:51'),
(299, 'edit_liks', 'liks', '2023-09-19 13:24:51', '2023-09-19 13:24:51'),
(300, 'add_liks', 'liks', '2023-09-19 13:24:51', '2023-09-19 13:24:51'),
(301, 'delete_liks', 'liks', '2023-09-19 13:24:51', '2023-09-19 13:24:51'),
(307, 'browse_postchilderns', 'postchilderns', '2023-09-19 13:45:52', '2023-09-19 13:45:52'),
(308, 'read_postchilderns', 'postchilderns', '2023-09-19 13:45:52', '2023-09-19 13:45:52'),
(309, 'edit_postchilderns', 'postchilderns', '2023-09-19 13:45:52', '2023-09-19 13:45:52'),
(310, 'add_postchilderns', 'postchilderns', '2023-09-19 13:45:52', '2023-09-19 13:45:52'),
(311, 'delete_postchilderns', 'postchilderns', '2023-09-19 13:45:52', '2023-09-19 13:45:52'),
(317, 'browse_likes', 'likes', '2023-09-20 10:25:18', '2023-09-20 10:25:18'),
(318, 'read_likes', 'likes', '2023-09-20 10:25:18', '2023-09-20 10:25:18'),
(319, 'edit_likes', 'likes', '2023-09-20 10:25:18', '2023-09-20 10:25:18'),
(320, 'add_likes', 'likes', '2023-09-20 10:25:18', '2023-09-20 10:25:18'),
(321, 'delete_likes', 'likes', '2023-09-20 10:25:18', '2023-09-20 10:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(11, 4),
(12, 1),
(12, 4),
(13, 1),
(13, 4),
(14, 1),
(14, 4),
(15, 1),
(15, 4),
(16, 1),
(16, 4),
(17, 1),
(17, 4),
(18, 1),
(18, 4),
(19, 1),
(19, 4),
(20, 1),
(20, 4),
(21, 1),
(21, 4),
(22, 1),
(22, 4),
(23, 1),
(23, 4),
(24, 1),
(24, 4),
(25, 1),
(25, 4),
(26, 1),
(27, 1),
(27, 4),
(28, 1),
(28, 4),
(29, 1),
(29, 4),
(30, 1),
(30, 4),
(31, 1),
(31, 4),
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
(47, 1),
(47, 3),
(47, 4),
(48, 1),
(48, 3),
(48, 4),
(49, 1),
(49, 3),
(49, 4),
(50, 1),
(50, 3),
(50, 4),
(51, 1),
(51, 3),
(51, 4),
(52, 1),
(52, 3),
(52, 4),
(53, 1),
(53, 3),
(53, 4),
(54, 1),
(54, 3),
(54, 4),
(55, 1),
(55, 3),
(55, 4),
(56, 1),
(56, 3),
(56, 4),
(62, 1),
(62, 3),
(62, 4),
(63, 1),
(63, 3),
(63, 4),
(64, 1),
(64, 3),
(64, 4),
(65, 4),
(66, 1),
(66, 3),
(66, 4),
(67, 1),
(67, 3),
(67, 4),
(68, 1),
(68, 3),
(68, 4),
(69, 1),
(69, 3),
(69, 4),
(70, 1),
(70, 3),
(70, 4),
(71, 1),
(71, 3),
(71, 4),
(72, 1),
(72, 4),
(73, 1),
(73, 4),
(74, 1),
(74, 4),
(75, 1),
(75, 4),
(76, 1),
(76, 4),
(77, 1),
(77, 4),
(78, 1),
(78, 4),
(79, 1),
(79, 4),
(80, 1),
(80, 4),
(81, 1),
(81, 4),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(107, 4),
(108, 1),
(108, 4),
(109, 1),
(109, 4),
(110, 1),
(110, 4),
(111, 1),
(111, 4),
(112, 1),
(112, 4),
(113, 1),
(113, 4),
(114, 1),
(114, 4),
(115, 1),
(115, 4),
(116, 1),
(116, 4),
(117, 1),
(117, 4),
(118, 1),
(118, 4),
(119, 1),
(119, 4),
(120, 1),
(120, 4),
(121, 1),
(121, 4),
(122, 1),
(122, 4),
(123, 1),
(123, 4),
(124, 1),
(124, 4),
(125, 1),
(125, 4),
(126, 1),
(126, 4),
(127, 1),
(127, 4),
(128, 1),
(128, 4),
(129, 1),
(129, 4),
(130, 1),
(130, 4),
(131, 1),
(131, 4),
(132, 1),
(132, 4),
(133, 1),
(133, 4),
(134, 1),
(134, 4),
(135, 1),
(135, 4),
(136, 1),
(136, 4),
(137, 1),
(137, 3),
(137, 4),
(138, 1),
(138, 3),
(138, 4),
(139, 1),
(139, 3),
(139, 4),
(140, 1),
(140, 3),
(140, 4),
(141, 1),
(141, 3),
(141, 4),
(142, 1),
(142, 4),
(143, 1),
(143, 4),
(144, 1),
(144, 4),
(145, 1),
(145, 4),
(146, 1),
(146, 4),
(147, 1),
(147, 4),
(148, 1),
(148, 4),
(149, 1),
(149, 4),
(150, 1),
(150, 4),
(151, 1),
(151, 4),
(152, 1),
(152, 4),
(153, 1),
(153, 4),
(154, 1),
(154, 4),
(155, 1),
(155, 4),
(156, 1),
(156, 4),
(157, 1),
(157, 3),
(157, 4),
(158, 1),
(158, 3),
(158, 4),
(159, 1),
(159, 3),
(159, 4),
(160, 1),
(160, 3),
(160, 4),
(161, 1),
(161, 3),
(161, 4),
(162, 1),
(162, 3),
(162, 4),
(163, 1),
(163, 3),
(163, 4),
(164, 1),
(164, 3),
(164, 4),
(165, 1),
(165, 3),
(165, 4),
(166, 1),
(166, 3),
(166, 4),
(167, 1),
(167, 4),
(168, 1),
(168, 4),
(169, 1),
(169, 4),
(170, 1),
(171, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(182, 4),
(183, 1),
(183, 4),
(184, 1),
(184, 4),
(185, 1),
(185, 4),
(186, 1),
(186, 4),
(187, 1),
(187, 3),
(187, 4),
(188, 1),
(188, 3),
(188, 4),
(189, 1),
(189, 3),
(189, 4),
(190, 1),
(190, 3),
(190, 4),
(191, 1),
(191, 3),
(191, 4),
(192, 1),
(192, 4),
(193, 1),
(193, 4),
(194, 1),
(194, 4),
(195, 1),
(195, 4),
(196, 1),
(196, 4),
(197, 1),
(197, 4),
(198, 1),
(198, 4),
(199, 1),
(199, 4),
(200, 1),
(200, 4),
(201, 1),
(201, 4),
(202, 1),
(202, 4),
(203, 1),
(203, 4),
(204, 1),
(204, 4),
(205, 1),
(205, 4),
(206, 1),
(206, 4),
(207, 1),
(207, 4),
(208, 1),
(208, 4),
(209, 1),
(209, 4),
(210, 1),
(210, 4),
(211, 1),
(211, 4),
(212, 1),
(212, 4),
(213, 1),
(213, 4),
(214, 1),
(214, 4),
(215, 1),
(215, 4),
(216, 1),
(216, 4),
(217, 1),
(217, 4),
(218, 1),
(218, 4),
(219, 1),
(219, 4),
(220, 1),
(220, 4),
(221, 1),
(221, 4),
(237, 1),
(237, 4),
(238, 1),
(238, 4),
(239, 1),
(239, 4),
(240, 1),
(240, 4),
(241, 1),
(241, 4),
(247, 1),
(247, 4),
(248, 1),
(248, 4),
(249, 1),
(249, 4),
(250, 1),
(250, 4),
(251, 1),
(251, 4),
(252, 1),
(252, 4),
(253, 1),
(253, 4),
(254, 1),
(254, 4),
(255, 1),
(255, 4),
(256, 1),
(256, 4),
(257, 1),
(257, 4),
(258, 1),
(258, 4),
(259, 1),
(259, 4),
(260, 1),
(260, 4),
(261, 1),
(261, 4),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(267, 4),
(268, 1),
(268, 4),
(269, 1),
(269, 4),
(270, 1),
(270, 4),
(271, 1),
(271, 4),
(272, 1),
(272, 4),
(273, 1),
(273, 4),
(274, 1),
(274, 4),
(275, 1),
(275, 4),
(276, 1),
(276, 4),
(277, 1),
(277, 4),
(278, 1),
(278, 4),
(279, 1),
(279, 4),
(280, 1),
(280, 4),
(281, 1),
(281, 4),
(282, 1),
(282, 4),
(283, 1),
(283, 4),
(284, 1),
(284, 4),
(285, 1),
(285, 4),
(286, 1),
(286, 4),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postchilderns`
--

CREATE TABLE `postchilderns` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` text COLLATE utf8mb4_unicode_ci,
  `school` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `constructor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trainer_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postchilderns`
--

INSERT INTO `postchilderns` (`id`, `title`, `image`, `video`, `school`, `constructor`, `trainer_id`, `created_at`, `updated_at`, `body`) VALUES
(1, 'mohamad', '[{\"download_link\":\"postchilderns\\/September2023\\/nuQKgTjejzRfvF05rA3E.png\",\"original_name\":\"2.png\"}]', '[{\"download_link\":\"postchilderns\\/September2023\\/flIEgglfdnkw3YtvBuqz.sql\",\"original_name\":\"inomtech_lms.sql\"}]', 'HICIS2020', 'Ayman2020', 10, '2023-09-19 15:07:00', '2023-09-20 08:19:59', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis est quibusdam quod dolores nisi quaerat, ullam culpa. Cumque quibusdam ullam adipisci praesentium, quas dolorum perspiciatis, molestias temporibus perferendis eos ipsam.'),
(2, 'ayman', '[{\"download_link\":\"postchilderns\\/September2023\\/mO2p97CDJVRDJ5G6KmMR.png\",\"original_name\":\"2.png\"}]', '[{\"download_link\":\"postchilderns\\/September2023\\/oI1R82YiEse9sw4e7dCC.sql\",\"original_name\":\"inomtech_lms.sql\"}]', 'HICIS', 'Ayman', 4, '2023-09-19 15:54:00', '2023-09-20 08:04:00', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis est quibusdam quod dolores nisi quaerat, ullam culpa. Cumque quibusdam ullam adipisci praesentium, quas dolorum perspiciatis, molestias temporibus perferendis eos ipsam.'),
(3, 'nasser', '[{\"download_link\":\"postchilderns\\/September2023\\/gF6hmJWURGD4WHzkr56j.png\",\"original_name\":\"2.png\"}]', '[]', 'HICIS2020mmmm', 'Ayman2020mmm', 2, '2023-09-20 08:21:07', '2023-09-20 08:21:07', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, reiciendis eveniet, voluptatem deleniti at expedita distinctio sapiente placeat esse tenetur minus est fugiat facere culpa soluta! Doloremque quo architecto a?');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-04-08 09:32:07', '2020-04-08 09:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` tinyblob,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `p_category_id` int DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brief` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qty` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `images`, `p_category_id`, `description`, `created_at`, `updated_at`, `slug`, `brief`, `qty`) VALUES
(4, 'Which statistical test should I use ?', 2, 0x70726f64756374732f417072696c323032322f3976304e4d44747678575943436137666332417a2e6a7067, '[\"products\\/April2022\\/LeFhzqhnwU0qLfkeSCkV.jpg\"]', 1, 'ahmed tarek is a baahmed tarek is a back end  devolper ahmed tarek is a back end  devolper ahmed tarek is a back end  devolper ahmed tarek is a back end  devolper ahmed tarek is a back end  devolper ck end  devolper ', '2022-04-24 02:59:00', '2023-03-28 09:12:44', 'which-statistical-test-should-i-use', '', 95),
(5, 'A guide to using SPSS', 2, 0x70726f64756374732f417072696c323032322f7974726834676467336971425078776d326649632e6a7067, '[\"products\\/April2022\\/LKDRg6XB599tnjCHkske.jpg\"]', 1, '', '2022-04-24 03:00:00', '2023-03-28 09:12:44', 'dlyl-lastkhdam-brnamj-spss', '', 68);

-- --------------------------------------------------------

--
-- Table structure for table `p_categories`
--

CREATE TABLE `p_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `p_categories`
--

INSERT INTO `p_categories` (`id`, `name`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Books ', '2022-02-16 13:51:00', '2022-03-14 08:35:13', 'books'),
(2, 'Bags', '2022-03-03 08:03:00', '2022-03-14 08:34:03', 'alshnt'),
(3, 'pens', '2022-03-03 08:03:00', '2022-03-14 08:34:37', 'pens'),
(4, 'Rulers', '2022-03-03 08:03:00', '2022-03-14 08:34:57', 'msatr');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int UNSIGNED NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_type_id` int UNSIGNED NOT NULL DEFAULT '2',
  `media_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `question_type_id`, `media_url`, `media_type`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'What is PHP', 2, NULL, NULL, 1, '2022-04-01 00:02:00', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(2, 'Ut et repellendus Q', 2, NULL, NULL, 1, '2022-04-01 00:02:42', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(3, 'Enim velit ullam id', 2, 'Est libero excepteu', 'Aspernatur laboris s', 1, '2022-04-01 00:03:31', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(4, 'Quia non omnis paria', 2, NULL, NULL, 1, '2022-09-01 04:03:42', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(5, 'Perferendis nihil ip', 2, NULL, NULL, 1, '2022-09-01 05:05:51', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(6, 'In perferendis dolor', 2, NULL, NULL, 1, '2022-09-01 05:07:07', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(7, 'Nesciunt iure inven', 2, NULL, NULL, 1, '2022-09-04 08:35:10', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(8, 'hgsya iure invencecekee', 2, NULL, NULL, 1, '2022-09-04 08:37:49', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(9, 'Omnis adipisci maxim', 2, NULL, NULL, 1, '2022-09-04 08:39:35', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(10, 'Nisi dolor maxime qu', 2, NULL, NULL, 1, '2022-09-04 08:47:47', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(11, 'Aut deserunt ullam n', 2, NULL, NULL, 1, '2022-09-04 09:04:44', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(12, 'Et est iure voluptas', 2, NULL, NULL, 1, '2022-09-04 09:04:44', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(13, 'Quia accusamus neque', 2, NULL, NULL, 1, '2022-09-04 09:19:01', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(14, 'Quia accusamus neque', 2, NULL, NULL, 1, '2022-09-04 09:21:33', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(15, 'Quia accusamus neque', 2, NULL, NULL, 1, '2022-09-04 09:22:19', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(16, 'Rerum delectus volu', 2, NULL, NULL, 1, '2022-09-04 09:22:19', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(17, 'Eos Nam rerum rem a', 2, NULL, NULL, 1, '2022-09-06 03:12:56', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(18, 'sdkllksdkldd', 2, NULL, NULL, 1, '2022-09-06 03:12:56', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(19, 'Eos Nam rerum rem a', 2, NULL, NULL, 1, '2022-09-06 03:13:25', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(20, 'sdkllksdkldd', 2, NULL, NULL, 1, '2022-09-06 03:13:25', '2022-09-09 14:15:32', '2022-09-09 14:15:32'),
(21, 'Sit eum eum omnis ex', 2, NULL, NULL, 1, '2022-09-09 14:16:08', '2022-09-12 23:52:16', '2022-09-12 23:52:16'),
(22, 'What Is this quiz?', 2, NULL, NULL, 1, '2022-09-12 08:27:20', '2022-09-12 23:52:16', '2022-09-12 23:52:16'),
(23, 'what is this new quiz?', 2, NULL, NULL, 1, '2022-09-12 08:27:20', '2022-09-12 23:52:16', '2022-09-12 23:52:16'),
(24, 'how do you do', 2, NULL, NULL, 1, '2022-09-12 08:27:20', '2022-09-12 23:52:16', '2022-09-12 23:52:16'),
(25, 'what is quiz?', 2, NULL, NULL, 1, '2022-09-12 23:55:04', '2022-09-14 16:58:13', '2022-09-14 16:58:13'),
(26, 'what is quiz2?', 2, NULL, NULL, 1, '2022-09-12 23:55:04', '2022-09-14 16:58:13', '2022-09-14 16:58:13'),
(27, 'Aperiam provident e', 2, NULL, NULL, 1, '2022-09-14 17:08:53', '2022-09-14 17:08:53', NULL),
(28, 'Doloremque laudantiu', 2, NULL, NULL, 1, '2022-09-14 17:08:53', '2022-09-14 17:08:53', NULL),
(29, 'what is spss', 2, NULL, NULL, 1, '2022-09-15 04:54:06', '2022-09-15 04:54:06', NULL),
(30, 'what is spss', 2, NULL, NULL, 1, '2022-09-15 04:56:58', '2022-09-15 04:56:58', NULL),
(31, 'تقنية المعلومات', 2, NULL, NULL, 0, '2022-09-29 05:00:00', '2022-09-29 05:44:50', NULL),
(32, 'ماهي انواع الشبكات اذكر اثنين', 2, NULL, NULL, 1, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(33, 'حول المعادلة من باينري الى ديسمل 1010', 2, NULL, NULL, 1, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(34, 'حول المعادلة من باينري الى ديسمل 1100', 2, NULL, NULL, 1, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(35, '60 حول المعادلة من ديسمل الى باينري', 2, NULL, NULL, 1, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(36, '42 حول المعادلة من ديسمل الى باينري', 2, NULL, NULL, 1, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(37, 'Voluptatem saepe non', 2, NULL, NULL, 1, '2022-10-04 14:38:15', '2022-10-04 14:38:15', NULL),
(38, 'what is piwer bi', 2, NULL, NULL, 1, '2022-10-05 10:31:07', '2022-10-05 10:31:07', NULL),
(39, 'what is piwer bi', 2, NULL, NULL, 1, '2022-10-05 10:32:36', '2022-10-05 10:32:36', NULL),
(40, 'Hic dolorem fugiat', 2, NULL, NULL, 1, '2022-10-05 10:33:12', '2022-10-05 10:33:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` int UNSIGNED NOT NULL,
  `question_id` int UNSIGNED NOT NULL,
  `option` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `question_id`, `option`, `media_url`, `media_type`, `is_correct`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Has much frameworks like \"Laravel\"', 'Alias natus repudian', 'Aliquid voluptatem', 1, '2022-04-01 13:01:00', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(2, 1, 'Apple Company based Function', 'Atque eveniet archi', 'Saepe pariatur At t', 0, '2022-04-01 13:01:00', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(3, 1, 'Related to MAC company', 'Consequatur Et veli', 'Culpa non fuga Vol', 0, '2022-04-01 13:03:00', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(4, 1, 'Open source language based on MS', 'Dolore aspernatur ni', 'Eum nemo quia Nam id', 0, '2022-04-01 13:03:00', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(5, 2, 'Ullam sunt nisi iste', 'Saepe qui aut mollit', 'Ipsam molestiae simi', 0, '2022-04-03 19:09:06', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(6, 2, 'Omnis iusto inventor', 'Adipisci pariatur C', 'Consequat Do qui re', 1, '2022-04-03 19:09:23', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(7, 2, 'Perferendis quisquam', 'Molestias sunt qui', 'Vitae in magna in pr', 0, '2022-04-03 19:09:33', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(8, 2, 'Ad libero non praese', NULL, NULL, 0, '2022-09-01 03:48:00', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(9, 2, 'Voluptas quam accusa', NULL, NULL, 1, '2022-09-01 03:48:00', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(10, 2, 'Suscipit nulla sit u', NULL, NULL, 1, '2022-09-01 03:48:00', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(11, 2, 'Harum aut illo esse', NULL, NULL, 1, '2022-09-01 03:48:00', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(12, 2, 'Quos occaecat ex rem', NULL, NULL, 1, '2022-09-01 04:06:40', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(13, 2, 'Dolor error nisi obc', NULL, NULL, 1, '2022-09-01 04:06:40', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(14, 2, 'Magni perferendis at', NULL, NULL, 0, '2022-09-01 04:06:40', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(15, 2, 'Consequatur eligend', NULL, NULL, 1, '2022-09-01 04:06:40', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(16, 3, 'Nihil incidunt null', NULL, NULL, 1, '2022-09-01 04:20:24', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(17, 3, 'Rem distinctio Eos', NULL, NULL, 0, '2022-09-01 04:20:24', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(18, 3, 'Non ratione ut ipsum', NULL, NULL, 0, '2022-09-01 04:20:24', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(19, 3, 'Exercitation ea minu', NULL, NULL, 0, '2022-09-01 04:20:24', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(20, 1, 'Consequatur ab temp', NULL, NULL, 1, '2022-09-01 04:23:14', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(21, 1, 'Dolore qui ullam dol', NULL, NULL, 0, '2022-09-01 04:23:14', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(22, 1, 'Quasi soluta sunt qu', NULL, NULL, 0, '2022-09-01 04:23:14', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(23, 1, 'Nisi in animi in qu', NULL, NULL, 0, '2022-09-01 04:23:14', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(24, 1, 'Ex magni omnis magna', NULL, NULL, 0, '2022-09-01 04:24:23', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(25, 1, 'Excepturi sunt labo', NULL, NULL, 0, '2022-09-01 04:24:23', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(26, 1, 'Magni numquam ut vel', NULL, NULL, 0, '2022-09-01 04:24:23', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(27, 1, 'Laborum Dolorem acc', NULL, NULL, 1, '2022-09-01 04:24:23', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(28, 4, NULL, NULL, NULL, 0, '2022-09-01 04:26:45', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(29, 4, NULL, NULL, NULL, 0, '2022-09-01 04:26:45', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(30, 4, NULL, NULL, NULL, 1, '2022-09-01 04:26:45', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(31, 4, NULL, NULL, NULL, 0, '2022-09-01 04:26:45', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(32, 1, 'j,gjlv', NULL, NULL, 1, '2022-09-01 04:27:13', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(33, 1, NULL, NULL, NULL, 1, '2022-09-01 04:38:18', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(34, 1, NULL, NULL, NULL, 0, '2022-09-01 04:38:18', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(35, 1, NULL, NULL, NULL, 0, '2022-09-01 04:38:18', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(36, 1, NULL, NULL, NULL, 0, '2022-09-01 04:38:18', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(37, 5, 'Ut eum officiis id', NULL, NULL, 0, '2022-09-01 05:05:00', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(38, 5, 'Tempor dolores sit', NULL, NULL, 0, '2022-09-01 05:05:00', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(39, 5, 'kskakss', NULL, NULL, 1, '2022-09-01 05:05:00', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(40, 5, 'zzsdsa', NULL, NULL, 0, '2022-09-01 05:05:00', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(41, 9, NULL, NULL, NULL, 0, '2022-09-04 08:39:35', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(42, 9, NULL, NULL, NULL, 0, '2022-09-04 08:39:35', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(43, 9, NULL, NULL, NULL, 1, '2022-09-04 08:39:35', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(44, 9, NULL, NULL, NULL, 1, '2022-09-04 08:39:35', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(45, 10, NULL, NULL, NULL, 1, '2022-09-04 08:47:47', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(46, 10, NULL, NULL, NULL, 1, '2022-09-04 08:47:47', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(47, 10, NULL, NULL, NULL, 0, '2022-09-04 08:47:47', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(48, 10, NULL, NULL, NULL, 0, '2022-09-04 08:47:47', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(49, 11, NULL, NULL, NULL, 0, '2022-09-04 09:04:44', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(50, 11, NULL, NULL, NULL, 0, '2022-09-04 09:04:44', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(51, 11, NULL, NULL, NULL, 1, '2022-09-04 09:04:44', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(52, 11, NULL, NULL, NULL, 1, '2022-09-04 09:04:44', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(53, 12, NULL, NULL, NULL, 1, '2022-09-04 09:04:44', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(54, 12, NULL, NULL, NULL, 1, '2022-09-04 09:04:44', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(55, 12, NULL, NULL, NULL, 1, '2022-09-04 09:04:44', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(56, 12, NULL, NULL, NULL, 0, '2022-09-04 09:04:44', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(57, 13, NULL, NULL, NULL, 1, '2022-09-04 09:19:01', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(58, 14, 'Est inventore eius', NULL, NULL, 1, '2022-09-04 09:21:33', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(59, 15, 'Est inventore eius', NULL, NULL, 1, '2022-09-04 09:22:19', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(60, 15, 'Deserunt soluta anim', NULL, NULL, 1, '2022-09-04 09:22:19', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(61, 15, 'Nemo nisi similique', NULL, NULL, 0, '2022-09-04 09:22:19', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(62, 15, 'Et porro et sed cumq', NULL, NULL, 0, '2022-09-04 09:22:19', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(63, 16, 'Nihil iure autem ex', NULL, NULL, 0, '2022-09-04 09:22:19', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(64, 16, 'Qui quis enim lorem', NULL, NULL, 0, '2022-09-04 09:22:19', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(65, 16, 'Cillum velit hic il', NULL, NULL, 0, '2022-09-04 09:22:19', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(66, 16, 'Adipisci consequat', NULL, NULL, 1, '2022-09-04 09:22:19', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(67, 17, 'Fugiat sunt reprehe', NULL, NULL, 0, '2022-09-06 03:12:56', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(68, 17, 'Incidunt voluptatem', NULL, NULL, 0, '2022-09-06 03:12:56', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(69, 17, 'Sapiente id ut adipi', NULL, NULL, 1, '2022-09-06 03:12:56', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(70, 17, 'Fugiat aut non delen', NULL, NULL, 0, '2022-09-06 03:12:56', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(71, 19, 'Fugiat sunt reprehe', NULL, NULL, 0, '2022-09-06 03:13:25', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(72, 19, 'Incidunt voluptatem', NULL, NULL, 0, '2022-09-06 03:13:25', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(73, 19, 'Sapiente id ut adipi', NULL, NULL, 1, '2022-09-06 03:13:25', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(74, 19, 'Fugiat aut non delen', NULL, NULL, 0, '2022-09-06 03:13:25', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(75, 20, NULL, NULL, NULL, 0, '2022-09-06 03:13:25', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(76, 20, NULL, NULL, NULL, 0, '2022-09-06 03:13:25', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(77, 20, NULL, NULL, NULL, 0, '2022-09-06 03:13:25', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(78, 20, NULL, NULL, NULL, 0, '2022-09-06 03:13:25', '2022-09-09 14:15:20', '2022-09-09 14:15:20'),
(79, 21, 'Aut vel dolor accusa', NULL, NULL, 0, '2022-09-09 14:16:08', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(80, 21, 'Laborum fuga Sapien', NULL, NULL, 1, '2022-09-09 14:16:08', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(81, 21, 'Tempora tempore ius', NULL, NULL, 0, '2022-09-09 14:16:08', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(82, 21, 'Qui cillum quo duis', NULL, NULL, 0, '2022-09-09 14:16:08', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(83, 22, 'answer1', NULL, NULL, 1, '2022-09-12 08:27:20', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(84, 22, 'answer2', NULL, NULL, 0, '2022-09-12 08:27:20', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(85, 22, 'answer2', NULL, NULL, 0, '2022-09-12 08:27:20', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(86, 22, 'answer4', NULL, NULL, 0, '2022-09-12 08:27:20', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(87, 23, '1', NULL, NULL, 1, '2022-09-12 08:27:20', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(88, 23, '2', NULL, NULL, 0, '2022-09-12 08:27:20', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(89, 23, '3', NULL, NULL, 0, '2022-09-12 08:27:20', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(90, 23, '4', NULL, NULL, 0, '2022-09-12 08:27:20', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(91, 24, '13', NULL, NULL, 1, '2022-09-12 08:27:20', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(92, 24, '10', NULL, NULL, 0, '2022-09-12 08:27:20', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(93, 24, '15', NULL, NULL, 0, '2022-09-12 08:27:20', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(94, 24, '18', NULL, NULL, 0, '2022-09-12 08:27:20', '2022-09-12 23:52:08', '2022-09-12 23:52:08'),
(95, 25, '1', NULL, NULL, 1, '2022-09-12 23:55:04', '2022-09-14 16:58:21', '2022-09-14 16:58:21'),
(96, 25, '2', NULL, NULL, 0, '2022-09-12 23:55:04', '2022-09-14 16:58:21', '2022-09-14 16:58:21'),
(97, 25, '3', NULL, NULL, 0, '2022-09-12 23:55:04', '2022-09-14 16:58:21', '2022-09-14 16:58:21'),
(98, 25, '4', NULL, NULL, 0, '2022-09-12 23:55:04', '2022-09-14 16:58:21', '2022-09-14 16:58:21'),
(99, 26, '1', NULL, NULL, 1, '2022-09-12 23:55:04', '2022-09-14 16:58:21', '2022-09-14 16:58:21'),
(100, 26, '2', NULL, NULL, 0, '2022-09-12 23:55:04', '2022-09-14 16:58:21', '2022-09-14 16:58:21'),
(101, 26, '3', NULL, NULL, 0, '2022-09-12 23:55:04', '2022-09-14 16:58:21', '2022-09-14 16:58:21'),
(102, 26, '4', NULL, NULL, 0, '2022-09-12 23:55:04', '2022-09-14 16:58:21', '2022-09-14 16:58:21'),
(103, 27, 'Dolore blanditiis ex', NULL, NULL, 0, '2022-09-14 17:08:53', '2022-09-14 17:08:53', NULL),
(104, 27, 'Nesciunt qui labori', NULL, NULL, 0, '2022-09-14 17:08:53', '2022-09-14 17:08:53', NULL),
(105, 27, 'Voluptas quis ullamc', NULL, NULL, 1, '2022-09-14 17:08:53', '2022-09-14 17:08:53', NULL),
(106, 27, 'Rerum sapiente excep', NULL, NULL, 0, '2022-09-14 17:08:53', '2022-09-14 17:08:53', NULL),
(107, 28, 'Vel at aute amet ma', NULL, NULL, 0, '2022-09-14 17:08:53', '2022-09-14 17:08:53', NULL),
(108, 28, 'Ea quis anim fugiat', NULL, NULL, 0, '2022-09-14 17:08:53', '2022-09-14 17:08:53', NULL),
(109, 28, 'In ut proident impe', NULL, NULL, 1, '2022-09-14 17:08:53', '2022-09-14 17:08:53', NULL),
(110, 28, 'Rem tempora nostrum', NULL, NULL, 0, '2022-09-14 17:08:53', '2022-09-14 17:08:53', NULL),
(111, 29, 'S1', NULL, NULL, 0, '2022-09-15 04:54:06', '2022-09-15 04:54:06', NULL),
(112, 29, 'S2', NULL, NULL, 0, '2022-09-15 04:54:06', '2022-09-15 04:54:06', NULL),
(113, 29, 'S3', NULL, NULL, 0, '2022-09-15 04:54:06', '2022-09-15 04:54:06', NULL),
(114, 29, 'S4', NULL, NULL, 1, '2022-09-15 04:54:06', '2022-09-15 04:54:06', NULL),
(115, 30, 'S1', NULL, NULL, 0, '2022-09-15 04:56:58', '2022-09-15 04:56:58', NULL),
(116, 30, 'S2', NULL, NULL, 0, '2022-09-15 04:56:58', '2022-09-15 04:56:58', NULL),
(117, 30, 'S3', NULL, NULL, 0, '2022-09-15 04:56:58', '2022-09-15 04:56:58', NULL),
(118, 30, 'S4', NULL, NULL, 1, '2022-09-15 04:56:58', '2022-09-15 04:56:58', NULL),
(119, 31, NULL, NULL, NULL, 1, '2022-09-29 05:03:04', '2022-09-29 05:03:04', '2022-09-30 08:59:00'),
(120, 31, NULL, NULL, NULL, 0, '2022-09-29 05:03:36', '2022-09-29 05:03:36', NULL),
(121, 32, 'WLAN', NULL, NULL, 1, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(122, 32, 'Lan', NULL, NULL, 1, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(123, 32, 'BWAN', NULL, NULL, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(124, 32, 'AWAN', NULL, NULL, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(125, 33, '7', NULL, NULL, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(126, 33, '8', NULL, NULL, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(127, 33, '9', NULL, NULL, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(128, 33, '10', NULL, NULL, 1, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(129, 34, '10', NULL, NULL, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(130, 34, '11', NULL, NULL, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(131, 34, '12', NULL, NULL, 1, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(132, 34, '13', NULL, NULL, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(133, 35, '111100', NULL, NULL, 1, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(134, 35, '111101', NULL, NULL, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(135, 35, '111010', NULL, NULL, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(136, 35, '101101', NULL, NULL, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(137, 37, 'Facere et omnis exce', NULL, NULL, 0, '2022-10-04 14:38:15', '2022-10-04 14:38:15', NULL),
(138, 37, 'Quo autem et autem e', NULL, NULL, 0, '2022-10-04 14:38:15', '2022-10-04 14:38:15', NULL),
(139, 37, 'Qui cupidatat tempor', NULL, NULL, 1, '2022-10-04 14:38:15', '2022-10-04 14:38:15', NULL),
(140, 37, 'Incididunt deleniti', NULL, NULL, 0, '2022-10-04 14:38:15', '2022-10-04 14:38:15', NULL),
(141, 39, 'a1', NULL, NULL, 1, '2022-10-05 10:32:36', '2022-10-05 10:32:36', NULL),
(142, 39, 'a2', NULL, NULL, 0, '2022-10-05 10:32:36', '2022-10-05 10:32:36', NULL),
(143, 39, 'a3', NULL, NULL, 0, '2022-10-05 10:32:36', '2022-10-05 10:32:36', NULL),
(144, 39, 'q4', NULL, NULL, 0, '2022-10-05 10:32:36', '2022-10-05 10:32:36', NULL),
(145, 40, 'Voluptatem quo exer', NULL, NULL, 1, '2022-10-05 10:33:12', '2022-10-05 10:33:12', NULL),
(146, 40, 'Aliquam quam magnam', NULL, NULL, 0, '2022-10-05 10:33:12', '2022-10-05 10:33:12', NULL),
(147, 40, 'Ex aut itaque ea ut', NULL, NULL, 0, '2022-10-05 10:33:12', '2022-10-05 10:33:12', NULL),
(148, 40, 'Ut aliquip laborum e', NULL, NULL, 0, '2022-10-05 10:33:12', '2022-10-05 10:33:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_types`
--

CREATE TABLE `question_types` (
  `id` int UNSIGNED NOT NULL,
  `question_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_types`
--

INSERT INTO `question_types` (`id`, `question_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'multiple_choice_single_answer', '2022-03-31 02:20:26', '2022-03-31 02:20:26', NULL),
(3, 'multiple_choice_multiple_answer', '2022-03-31 02:20:26', '2022-03-31 02:20:26', NULL),
(4, 'fill_the_blank', '2022-03-31 02:20:26', '2022-03-31 02:20:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_marks` double(8,2) NOT NULL DEFAULT '0.00',
  `pass_marks` double(8,2) NOT NULL DEFAULT '0.00',
  `max_attempts` int UNSIGNED NOT NULL DEFAULT '0',
  `is_published` tinyint NOT NULL DEFAULT '0',
  `media_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int UNSIGNED NOT NULL DEFAULT '0',
  `valid_from` timestamp NOT NULL DEFAULT '2022-03-31 01:47:50',
  `valid_upto` timestamp NULL DEFAULT NULL,
  `time_between_attempts` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `course_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `slug`, `description`, `total_marks`, `pass_marks`, `max_attempts`, `is_published`, `media_url`, `media_type`, `duration`, `valid_from`, `valid_upto`, `time_between_attempts`, `created_at`, `updated_at`, `deleted_at`, `course_id`) VALUES
(41, 'Modi id nostrum aute', 'Dolor voluptas unde', 'Ut sit fugiat ea qu', 21.00, 0.00, 0, 0, NULL, NULL, 30, '2022-09-14 19:06:00', '2022-09-14 19:06:00', 0, '2022-09-14 17:08:53', '2022-09-14 17:08:53', NULL, 6),
(42, 'Quiz 1', 'Quiz 1', '-', 100.00, 0.00, 0, 0, NULL, NULL, 30, '2022-09-14 06:39:00', '2022-09-15 06:39:00', 0, '2022-09-15 04:54:06', '2022-09-15 04:54:06', NULL, 11),
(43, 'quiz 2 test', 'quiz 2 test', 'desc', 100.00, 0.00, 0, 0, NULL, NULL, 30, '2022-09-14 06:56:00', '2022-10-21 06:56:00', 0, '2022-09-15 04:56:00', '2022-10-05 10:06:14', NULL, 11),
(44, 'اساسيات تقنية المعلومات', 'texrt', 'اختبارلاساسيات تقنية المعلومات', 100.00, 0.00, 0, 0, NULL, NULL, 6, '2022-09-28 09:03:00', '2022-10-08 09:03:00', 0, '2022-09-29 05:21:00', '2022-10-05 10:03:15', NULL, 31),
(45, 'test', 'Velit inventore non', 'Sed qui dolor laudan', 73.00, 0.00, 0, 0, NULL, NULL, 74, '2022-10-05 16:38:00', NULL, 0, '2022-10-04 14:38:15', '2022-10-04 14:38:15', NULL, 10),
(46, 'Power BI', 'Power BI', NULL, 20.00, 0.00, 0, 0, NULL, NULL, 2, '2022-10-05 12:30:00', '2022-10-07 12:30:00', 0, '2022-10-05 10:31:07', '2022-10-05 10:31:07', NULL, 32),
(47, 'Power BI', 'Power BI1', NULL, 20.00, 0.00, 0, 0, NULL, NULL, 2, '2022-10-05 12:30:00', '2022-10-07 12:30:00', 0, '2022-10-05 10:32:36', '2022-10-05 10:32:36', NULL, 32),
(48, 'Impedit quae sit d', 'Vel dolor voluptas e', 'Quaerat ut laborum', 90.00, 0.00, 0, 0, NULL, NULL, 39, '2022-10-05 12:33:00', '2022-10-05 12:33:00', 0, '2022-10-05 10:33:12', '2022-10-05 10:33:12', NULL, 32);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempts`
--

CREATE TABLE `quiz_attempts` (
  `id` int UNSIGNED NOT NULL,
  `quiz_id` int UNSIGNED NOT NULL,
  `participant_id` int UNSIGNED NOT NULL,
  `participant_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_attempts`
--

INSERT INTO `quiz_attempts` (`id`, `quiz_id`, `participant_id`, `participant_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(298, 41, 1, 'Student', '2022-09-14 17:09:43', '2022-09-14 17:09:43', NULL),
(299, 41, 1, 'Student', '2022-09-14 17:10:09', '2022-09-14 17:10:09', NULL),
(300, 41, 1, 'Student', '2022-09-14 17:10:36', '2022-09-14 17:10:36', NULL),
(301, 41, 1, 'Student', '2022-10-04 14:33:10', '2022-10-04 14:33:10', NULL),
(302, 47, 78, 'Student', '2022-10-05 10:39:22', '2022-10-05 10:39:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempt_answers`
--

CREATE TABLE `quiz_attempt_answers` (
  `id` int UNSIGNED NOT NULL,
  `quiz_attempt_id` int UNSIGNED NOT NULL,
  `quiz_question_id` int UNSIGNED NOT NULL,
  `question_option_id` int UNSIGNED NOT NULL,
  `answer` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_attempt_answers`
--

INSERT INTO `quiz_attempt_answers` (`id`, `quiz_attempt_id`, `quiz_question_id`, `question_option_id`, `answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(63, 95, 5, 1, NULL, '2022-04-04 02:16:20', '2022-04-04 02:16:20', NULL),
(64, 96, 5, 1, NULL, '2022-04-04 02:16:54', '2022-04-04 02:16:54', NULL),
(65, 97, 5, 1, NULL, '2022-04-04 02:17:03', '2022-04-04 02:17:03', NULL),
(66, 98, 5, 1, NULL, '2022-04-04 02:17:29', '2022-04-04 02:17:29', NULL),
(67, 99, 5, 1, NULL, '2022-04-04 02:18:06', '2022-04-04 02:18:06', NULL),
(68, 100, 5, 1, NULL, '2022-04-04 02:18:23', '2022-04-04 02:18:23', NULL),
(69, 101, 5, 1, NULL, '2022-04-04 02:18:43', '2022-04-04 02:18:43', NULL),
(70, 102, 8, 6, NULL, '2022-04-04 02:18:58', '2022-04-04 02:18:58', NULL),
(71, 103, 8, 5, NULL, '2022-04-04 02:19:18', '2022-04-04 02:19:18', NULL),
(72, 104, 5, 1, NULL, '2022-04-04 02:19:48', '2022-04-04 02:19:48', NULL),
(73, 105, 8, 6, NULL, '2022-04-04 02:20:12', '2022-04-04 02:20:12', NULL),
(74, 106, 5, 1, NULL, '2022-04-04 02:28:46', '2022-04-04 02:28:46', NULL),
(75, 107, 5, 1, NULL, '2022-04-04 02:31:02', '2022-04-04 02:31:02', NULL),
(76, 108, 5, 1, NULL, '2022-04-04 02:34:45', '2022-04-04 02:34:45', NULL),
(77, 109, 5, 1, NULL, '2022-04-04 06:38:37', '2022-04-04 06:38:37', NULL),
(78, 110, 8, 6, NULL, '2022-04-04 06:38:57', '2022-04-04 06:38:57', NULL),
(79, 111, 5, 1, NULL, '2022-04-05 01:58:39', '2022-04-05 01:58:39', NULL),
(80, 112, 8, 6, NULL, '2022-04-05 01:59:37', '2022-04-05 01:59:37', NULL),
(81, 113, 5, 1, NULL, '2022-04-05 01:59:52', '2022-04-05 01:59:52', NULL),
(82, 114, 8, 6, NULL, '2022-04-05 02:05:53', '2022-04-05 02:05:53', NULL),
(83, 116, 5, 2, NULL, NULL, NULL, NULL),
(84, 116, 8, 6, NULL, NULL, NULL, NULL),
(85, 117, 5, 1, NULL, NULL, NULL, NULL),
(86, 117, 8, 6, NULL, NULL, NULL, NULL),
(87, 118, 5, 1, NULL, NULL, NULL, NULL),
(88, 118, 8, 6, NULL, NULL, NULL, NULL),
(89, 119, 5, 1, NULL, NULL, NULL, NULL),
(90, 119, 8, 6, NULL, NULL, NULL, NULL),
(91, 120, 5, 1, NULL, NULL, NULL, NULL),
(92, 120, 8, 6, NULL, NULL, NULL, NULL),
(93, 121, 5, 1, NULL, NULL, NULL, NULL),
(94, 121, 8, 6, NULL, NULL, NULL, NULL),
(95, 122, 5, 1, NULL, NULL, NULL, NULL),
(96, 122, 8, 6, NULL, NULL, NULL, NULL),
(97, 123, 5, 1, NULL, NULL, NULL, NULL),
(98, 123, 8, 6, NULL, NULL, NULL, NULL),
(99, 124, 5, 1, NULL, NULL, NULL, NULL),
(100, 124, 8, 6, NULL, NULL, NULL, NULL),
(101, 125, 5, 1, NULL, NULL, NULL, NULL),
(102, 125, 8, 6, NULL, NULL, NULL, NULL),
(103, 126, 5, 1, NULL, NULL, NULL, NULL),
(104, 126, 8, 6, NULL, NULL, NULL, NULL),
(105, 127, 5, 1, NULL, NULL, NULL, NULL),
(106, 127, 8, 6, NULL, NULL, NULL, NULL),
(107, 128, 5, 1, NULL, NULL, NULL, NULL),
(108, 128, 8, 6, NULL, NULL, NULL, NULL),
(109, 129, 5, 1, NULL, NULL, NULL, NULL),
(110, 129, 8, 6, NULL, NULL, NULL, NULL),
(111, 191, 19, 72, NULL, NULL, NULL, NULL),
(112, 191, 20, 76, NULL, NULL, NULL, NULL),
(113, 192, 19, 72, NULL, NULL, NULL, NULL),
(114, 192, 20, 76, NULL, NULL, NULL, NULL),
(115, 193, 19, 72, NULL, NULL, NULL, NULL),
(116, 193, 20, 76, NULL, NULL, NULL, NULL),
(117, 194, 19, 72, NULL, NULL, NULL, NULL),
(118, 194, 20, 76, NULL, NULL, NULL, NULL),
(119, 195, 19, 72, NULL, NULL, NULL, NULL),
(120, 195, 20, 76, NULL, NULL, NULL, NULL),
(121, 196, 19, 72, NULL, NULL, NULL, NULL),
(122, 196, 20, 76, NULL, NULL, NULL, NULL),
(123, 197, 19, 72, NULL, NULL, NULL, NULL),
(124, 197, 20, 76, NULL, NULL, NULL, NULL),
(125, 198, 19, 72, NULL, NULL, NULL, NULL),
(126, 198, 20, 76, NULL, NULL, NULL, NULL),
(127, 199, 19, 72, NULL, NULL, NULL, NULL),
(128, 199, 20, 76, NULL, NULL, NULL, NULL),
(129, 200, 19, 72, NULL, NULL, NULL, NULL),
(130, 200, 20, 76, NULL, NULL, NULL, NULL),
(131, 201, 19, 72, NULL, NULL, NULL, NULL),
(132, 201, 20, 76, NULL, NULL, NULL, NULL),
(133, 202, 19, 72, NULL, NULL, NULL, NULL),
(134, 202, 20, 76, NULL, NULL, NULL, NULL),
(135, 203, 19, 72, NULL, NULL, NULL, NULL),
(136, 203, 20, 76, NULL, NULL, NULL, NULL),
(137, 204, 19, 72, NULL, NULL, NULL, NULL),
(138, 204, 20, 76, NULL, NULL, NULL, NULL),
(139, 205, 19, 72, NULL, NULL, NULL, NULL),
(140, 205, 20, 76, NULL, NULL, NULL, NULL),
(141, 206, 19, 71, NULL, NULL, NULL, NULL),
(142, 206, 20, 75, NULL, NULL, NULL, NULL),
(143, 208, 19, 73, NULL, NULL, NULL, NULL),
(144, 208, 20, 77, NULL, NULL, NULL, NULL),
(145, 209, 19, 74, NULL, NULL, NULL, NULL),
(146, 209, 20, 78, NULL, NULL, NULL, NULL),
(147, 210, 19, 73, NULL, NULL, NULL, NULL),
(148, 210, 20, 75, NULL, NULL, NULL, NULL),
(149, 211, 19, 73, NULL, NULL, NULL, NULL),
(150, 211, 20, 75, NULL, NULL, NULL, NULL),
(151, 212, 19, 73, NULL, NULL, NULL, NULL),
(152, 212, 20, 75, NULL, NULL, NULL, NULL),
(153, 213, 19, 73, NULL, NULL, NULL, NULL),
(154, 213, 20, 75, NULL, NULL, NULL, NULL),
(155, 214, 19, 73, NULL, NULL, NULL, NULL),
(156, 214, 20, 77, NULL, NULL, NULL, NULL),
(157, 215, 19, 73, NULL, NULL, NULL, NULL),
(158, 215, 20, 77, NULL, NULL, NULL, NULL),
(159, 216, 19, 73, NULL, NULL, NULL, NULL),
(160, 216, 20, 77, NULL, NULL, NULL, NULL),
(161, 217, 19, 73, NULL, NULL, NULL, NULL),
(162, 217, 20, 77, NULL, NULL, NULL, NULL),
(163, 218, 21, 80, NULL, NULL, NULL, NULL),
(164, 219, 21, 80, NULL, NULL, NULL, NULL),
(165, 220, 21, 81, NULL, NULL, NULL, NULL),
(166, 221, 21, 81, NULL, NULL, NULL, NULL),
(167, 222, 21, 81, NULL, NULL, NULL, NULL),
(168, 223, 21, 81, NULL, NULL, NULL, NULL),
(169, 224, 21, 81, NULL, NULL, NULL, NULL),
(170, 225, 21, 80, NULL, NULL, NULL, NULL),
(171, 226, 21, 81, NULL, NULL, NULL, NULL),
(172, 227, 21, 82, NULL, NULL, NULL, NULL),
(173, 228, 21, 82, NULL, NULL, NULL, NULL),
(174, 229, 21, 82, NULL, NULL, NULL, NULL),
(175, 230, 21, 82, NULL, NULL, NULL, NULL),
(176, 231, 21, 82, NULL, NULL, NULL, NULL),
(177, 232, 21, 82, NULL, NULL, NULL, NULL),
(178, 233, 21, 81, NULL, NULL, NULL, NULL),
(179, 234, 21, 81, NULL, NULL, NULL, NULL),
(180, 235, 21, 81, NULL, NULL, NULL, NULL),
(181, 236, 21, 81, NULL, NULL, NULL, NULL),
(182, 237, 21, 81, NULL, NULL, NULL, NULL),
(183, 238, 22, 83, NULL, NULL, NULL, NULL),
(184, 238, 23, 87, NULL, NULL, NULL, NULL),
(185, 238, 24, 91, NULL, NULL, NULL, NULL),
(186, 239, 21, 79, NULL, NULL, NULL, NULL),
(187, 240, 21, 79, NULL, NULL, NULL, NULL),
(188, 241, 21, 79, NULL, NULL, NULL, NULL),
(189, 242, 21, 79, NULL, NULL, NULL, NULL),
(190, 243, 21, 79, NULL, NULL, NULL, NULL),
(191, 244, 21, 79, NULL, NULL, NULL, NULL),
(192, 245, 21, 79, NULL, NULL, NULL, NULL),
(193, 246, 21, 79, NULL, NULL, NULL, NULL),
(194, 247, 21, 79, NULL, NULL, NULL, NULL),
(195, 248, 21, 80, NULL, NULL, NULL, NULL),
(196, 249, 21, 80, NULL, NULL, NULL, NULL),
(197, 250, 22, 83, NULL, NULL, NULL, NULL),
(198, 250, 23, 87, NULL, NULL, NULL, NULL),
(199, 250, 24, 91, NULL, NULL, NULL, NULL),
(200, 287, 25, 95, NULL, NULL, NULL, NULL),
(201, 287, 26, 99, NULL, NULL, NULL, NULL),
(202, 288, 25, 95, NULL, NULL, NULL, NULL),
(203, 288, 26, 99, NULL, NULL, NULL, NULL),
(204, 289, 25, 95, NULL, NULL, NULL, NULL),
(205, 289, 26, 99, NULL, NULL, NULL, NULL),
(206, 290, 25, 95, NULL, NULL, NULL, NULL),
(207, 290, 26, 99, NULL, NULL, NULL, NULL),
(208, 291, 25, 95, NULL, NULL, NULL, NULL),
(209, 291, 26, 99, NULL, NULL, NULL, NULL),
(210, 292, 25, 95, NULL, NULL, NULL, NULL),
(211, 292, 26, 99, NULL, NULL, NULL, NULL),
(212, 293, 25, 95, NULL, NULL, NULL, NULL),
(213, 293, 26, 99, NULL, NULL, NULL, NULL),
(214, 294, 25, 95, NULL, NULL, NULL, NULL),
(215, 294, 26, 99, NULL, NULL, NULL, NULL),
(216, 295, 25, 95, NULL, NULL, NULL, NULL),
(217, 295, 26, 101, NULL, NULL, NULL, NULL),
(218, 296, 25, 98, NULL, NULL, NULL, NULL),
(219, 296, 26, 101, NULL, NULL, NULL, NULL),
(220, 297, 25, 95, NULL, NULL, NULL, NULL),
(221, 297, 26, 99, NULL, NULL, NULL, NULL),
(222, 298, 27, 105, NULL, NULL, NULL, NULL),
(223, 298, 28, 109, NULL, NULL, NULL, NULL),
(224, 299, 27, 103, NULL, NULL, NULL, NULL),
(225, 299, 28, 107, NULL, NULL, NULL, NULL),
(226, 300, 27, 105, NULL, NULL, NULL, NULL),
(227, 300, 28, 107, NULL, NULL, NULL, NULL),
(228, 301, 27, 103, NULL, NULL, NULL, NULL),
(229, 301, 28, 107, NULL, NULL, NULL, NULL),
(230, 302, 39, 141, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` int UNSIGNED NOT NULL,
  `quiz_id` int UNSIGNED NOT NULL,
  `question_id` int UNSIGNED NOT NULL,
  `marks` double(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `negative_marks` double(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `is_optional` tinyint(1) NOT NULL DEFAULT '0',
  `order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `quiz_id`, `question_id`, `marks`, `negative_marks`, `is_optional`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 1, 1, 4.00, 0.00, 0, 1, '2022-04-01 13:41:48', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(8, 1, 2, 2.00, 0.00, 0, 1, '2022-04-03 19:03:08', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(9, 9, 3, 3.00, 0.00, 0, 0, '2022-09-01 03:46:33', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(10, 10, 1, 68.00, 0.00, 0, 0, '2022-09-01 03:47:30', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(11, 11, 2, 40.00, 0.00, 0, 0, '2022-09-01 03:48:00', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(12, 12, 2, 63.00, 0.00, 0, 0, '2022-09-01 04:06:40', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(13, 13, 3, 75.00, 0.00, 0, 0, '2022-09-01 04:20:24', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(14, 14, 1, 21.00, 0.00, 0, 0, '2022-09-01 04:23:14', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(15, 15, 1, 33.00, 0.00, 0, 0, '2022-09-01 04:24:23', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(16, 16, 4, 87.00, 0.00, 0, 0, '2022-09-01 04:26:45', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(17, 17, 1, 1.00, 0.00, 0, 0, '2022-09-01 04:28:47', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(18, 21, 1, 12.00, 0.00, 0, 0, '2022-09-01 04:38:18', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(19, 24, 5, 84.00, 0.00, 0, 0, '2022-09-01 05:05:51', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(20, 26, 7, 13.00, 0.00, 0, 0, '2022-09-04 08:35:10', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(21, 27, 8, 13.00, 0.00, 0, 0, '2022-09-04 08:37:49', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(22, 28, 9, 100.00, 0.00, 0, 0, '2022-09-04 08:39:35', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(23, 29, 10, 12.00, 0.00, 0, 0, '2022-09-04 08:47:47', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(24, 32, 11, 36.00, 0.00, 0, 0, '2022-09-04 09:04:44', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(25, 32, 12, 6.00, 0.00, 0, 0, '2022-09-04 09:04:44', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(26, 33, 13, 81.00, 0.00, 0, 0, '2022-09-04 09:19:01', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(27, 34, 14, 81.00, 0.00, 0, 0, '2022-09-04 09:21:33', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(28, 35, 15, 81.00, 0.00, 0, 0, '2022-09-04 09:22:19', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(29, 35, 16, 43.00, 0.00, 0, 0, '2022-09-04 09:22:19', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(30, 36, 17, 49.00, 0.00, 0, 0, '2022-09-06 03:12:56', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(31, 37, 19, 49.00, 0.00, 0, 0, '2022-09-06 03:13:25', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(32, 37, 20, 19.00, 0.00, 0, 0, '2022-09-06 03:13:25', '2022-09-09 14:14:39', '2022-09-09 14:14:39'),
(33, 38, 21, 20.00, 0.00, 0, 0, '2022-09-09 14:16:08', '2022-09-12 23:51:57', '2022-09-12 23:51:57'),
(34, 39, 22, 20.00, 0.00, 0, 0, '2022-09-12 08:27:20', '2022-09-12 23:51:57', '2022-09-12 23:51:57'),
(35, 39, 23, 20.00, 0.00, 0, 0, '2022-09-12 08:27:20', '2022-09-12 23:51:57', '2022-09-12 23:51:57'),
(36, 39, 24, 10.00, 0.00, 0, 0, '2022-09-12 08:27:20', '2022-09-12 23:51:57', '2022-09-12 23:51:57'),
(37, 40, 25, 25.00, 0.00, 0, 0, '2022-09-12 23:55:04', '2022-09-14 16:58:34', '2022-09-14 16:58:34'),
(38, 40, 26, 25.00, 0.00, 0, 0, '2022-09-12 23:55:04', '2022-09-14 16:58:34', '2022-09-14 16:58:34'),
(39, 41, 27, 11.00, 0.00, 0, 0, '2022-09-14 17:08:53', '2022-09-14 17:08:53', NULL),
(40, 41, 28, 10.00, 0.00, 0, 0, '2022-09-14 17:08:53', '2022-09-14 17:08:53', NULL),
(41, 42, 29, 10.00, 0.00, 0, 0, '2022-09-15 04:54:06', '2022-09-15 04:54:06', NULL),
(42, 43, 30, 100.00, 0.00, 0, 0, '2022-09-15 04:56:58', '2022-09-15 04:56:58', NULL),
(43, 44, 32, 20.00, 0.00, 0, 0, '2022-09-29 05:21:00', '2022-09-29 05:57:38', NULL),
(44, 44, 33, 20.00, 0.00, 0, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(45, 44, 34, 20.00, 0.00, 0, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(46, 44, 35, 20.00, 0.00, 0, 0, '2022-09-29 05:21:42', '2022-09-29 05:21:42', NULL),
(47, 45, 37, 73.00, 0.00, 0, 0, '2022-10-04 14:38:15', '2022-10-04 14:38:15', NULL),
(48, 47, 39, 20.00, 0.00, 0, 0, '2022-10-05 10:32:36', '2022-10-05 10:32:36', NULL),
(49, 48, 40, 90.00, 0.00, 0, 0, '2022-10-05 10:33:12', '2022-10-05 10:33:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_scores`
--

CREATE TABLE `quiz_scores` (
  `id` int UNSIGNED NOT NULL,
  `quiz_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `score` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_scores`
--

INSERT INTO `quiz_scores` (`id`, `quiz_id`, `user_id`, `score`, `created_at`, `updated_at`) VALUES
(10, 41, 1, 21, '2022-09-14 17:09:00', '2022-09-29 05:49:07'),
(11, 44, 79, NULL, '2022-09-29 05:58:26', '2022-09-29 05:58:26'),
(12, 47, 78, 20, '2022-10-05 10:39:22', '2022-10-05 10:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `resolves`
--

CREATE TABLE `resolves` (
  `id` int UNSIGNED NOT NULL,
  `assignment_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_trainer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resolves`
--

INSERT INTO `resolves` (`id`, `assignment_id`, `user_id`, `file`, `created_at`, `updated_at`, `id_trainer`) VALUES
(1, 1, 1, '[{\"download_link\":\"resolves\\/March2022\\/xC9FqVqnTzk5kQyks1IB.jpeg\",\"original_name\":\"127-151625-mickey-mouse-s-90th-birthday_700x400.jpeg\"}]', '2022-03-30 02:26:55', '2022-03-30 02:26:55', NULL),
(2, 1, 1, '/tmp/phpxoM43z', '2022-04-04 20:07:40', '2022-04-04 20:07:40', NULL),
(3, 1, 1, '[{\"download_link\":\"assignments\\/gas.postman_collection.json\",\"original_name\":\"gas.postman_collection.json\"}]', '2022-04-11 03:47:28', '2022-04-11 03:47:28', NULL),
(4, 1, 1, '[{\"download_link\":\"assignments\\/gas.postman_collection.json\",\"original_name\":\"gas.postman_collection.json\"}]', '2022-04-11 04:37:42', '2022-04-11 04:37:42', NULL),
(5, 1, 1, '[{\"download_link\":\"assignments\\/7b3910e0-6899-4efb-99cc-5e5c702b7d4c (2).png\",\"original_name\":\"7b3910e0-6899-4efb-99cc-5e5c702b7d4c (2).png\"}]', '2023-01-17 12:55:09', '2023-01-17 12:55:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_trainer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `title`, `slug`, `lesson_id`, `link`, `description`, `created_at`, `updated_at`, `deleted_at`, `id_trainer`) VALUES
(1, 'envatoo2', 'envatoo2', 1, '[{\"download_link\":\"resources\\/March2022\\/RP3EHnLNZC8u95EBugOY.sql\",\"original_name\":\"mirror(5).sql\"}]', '<p>asdasdas</p>', '2020-04-12 12:18:00', '2022-03-02 04:15:30', NULL, NULL),
(2, 'ksaklaskl', 'ksaklaskl', 1, '[{\"download_link\":\"resources\\/March2022\\/H0v3MRVeyUO8DwWbb7bS.jpeg\",\"original_name\":\"lms.jpeg\"}]', '<p>aslasllaslas;;;;;;;;;;;;;;;;;;</p>', '2022-03-09 02:45:29', '2022-03-09 02:45:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(2, 'user', 'Normal User', '2020-04-08 09:31:30', '2020-04-08 09:31:30'),
(3, 'Trainer', 'Trainer', '2020-04-12 20:30:24', '2020-04-12 20:30:24'),
(4, 'super_admin', 'Super Admin', '2022-02-16 13:20:00', '2022-02-16 13:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Educhains', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Educhains', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/July2022/Mm6HvHGwKXqKoZJlCr4s.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/July2022/hqFpsy7qtHGv2SQNOn4k.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Data academy', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Data Academy Control panel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/May2022/egHf7jRXhvqnGEP0DY8l.jpeg', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/July2022/KoS6MX9O9DGWOcOjVcu2.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.phone', 'phone', '01733536343', NULL, 'text', 6, 'Site'),
(12, 'site.email', 'Email', NULL, NULL, 'text', 7, 'Site'),
(13, 'site.addres_en', 'Address en', 'Alexandria', NULL, 'text', 8, 'Site'),
(14, 'site.address_ar', 'Address ar', 'الاسكندريه', NULL, 'text', 9, 'Site'),
(15, 'site.whatsapp', 'WhatsApp', '01013237805', NULL, 'text', 10, 'Site'),
(16, 'about.image', 'Image', 'settings\\March2023\\mAtVlB7QgiInCwzoqjeY.jpg', NULL, 'image', 11, 'About'),
(17, 'about.title_en', 'Title', 'What do you want to know ?', NULL, 'text', 12, 'About'),
(18, 'about.title_ar', 'Title ar', 'ماذا تريد أن تعرف عننا', NULL, 'text', 13, 'About'),
(19, 'about.description_en', 'Description', '<p>2315864165</p>', NULL, 'rich_text_box', 14, 'About'),
(20, 'about.description_ar', 'Description ar', '<p style=\"text-align: right;\">تحرص شركة الآفاق للإستشارات الإحصائية على صقل قدرات&nbsp; ومواهب العاملين الإحصائيين في جميل القطاعات. ولذا فمن باب مسؤوليتها على تقديم خدماتها المجتمعية في الجوانب المتعلقة بالتحليل الإحصائي، إرتأت الشركة على تنفيذ برنامج مجاني للإحصائيين بواقع 6 مرات في السنة بغية تطوير العمل الإحصائي والبحث بالسلطنة تماشياً مع رؤية عمان 2040</p>', NULL, 'rich_text_box', 15, 'About'),
(21, 'banner.image', 'Image', 'settings/July2022/JMN8kzEiijzsjnKkS0Ts.jpg', NULL, 'image', 16, 'Banner'),
(22, 'banner.title_en', 'Title en', 'We Seek To Creativity , innovation , integrity ,confidentiality , cooperation & partnership', NULL, 'text', 18, 'Banner'),
(23, 'banner.title_ar', 'Title ar', 'توصل الى اعلى مراحل الإبداع والابتكار والنزاهة والسرية والتعاون والشراكة', NULL, 'text', 19, 'Banner'),
(24, 'banner.description_en', 'Description en', 'Data academy Consulting, has long experience and expertise in assisting organizations to establish/improve systems and solve their challenges.', NULL, 'text', 20, 'Banner'),
(25, 'banner.description_ar', 'Description ar', 'تتمتع منصة الأفاق للإستشارات والإحصاء بخبرة طويلة وخبرة في مساعدة المنظمات على إنشاء / تحسين الأنظمة وحل تحدياتها.', NULL, 'text', 21, 'Banner'),
(26, 'banner.image_ar', 'Image ar', 'settings/July2022/7WSC9IJxIeimqQKjok6b.jpg', NULL, 'image', 17, 'Banner'),
(30, 'about.vision_en', 'Vision', 'Global leadership in research and statistical consulting.', NULL, 'text', 22, 'About'),
(31, 'about.vision_ar', 'Vision ar', 'الريادة العالمية في البحوث والإستشارات الإحصائية', NULL, 'text', 24, 'About'),
(32, 'about.mission_en', 'Mission', 'We are a Statistical and Research Consulting Company that provides tools for organizations to Enhance Data Analysis and decision making.', NULL, 'text', 25, 'About'),
(33, 'about.mission_ar', 'Mission ar', 'شركة إستشارات إحصائية وبحثية توفر أدوات للمؤسسات وتعزيز تحليل البيانات واتخاذ القرار', NULL, 'text', 26, 'About'),
(34, 'about.core_values_en', 'Core Values', 'Creativity and innovation .. integrity and confidentiality .. cooperation and partnership.', NULL, 'text', 27, 'About'),
(35, 'about.core_values_ar', 'Core Values ar', 'الإبداع والإبتكار - النزاهة والسرية - التعاون والشراكة', NULL, 'text', 28, 'About'),
(36, 'statistics.staff', 'Staff', '120', NULL, 'text', 29, 'Statistics'),
(37, 'statistics.research', 'Previous research', '70', NULL, 'text', 30, 'Statistics'),
(38, 'statistics.clients', 'Our clients', '120', NULL, 'text', 31, 'Statistics'),
(39, 'statistics.data_collectors', 'Data collectors', '1,600', NULL, 'text', 32, 'Statistics'),
(40, 'statistics.samples', 'Size of samples previously collected', '44,334', NULL, 'text', 33, 'Statistics'),
(41, 'about.video', 'video', 'https://player.vimeo.com/video/710694487?h=d362c20acc&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479\" frameborder=\"0\" allow=\"autoplay; fullscreen; picture-in-picture\" allowfullscreen style=\"position:absolute;top:0;left:0;width:100%;height:100%;\" title=\"e4f2b1c8-3419-4c6c-a6e9-e0edbdc4aa93', NULL, 'text', 34, 'About'),
(48, 'about.our_serves_p1_en', 'our serves p1en', 'A large variety of the most efficient and quality courses and specializations.', NULL, 'text', 35, 'About'),
(49, 'about.our_serves_p1_ar', 'our serves p1ar', 'مجموعة كبيرة ومتنوعة من الدورات والتخصصات الأكثر كفاءة وجودة.', NULL, 'text', 36, 'About'),
(50, 'about.our_serves_p2_en', 'our serves p2 en', 'With the most qualified trainers to hone your professional and practical skills.', NULL, 'text', 37, 'About'),
(52, 'about.our_serves_p3_en', 'our serves p3 en', 'To enhance your chances of launching or developing your career.', NULL, 'text', 39, 'About'),
(53, 'about.our_serves_p3_ar', 'our serves p3 ar', 'لتعزيز فرصك في الانطلاق أو تطوير حياتك المهنية.', NULL, 'text', 40, 'About'),
(54, 'about.our_serves_p2_ar', 'our serves p2 ar', 'مع أكثر المدربين المؤهلين لصقل مهاراتك المهنية والعملية', NULL, 'text', 41, 'About'),
(56, 'about.our_serves_title_ar', 'our serves title ar', 'هنا تبدأ رحلتك من العلم إلى عمل', NULL, 'text', 42, 'About'),
(57, 'about.our_serves_title_en', 'our serves title en', 'Here Begins Your Journey From Science To Work', NULL, 'text', 43, 'About'),
(60, 'about.our_courses_title_en', 'our courses title en', 'Here Begins Your Journey From Science To Work', NULL, 'text', 44, 'About'),
(61, 'about.our_courses_title_ar', 'our courses title ar', 'هنا تبدأ رحلتك من العلم إلى عمل', NULL, 'text', 45, 'About'),
(62, 'about.Active_Courses_p_en', 'Active Courses p en', 'Here Begins Your Journey From Science To Work', NULL, 'text', 46, 'About'),
(63, 'about.Active_Courses_p_ar', 'Active Courses p ar', 'هنا تبدأ رحلتك من العلم إلى عمل', NULL, 'text', 47, 'About'),
(64, 'about.Student_Learning_p_ar', 'Student Learning p ar', 'هنا تبدأ رحلتك من العلم إلى عمل', NULL, 'text', 48, 'About'),
(65, 'about.Student_Learning_p_en', 'Student Learning p en', 'Here Begins Your Journey From Science To Work', NULL, 'text', 49, 'About'),
(66, 'about.Our_Shop_title_en', 'Our Shop title en', 'Here Begins Your Journey From Science To Work', NULL, 'text', 50, 'About'),
(67, 'about.Our_Shop_title_ar', 'Our Shop title ar', 'هنا تبدأ رحلتك من العلم إلى عمل', NULL, 'text', 51, 'About'),
(68, 'about.Explore_Services_title_en', 'Explore Services title en', 'Here Begins Your Journey From Science To Work', NULL, 'text', 52, 'About'),
(69, 'about.Explore_Services_title_ar', 'Explore Services title ar', 'هنا تبدأ رحلتك من العلم إلى عمل', NULL, 'text', 53, 'About'),
(70, 'about.Our_Artica_title_ar', 'Our Artica title ar', 'هنا تبدأ رحلتك من العلم إلى عمل', NULL, 'text', 54, 'About'),
(71, 'about.Our_Artica_title_en', 'Our Artica title en', 'Here Begins Your Journey From Science To Work', NULL, 'text', 55, 'About'),
(76, 'about.landing_title_en', 'landing title en', '<p><span style=\"color: rgb(0, 0, 0);\">Here</span> <span style=\"color: rgb(132, 63, 161);\">Begins Your</span><span style=\"color: rgb(0, 0, 0);\"> </span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Journey From</span> <span style=\"color: rgb(132, 63, 161);\">Science</span><span style=\"color: rgb(0, 0, 0);\"> </span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">To Work</span></p>', NULL, 'rich_text_box', 56, 'About'),
(77, 'about.landing_title_ar', 'landing title ar', '<p><span style=\"color: rgb(0, 0, 0);\">ارتقِ</span> <span style=\"color: rgb(185, 106, 217);\">بمهاراتك</span><span style=\"color: rgb(0, 0, 0);\"> لتعزيز مسارك</span> <span style=\"color: rgb(185, 106, 217);\">الوظيفي</span></p>', NULL, 'rich_text_box', 57, 'About');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'The formation of a social personality that tends to integrate with different personalities', 'skills/June2022/Sw0qezjxDnY8kl5gprF9.jpg', '2022-06-11 23:37:54', '2022-06-11 23:37:54'),
(2, 'Gain self-confidence and constructive thinking', 'skills/June2022/Ca6JE8FLICVOPW6fM0DE.jpg', '2022-06-11 23:41:17', '2022-06-11 23:41:17'),
(3, 'Cupidatat ut non rep', 'skills/June2022/vvV3v6hSdKK2rXIuBRUY.jpg', '2022-06-11 23:44:38', '2022-06-11 23:44:38'),
(4, 'Aspernatur blanditii', 'skills/June2022/YEMnmT0Jlb7tzsJkjHTs.jpg', '2022-06-11 23:45:01', '2022-06-11 23:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int UNSIGNED NOT NULL,
  `title` varbinary(300) DEFAULT NULL,
  `title2` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `link` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `title2`, `image`, `created_at`, `updated_at`, `deleted_at`, `link`) VALUES
(1, 0x5761726d2077656c636f6d65, 'When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.', 'sliders\\April2020\\Rjkq2EMcgdCrQsFA5K3A.png', '2020-04-13 11:17:00', '2020-04-13 13:06:51', NULL, 'https://www.facebook.com/'),
(2, 0x45617379206d616e6167656d656e74, 'When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.', 'sliders\\April2020\\ggKZjMUWPUWVHCjrEC50.png', '2020-04-13 11:17:00', '2020-04-13 13:07:36', NULL, 'https://www.youtube.com/'),
(3, 0x5175616c69747920436f6e74726f6c, 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'sliders\\April2020\\aQBtxvGjvq3cSzvSnRLy.png', '2020-04-13 13:08:26', '2020-04-13 13:08:26', NULL, 'http://google.com/'),
(4, 0x5175616c69747920436f6e74726f6c, 'When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.', 'sliders\\April2020\\WuA2Z1RrR3d8qx07Z2Wy.png', '2020-04-13 13:09:22', '2020-04-13 13:09:22', NULL, 'https://www.instagram.com/');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(5, 'ti-instagram', 'https://www.instagram.com/horizonsStat/', '2022-03-15 09:59:00', '2022-04-20 07:04:27'),
(6, 'ti-twitter', 'https://twitter.com/horizonsstat', '2022-03-15 09:59:00', '2022-04-20 07:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `testmonials`
--

CREATE TABLE `testmonials` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topicables`
--

CREATE TABLE `topicables` (
  `id` int UNSIGNED NOT NULL,
  `topic_id` int UNSIGNED NOT NULL,
  `topicable_id` int UNSIGNED NOT NULL,
  `topicable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int UNSIGNED NOT NULL,
  `topic` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(298) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `password` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `mobile`, `gender`, `email`, `image`, `age`, `created_at`, `updated_at`, `deleted_at`, `slug`, `description`, `job`, `experience`, `user_id`, `password`) VALUES
(1, ' Ahmed Al Qasmi', '01096236458', 'Male', 'm.said@ibdl.net', 'trainers/April2022/CPSVqznpxJCQCcQonWIj.jpg', 38, '2020-04-13 18:27:00', '2022-05-17 03:17:38', NULL, 'Ahmed-Al-Qasimi', '<ul class=\"skills_info\" style=\"box-sizing: inherit; outline: none; margin: 0px; padding: 0px; list-style: none; color: #4d5868; font-family: Outfit, sans-serif;\">\n<li style=\"box-sizing: inherit; outline: none; position: relative; display: block; margin-bottom: 15px; line-height: 1.8; padding-left: 30px;\">\n<div class=\"skills_captions\" style=\"box-sizing: inherit; outline: none;\">\n<h4 class=\"Skill_title\" style=\"box-sizing: inherit; outline: none; margin-top: 0px; margin-bottom: 0px; line-height: 26px; color: #da0b4e; font-size: 15px; text-transform: capitalize;\">Master In Fine Art</h4>\n<span style=\"box-sizing: inherit; outline: none; display: block;\">2017 - 2019</span><span style=\"box-sizing: inherit; outline: none; display: block;\">Meeruth University</span>\n<p class=\"skills_dec\" style=\"box-sizing: inherit; outline: none; margin: 0px; line-height: 1.8;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\n</div>\n</li>\n<li style=\"box-sizing: inherit; outline: none; position: relative; display: block; margin-bottom: 15px; line-height: 1.8; padding-left: 30px;\">\n<div class=\"skills_captions\" style=\"box-sizing: inherit; outline: none;\">\n<h4 class=\"Skill_title\" style=\"box-sizing: inherit; outline: none; margin-top: 0px; margin-bottom: 0px; line-height: 26px; color: #da0b4e; font-size: 15px; text-transform: capitalize;\">Tombia Collage</h4>\n<span style=\"box-sizing: inherit; outline: none; display: block;\">2015 - 2017</span><span style=\"box-sizing: inherit; outline: none; display: block;\">Wikked Collage</span>\n<p class=\"skills_dec\" style=\"box-sizing: inherit; outline: none; margin: 0px; line-height: 1.8;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\n</div>\n</li>\n<li style=\"box-sizing: inherit; outline: none; position: relative; display: block; margin-bottom: 15px; line-height: 1.8; padding-left: 30px;\">\n<div class=\"skills_captions\" style=\"box-sizing: inherit; outline: none;\">\n<h4 class=\"Skill_title\" style=\"box-sizing: inherit; outline: none; margin-top: 0px; margin-bottom: 0px; line-height: 26px; color: #da0b4e; font-size: 15px; text-transform: capitalize;\">Diploma In Fine Art</h4>\n<span style=\"box-sizing: inherit; outline: none; display: block;\">20012 - 2015</span><span style=\"box-sizing: inherit; outline: none; display: block;\">Meeruth University</span>\n<p class=\"skills_dec\" style=\"box-sizing: inherit; outline: none; margin: 0px; line-height: 1.8;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\n</div>\n</li>\n</ul>', 'Proffessor', '8', 3, NULL),
(2, 'Mohammed Alsaadi', NULL, 'Male', NULL, 'trainers/April2022/ToojbSWpR7Dbm6Qs8f7d.jpg', 34, '2020-04-13 18:28:00', '2022-05-17 03:17:19', NULL, 'Mohamed-elsaidi', '', 'Founder, CEO of Horizons ', '12', NULL, NULL),
(3, 'Ayman Elshukri', NULL, NULL, NULL, NULL, NULL, '2022-04-20 17:22:00', '2022-04-21 03:41:23', NULL, 'aymn-alshkry', '', 'Professor', '', NULL, NULL),
(4, 'wefaa elshamsy  ', NULL, NULL, NULL, NULL, NULL, '2022-04-21 01:58:00', '2022-07-18 03:45:19', NULL, 'dr-wafaa-elshamsy', '', 'professor', '', NULL, NULL),
(10, 'MOHAMAD', '01007363331', 'male', 'mohamadayman2024@gmail.com', NULL, 21, '2023-06-11 11:11:49', '2023-06-11 12:01:07', NULL, 'mohamad', '', 'trainer', 'trainer', 38, '$2y$10$2pWgtVVkaY/rnUXCamS.9Ouf75t/zdJcNAg62vlYC8Vg8QnuBupAG'),
(11, 'ayman', '01007363331', 'male', 'ayman024@gmail.com', NULL, 21, '2023-08-08 13:12:13', '2023-08-08 13:12:13', NULL, 'ayman', '<p>ghjhghf</p>', 'hfhffhg', 'jhgjhghg', 38, '$2y$10$O5/KIc3M0neCq8pbCgTupOkcm3UVBNJhMopjkHgOgrjUw.PRHkAVi'),
(12, 'mohamadayman', NULL, 'male', 'mohamadayman202@gmail.com', NULL, 21, '2023-08-17 13:16:40', '2023-08-17 13:16:40', NULL, 'mohamadayman', '<p>kjj</p>', 'trainer', 'trainer', 38, '$2y$10$VFgl5Hsq41WwK7soOxHsD.QrOrpKGOJMHtR6ZCvfY7SAWhfMwlMme');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-04-08 09:32:07', '2020-04-08 09:32:07'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(25, 'menu_items', 'title', 14, 'pt', 'Páginas', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-04-08 09:32:08', '2020-04-08 09:32:08'),
(31, 'data_rows', 'display_name', 275, 'ar', 'Id', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(32, 'data_rows', 'display_name', 276, 'ar', 'User Id', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(33, 'data_rows', 'display_name', 277, 'ar', 'Total Price', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(34, 'data_rows', 'display_name', 278, 'ar', 'Address', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(35, 'data_rows', 'display_name', 279, 'ar', 'Phone', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(36, 'data_rows', 'display_name', 280, 'ar', 'Created At', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(37, 'data_rows', 'display_name', 281, 'ar', 'Updated At', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(38, 'data_rows', 'display_name', 282, 'ar', 'First Name', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(39, 'data_rows', 'display_name', 283, 'ar', 'Last Name', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(40, 'data_rows', 'display_name', 284, 'ar', 'Email', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(41, 'data_rows', 'display_name', 285, 'ar', 'State', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(42, 'data_rows', 'display_name', 286, 'ar', 'City', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(43, 'data_rows', 'display_name', 287, 'ar', 'Postal Code', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(44, 'data_rows', 'display_name', 288, 'ar', 'Status', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(45, 'data_types', 'display_name_singular', 37, 'ar', 'Order', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(46, 'data_types', 'display_name_plural', 37, 'ar', 'Orders', '2022-03-09 10:00:00', '2022-03-09 10:00:00'),
(47, 'data_rows', 'display_name', 298, 'ar', 'order_items', '2022-03-09 11:48:50', '2022-03-09 11:48:50'),
(57, 'p_categories', 'name', 2, 'ar', 'الشنط', '2022-03-14 08:34:03', '2022-03-14 08:34:03'),
(58, 'p_categories', 'name', 3, 'ar', 'الافلام', '2022-03-14 08:34:37', '2022-03-14 08:34:37'),
(59, 'p_categories', 'name', 4, 'ar', 'مساطر', '2022-03-14 08:34:57', '2022-03-14 08:34:57'),
(60, 'p_categories', 'name', 1, 'ar', 'الكتب', '2022-03-14 08:35:13', '2022-03-14 08:35:13'),
(61, 'data_rows', 'display_name', 299, 'ar', 'Id', '2022-03-15 09:57:46', '2022-03-15 09:57:46'),
(62, 'data_rows', 'display_name', 300, 'ar', 'Icon', '2022-03-15 09:57:46', '2022-03-15 09:57:46'),
(63, 'data_rows', 'display_name', 301, 'ar', 'Link', '2022-03-15 09:57:46', '2022-03-15 09:57:46'),
(64, 'data_rows', 'display_name', 302, 'ar', 'Created At', '2022-03-15 09:57:46', '2022-03-15 09:57:46'),
(65, 'data_rows', 'display_name', 303, 'ar', 'Updated At', '2022-03-15 09:57:46', '2022-03-15 09:57:46'),
(66, 'data_types', 'display_name_singular', 39, 'ar', 'Social', '2022-03-15 09:57:46', '2022-03-15 09:57:46'),
(67, 'data_types', 'display_name_plural', 39, 'ar', 'Social Media', '2022-03-15 09:57:46', '2022-03-15 09:57:46'),
(68, 'lessons', 'title', 1, 'ar', 'Google', '2022-03-15 12:25:54', '2022-03-15 12:25:54'),
(69, 'lessons', 'description', 1, 'ar', '<p>Ay Klam F el &amp;mada</p>\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: -53px; top: -14.0156px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>', '2022-03-15 12:25:55', '2022-03-15 12:25:55'),
(70, 'courses', 'title', 1, 'ar', 'Java ee', '2022-03-15 12:32:26', '2022-03-15 12:32:26'),
(71, 'courses', 'description', 1, 'ar', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '2022-03-15 12:32:26', '2022-03-15 12:32:26'),
(72, 'courses', 'learn', 1, 'ar', '<ul>\r\n<li><span style=\"color: #3c3b37; font-family: \'SF Pro Text\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px;\">problem! Also, I will show you step by step,</span></li>\r\n<li><span style=\"color: #3c3b37; font-family: \'SF Pro Text\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px;\"> how to configure GIMP 2.10 to make it work as Photoshop!</span></li>\r\n<li><span style=\"color: #3c3b37; font-family: \'SF Pro Text\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px;\"> You will also get a free copy of my book \'The Ultimate GIMP Guide\' as sold on Amazon. </span></li>\r\n<li><span style=\"color: #3c3b37; font-family: \'SF Pro Text\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px;\">You can download it in Lecture 1.</span></li>\r\n</ul>', '2022-03-15 12:32:26', '2022-03-15 12:32:26'),
(73, 'courses', 'requirements', 1, 'ar', '<ol>\r\n<li style=\"box-sizing: border-box; max-width: 60rem; color: #3c3b37; font-family: \'SF Pro Text\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\';\">How to&nbsp;configure GIMP 2.10&nbsp;to make it&nbsp;act as Photoshop, how to improve and</li>\r\n<li style=\"box-sizing: border-box; max-width: 60rem; color: #3c3b37; font-family: \'SF Pro Text\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\';\">correct photographs&nbsp;<em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">professionally</em>, how to work with layers, how to crop images, how</li>\r\n<li style=\"box-sizing: border-box; max-width: 60rem; color: #3c3b37; font-family: \'SF Pro Text\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\';\">to resize images, how to save images for web, how to save images for print, and how to</li>\r\n<li style=\"box-sizing: border-box; max-width: 60rem; color: #3c3b37; font-family: \'SF Pro Text\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\';\">make PDF\'s. You will learn professional retouching, like skin retouching</li>\r\n<li style=\"box-sizing: border-box; max-width: 60rem; color: #3c3b37; font-family: \'SF Pro Text\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\';\">with frequency separation, Liquify (for example to make someone thinner),</li>\r\n<li style=\"box-sizing: border-box; max-width: 60rem; color: #3c3b37; font-family: \'SF Pro Text\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\';\">how to let the program remove objects, and how to remove objects with the clone and heal tool.</li>\r\n</ol>\r\n<p>&nbsp;</p>', '2022-03-15 12:32:26', '2022-03-15 12:32:26'),
(74, 'data_rows', 'display_name', 76, 'ar', 'Id', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(75, 'data_rows', 'display_name', 77, 'ar', 'Title', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(76, 'data_rows', 'display_name', 78, 'ar', 'Slug', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(77, 'data_rows', 'display_name', 79, 'ar', 'Description', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(78, 'data_rows', 'display_name', 80, 'ar', 'Course Id', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(79, 'data_rows', 'display_name', 81, 'ar', 'Created At', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(80, 'data_rows', 'display_name', 82, 'ar', 'Updated At', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(81, 'data_rows', 'display_name', 83, 'ar', 'Deleted At', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(82, 'data_rows', 'display_name', 84, 'ar', 'Image', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(83, 'data_rows', 'display_name', 196, 'ar', 'Trainer Id', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(84, 'data_rows', 'display_name', 242, 'ar', 'Lesson Duration', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(85, 'data_rows', 'display_name', 158, 'ar', 'trainers', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(86, 'data_rows', 'display_name', 85, 'ar', 'courses', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(87, 'data_types', 'display_name_singular', 11, 'ar', 'Lesson', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(88, 'data_types', 'display_name_plural', 11, 'ar', 'Lessons', '2022-03-15 12:59:02', '2022-03-15 12:59:02'),
(89, 'videos', 'title', 4, 'ar', 'Tempora ipsam id vel', '2022-03-15 13:00:21', '2022-03-15 13:00:21'),
(90, 'videos', 'description', 4, 'ar', '<p>Incidunt, laboris re.</p>', '2022-03-15 13:00:21', '2022-03-15 13:00:21'),
(91, 'videos', 'title', 1, 'ar', 'ddddd', '2022-03-15 13:01:07', '2022-03-15 13:01:07'),
(92, 'videos', 'description', 1, 'ar', '<p>ssdd</p>', '2022-03-15 13:01:07', '2022-03-15 13:01:07'),
(93, 'lessons', 'title', 3, 'ar', 'Aut ut in magni fugi', '2022-03-15 13:07:31', '2022-03-15 13:07:31'),
(94, 'lessons', 'description', 3, 'ar', '<p>Voluptatem, alias pr.</p>', '2022-03-15 13:07:31', '2022-03-15 13:07:31'),
(95, 'lessons', 'title', 4, 'ar', 'Dicta asperiores in ', '2022-03-15 13:08:12', '2022-03-15 13:08:12'),
(96, 'lessons', 'description', 4, 'ar', '<p>Excepturi obcaecati .</p>', '2022-03-15 13:08:12', '2022-03-15 13:08:12'),
(97, 'data_rows', 'display_name', 86, 'ar', 'Id', '2022-03-20 05:41:23', '2022-03-20 05:41:23'),
(98, 'data_rows', 'display_name', 87, 'ar', 'Title', '2022-03-20 05:41:23', '2022-03-20 05:41:23'),
(99, 'data_rows', 'display_name', 88, 'ar', 'Lesson Id', '2022-03-20 05:41:23', '2022-03-20 05:41:23'),
(100, 'data_rows', 'display_name', 89, 'ar', 'Link', '2022-03-20 05:41:23', '2022-03-20 05:41:23'),
(101, 'data_rows', 'display_name', 90, 'ar', 'Description', '2022-03-20 05:41:23', '2022-03-20 05:41:23'),
(102, 'data_rows', 'display_name', 91, 'ar', 'Slug', '2022-03-20 05:41:23', '2022-03-20 05:41:23'),
(103, 'data_rows', 'display_name', 92, 'ar', 'Created At', '2022-03-20 05:41:23', '2022-03-20 05:41:23'),
(104, 'data_rows', 'display_name', 93, 'ar', 'Updated At', '2022-03-20 05:41:23', '2022-03-20 05:41:23'),
(105, 'data_rows', 'display_name', 94, 'ar', 'Deleted At', '2022-03-20 05:41:23', '2022-03-20 05:41:23'),
(106, 'data_rows', 'display_name', 266, 'ar', 'Group Id', '2022-03-20 05:41:23', '2022-03-20 05:41:23'),
(107, 'data_rows', 'display_name', 95, 'ar', 'lessons', '2022-03-20 05:41:23', '2022-03-20 05:41:23'),
(108, 'data_rows', 'display_name', 267, 'ar', 'groups', '2022-03-20 05:41:23', '2022-03-20 05:41:23'),
(111, 'menu_items', 'title', 18, 'ar', 'Sessions', '2022-03-20 05:41:51', '2022-03-20 05:41:51'),
(112, 'trainers', 'name', 2, 'ar', 'محمد الساعدي', '2022-03-20 07:00:48', '2022-04-21 03:43:40'),
(113, 'trainers', 'description', 2, 'ar', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</span></p>', '2022-03-20 07:00:48', '2022-03-20 07:00:48'),
(114, 'trainers', 'job', 2, 'ar', 'المؤسس والرئيس التنفيذي ', '2022-03-20 07:00:48', '2022-04-21 03:45:18'),
(115, 'trainers', 'experience', 2, 'ar', '12', '2022-03-20 07:00:48', '2022-03-20 07:00:48'),
(116, 'trainers', 'name', 1, 'ar', 'أحمد القاسمي', '2022-03-20 07:01:10', '2022-04-21 03:46:58'),
(117, 'trainers', 'description', 1, 'ar', '<ul class=\"skills_info\" style=\"box-sizing: inherit; outline: none; margin: 0px; padding: 0px; list-style: none; color: #4d5868; font-family: Outfit, sans-serif;\">\n<li style=\"box-sizing: inherit; outline: none; position: relative; display: block; margin-bottom: 15px; line-height: 1.8; padding-left: 30px;\">\n<div class=\"skills_captions\" style=\"box-sizing: inherit; outline: none;\">\n<h4 class=\"Skill_title\" style=\"box-sizing: inherit; outline: none; margin-top: 0px; margin-bottom: 0px; line-height: 26px; color: #da0b4e; font-size: 15px; text-transform: capitalize;\">Master In Fine Art</h4>\n<span style=\"box-sizing: inherit; outline: none; display: block;\">2017 - 2019</span><span style=\"box-sizing: inherit; outline: none; display: block;\">Meeruth University</span>\n<p class=\"skills_dec\" style=\"box-sizing: inherit; outline: none; margin: 0px; line-height: 1.8;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\n</div>\n</li>\n<li style=\"box-sizing: inherit; outline: none; position: relative; display: block; margin-bottom: 15px; line-height: 1.8; padding-left: 30px;\">\n<div class=\"skills_captions\" style=\"box-sizing: inherit; outline: none;\">\n<h4 class=\"Skill_title\" style=\"box-sizing: inherit; outline: none; margin-top: 0px; margin-bottom: 0px; line-height: 26px; color: #da0b4e; font-size: 15px; text-transform: capitalize;\">Tombia Collage</h4>\n<span style=\"box-sizing: inherit; outline: none; display: block;\">2015 - 2017</span><span style=\"box-sizing: inherit; outline: none; display: block;\">Wikked Collage</span>\n<p class=\"skills_dec\" style=\"box-sizing: inherit; outline: none; margin: 0px; line-height: 1.8;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\n</div>\n</li>\n<li style=\"box-sizing: inherit; outline: none; position: relative; display: block; margin-bottom: 15px; line-height: 1.8; padding-left: 30px;\">\n<div class=\"skills_captions\" style=\"box-sizing: inherit; outline: none;\">\n<h4 class=\"Skill_title\" style=\"box-sizing: inherit; outline: none; margin-top: 0px; margin-bottom: 0px; line-height: 26px; color: #da0b4e; font-size: 15px; text-transform: capitalize;\">Diploma In Fine Art</h4>\n<span style=\"box-sizing: inherit; outline: none; display: block;\">20012 - 2015</span><span style=\"box-sizing: inherit; outline: none; display: block;\">Meeruth University</span>\n<p class=\"skills_dec\" style=\"box-sizing: inherit; outline: none; margin: 0px; line-height: 1.8;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\n</div>\n</li>\n</ul>', '2022-03-20 07:01:10', '2022-03-20 07:01:10'),
(118, 'trainers', 'job', 1, 'ar', 'دكتور', '2022-03-20 07:01:10', '2022-04-21 03:46:58'),
(119, 'trainers', 'experience', 1, 'ar', '8', '2022-03-20 07:01:10', '2022-03-20 07:01:10'),
(120, 'our_services', 'title', 1, 'ar', 'حزمة التدريب', '2022-03-28 11:39:12', '2022-04-21 06:13:26'),
(121, 'data_rows', 'display_name', 174, 'ar', 'Id', '2022-03-28 11:42:50', '2022-03-28 11:42:50'),
(122, 'data_rows', 'display_name', 175, 'ar', 'Title', '2022-03-28 11:42:50', '2022-03-28 11:42:50'),
(123, 'data_rows', 'display_name', 176, 'ar', 'Content', '2022-03-28 11:42:50', '2022-03-28 11:42:50'),
(124, 'data_rows', 'display_name', 177, 'ar', 'Image', '2022-03-28 11:42:50', '2022-03-28 11:42:50'),
(125, 'data_rows', 'display_name', 178, 'ar', 'Created At', '2022-03-28 11:42:50', '2022-03-28 11:42:50'),
(126, 'data_rows', 'display_name', 179, 'ar', 'Updated At', '2022-03-28 11:42:50', '2022-03-28 11:42:50'),
(127, 'data_rows', 'display_name', 180, 'ar', 'Deleted At', '2022-03-28 11:42:50', '2022-03-28 11:42:50'),
(128, 'data_types', 'display_name_singular', 29, 'ar', 'Our Service', '2022-03-28 11:42:50', '2022-03-28 11:42:50'),
(129, 'data_types', 'display_name_plural', 29, 'ar', 'Our Services', '2022-03-28 11:42:50', '2022-03-28 11:42:50'),
(130, 'our_services', 'content', 1, 'ar', '<p style=\"text-align: right;\"><br />منهجية البحث العلمي</p>\n<p style=\"text-align: right;\">بحوث السياسات المعتمدة على البراهين والأدلة</p>\n<p style=\"text-align: right;\">تحويل المعلومات إلى معرفة</p>\n<p style=\"text-align: right;\">برامج التحليل الإحصائي</p>\n<p style=\"text-align: right;\">إعداد الإستبيانات وأدوات جمع البيانات</p>\n<p style=\"text-align: right;\">التقارير الإحصائية</p>\n<p style=\"text-align: right;\">كتابة المقترح البحثي</p>\n<p style=\"text-align: right;\">المراجعة الأدبية</p>\n<p style=\"text-align: right;\">النشر العلمي للبحوث</p>\n<p style=\"text-align: right;\">إعداد الخطط والاستراتيجيات</p>\n<p style=\"text-align: right;\">الاستخدام الأمثل للمعلومات</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">&nbsp;</p>', '2022-03-28 11:44:22', '2022-04-21 06:13:01'),
(131, 'our_services', 'title', 2, 'ar', 'حزمة المنتج', '2022-03-28 11:55:29', '2022-04-21 05:52:24'),
(132, 'our_services', 'content', 2, 'ar', '<p>تشمل هذه الحزمة على عدة باقات</p>\n<p>التقارير</p>\n<p>التحليل الاحصائي</p>\n<p>معالجة البيانات&nbsp;</p>\n<p>تطبيقات الهاتف المحمول&nbsp;</p>\n<p>ملخص السياسات&nbsp;</p>\n<p>دليل المؤشرات</p>', '2022-03-28 11:55:29', '2022-04-21 05:55:16'),
(133, 'our_services', 'title', 3, 'ar', 'حزمة البيانات', '2022-03-28 12:01:33', '2022-04-21 05:35:17'),
(134, 'our_services', 'content', 3, 'ar', '<div id=\"elementor-tab-content-1131\" class=\"elementor-tab-content elementor-clearfix elementor-active\" style=\"box-sizing: border-box; border-width: 1px; padding: 0px 40px 8px; color: #5e6067; font-family: Tajawal; text-align: right; border-image: initial !important; border-color: #d4d4d4 initial !important initial !important initial !important; border-style: solid none !important none !important none !important;\" role=\"tabpanel\" data-tab=\"1\" aria-labelledby=\"elementor-tab-title-1131\">\n<p>&nbsp;</p>\n<p><a class=\"elementor-accordion-title\" style=\"box-sizing: border-box; background-color: transparent; color: #ffb223; text-decoration-line: none; transition: all 0.25s ease 0s; box-shadow: none; outline: 0px !important;\" href=\"https://www.hrz-stat.com/ar/%d8%a7%d9%84%d8%ae%d8%af%d9%85%d8%a7%d8%aa/\">السجلات الإدارية</a></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 30px; overflow-wrap: break-word; color: #444444;\">جمع المؤشرات ذات العلاقة في قالب واحد</p>\n<p>&nbsp;</p>\n<p><a class=\"elementor-accordion-title\" style=\"box-sizing: border-box; background-color: transparent; color: #ffb223; text-decoration-line: none; transition: all 0.25s ease 0s; box-shadow: none; outline: 0px !important;\" href=\"https://www.hrz-stat.com/ar/%d8%a7%d9%84%d8%ae%d8%af%d9%85%d8%a7%d8%aa/\">البحوث والسجلات</a></p>\n<p>&nbsp;</p>\n<p>1.أختيار حجم العينة بنظام المسح الألكتروني&nbsp;</p>\n<p>2.تصميم الدراسة أعداد الأستبيان&nbsp;</p>\n<p>3.أدخال البيانات الخدمات اللوجستية&nbsp;</p>\n<p>4.القيام بمقابلات (هاتفية , وجها لوجه)</p>\n<p>5.العمل الميداني فريق لجمع البيانات&nbsp;</p>\n</div>', '2022-03-28 12:01:33', '2022-04-21 05:36:24'),
(135, 'data_rows', 'display_name', 309, 'ar', 'Slug', '2022-03-28 12:02:37', '2022-03-28 12:02:37'),
(136, 'data_rows', 'display_name', 310, 'ar', 'Id', '2022-03-30 02:26:19', '2022-03-30 02:26:19'),
(137, 'data_rows', 'display_name', 311, 'ar', 'Assignment Id', '2022-03-30 02:26:19', '2022-03-30 02:26:19'),
(138, 'data_rows', 'display_name', 312, 'ar', 'User Id', '2022-03-30 02:26:19', '2022-03-30 02:26:19'),
(139, 'data_rows', 'display_name', 313, 'ar', 'File', '2022-03-30 02:26:19', '2022-03-30 02:26:19'),
(140, 'data_rows', 'display_name', 314, 'ar', 'Created At', '2022-03-30 02:26:19', '2022-03-30 02:26:19'),
(141, 'data_rows', 'display_name', 315, 'ar', 'Updated At', '2022-03-30 02:26:19', '2022-03-30 02:26:19'),
(142, 'data_rows', 'display_name', 316, 'ar', 'assignments', '2022-03-30 02:26:19', '2022-03-30 02:26:19'),
(143, 'data_rows', 'display_name', 317, 'ar', 'users', '2022-03-30 02:26:19', '2022-03-30 02:26:19'),
(144, 'data_types', 'display_name_singular', 41, 'ar', 'Resolf', '2022-03-30 02:26:19', '2022-03-30 02:26:19'),
(145, 'data_types', 'display_name_plural', 41, 'ar', 'Resolves', '2022-03-30 02:26:19', '2022-03-30 02:26:19'),
(146, 'data_rows', 'display_name', 318, 'ar', 'Id', '2022-04-01 00:01:53', '2022-04-01 00:01:53'),
(147, 'data_rows', 'display_name', 319, 'ar', 'Question', '2022-04-01 00:01:53', '2022-04-01 00:01:53'),
(148, 'data_rows', 'display_name', 320, 'ar', 'Question Type Id', '2022-04-01 00:01:53', '2022-04-01 00:01:53'),
(149, 'data_rows', 'display_name', 321, 'ar', 'Media Url', '2022-04-01 00:01:53', '2022-04-01 00:01:53'),
(150, 'data_rows', 'display_name', 322, 'ar', 'Media Type', '2022-04-01 00:01:53', '2022-04-01 00:01:53'),
(151, 'data_rows', 'display_name', 323, 'ar', 'Is Active', '2022-04-01 00:01:53', '2022-04-01 00:01:53'),
(152, 'data_rows', 'display_name', 324, 'ar', 'Created At', '2022-04-01 00:01:53', '2022-04-01 00:01:53'),
(153, 'data_rows', 'display_name', 325, 'ar', 'Updated At', '2022-04-01 00:01:53', '2022-04-01 00:01:53'),
(154, 'data_rows', 'display_name', 326, 'ar', 'Deleted At', '2022-04-01 00:01:53', '2022-04-01 00:01:53'),
(155, 'data_rows', 'display_name', 332, 'ar', 'question_types', '2022-04-01 00:01:53', '2022-04-01 00:01:53'),
(156, 'data_types', 'display_name_singular', 44, 'ar', 'Question', '2022-04-01 00:01:53', '2022-04-01 00:01:53'),
(157, 'data_types', 'display_name_plural', 44, 'ar', 'Questions', '2022-04-01 00:01:53', '2022-04-01 00:01:53'),
(158, 'data_rows', 'display_name', 350, 'ar', 'Id', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(159, 'data_rows', 'display_name', 351, 'ar', 'Quiz Id', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(160, 'data_rows', 'display_name', 352, 'ar', 'Question Id', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(161, 'data_rows', 'display_name', 353, 'ar', 'Marks', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(162, 'data_rows', 'display_name', 354, 'ar', 'Negative Marks', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(163, 'data_rows', 'display_name', 355, 'ar', 'Is Optional', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(164, 'data_rows', 'display_name', 356, 'ar', 'Order', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(165, 'data_rows', 'display_name', 357, 'ar', 'Created At', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(166, 'data_rows', 'display_name', 358, 'ar', 'Updated At', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(167, 'data_rows', 'display_name', 359, 'ar', 'Deleted At', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(168, 'data_rows', 'display_name', 360, 'ar', 'quizzes', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(169, 'data_rows', 'display_name', 361, 'ar', 'questions', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(170, 'data_types', 'display_name_singular', 49, 'ar', 'Quiz Question', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(171, 'data_types', 'display_name_plural', 49, 'ar', 'Quiz Questions', '2022-04-01 10:04:23', '2022-04-01 10:04:23'),
(172, 'data_rows', 'display_name', 362, 'ar', 'Id', '2022-04-01 12:21:07', '2022-04-01 12:21:07'),
(173, 'data_rows', 'display_name', 363, 'ar', 'Question Id', '2022-04-01 12:21:07', '2022-04-01 12:21:07'),
(174, 'data_rows', 'display_name', 364, 'ar', 'Option', '2022-04-01 12:21:07', '2022-04-01 12:21:07'),
(175, 'data_rows', 'display_name', 365, 'ar', 'Media Url', '2022-04-01 12:21:07', '2022-04-01 12:21:07'),
(176, 'data_rows', 'display_name', 366, 'ar', 'Media Type', '2022-04-01 12:21:07', '2022-04-01 12:21:07'),
(177, 'data_rows', 'display_name', 367, 'ar', 'Is Correct', '2022-04-01 12:21:07', '2022-04-01 12:21:07'),
(178, 'data_rows', 'display_name', 368, 'ar', 'Created At', '2022-04-01 12:21:07', '2022-04-01 12:21:07'),
(179, 'data_rows', 'display_name', 369, 'ar', 'Updated At', '2022-04-01 12:21:07', '2022-04-01 12:21:07'),
(180, 'data_rows', 'display_name', 370, 'ar', 'Deleted At', '2022-04-01 12:21:07', '2022-04-01 12:21:07'),
(181, 'data_types', 'display_name_singular', 50, 'ar', 'Question Option', '2022-04-01 12:21:07', '2022-04-01 12:21:07'),
(182, 'data_types', 'display_name_plural', 50, 'ar', 'Question Options', '2022-04-01 12:21:07', '2022-04-01 12:21:07'),
(183, 'data_rows', 'display_name', 371, 'ar', 'questions', '2022-04-01 12:25:56', '2022-04-01 12:25:56'),
(184, 'menu_items', 'title', 50, 'ar', 'الاختبار', '2022-04-01 12:27:02', '2022-04-01 12:27:02'),
(185, 'data_rows', 'display_name', 372, 'ar', 'questions', '2022-04-01 13:00:46', '2022-04-01 13:00:46'),
(186, 'data_rows', 'display_name', 333, 'ar', 'Id', '2022-04-03 18:18:56', '2022-04-03 18:18:56'),
(187, 'data_rows', 'display_name', 334, 'ar', 'Title', '2022-04-03 18:18:56', '2022-04-03 18:18:56'),
(188, 'data_rows', 'display_name', 335, 'ar', 'Slug', '2022-04-03 18:18:56', '2022-04-03 18:18:56'),
(189, 'data_rows', 'display_name', 336, 'ar', 'Description', '2022-04-03 18:18:56', '2022-04-03 18:18:56'),
(190, 'data_rows', 'display_name', 337, 'ar', 'Total Marks', '2022-04-03 18:18:56', '2022-04-03 18:18:56'),
(191, 'data_rows', 'display_name', 338, 'ar', 'Pass Marks', '2022-04-03 18:18:56', '2022-04-03 18:18:56'),
(192, 'data_rows', 'display_name', 339, 'ar', 'Max Attempts', '2022-04-03 18:18:56', '2022-04-03 18:18:56'),
(193, 'data_rows', 'display_name', 340, 'ar', 'Is Published', '2022-04-03 18:18:56', '2022-04-03 18:18:56'),
(194, 'data_rows', 'display_name', 341, 'ar', 'Media Url', '2022-04-03 18:18:56', '2022-04-03 18:18:56'),
(195, 'data_rows', 'display_name', 342, 'ar', 'Media Type', '2022-04-03 18:18:56', '2022-04-03 18:18:56'),
(196, 'data_rows', 'display_name', 343, 'ar', 'Duration', '2022-04-03 18:18:56', '2022-04-03 18:18:56'),
(197, 'data_rows', 'display_name', 344, 'ar', 'Valid From', '2022-04-03 18:18:56', '2022-04-03 18:18:56'),
(198, 'data_rows', 'display_name', 345, 'ar', 'Valid to', '2022-04-03 18:18:57', '2022-04-03 18:18:57'),
(199, 'data_rows', 'display_name', 346, 'ar', 'Time Between Attempts', '2022-04-03 18:18:57', '2022-04-03 18:18:57'),
(200, 'data_rows', 'display_name', 347, 'ar', 'Created At', '2022-04-03 18:18:57', '2022-04-03 18:18:57'),
(201, 'data_rows', 'display_name', 348, 'ar', 'Updated At', '2022-04-03 18:18:57', '2022-04-03 18:18:57'),
(202, 'data_rows', 'display_name', 349, 'ar', 'Deleted At', '2022-04-03 18:18:57', '2022-04-03 18:18:57'),
(203, 'data_types', 'display_name_singular', 47, 'ar', 'Quiz', '2022-04-03 18:18:57', '2022-04-03 18:18:57'),
(204, 'data_types', 'display_name_plural', 47, 'ar', 'Quizzes', '2022-04-03 18:18:57', '2022-04-03 18:18:57'),
(205, 'data_rows', 'display_name', 373, 'ar', 'Course Id', '2022-04-03 18:20:46', '2022-04-03 18:20:46'),
(206, 'data_rows', 'display_name', 374, 'ar', 'courses', '2022-04-03 18:20:46', '2022-04-03 18:20:46'),
(207, 'data_rows', 'display_name', 375, 'ar', 'Id', '2022-04-04 01:53:01', '2022-04-04 01:53:01'),
(208, 'data_rows', 'display_name', 376, 'ar', 'Quiz Id', '2022-04-04 01:53:01', '2022-04-04 01:53:01'),
(209, 'data_rows', 'display_name', 377, 'ar', 'User Id', '2022-04-04 01:53:01', '2022-04-04 01:53:01'),
(210, 'data_rows', 'display_name', 378, 'ar', 'Score', '2022-04-04 01:53:01', '2022-04-04 01:53:01'),
(211, 'data_rows', 'display_name', 379, 'ar', 'Created At', '2022-04-04 01:53:01', '2022-04-04 01:53:01'),
(212, 'data_rows', 'display_name', 380, 'ar', 'Updated At', '2022-04-04 01:53:01', '2022-04-04 01:53:01'),
(213, 'data_rows', 'display_name', 381, 'ar', 'quizzes', '2022-04-04 01:53:01', '2022-04-04 01:53:01'),
(214, 'data_rows', 'display_name', 382, 'ar', 'users', '2022-04-04 01:53:01', '2022-04-04 01:53:01'),
(215, 'data_types', 'display_name_singular', 51, 'ar', 'Quiz Score', '2022-04-04 01:53:01', '2022-04-04 01:53:01'),
(216, 'data_types', 'display_name_plural', 51, 'ar', 'Quiz Scores', '2022-04-04 01:53:01', '2022-04-04 01:53:01'),
(217, 'data_rows', 'display_name', 383, 'ar', 'Id', '2022-04-10 03:57:48', '2022-04-10 03:57:48'),
(218, 'data_rows', 'display_name', 384, 'ar', 'User Id', '2022-04-10 03:57:48', '2022-04-10 03:57:48'),
(219, 'data_rows', 'display_name', 385, 'ar', 'Course Id', '2022-04-10 03:57:48', '2022-04-10 03:57:48'),
(220, 'data_rows', 'display_name', 386, 'ar', 'Qty', '2022-04-10 03:57:48', '2022-04-10 03:57:48'),
(221, 'data_rows', 'display_name', 387, 'ar', 'Created At', '2022-04-10 03:57:48', '2022-04-10 03:57:48'),
(222, 'data_rows', 'display_name', 388, 'ar', 'Updated At', '2022-04-10 03:57:48', '2022-04-10 03:57:48'),
(223, 'data_rows', 'display_name', 389, 'ar', 'users', '2022-04-10 03:57:48', '2022-04-10 03:57:48'),
(224, 'data_rows', 'display_name', 390, 'ar', 'courses', '2022-04-10 03:57:48', '2022-04-10 03:57:48'),
(227, 'data_rows', 'display_name', 399, 'ar', 'Id', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(228, 'data_rows', 'display_name', 400, 'ar', 'User Id', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(229, 'data_rows', 'display_name', 401, 'ar', 'Total Price', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(230, 'data_rows', 'display_name', 402, 'ar', 'Address', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(231, 'data_rows', 'display_name', 403, 'ar', 'Phone', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(232, 'data_rows', 'display_name', 404, 'ar', 'First Name', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(233, 'data_rows', 'display_name', 405, 'ar', 'Last Name', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(234, 'data_rows', 'display_name', 406, 'ar', 'Email', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(235, 'data_rows', 'display_name', 407, 'ar', 'State', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(236, 'data_rows', 'display_name', 408, 'ar', 'City', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(237, 'data_rows', 'display_name', 409, 'ar', 'Postal Code', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(238, 'data_rows', 'display_name', 410, 'ar', 'Status', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(239, 'data_rows', 'display_name', 411, 'ar', 'Created At', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(240, 'data_rows', 'display_name', 412, 'ar', 'Updated At', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(241, 'data_rows', 'display_name', 413, 'ar', 'users', '2022-04-10 04:19:23', '2022-04-10 04:19:23'),
(244, 'data_rows', 'display_name', 414, 'ar', 'Id', '2022-04-10 05:10:17', '2022-04-10 05:10:17'),
(245, 'data_rows', 'display_name', 415, 'ar', 'Event Id', '2022-04-10 05:10:17', '2022-04-10 05:10:17'),
(246, 'data_rows', 'display_name', 416, 'ar', 'Name', '2022-04-10 05:10:17', '2022-04-10 05:10:17'),
(247, 'data_rows', 'display_name', 417, 'ar', 'Email', '2022-04-10 05:10:17', '2022-04-10 05:10:17'),
(248, 'data_rows', 'display_name', 418, 'ar', 'Created At', '2022-04-10 05:10:17', '2022-04-10 05:10:17'),
(249, 'data_rows', 'display_name', 419, 'ar', 'Updated At', '2022-04-10 05:10:17', '2022-04-10 05:10:17'),
(250, 'data_rows', 'display_name', 420, 'ar', 'events', '2022-04-10 05:10:17', '2022-04-10 05:10:17'),
(251, 'data_types', 'display_name_singular', 55, 'ar', 'Event Record', '2022-04-10 05:10:17', '2022-04-10 05:10:17'),
(252, 'data_types', 'display_name_plural', 55, 'ar', 'Event Records', '2022-04-10 05:10:18', '2022-04-10 05:10:18'),
(253, 'data_rows', 'display_name', 160, 'ar', 'Id', '2022-04-11 03:25:01', '2022-04-11 03:25:01'),
(254, 'data_rows', 'display_name', 161, 'ar', 'User Id', '2022-04-11 03:25:01', '2022-04-11 03:25:01'),
(255, 'data_rows', 'display_name', 162, 'ar', 'Course Id', '2022-04-11 03:25:01', '2022-04-11 03:25:01'),
(256, 'data_rows', 'display_name', 163, 'ar', 'Created At', '2022-04-11 03:25:01', '2022-04-11 03:25:01'),
(257, 'data_rows', 'display_name', 164, 'ar', 'Updated At', '2022-04-11 03:25:01', '2022-04-11 03:25:01'),
(258, 'data_rows', 'display_name', 165, 'ar', 'Deleted At', '2022-04-11 03:25:01', '2022-04-11 03:25:01'),
(259, 'data_rows', 'display_name', 206, 'ar', 'Approve', '2022-04-11 03:25:01', '2022-04-11 03:25:01'),
(260, 'data_rows', 'display_name', 246, 'ar', 'Group Id', '2022-04-11 03:25:01', '2022-04-11 03:25:01'),
(261, 'data_rows', 'display_name', 166, 'ar', 'courses', '2022-04-11 03:25:01', '2022-04-11 03:25:01'),
(262, 'data_rows', 'display_name', 167, 'ar', 'users', '2022-04-11 03:25:01', '2022-04-11 03:25:01'),
(263, 'data_rows', 'display_name', 247, 'ar', 'groups', '2022-04-11 03:25:01', '2022-04-11 03:25:01'),
(264, 'data_types', 'display_name_singular', 26, 'ar', 'Applicant', '2022-04-11 03:25:01', '2022-04-11 03:25:01'),
(265, 'data_types', 'display_name_plural', 26, 'ar', 'Applicants', '2022-04-11 03:25:01', '2022-04-11 03:25:01'),
(266, 'assignments', 'title', 1, 'ar', 'Assignment 1', '2022-04-11 03:55:04', '2022-04-11 03:55:04'),
(267, 'data_rows', 'display_name', 423, 'ar', 'Id', '2022-04-16 07:10:43', '2022-04-16 07:10:43'),
(268, 'data_rows', 'display_name', 424, 'ar', 'User Id', '2022-04-16 07:10:43', '2022-04-16 07:10:43'),
(269, 'data_rows', 'display_name', 425, 'ar', 'Course Id', '2022-04-16 07:10:43', '2022-04-16 07:10:43'),
(270, 'data_rows', 'display_name', 426, 'ar', 'Group Id', '2022-04-16 07:10:43', '2022-04-16 07:10:43'),
(271, 'data_rows', 'display_name', 427, 'ar', 'Lesson Id', '2022-04-16 07:10:43', '2022-04-16 07:10:43'),
(272, 'data_rows', 'display_name', 428, 'ar', 'Created At', '2022-04-16 07:10:43', '2022-04-16 07:10:43'),
(273, 'data_rows', 'display_name', 429, 'ar', 'Updated At', '2022-04-16 07:10:43', '2022-04-16 07:10:43'),
(274, 'data_rows', 'display_name', 430, 'ar', 'users', '2022-04-16 07:10:43', '2022-04-16 07:10:43'),
(275, 'data_rows', 'display_name', 431, 'ar', 'courses', '2022-04-16 07:10:43', '2022-04-16 07:10:43'),
(276, 'data_rows', 'display_name', 432, 'ar', 'groups', '2022-04-16 07:10:43', '2022-04-16 07:10:43'),
(277, 'data_rows', 'display_name', 433, 'ar', 'lessons', '2022-04-16 07:10:43', '2022-04-16 07:10:43'),
(278, 'data_types', 'display_name_singular', 57, 'ar', 'Absence', '2022-04-16 07:10:43', '2022-04-16 07:10:43'),
(279, 'data_types', 'display_name_plural', 57, 'ar', 'Absences', '2022-04-16 07:10:43', '2022-04-16 07:10:43'),
(280, 'data_rows', 'display_name', 421, 'ar', 'Price', '2022-04-17 00:50:49', '2022-04-17 00:50:49'),
(281, 'data_rows', 'display_name', 147, 'ar', 'Id', '2022-04-17 00:56:37', '2022-04-17 00:56:37'),
(282, 'data_rows', 'display_name', 148, 'ar', 'Name', '2022-04-17 00:56:37', '2022-04-17 00:56:37'),
(283, 'data_rows', 'display_name', 149, 'ar', 'Mobile', '2022-04-17 00:56:37', '2022-04-17 00:56:37'),
(284, 'data_rows', 'display_name', 150, 'ar', 'Gender', '2022-04-17 00:56:37', '2022-04-17 00:56:37'),
(285, 'data_rows', 'display_name', 151, 'ar', 'Email', '2022-04-17 00:56:37', '2022-04-17 00:56:37'),
(286, 'data_rows', 'display_name', 152, 'ar', 'Image', '2022-04-17 00:56:37', '2022-04-17 00:56:37'),
(287, 'data_rows', 'display_name', 153, 'ar', 'Age', '2022-04-17 00:56:37', '2022-04-17 00:56:37'),
(288, 'data_rows', 'display_name', 154, 'ar', 'Created At', '2022-04-17 00:56:37', '2022-04-17 00:56:37'),
(289, 'data_rows', 'display_name', 155, 'ar', 'Updated At', '2022-04-17 00:56:37', '2022-04-17 00:56:37'),
(290, 'data_rows', 'display_name', 156, 'ar', 'Deleted At', '2022-04-17 00:56:37', '2022-04-17 00:56:37'),
(291, 'data_rows', 'display_name', 157, 'ar', 'Slug', '2022-04-17 00:56:37', '2022-04-17 00:56:37'),
(292, 'data_rows', 'display_name', 159, 'ar', 'Description', '2022-04-17 00:56:37', '2022-04-17 00:56:37'),
(293, 'data_rows', 'display_name', 245, 'ar', 'Job', '2022-04-17 00:56:37', '2022-04-17 00:56:37'),
(294, 'data_rows', 'display_name', 261, 'ar', 'Experience', '2022-04-17 00:56:38', '2022-04-17 00:56:38'),
(295, 'data_types', 'display_name_singular', 25, 'ar', 'Trainer', '2022-04-17 00:56:38', '2022-04-17 00:56:38'),
(296, 'data_types', 'display_name_plural', 25, 'ar', 'Trainers', '2022-04-17 00:56:38', '2022-04-17 00:56:38'),
(297, 'data_rows', 'display_name', 441, 'ar', 'User Id', '2022-04-17 00:57:53', '2022-04-17 00:57:53'),
(298, 'data_rows', 'display_name', 442, 'ar', 'users', '2022-04-17 00:57:53', '2022-04-17 00:57:53'),
(299, 'data_rows', 'display_name', 68, 'ar', 'Id', '2022-04-17 01:08:12', '2022-04-17 01:08:12'),
(300, 'data_rows', 'display_name', 69, 'ar', 'Title', '2022-04-17 01:08:12', '2022-04-17 01:08:12'),
(301, 'data_rows', 'display_name', 70, 'ar', 'Slug', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(302, 'data_rows', 'display_name', 71, 'ar', 'Description', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(303, 'data_rows', 'display_name', 72, 'ar', 'Image', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(304, 'data_rows', 'display_name', 73, 'ar', 'Created At', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(305, 'data_rows', 'display_name', 74, 'ar', 'Updated At', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(306, 'data_rows', 'display_name', 75, 'ar', 'Deleted At', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(307, 'data_rows', 'display_name', 191, 'ar', 'Rate', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(308, 'data_rows', 'display_name', 192, 'ar', 'Category Id', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(309, 'data_rows', 'display_name', 193, 'ar', 'Price', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(310, 'data_rows', 'display_name', 195, 'ar', 'Trainer Id', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(311, 'data_rows', 'display_name', 198, 'ar', 'Home', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(312, 'data_rows', 'display_name', 199, 'ar', 'Learn', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(313, 'data_rows', 'display_name', 200, 'ar', 'Requirements', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(314, 'data_rows', 'display_name', 241, 'ar', 'Type', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(315, 'data_rows', 'display_name', 190, 'ar', 'categories', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(316, 'data_rows', 'display_name', 194, 'ar', 'trainers', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(317, 'data_types', 'display_name_singular', 10, 'ar', 'Course', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(318, 'data_types', 'display_name_plural', 10, 'ar', 'Courses', '2022-04-17 01:08:13', '2022-04-17 01:08:13'),
(319, 'data_rows', 'display_name', 443, 'ar', 'Id', '2022-04-17 04:36:13', '2022-04-17 04:36:13'),
(320, 'data_rows', 'display_name', 444, 'ar', 'Link', '2022-04-17 04:36:13', '2022-04-17 04:36:13'),
(321, 'data_rows', 'display_name', 445, 'ar', 'Title', '2022-04-17 04:36:13', '2022-04-17 04:36:13'),
(322, 'data_rows', 'display_name', 446, 'ar', 'Course Id', '2022-04-17 04:36:13', '2022-04-17 04:36:13'),
(323, 'data_rows', 'display_name', 447, 'ar', 'Created At', '2022-04-17 04:36:13', '2022-04-17 04:36:13'),
(324, 'data_rows', 'display_name', 448, 'ar', 'Updated At', '2022-04-17 04:36:13', '2022-04-17 04:36:13'),
(325, 'data_rows', 'display_name', 449, 'ar', 'courses', '2022-04-17 04:36:13', '2022-04-17 04:36:13'),
(326, 'data_types', 'display_name_singular', 59, 'ar', 'Introduction', '2022-04-17 04:36:13', '2022-04-17 04:36:13'),
(327, 'data_types', 'display_name_plural', 59, 'ar', 'Introductions', '2022-04-17 04:36:13', '2022-04-17 04:36:13'),
(328, 'events', 'title', 4, 'ar', 'ندوة عن قانون حماية البيانات الشخصية', '2022-04-20 16:27:53', '2022-04-20 16:27:53'),
(329, 'events', 'description', 4, 'ar', '<h2 style=\"text-align: right;\">محاور الندوة</h2>\n<p style=\"text-align: right;\">تعريف بالقانون</p>\n<p style=\"text-align: right;\">حقوق صاحب البيانات الشخصية</p>\n<p style=\"text-align: right;\">التزامات المتحكم بالبيانات ومعالج البيانات</p>\n<p style=\"text-align: right;\">الإستثناءات</p>\n<p style=\"text-align: right;\">العقوبات</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">المقدم الدكتور رياض البلوشي</p>\n<p style=\"text-align: right;\">مؤسس مبادرة عمان للبيانات المفتوحة</p>\n<p style=\"text-align: right;\">التاريخ 13 أبريل ٢٠٢٢<br />الوقت 9:30 الى 10:30 مساء</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', '2022-04-20 16:27:53', '2022-04-20 16:27:53'),
(330, 'events', 'organizer', 4, 'ar', 'أكاديمية البيانات', '2022-04-20 16:27:53', '2022-04-20 16:27:53'),
(331, 'events', 'title', 5, 'ar', 'دورة حياة المعلومات: من المهد الى اللحد', '2022-04-20 16:35:04', '2022-04-20 16:35:04'),
(332, 'events', 'description', 5, 'ar', '<p style=\"text-align: right;\">المحاور</p>\n<p style=\"text-align: right;\">مرحلة ما قبل التكوين<br />مرحلة التكوين<br />مرحلة ما بعد التكوين<br />مرحلة النمو<br />مرحلة الازدهار</p>\n<p style=\"text-align: right;\">المقدم الدكتور احمد بن محمد القاسمي</p>\n<p style=\"text-align: right;\">التاريخ 15 مارس ٢٠٢٢<br />الوقت 6:30 الى 8:30 مساء</p>\n<p style=\"text-align: right;\">&nbsp;</p>', '2022-04-20 16:35:04', '2022-04-20 16:35:04'),
(333, 'events', 'organizer', 5, 'ar', 'أكاديمية البيانات', '2022-04-20 16:35:04', '2022-04-20 16:35:04'),
(334, 'data_rows', 'display_name', 22, 'ar', 'ID', '2022-04-20 17:15:51', '2022-04-20 17:15:51'),
(335, 'data_rows', 'display_name', 23, 'ar', 'Parent', '2022-04-20 17:15:51', '2022-04-20 17:15:51'),
(336, 'data_rows', 'display_name', 24, 'ar', 'Order', '2022-04-20 17:15:51', '2022-04-20 17:15:51'),
(337, 'data_rows', 'display_name', 25, 'ar', 'Name', '2022-04-20 17:15:51', '2022-04-20 17:15:51'),
(338, 'data_rows', 'display_name', 26, 'ar', 'Slug', '2022-04-20 17:15:51', '2022-04-20 17:15:51'),
(339, 'data_rows', 'display_name', 27, 'ar', 'Created At', '2022-04-20 17:15:51', '2022-04-20 17:15:51'),
(340, 'data_rows', 'display_name', 28, 'ar', 'Updated At', '2022-04-20 17:15:51', '2022-04-20 17:15:51'),
(341, 'data_rows', 'display_name', 189, 'ar', 'Deleted At', '2022-04-20 17:15:51', '2022-04-20 17:15:51'),
(342, 'data_rows', 'display_name', 243, 'ar', 'Content', '2022-04-20 17:15:51', '2022-04-20 17:15:51'),
(343, 'data_rows', 'display_name', 244, 'ar', 'Image', '2022-04-20 17:15:51', '2022-04-20 17:15:51'),
(344, 'data_types', 'display_name_singular', 4, 'ar', 'Category', '2022-04-20 17:15:51', '2022-04-20 17:15:51'),
(345, 'data_types', 'display_name_plural', 4, 'ar', 'Categories', '2022-04-20 17:15:51', '2022-04-20 17:15:51'),
(346, 'categories', 'name', 11, 'ar', 'الدورات التدريبية', '2022-04-20 17:17:24', '2022-04-20 17:17:24'),
(347, 'categories', 'slug', 11, 'ar', 'aldwrat-altdrybyh', '2022-04-20 17:17:24', '2022-04-20 17:17:24'),
(348, 'trainers', 'name', 3, 'ar', 'أيمن الشكري', '2022-04-20 17:22:28', '2022-04-20 17:22:28'),
(349, 'courses', 'title', 5, 'ar', 'دورة تخطيط الاستراتيجي ودور المعلومات', '2022-04-20 17:27:22', '2022-04-20 17:27:22'),
(350, 'courses', 'description', 5, 'ar', '<div class=\"stm_lms_course__content\">\n<div class=\"elementor elementor-6618\" data-elementor-type=\"wp-post\" data-elementor-id=\"6618\">&nbsp;</div>\n</div>\n<p style=\"text-align: right;\">محاور الدورة</p>\n<p style=\"text-align: right;\">مدخل الى التخطيط</p>\n<p style=\"text-align: right;\">آليات وأدوات تحليل الوضع المستخدمة بالتخطيط</p>\n<p style=\"text-align: right;\">التخطيط الاستراتسجي&nbsp;</p>\n<p style=\"text-align: right;\">التخطيط التشغيلي</p>\n<p style=\"text-align: right;\">تمارين تطبيقية</p>\n<p style=\"text-align: right;\">&nbsp;</p>', '2022-04-20 17:27:22', '2022-04-27 08:40:46'),
(351, 'trainers', 'name', 4, 'ar', 'wafaa elshamsy', '2022-04-21 01:58:23', '2022-07-18 03:45:19'),
(352, 'courses', 'title', 6, 'ar', 'عباقرة الرياضيات', '2022-04-21 01:59:28', '2022-07-13 11:57:33'),
(353, 'courses', 'description', 6, 'ar', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\">&nbsp;</pre>\n<div class=\"stm_lms_course__content\" style=\"text-align: right;\">\n<p>&nbsp;</p>\n</div>', '2022-04-21 01:59:28', '2022-07-13 13:58:23'),
(354, 'courses', 'learn', 6, 'ar', '<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<div class=\"stm_lms_course__content\" style=\"text-align: right;\">\n<p><strong>الفئة المستهدفة:</strong></p>\n<p>لطلبة المدارس من الصف 1 حتى 12</p>\n<p><strong>نبذة عن الدرس:</strong></p>\n<p>برنامج متكامل يؤهل أبنائنامن ربط الرياضيات بحياتهم االيومية والتحرر من مخاوفهم من مادة الرياضيات وتنمية القدرات العليا.</p>\n<p><strong>أهداف:</strong></p>\n<ul>\n<li>اكتساب الأبناء مهارات المستقبل كالثقة بالنفس ومهارات التفكر التحليلي ومهارات التعامل مع التكنولوجيا</li>\n</ul>\n<p><strong>مخرجات الدورة:</strong></p>\n<ul>\n<li>&nbsp;القدرة على التفكير والتحليل والاستنتاج</li>\n</ul>\n</div>\n</div>\n<p>&nbsp;</p>', '2022-04-21 01:59:28', '2022-07-13 14:01:51'),
(355, 'trainers', 'job', 4, 'ar', 'دكتور', '2022-04-21 03:40:48', '2022-04-21 03:40:48'),
(356, 'trainers', 'job', 3, 'ar', 'دكتور', '2022-04-21 03:41:23', '2022-04-21 03:41:23'),
(357, 'data_rows', 'display_name', 304, 'ar', 'Link', '2022-04-21 15:18:39', '2022-04-21 15:18:39'),
(358, 'lessons', 'title', 5, 'ar', 'الجلسة الأولي', '2022-04-21 15:31:22', '2022-04-21 15:31:22'),
(359, 'lessons', 'description', 5, 'ar', '<p>الجلسة الأولي</p>', '2022-04-21 15:31:22', '2022-04-21 15:31:22'),
(360, 'lessons', 'title', 7, 'ar', 'الجلسة الثالثة', '2022-04-21 15:38:10', '2022-04-21 15:38:10'),
(361, 'lessons', 'description', 7, 'ar', '<p>الجلسة الثالثة</p>', '2022-04-21 15:38:10', '2022-04-21 15:38:10'),
(362, 'lessons', 'title', 8, 'ar', 'الجلسة الرايعة', '2022-04-21 15:39:53', '2022-04-21 15:39:53'),
(363, 'lessons', 'description', 8, 'ar', '<p>الجلسة الرايعة</p>', '2022-04-21 15:39:53', '2022-04-21 15:39:53'),
(364, 'our_services', 'title', 4, 'ar', 'حزمة التعلم', '2022-04-21 15:58:23', '2022-04-21 15:58:23');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(365, 'our_services', 'content', 4, 'ar', '<p style=\"text-align: right;\"><strong>تشمل هذه الحزمة على عدة باقات</strong></p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<ul>\n<li style=\"text-align: right;\">تدريس منهجيات البحث العلمي</li>\n<li style=\"text-align: right;\">التخطيط الاستراتيجي</li>\n<li style=\"text-align: right;\">الإحصاء الرسمي</li>\n</ul>\n<p style=\"text-align: right;\">&nbsp;</p>', '2022-04-21 15:58:23', '2022-04-21 15:58:23'),
(366, 'products', 'name', 4, 'ar', 'ما هو الاختبار الإحصائي الذي يجب أن أستخدمه؟', '2022-04-24 02:59:27', '2022-04-24 02:59:27'),
(367, 'products', 'name', 5, 'ar', 'دليل لاستخدام برنامج SPSS', '2022-04-24 03:00:48', '2022-04-24 03:00:48'),
(368, 'news', 'title', 3, 'ar', 'البرامج الإحصائية', '2022-04-24 03:44:16', '2022-04-24 03:44:16'),
(369, 'news', 'description', 3, 'ar', '<h3>MaxStat</h3>\n<p>You can create statistical analysis in three simple steps, easy to use and especially useful for students and business editors</p>\n<p><a title=\"Max Stat\" href=\"https://maxstat.de/en/home-en/\" target=\"_blank\" rel=\"noopener\">Max Stat</a></p>\n<p>&nbsp;</p>\n<h3>MATLAB</h3>\n<p>Creates a programming environment for algorithm creation, data analysis, numerical computation, and visualization.</p>\n<p>Helps create tables, graphs, equations, and a wide range of other tools to help easily create and edit artwork</p>\n<p><a title=\"Go to MATLAB\" href=\"https://www.mathworks.com/products/matlab.html\" target=\"_blank\" rel=\"noopener\">MATLAB</a></p>\n<p>&nbsp;</p>\n<h3>AcaStat</h3>\n<p class=\"elementor-image-box-description\">Available on both Windows and other iOS operating system, it is one of the very effective statistics software. It allows you to format variables like values and labels and easily configure controls which is one of its exclusive features. Furthermore, it allows you to import data from your spreadsheet files using the clone tool and quickly analyzes the data that helps you design logistic details, OLS, and frequency tables.</p>\n<p><a title=\"Go to Aca Stat\" href=\"http://www.acastat.com/\" target=\"_blank\" rel=\"noopener\">AcaStat</a></p>\n<p>&nbsp;</p>\n<h3>AdamSoft</h3>\n<p class=\"elementor-image-box-description\">Free and open source software that can run on any system that supports Java. It can implement a large variety of analytical techniques such as data mining, record linking methods, cluster analysis, graphs, logistic regression and lining, etc. Bonus &ndash; This program can also read and write statistical data values from various sources such as Oracle, ODBC data sources, text files, MySQL, Excel spreadsheets and PostgreSQL.</p>\n<p class=\"elementor-image-box-description\">&nbsp;</p>\n<p><a title=\"AdamSoft\" href=\"http://adamsoft.sourceforge.net/download.html\" target=\"_blank\" rel=\"noopener\">AdamSoft</a></p>\n<p>&nbsp;</p>\n<h3>Stawing</h3>\n<p class=\"elementor-image-box-description\">The software helps users to conveniently define an analysis framework that provides a high degree of confidence for statistical outputs and you can also access basic charts such as bar charts and graph that can be sent to spreadsheets.</p>\n<p class=\"elementor-image-box-description\">&nbsp;</p>\n<p class=\"elementor-image-box-description\">&nbsp;</p>\n<p><a title=\"Stawing\" href=\"https://www.qualtrics.com/iq/stats-iq/\" target=\"_blank\" rel=\"noopener\">Stawing</a></p>\n<p>&nbsp;</p>\n<h3 class=\"elementor-image-box-title\">&nbsp;</h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>https://www.statistix.com/</p>\n<h3>Stata</h3>\n<p>&nbsp;</p>\n<p class=\"elementor-image-box-description\">A complete statistical software package that provides everything you need to perform data analysis, graphics, and data management. All you need is a computer with enough memory, and the software can accept huge amounts of data and create graphs very fast. It can also perform various types of regressions, validate data from surveys, and will accept a variance of data inputs for use in processing. It can evaluate data sets over time, save everything you\'ve analyzed, clean and arrange the data, create a redundant variable, and export your output</p>\n<p>&nbsp;</p>\n<p><a title=\"Stata\" href=\"https://www.stata.com/\" target=\"_blank\" rel=\"noopener\">Stata</a></p>\n<p>&nbsp;</p>\n<h3>Statistix</h3>\n<p>&nbsp;</p>\n<p class=\"elementor-image-box-description\">A complete statistical software package that provides everything you need to perform data analysis, graphics, and data management. All you need is a computer with enough memory, and the software can accept huge amounts of data and create graphs very fast. It can also perform various types of regressions, validate data from surveys, and will accept a variance of data inputs for use in processing. It can evaluate data sets over time, save everything you\'ve analyzed, clean and arrange the data, create a redundant variable, and export your output</p>\n<p>&nbsp;</p>\n<p><a title=\"Statistix\" href=\"https://www.statistix.com/\" target=\"_blank\" rel=\"noopener\">Statistix</a></p>\n<p>&nbsp;</p>\n<h3>SAS Bussines Inteligence</h3>\n<p>&nbsp;</p>\n<p class=\"elementor-image-box-description\">It helps integrate and find data on your own, generate and share interactive reports, spark your passion with simple analytics, and track key measures so that when something goes wrong, you\'ll know how to do it. Among its advantages is its ability to quickly display data and detect patterns. Features like heat maps help you see where the maximum traffic is. It also allows integration with other open source software such as R.</p>\n<p>&nbsp;</p>\n<p><a title=\"SAS Bussines Intelligence\" href=\"https://www.sas.com/en_us/solutions/business-intelligence.html\" target=\"_blank\" rel=\"noopener\">SAS Bussines Intelligence</a></p>\n<p>&nbsp;</p>', '2022-04-24 03:44:16', '2022-04-24 03:52:31'),
(370, 'data_rows', 'display_name', 116, 'ar', 'Id', '2022-04-24 04:01:13', '2022-04-24 04:01:13'),
(371, 'data_rows', 'display_name', 117, 'ar', 'Title', '2022-04-24 04:01:13', '2022-04-24 04:01:13'),
(372, 'data_rows', 'display_name', 118, 'ar', 'Image', '2022-04-24 04:01:13', '2022-04-24 04:01:13'),
(373, 'data_rows', 'display_name', 119, 'ar', 'Description', '2022-04-24 04:01:13', '2022-04-24 04:01:13'),
(374, 'data_rows', 'display_name', 120, 'ar', 'Slug', '2022-04-24 04:01:13', '2022-04-24 04:01:13'),
(375, 'data_rows', 'display_name', 121, 'ar', 'Created At', '2022-04-24 04:01:13', '2022-04-24 04:01:13'),
(376, 'data_rows', 'display_name', 122, 'ar', 'Updated At', '2022-04-24 04:01:13', '2022-04-24 04:01:13'),
(377, 'data_rows', 'display_name', 123, 'ar', 'Deleted At', '2022-04-24 04:01:13', '2022-04-24 04:01:13'),
(378, 'data_types', 'display_name_singular', 15, 'ar', 'News', '2022-04-24 04:01:13', '2022-04-24 04:01:13'),
(379, 'data_types', 'display_name_plural', 15, 'ar', 'News', '2022-04-24 04:01:13', '2022-04-24 04:01:13'),
(380, 'news', 'title', 4, 'ar', 'كتب', '2022-04-24 04:25:00', '2022-04-24 04:25:00'),
(381, 'news', 'description', 4, 'ar', '<h4 class=\"elementor-heading-title elementor-size-default\">Understanding Statistics and Experimental Design</h4>\n<p><img title=\"Understanding Statistics and Experimental Design\" src=\"https://lms.thedatacademy.com/public/storage/news/April2022/SharedScreenshot.jpg\" alt=\"Understanding Statistics and Experimental Design\" width=\"300\" height=\"300\" /></p>\n<p><a title=\"Understanding-Statistics-and-Experimental-Design.\" href=\"https://www.hrz-stat.com/wp-content/uploads/2021/10/Understanding-Statistics-and-Experimental-Design.pdf\" target=\"_blank\" rel=\"noopener\">Understanding-Statistics-and-Experimental-Design.</a></p>\n<h4 class=\"elementor-heading-title elementor-size-default\">&nbsp;</h4>\n<h4 class=\"elementor-heading-title elementor-size-default\">Think Stats</h4>\n<p><img title=\"Think Stats\" src=\"https://lms.thedatacademy.com/public/storage/news/April2022/SharedScreenshot1.jpg\" alt=\"Think Stats\" width=\"300\" height=\"300\" /></p>\n<p><a title=\"Think Stats\" href=\"https://www.hrz-stat.com/wp-content/uploads/2021/10/Think-Stats.pdf\" target=\"_blank\" rel=\"noopener\">Think Stats</a></p>\n<p>&nbsp;</p>\n<h4 class=\"elementor-heading-title elementor-size-default\">The Elements Of Data Analytics Style</h4>\n<h4 class=\"elementor-heading-title elementor-size-default\"><img title=\"The Element Of Data Analytics Style\" src=\"https://lms.thedatacademy.com/public/storage/news/April2022/SharedScreenshot2.jpg\" alt=\"The Element Of Data Analytics Style\" /></h4>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><a title=\"The Elements Of Data Analytics Style\" href=\"https://www.hrz-stat.com/wp-content/uploads/2021/10/The-Elements-of-Data-Analytic-Style.pdf\" target=\"_blank\" rel=\"noopener\">The Elements Of Data Analytics Style</a></p>\n<p>&nbsp;</p>', '2022-04-24 04:25:00', '2022-04-24 04:25:00'),
(382, 'news', 'title', 5, 'ar', '3 طرق لاكتشاف الإحصاء السيئ', '2022-04-24 05:35:27', '2022-04-24 05:35:27'),
(383, 'news', 'description', 5, 'ar', '<div class=\"text_block clearfix\">\n<p style=\"text-align: right;\">\"أريد أن أطرح عليكم يا رفاق ثلاثة أسئلة ستساعدكم على اكتشاف بعض الإحصائيات السيئة. إذن ، السؤال الأول هو: هل ترى عدم اليقين؟ أحد الأشياء التي غيرت بالفعل علاقة الناس بالأرقام ، وحتى ثقتهم في وسائل الإعلام ، كان استخدام استطلاعات الرأي السياسية. أنا شخصياً لدي العديد من المشكلات مع استطلاعات الرأي السياسية لأنني أعتقد أن دور الصحفيين هو في الواقع نقل الحقائق وليس محاولة التنبؤ بها ، خاصة عندما يمكن لتلك التنبؤات أن تدمر الديمقراطية بالفعل من خلال إرسال إشارات للناس: لا تهتموا بالتصويت لهذا الرجل ، ليس لديه فرصة. دعونا نضع ذلك جانبا الآن ونتحدث عن دقة هذا المسعى.</p>\n<p style=\"text-align: right;\">&nbsp; استنادًا إلى الانتخابات الوطنية في المملكة المتحدة وإيطاليا وإسرائيل وبالطبع الانتخابات الرئاسية الأمريكية الأخيرة ، فإن استخدام استطلاعات الرأي للتنبؤ بنتائج الانتخابات يعد دقيقًا مثل استخدام القمر للتنبؤ بدخول المستشفيات. لا ، بجدية ، لقد استخدمت البيانات الفعلية من دراسة أكاديمية لرسم هذا. هناك الكثير من الأسباب التي تجعل الاقتراع غير دقيق للغاية. لقد أصبحت مجتمعاتنا متنوعة حقًا ، مما يجعل من الصعب على منظمي استطلاعات الرأي الحصول على عينة تمثيلية لطيفة حقًا من السكان لاستطلاعاتهم. يتردد الناس حقًا في الرد على هواتفهم لمنظمي استطلاعات الرأي ، وأيضًا ، بشكل صادم بما فيه الكفاية ، قد يكذب الناس. لكنك لن تعرف ذلك بالضرورة للنظر إلى وسائل الإعلام. لسبب واحد ، كان احتمال فوز هيلاري كلينتون بالإشارة إلى الخانات العشرية. لا نستخدم المنازل العشرية لوصف درجة الحرارة.</p>\n<p style=\"text-align: right;\">كيف بحق السماء يمكن التنبؤ بسلوك 230 مليون ناخب في هذا البلد بهذه الدقة؟ وبعد ذلك كانت هناك تلك المخططات الأنيقة. انظر ، الكثير من تصورات البيانات ستبالغ في تأكيد اليقين ، وهي تعمل - هذه المخططات يمكن أن تخدر عقولنا للنقد. عندما تسمع إحصائية ، قد تشعر بالتشكك. بمجرد أن يتم دفنها في الرسم البياني ، فإنها تبدو وكأنها نوع من العلم الموضوعي ، وهي ليست كذلك.&nbsp; لذلك كنت أحاول إيجاد طرق لتوصيل هذا بشكل أفضل للناس ، لإظهار عدم اليقين في أعدادنا للناس. ما فعلته هو أنني بدأت في أخذ مجموعات بيانات حقيقية ، وتحويلها إلى تصورات مرسومة باليد ، حتى يتمكن الناس من رؤية مدى عدم دقة البيانات ؛ حتى يتمكن الناس من رؤية أن الإنسان فعل ذلك ، وجد الإنسان البيانات وتصورها. على سبيل المثال ، بدلاً من اكتشاف احتمالية الإصابة بالإنفلونزا في أي شهر معين ، يمكنك مشاهدة التوزيع التقريبي لموسم الإنفلونزا. هذا هو -&nbsp; لقطة سيئة لتظهر في فبراير. ولكنه يمثل أيضًا تصورًا أكثر مسؤولية للبيانات ، لأنه إذا كنت تريد إظهار الاحتمالات الدقيقة ، فربما يشجع ذلك الأشخاص على تلقي لقاحات الإنفلونزا في الوقت الخطأ.</p>\nالهدف من هذه الخطوط المهتزة هو أن يتذكر الناس عدم الدقة هذه ، ولكن أيضًا لا يتجاهلوا بالضرورة رقمًا معينًا ، لكن يمكنهم تذكر الحقائق المهمة. حقائق مثل الظلم وعدم المساواة تترك أثرا كبيرا في حياتنا. حقائق مثل الأمريكيين السود والأمريكيين الأصليين لديهم متوسط ​​عمر متوقع أقصر من مثيله في الأعراق الأخرى ، وهذا لن يتغير في أي وقت قريب. حقائق مثل يمكن الاحتفاظ بالسجناء في الولايات المتحدة في زنازين الحبس الانفرادي التي تكون أصغر من حجم مكان وقوف السيارات العادي.&nbsp; الهدف من هذه التصورات هو أيضًا تذكير الناس ببعض المفاهيم الإحصائية المهمة حقًا ، مثل المفاهيم. فلنفترض أنك تسمع ادعاءً مثل ، \"يحتوي حوض السباحة المتوسط ​​في الولايات المتحدة على 6.23 حادثة برازية.</div>\n<div class=\"text_block clearfix\" style=\"text-align: right;\">&nbsp;</div>\n<div class=\"text_block clearfix\" style=\"text-align: right;\">\" هذا لا يعني أن كل حوض سباحة في الدولة يحتوي بالضبط على 6.23 غائطًا. لذا من أجل إظهار ذلك ، عدت إلى البيانات الأصلية ، والتي جاءت من مركز السيطرة على الأمراض ، الذي قام بمسح 47 منشأة سباحة. وقضيت ليلة واحدة فقط في إعادة توزيع البراز. لذا يمكنك أن ترى كيف يمكن أن تكون المتوسطات مضللة. حسنًا ، السؤال الثاني الذي يجب أن تطرحه على أنفسكم لتحديد الأرقام السيئة هو: هل يمكنني رؤية نفسي في البيانات؟ يتعلق هذا السؤال أيضًا بالمتوسطات بطريقة ما ، لأن جزءًا من سبب إحباط الناس الشديد من هذه الإحصاءات الوطنية ، هو أنهم لا يروون حقًا قصة من الفائز ومن يخسر من السياسة الوطنية. من السهل فهم سبب إحباط الناس من المتوسطات العالمية عندما لا تتوافق مع تجاربهم الشخصية. أردت أن أوضح للناس الطريقة التي ترتبط بها البيانات بحياتهم اليومية. لقد بدأت عمود النصائح هذا بعنوان \"عزيزتي منى\" ، حيث كان الناس يكتبون لي بأسئلة ومخاوف وسأحاول الإجابة عليها بالبيانات.</div>\n<div class=\"text_block clearfix\" style=\"text-align: right;\">&nbsp;</div>\n<div class=\"text_block clearfix\" style=\"text-align: right;\">سألني الناس عن أي شيء. أسئلة مثل ، \"هل من الطبيعي أن أنام في سرير منفصل عن زوجتي؟\" \"هل يندم الناس على وشومهم؟\" \"ماذا يعني الموت لأسباب طبيعية؟\"&nbsp; كل هذه الأسئلة رائعة ، لأنها تجعلك تفكر في طرق للعثور على هذه الأرقام وإيصالها. إذا سألك أحدهم ، \"ما مقدار كمية البول التي يتبول فيها؟\" وهو سؤال تم طرحه علي ، فأنت تريد حقًا التأكد من أن التخيل منطقي لأكبر عدد ممكن من الأشخاص. هذه الأرقام ليست متوفرة. في بعض الأحيان يتم دفنهم في ملحق دراسة أكاديمية. وهم بالتأكيد ليسوا غامضين. إذا كنت تريد حقًا اختبار هذه الأرقام على حجم التبول ، يمكنك الحصول على زجاجة وتجربتها بنفسك.\n<p>&nbsp;</p>\n<p>الهدف من هذا ليس بالضرورة أن كل مجموعة بيانات فردية يجب أن تتعلق بك على وجه التحديد. أنا مهتمة بعدد النساء اللواتي صدر بحقهن غرامات في فرنسا لارتدائهن الحجاب أو النقاب ، حتى لو لم أكن أعيش في فرنسا ولا أرتدي النقاب. الهدف من السؤال عن المكان المناسب لك هو الحصول على أكبر قدر ممكن من السياق. لذا فالأمر يتعلق بالتصغير من نقطة بيانات واحدة ، مثل معدل البطالة خمسة بالمائة ، ورؤية كيف يتغير بمرور الوقت ، أو رؤية كيف يتغير حسب الحالة التعليمية - وهذا هو سبب رغبة والديك دائمًا في الالتحاق بالجامعة - أو رؤية كيف يختلف حسب الجنس. في الوقت الحاضر ، معدل بطالة الذكور أعلى من معدل بطالة الإناث.</p>\n<p>حتى أوائل الثمانينيات ، كان الأمر مختلفًا. هذه قصة من أكبر التغييرات التي حدثت في المجتمع الأمريكي ، وكلها موجودة في هذا الرسم البياني ، بمجرد النظر إلى ما وراء المتوسطات. المحاور هي كل شيء. بمجرد تغيير المقياس ، يمكنك تغيير القصة.&nbsp; حسنًا ، السؤال الثالث والأخير الذي أريدكم أن تفكروا به عندما تنظرون إلى الإحصائيات هو: كيف تم جمع البيانات؟ لقد تحدثت حتى الآن فقط عن الطريقة التي يتم بها توصيل البيانات ، ولكن الطريقة التي يتم جمعها بها مهمة بنفس القدر. أعلم أن هذا صعب ، لأن المنهجيات يمكن أن تكون مبهمة ومملة نوعًا ما ، ولكن هناك بعض الخطوات البسيطة التي يمكنك اتخاذها للتحقق من ذلك.</p>\n<p>&nbsp;</p>\n<p>&nbsp; سأستخدم مثالًا أخيرًا هنا. وجد أحد الاستطلاعات أن 41 في المائة من المسلمين في هذا البلد يدعمون الجهاد ، وهو أمر مخيف بالتأكيد ، وقد تم الإبلاغ عنه في كل مكان في عام 2015. عندما أريد التحقق من رقم كهذا ، سأبدأ بإيجاد الاستبيان الأصلي. اتضح أن الصحفيين الذين كتبوا عن تلك الإحصائية تجاهلوا سؤالًا في الأسفل في الاستطلاع الذي سأل المستجيبين كيف يعرّفون \"الجهاد\". وقد عرّفها معظمهم على أنها \"كفاح المسلمين الشخصي السلمي ليكونوا أكثر تديناً\". ووصفها 16 بالمائة فقط بأنها \"حرب مقدسة عنيفة ضد غير المؤمنين\". هذه هي النقطة المهمة حقًا: بناءً على هذه الأرقام ، من الممكن تمامًا ألا يقول أي شخص في الاستطلاع ممن وصفها بأنها حرب مقدسة عنيفة إنه يدعمها أيضًا. قد لا تتداخل هاتان المجموعتان على الإطلاق.</p>\n<p>&nbsp;</p>\n<p><span style=\"font-weight: 400;\">يجدر أيضًا السؤال عن كيفية إجراء الاستطلاع. كان هذا شيئًا يسمى استطلاع الاشتراك ، مما يعني أنه يمكن لأي شخص العثور عليه على الإنترنت وإكماله. لا توجد طريقة لمعرفة ما إذا كان هؤلاء الأشخاص قد تم تصنيفهم على أنهم مسلمون. وأخيرًا ، كان هناك 600 مستجيب في ذلك الاستطلاع. هناك ما يقرب من ثلاثة ملايين مسلم في هذا البلد ، وفقا لمركز بيو للأبحاث. وهذا يعني أن الاستطلاع تحدث مع واحد من كل 5000 مسلم في هذا البلد.&nbsp; هذا هو أحد الأسباب التي تجعل الإحصاءات الحكومية غالبًا ما تكون أفضل من الإحصاءات الخاصة. قد يتحدث استطلاع رأي إلى بضع مئات من الأشخاص ، أو ربما ألف شخص ، أو إذا كنت من L&rsquo;Oreal ، تحاول بيع منتجات العناية بالبشرة في عام 2005 ، فقد تحدثت إلى 48 امرأة لتزعم أنها تعمل.&nbsp; لا تهتم الشركات الخاصة كثيرًا بالحصول على الأرقام بشكل صحيح ، فهي تحتاج فقط إلى الأرقام الصحيحة. الإحصائيون الحكوميون ليسوا كذلك</span><span style=\"font-weight: 400;\">.</span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-weight: 400;\"> من الناحية النظرية ، فهم محايدون تمامًا ، لأسباب ليس أقلها أن معظمهم يؤدون وظائفهم بغض النظر عن من في السلطة. إنهم موظفون مدنيون. ولكي يؤدوا وظائفهم بشكل صحيح ، فهم لا يتحدثون</span><span style=\"font-weight: 400;\"> فقط إلى بضع مئات من الأشخاص. تأتي أرقام البطالة التي أحتفظ بها في المراجع من مكتب إحصاءات العمل ، ولإجراء تقديراتهم ، فإنهم يتحدثون إلى أكثر من 140.000 شركة في هذا البلد.&nbsp; فهمت ، إنه محبط. إذا كنت ترغب في اختبار إحصائية تأتي من شركة خاصة ، يمكنك شراء كريم الوجه لك ول مجموعة من الأصدقاء ، واختباره ، وإذا لم ينجح ، يمكنك القول أن الأرقام كانت خاطئة. لكن كيف تشكك في الإحصائيات الحكومية؟ أنت فقط تستمر في فحص كل شيء. اكتشف كيف قاموا بجمع الأرقام. اكتشف ما إذا كنت ترى كل شيء تريد رؤيته على الرسم البياني. لكن لا تتخلى عن الأرقام تمامًا ، لأنه إذا فعلت ذلك ، فسنقوم باتخاذ قرارات السياسة العامة في الظلام ، ولن نستخدم أي شيء سوى المصالح الخاصة لإرشادنا \".</span></p>\n<p><strong>Mona Chalabi &ndash; A British data journalist and writer of Iraqi descent</strong></p>\n</div>\n<p><br /><br /></p>\n<p>&nbsp;</p>', '2022-04-24 05:35:27', '2022-04-24 05:35:27'),
(384, 'events', 'title', 6, 'ar', 'التصنيفات الدولية للمدن والبلد: المنهجية والبيانات. الشفافية', '2022-04-24 06:03:59', '2022-04-24 06:03:59'),
(385, 'events', 'organizer', 6, 'ar', 'Horizons Company', '2022-04-24 06:03:59', '2022-04-24 06:03:59'),
(386, 'events', 'title', 7, 'ar', 'منتدى البيانات العالمي للأمم المتحدة', '2022-04-24 12:47:23', '2022-04-24 12:47:23'),
(387, 'events', 'organizer', 7, 'ar', 'Horizons Company', '2022-04-24 12:47:23', '2022-04-24 12:47:23'),
(388, 'data_rows', 'display_name', 124, 'ar', 'Id', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(389, 'data_rows', 'display_name', 125, 'ar', 'Title', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(390, 'data_rows', 'display_name', 126, 'ar', 'Image', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(391, 'data_rows', 'display_name', 127, 'ar', 'Description', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(392, 'data_rows', 'display_name', 128, 'ar', 'Slug', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(393, 'data_rows', 'display_name', 129, 'ar', 'Start Date', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(394, 'data_rows', 'display_name', 130, 'ar', 'End Date', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(395, 'data_rows', 'display_name', 131, 'ar', 'Created At', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(396, 'data_rows', 'display_name', 132, 'ar', 'Updated At', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(397, 'data_rows', 'display_name', 133, 'ar', 'Deleted At', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(398, 'data_rows', 'display_name', 201, 'ar', 'Organizer', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(399, 'data_rows', 'display_name', 202, 'ar', 'Phone', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(400, 'data_rows', 'display_name', 203, 'ar', 'Email', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(401, 'data_rows', 'display_name', 204, 'ar', 'Website', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(402, 'data_rows', 'display_name', 205, 'ar', 'Coordinates', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(403, 'data_types', 'display_name_singular', 16, 'ar', 'Event', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(404, 'data_types', 'display_name_plural', 16, 'ar', 'Events', '2022-04-24 12:48:12', '2022-04-24 12:48:12'),
(405, 'videos', 'title', 5, 'ar', 'first Session', '2022-04-25 05:19:54', '2022-04-25 05:19:54'),
(406, 'videos', 'description', 5, 'ar', '<p>s</p>', '2022-04-25 05:19:54', '2022-04-25 05:19:54'),
(407, 'videos', 'title', 7, 'ar', 'Third Session', '2022-04-25 05:26:55', '2022-04-25 05:26:55'),
(408, 'lessons', 'title', 6, 'ar', 'الجلسة الثانية', '2022-04-27 08:42:13', '2022-04-27 08:42:13'),
(409, 'lessons', 'description', 6, 'ar', '<p>second Session</p>', '2022-04-27 08:42:13', '2022-04-27 08:42:13'),
(410, 'data_rows', 'display_name', 450, 'ar', 'Id', '2022-05-15 01:31:31', '2022-05-15 01:31:31'),
(411, 'data_rows', 'display_name', 451, 'ar', 'User Id', '2022-05-15 01:31:31', '2022-05-15 01:31:31'),
(412, 'data_rows', 'display_name', 452, 'ar', 'Course Id', '2022-05-15 01:31:31', '2022-05-15 01:31:31'),
(413, 'data_rows', 'display_name', 453, 'ar', 'Rate', '2022-05-15 01:31:31', '2022-05-15 01:31:31'),
(414, 'data_rows', 'display_name', 454, 'ar', 'Created At', '2022-05-15 01:31:31', '2022-05-15 01:31:31'),
(415, 'data_rows', 'display_name', 455, 'ar', 'Updated At', '2022-05-15 01:31:31', '2022-05-15 01:31:31'),
(416, 'data_rows', 'display_name', 456, 'ar', 'users', '2022-05-15 01:31:31', '2022-05-15 01:31:31'),
(417, 'data_rows', 'display_name', 457, 'ar', 'courses', '2022-05-15 01:31:31', '2022-05-15 01:31:31'),
(418, 'data_types', 'display_name_singular', 60, 'ar', 'Course Rating', '2022-05-15 01:31:31', '2022-05-15 01:31:31'),
(419, 'data_types', 'display_name_plural', 60, 'ar', 'Course Ratings', '2022-05-15 01:31:32', '2022-05-15 01:31:32'),
(420, 'categories', 'name', 12, 'ar', 'الندوات', '2022-05-24 04:20:15', '2022-05-24 04:20:15'),
(421, 'categories', 'slug', 12, 'ar', 'alndwat', '2022-05-24 04:20:15', '2022-05-24 04:20:15'),
(422, 'data_rows', 'display_name', 1, 'ar', 'ID', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(423, 'data_rows', 'display_name', 21, 'ar', 'Role', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(424, 'data_rows', 'display_name', 2, 'ar', 'Name', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(425, 'data_rows', 'display_name', 3, 'ar', 'Email', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(426, 'data_rows', 'display_name', 8, 'ar', 'Avatar', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(427, 'data_rows', 'display_name', 208, 'ar', 'Email Verified At', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(428, 'data_rows', 'display_name', 4, 'ar', 'Password', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(429, 'data_rows', 'display_name', 5, 'ar', 'Remember Token', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(430, 'data_rows', 'display_name', 11, 'ar', 'Settings', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(431, 'data_rows', 'display_name', 6, 'ar', 'Created At', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(432, 'data_rows', 'display_name', 7, 'ar', 'Updated At', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(433, 'data_rows', 'display_name', 209, 'ar', 'Provider', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(434, 'data_rows', 'display_name', 210, 'ar', 'Provider Id', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(435, 'data_rows', 'display_name', 9, 'ar', 'Role', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(436, 'data_rows', 'display_name', 10, 'ar', 'Roles', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(437, 'data_rows', 'display_name', 458, 'ar', 'users', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(438, 'data_types', 'display_name_singular', 1, 'ar', 'User', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(439, 'data_types', 'display_name_plural', 1, 'ar', 'Users', '2022-05-24 05:14:11', '2022-05-24 05:14:11'),
(440, 'courses', 'title', 7, 'ar', 'الدورة الجديدة', '2022-05-24 15:25:13', '2022-05-24 15:25:13'),
(441, 'courses', 'title', 8, 'ar', 'دورة جديدة', '2022-05-24 15:27:02', '2022-05-24 15:27:02'),
(442, 'data_rows', 'display_name', 461, 'ar', 'Id', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(443, 'data_rows', 'display_name', 462, 'ar', 'User Id', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(444, 'data_rows', 'display_name', 463, 'ar', 'Topic', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(445, 'data_rows', 'display_name', 464, 'ar', 'Start At', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(446, 'data_rows', 'display_name', 465, 'ar', 'Duration', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(447, 'data_rows', 'display_name', 466, 'ar', 'Password', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(448, 'data_rows', 'display_name', 467, 'ar', 'Start Url', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(449, 'data_rows', 'display_name', 468, 'ar', 'Join Url', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(450, 'data_rows', 'display_name', 469, 'ar', 'Group Id', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(451, 'data_rows', 'display_name', 470, 'ar', 'Lesson Id', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(452, 'data_rows', 'display_name', 471, 'ar', 'Created At', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(453, 'data_rows', 'display_name', 472, 'ar', 'Updated At', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(454, 'data_rows', 'display_name', 473, 'ar', 'groups', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(455, 'data_rows', 'display_name', 474, 'ar', 'lessons', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(456, 'data_types', 'display_name_singular', 61, 'ar', 'Meeting', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(457, 'data_types', 'display_name_plural', 61, 'ar', 'Meetings', '2022-06-01 12:35:10', '2022-06-01 12:35:10'),
(458, 'data_rows', 'display_name', 475, 'ar', 'users', '2022-06-01 12:45:30', '2022-06-01 12:45:30'),
(459, 'data_rows', 'display_name', 435, 'ar', 'Id', '2022-06-05 17:07:21', '2022-06-05 17:07:21'),
(460, 'data_rows', 'display_name', 436, 'ar', 'Name', '2022-06-05 17:07:21', '2022-06-05 17:07:21'),
(461, 'data_rows', 'display_name', 437, 'ar', 'Course', '2022-06-05 17:07:21', '2022-06-05 17:07:21'),
(462, 'data_rows', 'display_name', 438, 'ar', 'Course Date', '2022-06-05 17:07:21', '2022-06-05 17:07:21'),
(463, 'data_rows', 'display_name', 439, 'ar', 'Created At', '2022-06-05 17:07:21', '2022-06-05 17:07:21'),
(464, 'data_rows', 'display_name', 440, 'ar', 'Updated At', '2022-06-05 17:07:21', '2022-06-05 17:07:21'),
(465, 'data_types', 'display_name_singular', 58, 'ar', 'Certificate', '2022-06-05 17:07:21', '2022-06-05 17:07:21'),
(466, 'data_types', 'display_name_plural', 58, 'ar', 'Certificates', '2022-06-05 17:07:21', '2022-06-05 17:07:21'),
(467, 'data_rows', 'display_name', 476, 'ar', 'User Id', '2022-06-05 17:08:39', '2022-06-05 17:08:39'),
(468, 'data_rows', 'display_name', 477, 'ar', 'users', '2022-06-05 17:08:39', '2022-06-05 17:08:39'),
(469, 'courses', 'title', 9, 'ar', 'Duis ex facilis saep', '2022-06-06 22:22:12', '2022-06-06 22:22:12'),
(470, 'courses', 'learn', 9, 'ar', '<p>kjkjkjkjjk</p>', '2022-06-06 22:22:12', '2022-06-06 22:22:12'),
(471, 'skills', 'title', 1, 'ar', 'تكوين شخصية اجتماعية تميل للاندماج مع مختلف الشخصيات', '2022-06-11 23:37:54', '2022-06-11 23:37:54'),
(472, 'skills', 'title', 2, 'ar', 'كسب الثقة بالنفس والتفكير البنّاء', '2022-06-11 23:41:17', '2022-06-11 23:41:17'),
(473, 'skills', 'title', 3, 'ar', 'Eligendi anim aut ad', '2022-06-11 23:44:38', '2022-06-11 23:44:38'),
(474, 'skills', 'title', 4, 'ar', 'Et cillum quia illum', '2022-06-11 23:45:01', '2022-06-11 23:45:01'),
(475, 'data_rows', 'display_name', 483, 'ar', 'Id', '2022-06-30 03:36:51', '2022-06-30 03:36:51'),
(476, 'data_rows', 'display_name', 484, 'ar', 'Gateway', '2022-06-30 03:36:51', '2022-06-30 03:36:51'),
(477, 'data_rows', 'display_name', 485, 'ar', 'Reference Id', '2022-06-30 03:36:51', '2022-06-30 03:36:51'),
(478, 'data_rows', 'display_name', 486, 'ar', 'Status', '2022-06-30 03:36:51', '2022-06-30 03:36:51'),
(479, 'data_rows', 'display_name', 487, 'ar', 'Amount', '2022-06-30 03:36:51', '2022-06-30 03:36:51'),
(480, 'data_rows', 'display_name', 488, 'ar', 'Data', '2022-06-30 03:36:51', '2022-06-30 03:36:51'),
(481, 'data_rows', 'display_name', 489, 'ar', 'User Id', '2022-06-30 03:36:51', '2022-06-30 03:36:51'),
(482, 'data_rows', 'display_name', 490, 'ar', 'Created At', '2022-06-30 03:36:51', '2022-06-30 03:36:51'),
(483, 'data_rows', 'display_name', 491, 'ar', 'Updated At', '2022-06-30 03:36:51', '2022-06-30 03:36:51'),
(484, 'data_rows', 'display_name', 492, 'ar', 'users', '2022-06-30 03:36:51', '2022-06-30 03:36:51'),
(485, 'data_types', 'display_name_singular', 63, 'ar', 'Payment', '2022-06-30 03:36:51', '2022-06-30 03:36:51'),
(486, 'data_types', 'display_name_plural', 63, 'ar', 'Payments', '2022-06-30 03:36:52', '2022-06-30 03:36:52'),
(487, 'courses', 'requirements', 6, 'ar', '<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Translation\">&nbsp;</pre>\n<div class=\"stm_lms_course__content\" style=\"text-align: right;\">\n<p><strong>متطلب الدرس:</strong></p>\n<p>لايوجد</p>\n<p><strong>توصيات لمزيد من الورش:</strong></p>\n<p>لايوجد</p>\n</div>\n</div>', '2022-07-13 13:55:09', '2022-07-13 14:00:46'),
(488, 'courses', 'title', 10, 'ar', 'برمحة لغة البايثون', '2022-07-16 22:41:48', '2022-07-16 22:41:48'),
(489, 'courses', 'learn', 10, 'ar', '<p>محاور الورشة:</p>\n<p>١-مفهوم البرمجة بشكل عام<br />٢-أهمية البرمجة ولغاتها المختلفة<br />٣-تطبيقات لغة بايثون<br />٤-أوامر لغة بايثون<br />٥-أساسيات ومبادئ برمجة بايثون للمبتدئين<br />٦-الجمل الشرطية في بايثون<br />٧-هيكلية برنامج مكتوب بلغة بايثون باستخدام الشرط والتكرار<br />٨-كيفية كتابة برنامج بلغة بايثون<br />٩-الهيكلية باستخدام الدوال والبرمجة بالكينونية</p>\n<p>&nbsp;</p>', '2022-07-16 22:41:48', '2022-07-16 22:41:48'),
(490, 'courses', 'title', 11, 'ar', 'مدخل إلى علوم البيانات 1', '2022-07-16 22:50:55', '2022-07-16 22:50:55'),
(491, 'courses', 'learn', 11, 'ar', '<p><strong>الفئة المستهدفة: </strong></p>\n<ul>\n<li>الفئات العمرية من (6-9) سنوات</li>\n<li>المهتمين بالتعرف على أساسيات علوم البيانات</li>\n</ul>\n<p><strong>نبذة عن الدورة:</strong></p>\n<p>سيتعرف في هذا الدرس عن علم البيانات و طرق مختلفة في جمع البيانات وطرق تمثيلها كما سيتعرف على مقايسس النزعة المركزية في وصف البيانات.</p>\n<p><strong>أهداف:</strong></p>\n<ul>\n<li>غرس الطرق المختلفة والمتعددة في التعليم التي تسعى إلى تحقيق التعليم الذاتي, والتعليم المستمر.</li>\n<li>توطيد العديد من المهارات الذهنية للمشاركين, واتاحة الفرصة لاكتشاف مهاراتهم في هذا المجال.</li>\n<li>اتاحة الفرصة للمشاركين في رسم خطط مستقبلية مزهرة في قادم مسيرتهم التعليمية.</li>\n</ul>\n<p><strong>مخرجات الدورة:</strong></p>\n<ul>\n<li>اكتساب المهارات الذهنية في مجال الرياضيات والإحصاء بطريقة إبداعية ملفته.</li>\n<li>كسب الثقة بالنفس والتفكير البنّاء.</li>\n<li>تكوين شخصية اجتماعية, تميل للاندماج مع مختلف الشخصيات</li>\n</ul>\n<p><strong>متطلب الدورة:</strong></p>\n<p>لايوجد</p>\n<p><strong>توصيات لمزيد من الورش:</strong></p>\n<p>الذكاء الإصطناعي</p>\n<p>&nbsp;</p>', '2022-07-16 22:50:55', '2022-07-16 22:50:55'),
(492, 'courses', 'title', 12, 'ar', 'مدخل إلى علوم البيانات 2', '2022-07-16 23:00:28', '2022-07-16 23:00:28'),
(493, 'courses', 'learn', 12, 'ar', '<p class=\"stm_lms_course__content\" style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">الفئة المستهدفة:&nbsp;</p>\n<p style=\"text-align: right;\">الفئات العمرية من (10-13) سنوات</p>\n<p style=\"text-align: right;\">المهتمين بالتعرف على أساسيات علوم البيانات</p>\n<p style=\"text-align: right;\">نبذة عن الدورة:</p>\n<p style=\"text-align: right;\">سيتعرف في هذا الدرس عن علم البيانات و طرق مختلفة في جمع البيانات وطرق تمثيلها كما سيتعرف على مقايسس النزعة المركزية في وصف البيانات.</p>\n<p style=\"text-align: right;\">أهداف:</p>\n<p style=\"text-align: right;\">غرس الطرق المختلفة والمتعددة في التعليم التي تسعى إلى تحقيق التعليم الذاتي, والتعليم المستمر.</p>\n<p style=\"text-align: right;\">توطيد العديد من المهارات الذهنية للمشاركين, واتاحة الفرصة لاكتشاف مهاراتهم في هذا المجال.</p>\n<p style=\"text-align: right;\">اتاحة الفرصة للمشاركين في رسم خطط مستقبلية مزهرة في قادم مسيرتهم التعليمية.</p>\n<p style=\"text-align: right;\">مخرجات الدورة:</p>\n<p style=\"text-align: right;\">اكتساب المهارات الذهنية في مجال الرياضيات والإحصاء بطريقة إبداعية ملفته.</p>\n<p style=\"text-align: right;\">كسب الثقة بالنفس والتفكير البنّاء.</p>\n<p style=\"text-align: right;\">تكوين شخصية اجتماعية, تميل للاندماج مع مختلف الشخصيات.</p>\n<p style=\"text-align: right;\">متطلب الدورة:</p>\n<p style=\"text-align: right;\">لايوجد</p>\n<p style=\"text-align: right;\">توصيات لمزيد من الورش:</p>\n<p style=\"text-align: right;\">الذكاء الإصطناعي.</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p style=\"text-align: right;\">&nbsp;</p>', '2022-07-16 23:00:28', '2022-07-16 23:00:28'),
(494, 'courses', 'title', 13, 'ar', 'مدخل الى علوم البيانات 3', '2022-07-16 23:07:52', '2022-07-16 23:07:52'),
(495, 'courses', 'learn', 13, 'ar', '<div class=\"stm_lms_course__content\" style=\"text-align: right;\">\n<p><strong>الفئة المستهدفة:</strong></p>\n<p>الفئات العمرية من (14-17) سنة</p>\n<p>المهتمين بالتعرف على أساسيات علوم البيانات</p>\n<p><strong>نبذة عن الدورة:</strong></p>\n<p>سيتعرف في هذا الدرس عن علم البيانات و طرق مختلفة في جمع البيانات وطرق تمثيلها كما سيتعرف على مقايسس النزعة المركزية في وصف البيانات.</p>\n<p><strong>أهداف:</strong></p>\n<p>غرس الطرق المختلفة والمتعددة في التعليم التي تسعى إلى تحقيق التعليم الذاتي, والتعليم المستمر.</p>\n<p>توطيد العديد من المهارات الذهنية للمشاركين, واتاحة الفرصة لاكتشاف مهاراتهم في هذا المجال.</p>\n<p>اتاحة الفرصة للمشاركين في رسم خطط مستقبلية مزهرة في قادم مسيرتهم التعليمية.</p>\n<p><strong>مخرجات الدورة:</strong></p>\n<p>اكتساب المهارات الذهنية في مجال الرياضيات والإحصاء بطريقة إبداعية ملفته.</p>\n<p>كسب الثقة بالنفس والتفكير البنّاء.</p>\n<p>تكوين شخصية اجتماعية, تميل للاندماج مع مختلف الشخصيات.</p>\n<p>كسب مهارات المستقبل.</p>\n<p><strong>متطلب الدورة:</strong></p>\n<p>لايوجد</p>\n<p><strong>توصيات لمزيد من الورش:</strong></p>\n<p>الذكاء الإصطناعي.</p>\n</div>\n<p>&nbsp;</p>', '2022-07-16 23:07:52', '2022-07-16 23:07:52'),
(496, 'courses', 'title', 14, 'ar', 'سكراتش', '2022-07-16 23:22:50', '2022-07-16 23:22:50'),
(497, 'courses', 'learn', 14, 'ar', '<div class=\"stm_lms_course__content\" style=\"text-align: right;\">\n<p><strong>الفئة المستهدفة:</strong></p>\n<p>17-6 سنة</p>\n<p><strong>نبذة عن الدورة:</strong></p>\n<p>يعد برنامج سكراتش أحد أشهر برامج البرمجة والمعدّة لتعليم أساسيات البرمجة للصغار بطريقة ممتعة وسهلة.يتعرّف المشتركون في هذا البرنامج على برنامج سكراتش، أساسيّات تعلّمه وبعض تطبيقات الألعاب في مجال علم البيانات، كـ لعبة البيانات النوعية والعددية ولعبتي جمع التفاح والكرات. وأخيرًا، يتطرقون لموضوع الاحتمالات من خلال برنامج سكراتش من أجل العمل على المشروع النهائي للبرنامج.</p>\n<p><strong>أهداف:</strong></p>\n<p>اكتساب مهارات البرمجة</p>\n<p>دمج علم الحاسب الآلي بالعب</p>\n<p><strong>مخرجات الدورة:</strong></p>\n<p>كسب الثقة بالنفس والتفكير البنّاء.</p>\n<p>مهارات في البرمجة والتعل مع بامج الحاسب الآلي.</p>\n<p>مهارات المستقبل في مجال الثورة الصناعية الرابعة.</p>\n<p><strong>متطلب الدورة:</strong></p>\n<p>مدخل في علوم البيانات.</p>\n<p><strong>توصيات لمزيد من الورش:</strong></p>\n<p>الذكاء الإصطناعي -تعلم الآلة &ndash; المدينة الذكية</p>\n</div>\n<p>&nbsp;</p>', '2022-07-16 23:22:50', '2022-07-16 23:22:50'),
(498, 'courses', 'title', 15, 'ar', 'البايثون', '2022-07-16 23:58:15', '2022-07-16 23:58:15'),
(499, 'courses', 'learn', 15, 'ar', '<div class=\"stm_lms_course__content\" style=\"text-align: right;\">\n<p><strong>الفئة المستهدفة:</strong></p>\n<p>الناشئة (علوم البيانات للصِغار).</p>\n<p>المهنيين المهتمين في علوم البيانات.</p>\n<p><strong>نبذة عن الدورة:</strong></p>\n<p>تعد البايثون أحد أشهر لغات البرمجة في العالم. حيث تعدّ لغة سهلة، قابلة للتعلّم والتوّسع. حيث سيتعلم المشاركين في هذه الدورة أساسيات تعلم البرمجة باستخدام لغة البايثون، ويتطرّقون إلى استخدام مكتبتي بانداس وماتلوتليب. وفي الأخير، سيقوم المشتركون بالعمل على مشروع باستخدام لغة البايثون.</p>\n<p><strong>أهداف:</strong></p>\n<p>اكتساب مهارات الحاسب الآلي</p>\n<p>تعلم البرمجة كلغة مستقبلية</p>\n<p><strong>مخرجات الدورة:</strong></p>\n<p>كسب الثقة بالنفس والتفكير البنّاء.</p>\n<p>مهارات في البرمجة والتعامل مع برامج الحاسب الآلي.</p>\n<p>مهارات المستقبل في مجال الثورة الصناعية الرابعة.</p>\n<p><strong>متطلب الدورة:</strong></p>\n<p>مدخل في علوم البيانات -سكراتش</p>\n<p><strong>توصيات لمزيد من الورش:</strong></p>\n<p>الذكاء الإصطناعي -تعلم الآلة &ndash; المدينة الذكية</p>\n</div>\n<p>&nbsp;</p>', '2022-07-16 23:58:15', '2022-07-16 23:58:15'),
(500, 'courses', 'title', 16, 'ar', 'ورشة تعلّم الآلة (المستوى الأول)', '2022-07-17 00:00:59', '2022-07-17 00:00:59'),
(501, 'courses', 'learn', 16, 'ar', '<div class=\"stm_lms_course__content\">\n<p><strong>الفئة المستهدفة:</strong></p>\n<p>(10-13) سنة.</p>\n<p><strong>نبذة عن الدورة:</strong></p>\n<p>تعلم الآلة هو جعل الآلات تبرمج نفسها لأداء المهام دون برمجتها بشكل مباشر، ولأن تعلم الآلة هو أحدث مفاهيم الثورة الصناعية الرابعة والذكاء الاصطناعي؛ تم إعداد منهج تعلم الآلة &ldquo;المستوى الأول&rdquo; بما يتناسب مع الفئة العمرية حيث يحتوي هذا المنهج على مفهوم تعلم الآلة، والفرق بين البرمجة التقليدية وتعلم الآلة، كما يوضح أهمية تعلم الآلة وبعضًا من تطبيقاتها، ومفهوم تصنيف الصور في تعلم الآلة، وأيضًا تطبيقات على مفاهيم تعلم الآلة باستخدام برنامج (Scratch).</p>\n<p><strong>أهداف:</strong></p>\n<ul>\n<li>التعريف بمجالات الثورة الصناعية الرابعة</li>\n<li>تأهيل الناشئة بمهارات الذكاء الاصطناعي وتطبيقاته</li>\n<li>اكتساب مهارات برمجية كلغة مستقبلية</li>\n</ul>\n<p><strong>مخرجات الدورة:</strong></p>\n<ul>\n<li>كسب الثقة بالنفس والتفكير البنّاء.</li>\n<li>مهارات المستقبل في مجال الثورة الصناعية الرابعة.</li>\n</ul>\n<p><strong>متطلب الدورة:</strong></p>\n<p>سكراتش</p>\n<p><strong>توصيات لمزيد من الورش:</strong></p>\n<p>الذكاء الإصطناعي &ndash; المدينة الذكية</p>\n</div>\n<p>&nbsp;</p>', '2022-07-17 00:00:59', '2022-07-17 00:00:59'),
(502, 'courses', 'title', 17, 'ar', 'ورشة تعلّم الآلة (المستوى الثاني)', '2022-07-17 00:07:11', '2022-07-17 00:07:11'),
(503, 'courses', 'learn', 17, 'ar', '<div class=\"stm_lms_course__content\">\n<p><strong>الفئة المستهدفة:</strong></p>\n<p>14-17 سنة</p>\n<p><strong>نبذة عن الدورة:</strong></p>\n<p>تعلم الآلة هو جعل الآلات تبرمج نفسها لأداء المهام دون برمجتها بشكل مباشر، ولأن تعلم الآلة هو أحدث مفاهيم الثورة الصناعية الرابعة والذكاء الاصطناعي؛ تم إعداد منهج تعلم الآلة &ldquo;المستوى الأول&rdquo; بما يتناسب مع الفئة العمرية حيث يحتوي هذا المنهج على مفهوم تعلم الآلة، والفرق بين البرمجة التقليدية وتعلم الآلة، كما يوضح أهمية تعلم الآلة وبعضًا من تطبيقاتها، ومفهوم تصنيف الصور في تعلم الآلة، وأيضًا تطبيقات على مفاهيم تعلم الآلة باستخدام برنامج (Scratch).</p>\n<p><strong>أهداف:</strong></p>\n<ul>\n<li>التعريف بمجالات الثورة الصناعية الرابعة</li>\n<li>تأهيل الناشئة بمهارات الذكاء الاصطناعي وتطبيقاته</li>\n<li>اكتساب مهارات برمجية كلغة مستقبلية</li>\n</ul>\n<p><strong>مخرجات الدورة:</strong></p>\n<ul>\n<li>كسب الثقة بالنفس والتفكير البنّاء.</li>\n<li>مهارات المستقبل في مجال الثورة الصناعية الرابعة.</li>\n</ul>\n<p><strong>متطلب الدورة:</strong></p>\n<p>سكراتش</p>\n<p><strong>توصيات لمزيد من الورش:</strong></p>\n<p>الذكاء الإصطناعي &ndash; المدينة الذكية.</p>\n</div>\n<p>&nbsp;</p>', '2022-07-17 00:07:11', '2022-07-17 00:07:11'),
(504, 'courses', 'title', 18, 'ar', 'ورشة الذكاء الاصطناعي (المستوى الأول)', '2022-07-17 00:15:52', '2022-07-17 00:15:52'),
(505, 'courses', 'learn', 18, 'ar', '<div class=\"stm_lms_course__content\" style=\"text-align: right;\">\n<p><strong>الفئة المستهدفة:</strong></p>\n<p>الفئة العمرية (10-13) سنة</p>\n<p><strong>نبذة عن الدورة:</strong></p>\n<p>يحتوي هذا المنهج على مفهوم وتطبيقات الذكاء الاصطناعي، وأهداف الذكاء الاصطناعي و أهميته، وعلى الخوارزميات و تعلم الآلة والتعلّم العميق والذكاء الاصطناعي وأخيراً على تطبيقات الذكاء الاصطناعي باستخدام برنامج (Thunklable).</p>\n<p><strong>أهداف:</strong></p>\n<p>التعريف بمجالات الثورة الصناعية الرابعة</p>\n<p>تأهيل الناشئة بمهارات الذكاء الاصطناعي وتطبيقاته</p>\n<p><strong>مخرجات الدورة:</strong></p>\n<p>كسب الثقة بالنفس والتفكير البنّاء.</p>\n<p>تكوين شخصية اجتماعية, تميل للاندماج مع مختلف الشخصيات</p>\n<p>مهارات المستقبل في مجال الثورة الصناعية الرابعة</p>\n<p><strong>متطلب الدورة:</strong></p>\n<p>مدخل الى علوم البيانات 2</p>\n<p><strong>توصيات لمزيد من الورش:</strong></p>\n<p>تعلم الآلة &ndash; المدينة الذكية</p>\n</div>\n<p>&nbsp;</p>', '2022-07-17 00:15:52', '2022-07-17 00:15:52'),
(506, 'courses', 'title', 19, 'ar', 'ورشة الذكاء الاصطناعي (المستوى الثاني)', '2022-07-17 00:22:38', '2022-07-17 00:22:38'),
(507, 'courses', 'learn', 19, 'ar', '<div class=\"stm_lms_course__content\" style=\"text-align: right;\">\n<p><strong>الفئة المستهدفة:</strong></p>\n<p>الفئة العمرية (14-17) سنة</p>\n<p><strong>نبذة عن الدورة:</strong></p>\n<p>يحتوي هذا المنهج على مفهوم وتطبيقات الذكاء الاصطناعي، وأهداف الذكاء الاصطناعي و أهميته، وعلى الخوارزميات و تعلم الآلة والتعلّم العميق والذكاء الاصطناعي وأخيراً على تطبيقات الذكاء الاصطناعي باستخدام برنامج (Thunklable).</p>\n<p><strong>أهداف:</strong></p>\n<p>التعريف بمجالات الثورة الصناعية الرابعة</p>\n<p>تأهيل الناشئة بمهارات الذكاء الاصطناعي وتطبيقاته</p>\n<p><strong>مخرجات الدورة:</strong></p>\n<p>كسب الثقة بالنفس والتفكير البنّاء.</p>\n<p>تكوين شخصية اجتماعية, تميل للاندماج مع مختلف الشخصيات</p>\n<p>مهارات المستقبل في مجال الثورة الصناعية الرابعة</p>\n<p><strong>متطلب الدورة:</strong></p>\n<p>مدخل الى علوم البيانات 3</p>\n<p><strong>توصيات لمزيد من الورش:</strong></p>\n<p>تعلم الآلة &ndash; المدينة الذكية</p>\n</div>\n<p>&nbsp;</p>', '2022-07-17 00:22:38', '2022-07-17 00:22:38'),
(508, 'courses', 'title', 20, 'ar', 'القصص والخيال العلمي', '2022-07-17 00:25:18', '2022-07-17 00:25:18'),
(509, 'courses', 'learn', 20, 'ar', '<div class=\"stm_lms_course__content\" style=\"text-align: right;\">\n<p><strong>الفئة المستهدفة:</strong></p>\n<p>6 &ndash; 10 سنوات</p>\n<p><strong>نبذة عن الدرس:</strong></p>\n<p>إن التخيل عند الطفل يشغل حيزاً كبيراً من نشاطه العقلي منذ السنوات الأولى من عمره، وهو يتخيل وقائع وحوادث، ويقيم الكثير من أفكاره وألعابه وآماله على الخيال ، ففي هذه الورشة يتعلم الطفل آليات كتابة القصص وما هي أدوات كتابة القصص وكيف يسردها كحكاية لأصحابه الأطفال.</p>\n<p><strong>أهداف:</strong></p>\n<p>تعزيز القدرة على التركيز والاستماع والخيال</p>\n<p>تطوير المهارات اللغوية لدى الطفل</p>\n<p>شجيع الطفل لتحليل القصة واستنتاج العبر والدروس والرسائل الإيجابية المبطنة</p>\n<p>تدريب المشاركين على أسس كتابة القصة الموجهة للطفل ضمن مراحل منهجية، تتضمن: الفكرة، والمسودة، والمراجعة، والتحرير.</p>\n<p><strong>مخرجات الدورة:</strong></p>\n<p>يكسب المشارك مهارات في قراءة القصة وسردها</p>\n<p>القدرة عل التخيل وكتابة القصة</p>\n<p><strong>متطلب الدرس:</strong></p>\n<p>لا يوجد</p>\n<p><strong>توصيات لمزيد من الورش:</strong></p>\n<p>البيانات المفتوحة</p>\n</div>\n<p>&nbsp;</p>', '2022-07-17 00:25:18', '2022-07-17 00:25:18'),
(510, 'courses', 'title', 21, 'ar', 'ورشة XO', '2022-07-17 00:43:34', '2022-07-17 00:43:34'),
(511, 'courses', 'learn', 21, 'ar', '<div class=\"col-md-9\" style=\"text-align: right;\">\n<div class=\"tab-content\">\n<div id=\"description\" class=\"tab-pane active \" role=\"tabpanel\">\n<div class=\"stm_lms_course__content\">\n<p><strong>محاور الورشة:&nbsp;</strong></p>\n<p>طرق مختلفة لإيجاد نواتج جدول الضرب</p>\n<p style=\"text-align: right;\">إستراتيجية XO</p>\n<p>العب مع جدول الضرب</p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"col-md-3\" style=\"text-align: right;\">\n<div class=\"stm-lms-course__sidebar\">\n<div class=\"stm-lms-dynamic_sidebar\">\n<div id=\"stm_lms_popular_courses-3\" class=\"widget widget_stm_lms_popular_courses\">\n<div class=\"meta\">\n<div class=\"expert\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>', '2022-07-17 00:43:34', '2022-07-17 00:43:34'),
(512, 'courses', 'title', 22, 'ar', 'تعلم أساسيات الشطرنج', '2022-07-17 00:55:14', '2022-07-17 00:55:14'),
(513, 'courses', 'learn', 22, 'ar', '<p style=\"text-align: right;\"><strong>الفئة المستهدفة:</strong></p>\n<ul style=\"text-align: right;\">\n<li>من ٧ الى ١٢ سنة</li>\n</ul>\n<p style=\"text-align: right;\"><strong>نبذة عن الورشة:&nbsp;</strong></p>\n<p style=\"text-align: right;\">في مواجهة للألعاب الإلكترونية ووسائل التواصل الاجتماعي وضعف انتباه الأطفال يجد الكثير من الآباء وسيلة رائعة لتعليم أبنائهم القدرة على التركيز والتخطيط والمنافسة العادلة، فالشطرنج لعبة متعدّدة الفوائد المعرفية والعقلية، وتُكون مع الأطفال خاصة طريقة لتنمية تفكيرهم المنطقي والاستراتيجي.</p>\n<p style=\"text-align: right;\"><strong>أهداف:</strong></p>\n<p style=\"text-align: right;\">يعلم الطفل الصبر وعدم الاندفاع واستخدام المنطق قبل اتخاذ القرار</p>\n<p style=\"text-align: right;\">يدعم قدرات الأطفال على التركيز بعناية، فمهما كانت قدرات الطفل لن يمكنه اللعب إلا بالتركيز على كل حركة</p>\n<p style=\"text-align: right;\">يُحسّن قدرات الذاكرة بمعرفة قواعد تحرك كل قطعة</p>\n<p style=\"text-align: right;\">يُنمّي قدرة الطفل على حل المشكلات والتخطيط وبُعد النظر</p>\n<p style=\"text-align: right;\"><strong>مخرجات الورشة:</strong></p>\n<p style=\"text-align: right;\">سيكسب الطفل مهاراة تنظيم الوقت لان الشطرنج عبارة عن حرب مؤقتة</p>\n<p style=\"text-align: right;\">سيسعى الى تطوير نفسه في اللعبة</p>\n<p style=\"text-align: right;\">يكون الطالب قادر على التعامل مع الفشل</p>\n<p style=\"text-align: right;\">يملك الطالب القدرة على تحديد الأهداف</p>\n<p style=\"text-align: right;\">يملك الطالب القدرة على ربط التعلم بالحياة</p>\n<p style=\"text-align: right;\"><strong>متطلب الدرس:</strong></p>\n<p style=\"text-align: right;\">رقعة الشطرنة</p>\n<p style=\"text-align: right;\"><strong>توصيات لمزيد من الورش:</strong></p>\n<p style=\"text-align: right;\">الدورة المتقدمة من الشطرنج</p>\n<p style=\"text-align: right;\">&nbsp;</p>', '2022-07-17 00:55:14', '2022-07-17 00:55:14'),
(514, 'courses', 'title', 23, 'ar', 'الأعمال اليدوية الفنية', '2022-07-17 00:57:10', '2022-07-17 00:57:10'),
(515, 'courses', 'learn', 23, 'ar', '<div class=\"stm_lms_course__content\" style=\"text-align: right;\">\n<p><strong>الفئة المستهدفة:</strong></p>\n<p>من 7 سنوات وحتى 16 سنة</p>\n<p><strong>نبذة عن الدرس:</strong></p>\n<p>حيث ان في هذه الورشة يعمل الأطفال على إطلاق العنان في مجال الأشغال اليدوية لما تحمله من مزايا مثل تحسن لغتهم ومعارفهم وتطورهم الاجتماعي .</p>\n<p><strong>أهداف:</strong></p>\n<p>تساعد الطفل على التجربة وإيجاد بدائل و أفكار جديدة و تطلق العنان لمخيلاته .</p>\n<p>تعطي الطفل ثقة بنفسه عندما يرى إنجازاته و أعماله الصغيرة نالت إعجاب الآخرين.</p>\n<p>تعلم التفاعل الاجتماعي.</p>\n<p><strong>مخرجات الدورة:</strong></p>\n<p>أعمال فنية ابداعية من صنع الطالب</p>\n<p><strong>متطلب الدرس:</strong></p>\n<p>لايوجد</p>\n<p><strong>توصيات لمزيد من الورش:</strong></p>\n</div>\n<p>&nbsp;</p>', '2022-07-17 00:57:10', '2022-07-17 00:57:10'),
(516, 'courses', 'title', 24, 'ar', 'ورشة الذكاء الاصطناعي', '2022-07-17 01:06:52', '2022-07-17 01:06:52'),
(517, 'courses', 'learn', 24, 'ar', '<p style=\"text-align: right;\"><strong>الفئة المستهدفة:</strong></p>\n<p style=\"text-align: right;\">10-17 سنة</p>\n<p style=\"text-align: right;\"><strong>نبذة عن الدورة:</strong></p>\n<p style=\"text-align: right;\">يعتبر الذكاء الإصطناعي من أهم تطبيقات الثورة الصناعية الرابعة في عصرنا الحالي. في هذه الورشة سنسلط الضوء عن أهم أنواع الذكاء الإصطناعي وأم التطبيقات والبرامج الذكاء الإصطناعي في حياتنا.</p>\n<p style=\"text-align: right;\"><strong>أهداف:</strong></p>\n<p style=\"text-align: right;\">التعريف بمجالات الثورة الصناعية الرابعة</p>\n<p style=\"text-align: right;\">تأهيل الناشئة بمهارات الذكاء الاصطناعي وتطبيقاته</p>\n<p style=\"text-align: right;\"><strong>مخرجات الدورة:</strong></p>\n<p style=\"text-align: right;\">كسب الثقة بالنفس والتفكير البنّاء.</p>\n<p style=\"text-align: right;\">كسب المعرفة في تعلم مهارات المستقبل.</p>\n<p style=\"text-align: right;\"><strong>متطلب الدورة:</strong></p>\n<p style=\"text-align: right;\">لايوجد</p>\n<p style=\"text-align: right;\"><strong>توصيات لمزيد من الورش:</strong></p>\n<p style=\"text-align: right;\">تعلم الآلة &ndash; المدينة الذكية</p>\n<p style=\"text-align: right;\">&nbsp;</p>', '2022-07-17 01:06:52', '2022-07-17 01:06:52'),
(518, 'courses', 'title', 25, 'ar', 'رحلة البيانات والفكر', '2022-07-17 01:09:20', '2022-07-17 01:09:20'),
(519, 'courses', 'learn', 25, 'ar', '<div class=\"stm_lms_course__content\" style=\"text-align: right;\">\n<p><strong>الفئة المستهدفة:</strong></p>\n<p>الفئة الأولى من عمر 7 سنوات حتى 9 سنوات</p>\n<p>الفئة الثانية من عمر 10 سنوات حتى 16 سنة</p>\n<p><strong>نبذة عن الدرس:</strong></p>\n<p>تأتي فكرة مخيم تعليم وترفية للتوعية بأهمية البيانات ودورها في تنمية المهارات الذهنية والمعرفية لجيل المستقبل القادم. كما يهدف المخيم إلى دمج مهارات المستقبل في جوانب متنوعة تدمج المتعة بالتعليم. المخيم عبارة عن سلسلة من الورش التدريبية، يمر بها المشترك وفق برنامج زمني واضح لكل فئة عمرية، وتحت إشراف متخصصين في كل مجال. يسعى المخيم إلى تطوير واستثمار المهارات المنجزة من المشاركين وتطويرها كمنتجات تنضم إلى منصة أكاديمية البيانات.</p>\n<p><strong>أهداف:</strong></p>\n<p>التوعية بأهمية البيانات.</p>\n<p>اكتساب مهارات ذهنية في مجال التفكير البنّاء.</p>\n<p>تنمية مهارة الخيال العلمي والتفكير المنطقي.</p>\n<p>روح العمل الجماعي.</p>\n<p>تنمية مهارة القيادة واتخاذ القرار.</p>\n<p><strong>مخرجات الدورة:</strong></p>\n<p>مهارات معرفية متنوعة تساعد المشارك على التفكير المنطقي، وحل المشكلات. يتم رفع جميع أعمال وإنجازات المشاركين على منصة أكاديمية البيانات. يمكن تطوير الأعمال وتحويلها إلى منتجات (الرسومات، القصص، الدمى)، وعرضها للبيع عن طريق متجر الأكاديمية.</p>\n<p><strong>متطلب الدرس:</strong></p>\n<p>لايوجد</p>\n<p><strong>توصيات لمزيد من الورش:</strong></p>\n<p>ورشة الذكاء الإصطناعي</p>\n</div>\n<p>&nbsp;</p>', '2022-07-17 01:09:20', '2022-07-17 01:09:20'),
(520, 'courses', 'title', 26, 'ar', 'يوم البيانات المفتوحة', '2022-07-17 01:18:10', '2022-07-17 01:18:10');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(521, 'courses', 'learn', 26, 'ar', '<p style=\"text-align: right;\"><strong>الفئة المستهدفة:</strong></p>\n<p style=\"text-align: right;\">الأطفال (8- 12) سنة.</p>\n<p style=\"text-align: right;\"><strong>نبذة عن الدرس:</strong></p>\n<p style=\"text-align: right;\"><strong>أهداف:</strong></p>\n<p style=\"text-align: right;\">توعية الطفل بالحفاظ على البيئة بطريقة قصصيه تساعده على استيعاب أهمية الحرص عليها.</p>\n<p style=\"text-align: right;\">القيام بقراءة تحليلية لنماذج قصصية بيئية حاصلة على جوائز في مسابقات أدب الطفل والناشئة على المستوى العربي والإقليمي للتعرّف على أبرز السمات والخصائص المتعلقة بها.</p>\n<p style=\"text-align: right;\">تدريب المشاركين على أسس كتابة القصة الموجهة للطفل ضمن مراحل منهجية، تتضمن: الفكرة، والمسودة، والمراجعة، والتحرير مع إعطاء التغذية الراجعة بعد إنهاء كل مرحلة.</p>\n<p style=\"text-align: right;\"><strong>مخرجات الدورة:</strong></p>\n<ul style=\"text-align: right;\">\n<li>الخروج إنتاجات قصصيّة من تأليف المشاركين تنطبق عليها الشروط العامة للمؤلّف الموجه للطفل، ومراعية لتوجّهات المؤسسة الحاضنة للمشروع.</li>\n</ul>\n<p style=\"text-align: right;\"><strong>متطلب الدرس:</strong></p>\n<p style=\"text-align: right;\">لايوجد</p>\n<p style=\"text-align: right;\"><strong>توصيات لمزيد من الورش:</strong></p>\n<p style=\"text-align: right;\">&nbsp;</p>', '2022-07-17 01:18:10', '2022-07-17 01:18:10'),
(522, 'courses', 'title', 27, 'ar', 'نزهة في سوق البيانات', '2022-07-17 01:21:15', '2022-07-17 01:21:15'),
(523, 'courses', 'learn', 27, 'ar', '<div class=\"stm_lms_course__content\" style=\"text-align: right;\">\n<p><strong>الفئة المستهدفة:</strong></p>\n<p>كل فئات العمر</p>\n<p><strong>نبذة عن الدرس:</strong></p>\n<p>نزهة في سوق البيانات تجربة متنوعة من المتعة والتشويق تدمج بين الجانب العلمي والتفاعلي للطفل،محمد طفل ذكي يحب تطوير معارفه، سيذهب في نزهة لسوق البيانات بصحبتكم، ويدرك بعد الجولة في السوق عن اهمية ما حوله وعلاقتها بالبيانات.</p>\n<p><strong>أهداف:</strong></p>\n<p>يهدف إلى غرس مفهوم البيانات، وتعكس اهميته في يوميات حياتنا.</p>\n<p><strong>مخرجات الدورة:</strong></p>\n<p>الخروج إنتاجات قصصيّة من تأليف المشاركين تنطبق عليها الشروط العامة للمؤلّف الموجه للطفل، ومراعية لتوجّهات المؤسسة الحاضنة للمشروع.</p>\n<p><strong>متطلب الدرس:</strong></p>\n<p>لايوجد</p>\n<p><strong>توصيات لمزيد من الورش:</strong></p>\n</div>\n<p>&nbsp;</p>', '2022-07-17 01:21:15', '2022-07-17 01:21:15'),
(524, 'courses', 'title', 28, 'ar', 'بسط على مقام', '2022-07-17 01:39:06', '2022-07-17 01:39:06'),
(525, 'courses', 'learn', 28, 'ar', '<div class=\"stm_lms_course__content\" style=\"text-align: right;\">\n<p><strong>المحاور:&nbsp;</strong></p>\n<p>الكسور المتكافئة</p>\n<p>جمع الكسور وطرحها</p>\n<p>ضرب الكسور وقسمتها</p>\n<p>النسب المئوية</p>\n<p>مسائل تطبيقية في الكسور</p>\n<p>تطبيق برنامج word wall في الورشة</p>\n</div>\n<p>&nbsp;</p>', '2022-07-17 01:39:06', '2022-07-17 01:39:06'),
(526, 'lessons', 'title', 9, 'ar', 'يوم البيانات المفتوحة', '2022-07-18 03:39:34', '2022-07-18 03:39:34'),
(527, 'videos', 'title', 10, 'ar', 'يوم البيانات المفتوحة', '2022-07-18 03:41:20', '2022-07-18 03:41:20'),
(528, 'groups', 'name', 40, 'ar', 'open data day', '2022-07-18 03:45:39', '2022-07-18 03:45:39'),
(529, 'videos', 'description', 10, 'ar', '<p>https://vimeo.com/user117070945/review/523179843/03727be8b8</p>', '2022-07-18 04:09:03', '2022-07-18 04:09:03'),
(530, 'courses', 'title', 29, 'ar', 'new course', '2022-08-21 10:59:10', '2022-08-21 10:59:10'),
(531, 'courses', 'description', 29, 'ar', '<p style=\"text-align: left;\"><strong><em>New</em> </strong></p>', '2022-08-21 10:59:10', '2022-08-21 10:59:10'),
(532, 'courses', 'learn', 29, 'ar', '<p>new learning</p>', '2022-08-21 10:59:10', '2022-08-21 10:59:10'),
(533, 'courses', 'requirements', 29, 'ar', '<p>reqs</p>', '2022-08-21 10:59:10', '2022-08-21 10:59:10'),
(534, 'data_rows', 'display_name', 493, 'ar', 'Course Id', '2022-09-01 04:11:59', '2022-09-01 04:11:59'),
(535, 'data_rows', 'display_name', 494, 'ar', 'courses', '2022-09-01 04:11:59', '2022-09-01 04:11:59'),
(536, 'data_rows', 'display_name', 495, 'ar', 'Course Id', '2022-09-18 00:11:20', '2022-09-18 00:11:20'),
(537, 'courses', 'title', 31, 'ar', 'تقنية المعلومات', '2022-09-29 04:55:43', '2022-09-29 04:55:43'),
(538, 'courses', 'description', 31, 'ar', '<p>سنتعلم اساسيات تقنية المعلومات بشتى أنواعها وبطريقة سهلة وبسيطه</p>', '2022-09-29 04:55:43', '2022-09-29 04:55:43'),
(539, 'videos', 'title', 13, 'ar', 'تقنية المعلومات', '2022-11-24 10:39:38', '2022-11-24 10:39:38'),
(540, 'categories', 'name', 15, 'ar', 'احمد', '2023-03-18 23:01:33', '2023-03-18 23:01:33'),
(541, 'categories', 'slug', 15, 'ar', 'ahmd', '2023-03-18 23:01:33', '2023-03-18 23:01:33'),
(542, 'courses', 'title', 32, 'ar', 'Power BI', '2023-03-28 07:59:02', '2023-03-28 07:59:02'),
(543, 'courses', 'description', 32, 'ar', '<p>klk</p>', '2023-03-28 08:03:07', '2023-03-28 08:03:07'),
(544, 'categories', 'name', 16, 'ar', 'softwire', '2023-04-03 08:11:48', '2023-04-03 08:11:48'),
(545, 'categories', 'slug', 16, 'ar', 'softwire', '2023-04-03 08:11:48', '2023-04-03 08:11:48'),
(546, 'data_rows', 'display_name', 496, 'ar', 'courses', '2023-04-07 08:05:16', '2023-04-07 08:05:16'),
(547, 'data_rows', 'display_name', 497, 'ar', 'groups', '2023-04-07 08:05:16', '2023-04-07 08:05:16'),
(548, 'data_rows', 'display_name', 498, 'ar', 'groups', '2023-04-07 08:15:08', '2023-04-07 08:15:08'),
(549, 'data_rows', 'display_name', 499, 'ar', 'courses', '2023-04-07 08:15:08', '2023-04-07 08:15:08'),
(550, 'lessons', 'title', 13, 'ar', 'تقنية المعلومات', '2023-04-07 08:19:07', '2023-04-07 08:19:07'),
(551, 'data_rows', 'display_name', 500, 'ar', 'lessons', '2023-04-08 06:01:39', '2023-04-08 06:01:39'),
(552, 'videos', 'title', 12, 'ar', 'new session', '2023-04-08 06:32:02', '2023-04-08 06:32:02'),
(553, 'videos', 'description', 12, 'ar', '<p>description</p>', '2023-04-08 06:32:02', '2023-04-08 06:32:02'),
(554, 'lessons', 'title', 14, 'ar', 'flutter basics', '2023-04-08 06:33:08', '2023-04-08 06:33:08'),
(555, 'lessons', 'description', 14, 'ar', '<p>flutter basics</p>', '2023-04-08 06:33:08', '2023-04-08 06:33:08'),
(556, 'data_rows', 'display_name', 501, 'ar', 'Id', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(557, 'data_rows', 'display_name', 502, 'ar', 'Title', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(558, 'data_rows', 'display_name', 503, 'ar', 'Lesson Id', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(559, 'data_rows', 'display_name', 504, 'ar', 'Link', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(560, 'data_rows', 'display_name', 505, 'ar', 'Description', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(561, 'data_rows', 'display_name', 506, 'ar', 'Slug', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(562, 'data_rows', 'display_name', 507, 'ar', 'Created At', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(563, 'data_rows', 'display_name', 508, 'ar', 'Updated At', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(564, 'data_rows', 'display_name', 509, 'ar', 'Deleted At', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(565, 'data_rows', 'display_name', 510, 'ar', 'Group Id', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(566, 'data_rows', 'display_name', 511, 'ar', 'Course Id', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(567, 'data_rows', 'display_name', 512, 'ar', 'courses', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(568, 'data_rows', 'display_name', 513, 'ar', 'groups', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(569, 'data_rows', 'display_name', 514, 'ar', 'lessons', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(570, 'data_types', 'display_name_singular', 64, 'ar', 'Video', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(571, 'data_types', 'display_name_plural', 64, 'ar', 'sessions', '2023-04-08 19:29:13', '2023-04-08 19:29:13'),
(572, 'videos', 'title', 15, 'ar', 'session two', '2023-04-09 04:41:59', '2023-04-09 04:41:59'),
(573, 'videos', 'description', 15, 'ar', '<p>the description</p>\n<p>&nbsp;</p>', '2023-04-09 04:41:59', '2023-04-09 04:41:59'),
(574, 'courses', 'title', 65, 'ar', 'mohamad303030', '2023-08-08 12:15:39', '2023-08-08 12:15:39'),
(575, 'courses', 'description', 65, 'ar', '<p>hhgfhgf</p>', '2023-08-08 12:15:39', '2023-08-08 12:15:39'),
(576, 'courses', 'learn', 65, 'ar', '<p>mjghf</p>', '2023-08-08 12:15:39', '2023-08-08 12:15:39'),
(577, 'courses', 'requirements', 65, 'ar', '<p>hfhfh</p>', '2023-08-08 12:15:39', '2023-08-08 12:15:39'),
(578, 'courses', 'title', 70, 'ar', '2021', '2023-08-17 09:47:37', '2023-08-17 09:47:37'),
(579, 'courses', 'description', 70, 'ar', '<p>ghfggf</p>', '2023-08-17 09:47:37', '2023-08-17 09:47:37'),
(580, 'courses', 'learn', 70, 'ar', '<p>ljlkjlj</p>', '2023-08-17 09:47:37', '2023-08-17 09:47:37'),
(581, 'courses', 'requirements', 70, 'ar', '<p>jkkjkjkh</p>', '2023-08-17 09:47:37', '2023-08-17 09:47:37'),
(582, 'courses', 'title', 71, 'ar', 'iiiii', '2023-08-17 09:52:03', '2023-08-17 09:52:03'),
(583, 'courses', 'description', 71, 'ar', '<p>iiii</p>', '2023-08-17 09:52:03', '2023-08-17 09:52:03'),
(584, 'courses', 'learn', 71, 'ar', '<p>hjjgjjh</p>', '2023-08-17 09:52:03', '2023-08-17 09:52:03'),
(585, 'courses', 'requirements', 71, 'ar', '<p>jgjhgjg</p>', '2023-08-17 09:52:03', '2023-08-17 09:52:03'),
(586, 'data_rows', 'display_name', 523, 'ar', 'Id', '2023-09-19 10:37:06', '2023-09-19 10:37:06'),
(587, 'data_rows', 'display_name', 524, 'ar', 'Title', '2023-09-19 10:37:06', '2023-09-19 10:37:06'),
(588, 'data_rows', 'display_name', 525, 'ar', 'Image', '2023-09-19 10:37:06', '2023-09-19 10:37:06'),
(589, 'data_rows', 'display_name', 526, 'ar', 'Video', '2023-09-19 10:37:07', '2023-09-19 10:37:07'),
(590, 'data_rows', 'display_name', 527, 'ar', 'School', '2023-09-19 10:37:07', '2023-09-19 10:37:07'),
(591, 'data_rows', 'display_name', 528, 'ar', 'Constructor', '2023-09-19 10:37:07', '2023-09-19 10:37:07'),
(592, 'data_rows', 'display_name', 529, 'ar', 'Trainer Id', '2023-09-19 10:37:07', '2023-09-19 10:37:07'),
(593, 'data_rows', 'display_name', 530, 'ar', 'Rating', '2023-09-19 10:37:07', '2023-09-19 10:37:07'),
(594, 'data_rows', 'display_name', 531, 'ar', 'Created At', '2023-09-19 10:37:07', '2023-09-19 10:37:07'),
(595, 'data_rows', 'display_name', 532, 'ar', 'Updated At', '2023-09-19 10:37:07', '2023-09-19 10:37:07'),
(596, 'data_rows', 'display_name', 533, 'ar', 'trainers', '2023-09-19 10:37:07', '2023-09-19 10:37:07'),
(599, 'data_rows', 'display_name', 534, 'ar', 'Id', '2023-09-19 10:47:24', '2023-09-19 10:47:24'),
(600, 'data_rows', 'display_name', 535, 'ar', 'Title', '2023-09-19 10:47:24', '2023-09-19 10:47:24'),
(601, 'data_rows', 'display_name', 536, 'ar', 'Image', '2023-09-19 10:47:24', '2023-09-19 10:47:24'),
(602, 'data_rows', 'display_name', 537, 'ar', 'Video', '2023-09-19 10:47:24', '2023-09-19 10:47:24'),
(603, 'data_rows', 'display_name', 538, 'ar', 'School', '2023-09-19 10:47:24', '2023-09-19 10:47:24'),
(604, 'data_rows', 'display_name', 539, 'ar', 'Constructor', '2023-09-19 10:47:24', '2023-09-19 10:47:24'),
(605, 'data_rows', 'display_name', 540, 'ar', 'Trainer Id', '2023-09-19 10:47:24', '2023-09-19 10:47:24'),
(606, 'data_rows', 'display_name', 541, 'ar', 'Rating', '2023-09-19 10:47:24', '2023-09-19 10:47:24'),
(607, 'data_rows', 'display_name', 542, 'ar', 'Created At', '2023-09-19 10:47:24', '2023-09-19 10:47:24'),
(608, 'data_rows', 'display_name', 543, 'ar', 'Updated At', '2023-09-19 10:47:24', '2023-09-19 10:47:24'),
(609, 'data_rows', 'display_name', 544, 'ar', 'trainers', '2023-09-19 10:47:24', '2023-09-19 10:47:24'),
(610, 'data_types', 'display_name_singular', 66, 'ar', 'Postchilder', '2023-09-19 10:47:24', '2023-09-19 10:47:24'),
(611, 'data_types', 'display_name_plural', 66, 'ar', 'Postchilders', '2023-09-19 10:47:24', '2023-09-19 10:47:24'),
(612, 'data_rows', 'display_name', 545, 'ar', 'Id', '2023-09-19 13:26:00', '2023-09-19 13:26:00'),
(613, 'data_rows', 'display_name', 546, 'ar', 'Post Id', '2023-09-19 13:26:00', '2023-09-19 13:26:00'),
(614, 'data_rows', 'display_name', 547, 'ar', 'Liks', '2023-09-19 13:26:00', '2023-09-19 13:26:00'),
(615, 'data_rows', 'display_name', 548, 'ar', 'Created At', '2023-09-19 13:26:00', '2023-09-19 13:26:00'),
(616, 'data_rows', 'display_name', 549, 'ar', 'Updated At', '2023-09-19 13:26:01', '2023-09-19 13:26:01'),
(617, 'data_rows', 'display_name', 550, 'ar', 'postchilders', '2023-09-19 13:26:01', '2023-09-19 13:26:01'),
(618, 'data_types', 'display_name_singular', 67, 'ar', 'Lik', '2023-09-19 13:26:01', '2023-09-19 13:26:01'),
(619, 'data_types', 'display_name_plural', 67, 'ar', 'Liks', '2023-09-19 13:26:01', '2023-09-19 13:26:01'),
(620, 'data_rows', 'display_name', 551, 'ar', 'Id', '2023-09-19 13:41:11', '2023-09-19 13:41:11'),
(621, 'data_rows', 'display_name', 552, 'ar', 'Title', '2023-09-19 13:41:11', '2023-09-19 13:41:11'),
(622, 'data_rows', 'display_name', 553, 'ar', 'Image', '2023-09-19 13:41:11', '2023-09-19 13:41:11'),
(623, 'data_rows', 'display_name', 554, 'ar', 'Video', '2023-09-19 13:41:11', '2023-09-19 13:41:11'),
(624, 'data_rows', 'display_name', 555, 'ar', 'School', '2023-09-19 13:41:11', '2023-09-19 13:41:11'),
(625, 'data_rows', 'display_name', 556, 'ar', 'Constructor', '2023-09-19 13:41:11', '2023-09-19 13:41:11'),
(626, 'data_rows', 'display_name', 557, 'ar', 'Trainer Id', '2023-09-19 13:41:11', '2023-09-19 13:41:11'),
(627, 'data_rows', 'display_name', 558, 'ar', 'Created At', '2023-09-19 13:41:11', '2023-09-19 13:41:11'),
(628, 'data_rows', 'display_name', 559, 'ar', 'Updated At', '2023-09-19 13:41:11', '2023-09-19 13:41:11'),
(629, 'data_rows', 'display_name', 560, 'ar', 'trainers', '2023-09-19 13:41:11', '2023-09-19 13:41:11'),
(632, 'data_rows', 'display_name', 561, 'ar', 'Id', '2023-09-19 14:25:20', '2023-09-19 14:25:20'),
(633, 'data_rows', 'display_name', 562, 'ar', 'Title', '2023-09-19 14:25:20', '2023-09-19 14:25:20'),
(634, 'data_rows', 'display_name', 563, 'ar', 'Image', '2023-09-19 14:25:20', '2023-09-19 14:25:20'),
(635, 'data_rows', 'display_name', 564, 'ar', 'Video', '2023-09-19 14:25:20', '2023-09-19 14:25:20'),
(636, 'data_rows', 'display_name', 565, 'ar', 'School', '2023-09-19 14:25:20', '2023-09-19 14:25:20'),
(637, 'data_rows', 'display_name', 566, 'ar', 'Constructor', '2023-09-19 14:25:20', '2023-09-19 14:25:20'),
(638, 'data_rows', 'display_name', 567, 'ar', 'Trainer Id', '2023-09-19 14:25:20', '2023-09-19 14:25:20'),
(639, 'data_rows', 'display_name', 568, 'ar', 'Created At', '2023-09-19 14:25:20', '2023-09-19 14:25:20'),
(640, 'data_rows', 'display_name', 569, 'ar', 'Updated At', '2023-09-19 14:25:20', '2023-09-19 14:25:20'),
(641, 'data_rows', 'display_name', 570, 'ar', 'trainers', '2023-09-19 14:25:20', '2023-09-19 14:25:20'),
(642, 'data_types', 'display_name_singular', 70, 'ar', 'Postchildern', '2023-09-19 14:25:20', '2023-09-19 14:25:20'),
(643, 'data_types', 'display_name_plural', 70, 'ar', 'Postchilderns', '2023-09-19 14:25:20', '2023-09-19 14:25:20'),
(644, 'data_rows', 'display_name', 573, 'ar', 'Id', '2023-09-20 10:22:37', '2023-09-20 10:22:37'),
(645, 'data_rows', 'display_name', 574, 'ar', 'Post Id', '2023-09-20 10:22:37', '2023-09-20 10:22:37'),
(646, 'data_rows', 'display_name', 575, 'ar', 'Likes', '2023-09-20 10:22:37', '2023-09-20 10:22:37'),
(647, 'data_rows', 'display_name', 576, 'ar', 'Created At', '2023-09-20 10:22:37', '2023-09-20 10:22:37'),
(648, 'data_rows', 'display_name', 577, 'ar', 'Updated At', '2023-09-20 10:22:37', '2023-09-20 10:22:37'),
(649, 'data_rows', 'display_name', 578, 'ar', 'User Id', '2023-09-20 10:22:37', '2023-09-20 10:22:37'),
(650, 'data_rows', 'display_name', 579, 'ar', 'users', '2023-09-20 10:22:37', '2023-09-20 10:22:37'),
(653, 'data_rows', 'display_name', 580, 'ar', 'Id', '2023-09-20 10:28:28', '2023-09-20 10:28:28'),
(654, 'data_rows', 'display_name', 581, 'ar', 'Post Id', '2023-09-20 10:28:28', '2023-09-20 10:28:28'),
(655, 'data_rows', 'display_name', 582, 'ar', 'Likes', '2023-09-20 10:28:28', '2023-09-20 10:28:28'),
(656, 'data_rows', 'display_name', 583, 'ar', 'Created At', '2023-09-20 10:28:28', '2023-09-20 10:28:28'),
(657, 'data_rows', 'display_name', 584, 'ar', 'Updated At', '2023-09-20 10:28:28', '2023-09-20 10:28:28'),
(658, 'data_rows', 'display_name', 585, 'ar', 'User Id', '2023-09-20 10:28:28', '2023-09-20 10:28:28'),
(659, 'data_rows', 'display_name', 586, 'ar', 'postchilderns', '2023-09-20 10:28:28', '2023-09-20 10:28:28'),
(660, 'data_rows', 'display_name', 587, 'ar', 'users', '2023-09-20 10:28:28', '2023-09-20 10:28:28'),
(661, 'data_types', 'display_name_singular', 73, 'ar', 'Like', '2023-09-20 10:28:28', '2023-09-20 10:28:28'),
(662, 'data_types', 'display_name_plural', 73, 'ar', 'Likes', '2023-09-20 10:28:28', '2023-09-20 10:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `telephone` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `facebook_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `telephone`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `provider`, `provider_id`, `parent_id`, `facebook_id`, `google_id`, `linkedin_id`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\April2020\\XMF1o0TQU1XJBAdB9Aca.PNG', NULL, '2020-04-20 22:00:00', '$2y$10$v9X4NpnyO5mFKVOoNunbsehobu491EsJJzZG7C1O1CiQMNKS90g8C', 'quYMZIX7D1lAeTN5zDFOfSOWhd59zywXfUXRQfMQJDKJ0g2gS72uNhxQHgsN', '{\"locale\":\"en\"}', '2020-04-08 09:32:07', '2020-04-21 13:03:02', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 4, 'Admin', 'admin@lms.com', 'users/February2022/DiLxWT45DGyxEAFNdEfw.png', NULL, NULL, '$2y$10$HksOJvpXMhuS8IGyYDbw3.HEeE2USIRzvbTOzBFiovq8E5VBkMhz.', 'eWacjbPPZBZTxOGKFRY6y0CXIUNmS1r49kvBRHCIqMACyGRUPCgFqQm9Mhjc', '{\"locale\":\"en\"}', '2022-02-16 13:21:39', '2022-11-15 09:40:54', NULL, NULL, 1, NULL, NULL, NULL),
(38, 3, 'trainer', 'trainer@admin.com', 'users/default.png', NULL, NULL, '$2y$10$REZXMJw7QtzYMBljUHjAg.oj1sOxSChoHi0mo59W08iVIAEE6.zkK', 'aUARnRNy3zu5PvxEX9PgroVtRx9JnabKdYa0jajq7fA3UrSWKRwLaKnvH5T7', '{\"locale\":\"en\"}', '2022-04-17 01:06:06', '2022-04-17 01:12:26', NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, 'talal', 'talal@almadinagroup.net', NULL, '', '2023-01-03 13:08:28', '$2y$10$dNpIy6v091.gfkBb2DJTN.R6V.EWh1Cj1smGMpsKp1490.OE/f0Ce', NULL, NULL, '2023-01-03 13:04:35', '2023-01-03 13:08:28', NULL, NULL, NULL, NULL, NULL, NULL),
(89, NULL, 'no-name', 'rooralharthi310@gmail.com', 'https://lh3.googleusercontent.com/a/AEdFTp4xlwfHqx_gI0Ibm1PhbEw7QUAQ2QX3Oz39QGnQ=s96-c', NULL, '2023-01-04 18:15:50', NULL, 'dbK89GJIuLCxA5HgEOx1yLEJrs9JjKFNF7Ugb9CmkkhdGYwXTd8tsczo3TcR', NULL, '2023-01-04 18:15:50', '2023-01-04 18:15:50', 'رحمة الحارثية', '102241295392726544444', NULL, NULL, NULL, NULL),
(90, NULL, 'no-name', 'studentalmabsali@gmail.com', 'https://lh3.googleusercontent.com/a/AEdFTp4nqYwmqclEPSM6NfjRtH9kf8IIX15937xyFnJI=s96-c', NULL, '2023-01-16 17:14:05', NULL, 'WXgt5fe0A4vB6k9GluiM5wQPkVijN6yvSnxVFbEeHY2gWOd4NbNMKU7eakuC', NULL, '2023-01-16 17:14:05', '2023-01-16 17:14:05', 'Student Almabsali', '114670034012633512872', NULL, NULL, NULL, NULL),
(91, NULL, 'Esraa Zahran', 'esraarafat67@gmail.com', NULL, '', '2023-01-17 13:03:50', '$2y$10$L.WC/lCjDR.YAfdrbNX5GObP5m0SLIjkTuIKZhpC7F4CK8sWuktVS', NULL, NULL, '2023-01-17 13:03:09', '2023-01-17 13:03:50', NULL, NULL, NULL, NULL, NULL, NULL),
(92, NULL, 'Mohamed', 'hamo01099389305@gmail.com', 'users/March2023/download (1).jpg', '01021811237', NULL, '$2y$10$cVwC5PUlKFsEGzYmKUvKOOKPLu6Lh1ONSscpYhMfSFOWjjv1zd9S.', NULL, NULL, '2023-03-28 07:51:45', '2023-03-28 07:51:45', NULL, NULL, NULL, NULL, NULL, NULL),
(95, NULL, 'hajdh oud', 'a.com246890@gmail.com', 'users/April2023/ahmed tarek.jpg', '01013237805', '2023-04-11 08:43:13', '$2y$10$hQv/pV/a6RVj3aiZ4yDBIu9tyK5Na6yx3kvptSLjUvKuHo3MXwD22', NULL, NULL, '2023-04-02 06:41:20', '2023-04-02 06:41:20', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 2, '7amoksha', 'ahmed@gamil.com', 'users/default.png', NULL, '2023-04-12 09:30:21', '$2y$10$UBcRDv8qkCR4YepjVaaTWu9d8aJqjnb.t4IPs0NnIXVZOvfmjvY0G', NULL, '{\"locale\":\"en\"}', '2023-04-02 07:28:03', '2023-04-02 07:28:03', NULL, NULL, 89, NULL, NULL, NULL),
(97, 3, 'ayman', 'ayman20@gmail.com', 'users/default.png', NULL, NULL, '$2y$10$FhqERgyA7PwGjYuhHbF5T.Ml1F7FZzogWLRHNODJ.0viUWNp2PKo.', NULL, '{\"locale\":\"en\"}', '2023-05-31 13:13:35', '2023-05-31 13:13:35', NULL, NULL, 38, NULL, NULL, NULL),
(99, 2, 'mohamad', 'ayman@gmail.com', 'users/default.png', NULL, '2023-09-21 09:10:10', '$2y$10$6CGlmfVJEwhNRT2nKwjFH.RQKTUJFs0ObfXlPD95.8/x4tC3KV3bO', NULL, '{\"locale\":\"en\"}', '2023-08-17 11:42:55', '2023-08-17 11:42:55', NULL, NULL, 89, NULL, NULL, NULL),
(106, 2, 'Mohamad Ayman', 'mohamadaymam737@gmail.com', 'users/default.png', NULL, NULL, '$2y$10$XZ4wCMAPeUebKGzq.cpTHOhH3kQV8GXf.DQJImrlHU6JqQPRXMpGa', NULL, NULL, '2023-08-21 15:14:38', '2023-08-21 15:14:38', NULL, NULL, NULL, NULL, '101360565394362037567', NULL),
(107, 2, 'Mohamad Ayman', 'mohamadayman163@yahoo.com', 'users/default.png', NULL, NULL, '$2y$10$CKOpy5ucTodl5EZYk1E6Qe6akoE8GBFPv8Kj2Rt9hOgPrEOxh6hAW', NULL, NULL, '2023-08-21 15:15:29', '2023-08-21 15:15:29', NULL, NULL, NULL, '814231367044089', NULL, NULL),
(108, NULL, 'Ali Yasser Ali Ali', 'alizyasser101@gmail.com', NULL, '', '2023-08-01 12:37:18', '$2y$10$tU1//p9gBT64TXlojonN7eK4xVZ7Lc7QE.C/i3edOKTiFy5JYinWK', NULL, NULL, '2023-08-26 15:28:53', '2023-08-26 15:28:53', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 2, 'Alex Zerone', 'mostafayasser211@gmail.com', 'users/default.png', NULL, NULL, '$2y$10$feMpT25rQKTIr0.yK0RNfe72T0o59V7yg.1LWnFeM6tUfcxkrQCB2', NULL, NULL, '2023-08-29 04:56:21', '2023-08-29 04:56:21', NULL, NULL, NULL, NULL, '101472055567915694540', NULL),
(110, 2, 'Educhains', 'educhains2023@gmail.com', 'users/default.png', NULL, NULL, '$2y$10$fm5HPHOywYpHSXgFelEPh.QvCfmkbHjUKLbeYWX0iAFKa9zOvw2tS', NULL, NULL, '2023-08-29 05:12:53', '2023-08-29 05:12:53', NULL, NULL, NULL, NULL, '101758131029936339300', NULL),
(111, NULL, 'moh', 'mohammedali28@gmail.com', 'users/default.png', '0102336658', NULL, '$2y$10$uR0/PJlIzJ2jOfmpCh9Ed.2kiV7KWp30AI45t.OFdKJCWnLRZEShG', NULL, NULL, '2023-09-01 14:42:09', '2023-09-01 14:42:09', NULL, NULL, NULL, NULL, NULL, NULL),
(112, NULL, 'oooo', 'mohamadayman737@gmail.com', NULL, '', '2023-09-20 17:39:19', '$2y$10$A4o.8e8REBgkWcfIfWfoIOh286CcKxVYdN0x5X8ceQaYI5Ysm10Qq', NULL, NULL, '2023-09-20 14:38:29', '2023-09-20 14:38:29', NULL, NULL, NULL, NULL, NULL, NULL),
(113, NULL, 'aymann', 'mohamadaymann737@gmail.com', NULL, '', '2023-09-21 08:52:50', '$2y$10$z1quZEh57iVBpI/D7NOdteKdHDQBMq1NzJJTEC/jRnXd8Ll84UrXy', NULL, NULL, '2023-09-21 05:52:03', '2023-09-21 05:52:03', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 1),
(37, 4),
(38, 3),
(60, 2),
(81, 2),
(96, 2),
(97, 3),
(99, 2),
(100, 3);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  `link` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `lesson_id`, `link`, `description`, `slug`, `created_at`, `updated_at`, `deleted_at`, `group_id`, `course_id`) VALUES
(1, 'ddddd', 2, '686338657', '<p>ssdd</p>', 'ddddd', '2020-04-16 20:21:00', '2022-04-25 05:24:05', '2022-04-25 05:24:05', 41, NULL),
(4, 'Amet qui non et asp', 3, '654136015', '<p>Exercitationem ex qu.</p>', 'Itaque laboris saepe', '2022-03-15 13:00:00', '2022-04-25 05:16:21', '2022-04-25 05:16:21', 41, NULL),
(5, 'first Session', 5, '566037105?h=21864adc3a', '<p>s</p>', 'first-session', '2022-04-25 05:17:00', '2022-07-18 03:40:16', '2022-07-18 03:40:16', 40, NULL),
(6, 'second Session', 6, '566038118?h=cbfc3c2104', '', 'second-session', '2022-04-25 05:24:41', '2022-07-18 03:40:16', '2022-07-18 03:40:16', 40, NULL),
(7, 'Third Session', 7, '566039584?h=761d590123', '', 'third-session', '2022-04-25 05:25:00', '2022-07-18 03:40:16', '2022-07-18 03:40:16', 40, NULL),
(8, 'Fourth Session', 8, '568842052?h=eb3f17c139', '', 'fourth-session', '2022-04-25 05:25:53', '2022-05-24 15:30:11', '2022-05-24 15:30:11', 40, NULL),
(9, 'Fourth Session', 8, '568842052?h=eb3f17c139', '<p>fourth session</p>', 'fourth-sessions', '2022-05-24 15:30:51', '2022-07-18 03:40:16', '2022-07-18 03:40:16', 40, NULL),
(10, 'Open Data Day', 13, '523179843?h=61b2ed0b5d', '<p>https://vimeo.com/user117070945/review/523179843/03727be8b8</p>', 'ywm-albyanat-almftwhh', '2022-07-18 03:41:00', '2023-04-08 06:29:06', NULL, 40, 32),
(11, ',,', 9, NULL, '', NULL, '2022-08-09 09:04:31', '2022-08-09 09:04:48', '2022-08-09 09:04:48', 40, NULL),
(12, 'new session', 14, 'https://vimeo.com/815842006', '<p>description</p>', 'new-session', '2022-08-21 10:53:00', '2023-04-09 04:42:32', '2023-04-09 04:42:32', 45, 35),
(13, 'تقنية المعلومات', 13, 'j,gjfvk', '<p>nvjvh</p>', 'tqnyh-almalwmat', '2022-09-29 04:59:00', '2022-11-24 10:39:38', NULL, 44, 5),
(14, 'Reprehenderit magna ', 11, 'Sit odio omnis porro', '<p>hfyhfycyh</p>', 'Laboriosam officia', '2023-04-08 19:34:43', '2023-04-08 19:34:43', NULL, 42, 6),
(15, 'session two', 14, '815842006', '<p>the description</p>\n<p>&nbsp;</p>', NULL, '2023-04-09 04:38:00', '2023-04-09 05:06:48', NULL, 45, 35);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(8, 99, 69, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absences`
--
ALTER TABLE `absences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commenter_id_commenter_type_index` (`commenter_id`,`commenter_type`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  ADD KEY `comments_child_id_foreign` (`child_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_favourites`
--
ALTER TABLE `course_favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_ratings`
--
ALTER TABLE `course_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `dymantic_instagram_basic_profiles`
--
ALTER TABLE `dymantic_instagram_basic_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dymantic_instagram_basic_profiles_username_unique` (`username`);

--
-- Indexes for table `dymantic_instagram_feed_tokens`
--
ALTER TABLE `dymantic_instagram_feed_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_records`
--
ALTER TABLE `event_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_times`
--
ALTER TABLE `group_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `introductions`
--
ALTER TABLE `introductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mohamds`
--
ALTER TABLE `mohamds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_services`
--
ALTER TABLE `our_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `postchilderns`
--
ALTER TABLE `postchilderns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postchilders_title_unique` (`title`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_categories`
--
ALTER TABLE `p_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_question_type_id_foreign` (`question_type_id`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_options_question_id_foreign` (`question_id`);

--
-- Indexes for table `question_types`
--
ALTER TABLE `question_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quizzes_slug_unique` (`slug`);

--
-- Indexes for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_attempts_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `quiz_attempt_answers`
--
ALTER TABLE `quiz_attempt_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_attempt_answers_quiz_attempt_id_foreign` (`quiz_attempt_id`),
  ADD KEY `quiz_attempt_answers_quiz_question_id_foreign` (`quiz_question_id`),
  ADD KEY `quiz_attempt_answers_question_option_id_foreign` (`question_option_id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quiz_questions_quiz_id_question_id_unique` (`quiz_id`,`question_id`),
  ADD KEY `quiz_questions_question_id_foreign` (`question_id`);

--
-- Indexes for table `quiz_scores`
--
ALTER TABLE `quiz_scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resolves`
--
ALTER TABLE `resolves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testmonials`
--
ALTER TABLE `testmonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topicables`
--
ALTER TABLE `topicables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topicables_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `topics_slug_unique` (`slug`),
  ADD KEY `topics_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absences`
--
ALTER TABLE `absences`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `course_favourites`
--
ALTER TABLE `course_favourites`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `course_ratings`
--
ALTER TABLE `course_ratings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=588;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `dymantic_instagram_basic_profiles`
--
ALTER TABLE `dymantic_instagram_basic_profiles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dymantic_instagram_feed_tokens`
--
ALTER TABLE `dymantic_instagram_feed_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `event_records`
--
ALTER TABLE `event_records`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `group_times`
--
ALTER TABLE `group_times`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `introductions`
--
ALTER TABLE `introductions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `mohamds`
--
ALTER TABLE `mohamds`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `our_services`
--
ALTER TABLE `our_services`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postchilderns`
--
ALTER TABLE `postchilderns`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `p_categories`
--
ALTER TABLE `p_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `question_types`
--
ALTER TABLE `question_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `quiz_attempt_answers`
--
ALTER TABLE `quiz_attempt_answers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `quiz_scores`
--
ALTER TABLE `quiz_scores`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `resolves`
--
ALTER TABLE `resolves`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testmonials`
--
ALTER TABLE `testmonials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topicables`
--
ALTER TABLE `topicables`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=663;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_question_type_id_foreign` FOREIGN KEY (`question_type_id`) REFERENCES `question_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_options`
--
ALTER TABLE `question_options`
  ADD CONSTRAINT `question_options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD CONSTRAINT `quiz_attempts_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
