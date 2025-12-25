-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2025 at 11:12 AM
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
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(255) NOT NULL,
  `type` enum('feature','menu') NOT NULL,
  `icon` varchar(255) NOT NULL,
  `icon_color` varchar(255) NOT NULL,
  `router` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu`, `type`, `icon`, `icon_color`, `router`, `status`, `updated_at`) VALUES
(1, 'ปฏิทินกิจกรรม', 'feature', 'calendar-number', '#d79251ff', '/calendar/calendar', 0, '2025-12-25 13:33:33'),
(2, 'วิจัยภาคสนาม', 'feature', 'compass', '#0044b9ff', '/calendar/research', 1, '2025-12-25 13:34:36'),
(3, 'ฟักไข่', 'feature', 'egg', '#b90041ff', '/calendar/eggs', 1, '2025-12-25 13:35:02'),
(4, 'ดูโปรไฟล์', 'menu', 'person', '#00a55bff', '/settings/profile', 1, '2025-12-25 13:35:24'),
(5, 'ตั้งค่าโปรไฟล์', 'menu', 'people', '#00b9b9ff', '/settings/profile-edit', 1, '2025-12-25 13:35:50'),
(6, 'ประวัติ', 'menu', 'archive', '#005c8aff', '/settings/user-log', 1, '2025-12-25 13:36:13'),
(7, 'ตั้งค่าแอพ', 'menu', 'settings', '#273dbbff', '/settings/setting-app', 1, '2025-12-25 13:36:31'),
(8, 'Feedback', 'menu', 'alert-circle', '#8400dbff', '/settings/feedback', 1, '2025-12-25 13:36:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`,`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
