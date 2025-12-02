-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2025 at 11:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pogopartyth_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('addfriend','acceptfriend','login','online_lasted','declinfriend') NOT NULL,
  `description` text NOT NULL,
  `target` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`id`, `user_id`, `type`, `description`, `target`, `created_at`) VALUES
(1, 121, 'addfriend', 'เพิ่มเพื่อน', '67', '2025-12-02 15:56:30'),
(3, 121, 'addfriend', 'เพิ่มเพื่อน', '76', '2025-12-02 16:03:52'),
(9, 121, 'online_lasted', 'ออนไลน์ล่าสุด', '121', '2025-12-02 16:08:26'),
(10, 121, 'online_lasted', 'ออนไลน์ล่าสุด', '121', '2025-12-02 16:08:40'),
(11, 121, 'addfriend', 'เพิ่มเพื่อน', '124', '2025-12-02 16:11:08'),
(12, 121, 'addfriend', 'เพิ่มเพื่อน', '119', '2025-12-02 16:11:24'),
(13, 121, 'online_lasted', 'ออนไลน์ล่าสุด', '121', '2025-12-02 16:12:31'),
(14, 76, 'online_lasted', 'ออนไลน์ล่าสุด', '76', '2025-12-02 16:24:32'),
(15, 76, 'login', 'ล็อคอินล่าสุดโดย Email', '76', '2025-12-02 16:25:03'),
(16, 121, 'online_lasted', 'ออนไลน์ล่าสุด', '121', '2025-12-02 16:27:17'),
(17, 121, 'online_lasted', 'ออนไลน์ล่าสุด', '121', '2025-12-02 16:30:45'),
(18, 121, 'login', 'ล็อคอินล่าสุดโดย Google', '121', '2025-12-02 16:30:59'),
(20, 121, 'login', 'ล็อคอินล่าสุดโดย Google', '121', '2025-12-02 16:36:06'),
(21, 121, 'online_lasted', 'ออนไลน์ล่าสุด', '121', '2025-12-02 16:36:20'),
(22, 121, 'addfriend', 'เพิ่มเพื่อน', '125', '2025-12-02 16:36:37'),
(23, 82, 'login', 'ล็อคอินล่าสุดโดย Email', '82', '2025-12-02 16:39:56'),
(24, 82, 'addfriend', 'เพิ่มเพื่อน', '101', '2025-12-02 16:40:05'),
(25, 101, 'login', 'ล็อคอินล่าสุดโดย Email', '101', '2025-12-02 16:40:26'),
(26, 101, 'acceptfriend', 'รับเพื่อน', '82', '2025-12-02 16:40:44'),
(27, 101, 'online_lasted', 'ออนไลน์ล่าสุด', '101', '2025-12-02 16:46:12'),
(28, 101, 'addfriend', 'เพิ่มเพื่อน', '125', '2025-12-02 16:47:20'),
(29, 101, 'online_lasted', 'ออนไลน์ล่าสุด', '101', '2025-12-02 16:49:03'),
(30, 101, 'online_lasted', 'ออนไลน์ล่าสุด', '101', '2025-12-02 16:54:55'),
(31, 101, 'online_lasted', 'ออนไลน์ล่าสุด', '101', '2025-12-02 16:58:03'),
(32, 101, 'online_lasted', 'ออนไลน์ล่าสุด', '101', '2025-12-02 16:59:18'),
(33, 101, 'online_lasted', 'ออนไลน์ล่าสุด', '101', '2025-12-02 17:01:26'),
(34, 101, 'online_lasted', 'ออนไลน์ล่าสุด', '101', '2025-12-02 17:02:10'),
(35, 76, 'online_lasted', 'ออนไลน์ล่าสุด', '76', '2025-12-02 17:02:42'),
(36, 126, 'login', 'ล็อคอินล่าสุดโดย Google', '126', '2025-12-02 17:03:25'),
(37, 126, 'addfriend', 'เพิ่มเพื่อน', '101', '2025-12-02 17:06:51'),
(38, 101, 'acceptfriend', 'รับเพื่อน', '126', '2025-12-02 17:07:18'),
(39, 101, 'online_lasted', 'ออนไลน์ล่าสุด', '101', '2025-12-02 17:13:56'),
(40, 101, 'online_lasted', 'ออนไลน์ล่าสุด', '101', '2025-12-02 17:17:32'),
(41, 126, 'online_lasted', 'ออนไลน์ล่าสุด', '126', '2025-12-02 17:17:33'),
(42, 121, 'login', 'ล็อคอินล่าสุดโดย Google', '121', '2025-12-02 17:23:31'),
(43, 126, 'addfriend', 'เพิ่มเพื่อน', '80', '2025-12-02 17:29:41'),
(44, 76, 'login', 'ล็อคอินล่าสุดโดย Google', '76', '2025-12-02 17:33:11'),
(45, 76, 'online_lasted', 'ออนไลน์ล่าสุด', '76', '2025-12-02 17:36:36'),
(46, 121, 'online_lasted', 'ออนไลน์ล่าสุด', '121', '2025-12-02 17:36:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `target` (`target`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_log`
--
ALTER TABLE `user_log`
  ADD CONSTRAINT `user_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
