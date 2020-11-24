-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2020 at 02:28 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recursivefilesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'C:', 0, '2020-11-23 23:55:38', '2020-11-23 23:55:38'),
(2, 'Documents', 1, '2020-11-23 23:55:38', '2020-11-23 23:55:38'),
(3, 'Images', 2, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(4, 'Image1.jpg', 3, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(5, 'Image2.jpg', 3, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(6, 'Image3.png', 3, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(7, 'Works', 2, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(8, 'Letter.doc', 7, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(9, 'Accountant', 7, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(10, 'Accounting.xls', 9, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(11, 'AnnualReport.xls', 9, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(12, 'Program Files', 1, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(13, 'Skype', 12, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(14, 'Skype.exe', 13, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(15, 'Readme.txt', 13, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(16, 'Mysql', 12, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(17, 'Mysql.exe', 16, '2020-11-23 23:55:39', '2020-11-23 23:55:39'),
(18, 'Mysql.com', 16, '2020-11-23 23:55:39', '2020-11-23 23:55:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
