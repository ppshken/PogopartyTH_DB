-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2025 at 11:36 AM
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
-- Table structure for table `system_configs`
--

CREATE TABLE `system_configs` (
  `id` int(11) NOT NULL DEFAULT 1,
  `maintenance_mode` tinyint(1) DEFAULT 0 COMMENT '0=เปิด, 1=ปิดปรับปรุง',
  `maintenance_message` text DEFAULT NULL COMMENT 'ข้อความที่จะขึ้นเตือน',
  `min_version_android` varchar(10) DEFAULT '1.0.0',
  `min_version_ios` varchar(10) DEFAULT '1.0.0',
  `store_url_android` varchar(255) DEFAULT 'https://play.google.com/...',
  `store_url_ios` varchar(255) DEFAULT 'https://apps.apple.com/...',
  `show_announcement` tinyint(1) DEFAULT 0,
  `announcement_title` varchar(100) DEFAULT NULL,
  `announcement_body` text DEFAULT NULL,
  `announcement_link` varchar(255) DEFAULT NULL,
  `contact_line_id` varchar(50) DEFAULT '@pogopartyth',
  `privacy_policy_url` varchar(255) DEFAULT 'https://...'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_configs`
--

INSERT INTO `system_configs` (`id`, `maintenance_mode`, `maintenance_message`, `min_version_android`, `min_version_ios`, `store_url_android`, `store_url_ios`, `show_announcement`, `announcement_title`, `announcement_body`, `announcement_link`, `contact_line_id`, `privacy_policy_url`) VALUES
(1, 1, 'ระบบกำลังปรับปรุง เวลา 12:00 - 20:00', '1.0.0', '1.0.0', 'https://play.google.com/...', 'https://apps.apple.com/...', 0, 'ประกาศ', 'วันที่ 12-12-2025 จะทำการปิดปรับปรุงระบบเวลา 22:00 - 00:00 น. ขอให้หยุดการใช้งานในเวลาดังกล่าว', NULL, '@pogopartyth', 'https://...');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `system_configs`
--
ALTER TABLE `system_configs`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
