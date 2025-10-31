-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2025 at 11:38 AM
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
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `raid_rooms_id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `raid_rooms_id`, `sender`, `message`, `created_at`) VALUES
(452, 418, 76, 'Kuy', '2025-10-23 21:30:25'),
(458, 433, 80, 'Kuy', '2025-10-25 23:52:45'),
(459, 433, 80, 'ควย อเวนเดอร์', '2025-10-25 23:53:42'),
(460, 433, 76, 'Kuy rai', '2025-10-25 23:54:29'),
(461, 438, 76, 'ควย', '2025-10-26 10:08:04'),
(462, 438, 81, 'อ่าว ควยไรสัส', '2025-10-26 10:10:22'),
(463, 438, 81, 'เชิญแล้ว อย่าลืม รีวิส กันด้วยน้า', '2025-10-26 10:10:59'),
(464, 440, 82, 'AvenderMasterTU', '2025-10-26 10:32:01'),
(465, 440, 82, 'ชวนในเกมแล้วนะครับ', '2025-10-26 10:32:13'),
(466, 444, 79, 'Test', '2025-10-26 15:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `dm_messages`
--

CREATE TABLE `dm_messages` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `text_body` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `seen_by_recipient_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dm_threads`
--

CREATE TABLE `dm_threads` (
  `id` int(10) NOT NULL,
  `member_min` int(10) NOT NULL,
  `member_max` int(10) NOT NULL,
  `last_message_at` datetime DEFAULT NULL,
  `last_message_text` varchar(120) DEFAULT NULL,
  `last_message_sender` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friendships`
--

CREATE TABLE `friendships` (
  `id` int(20) NOT NULL,
  `requester_id` int(20) NOT NULL COMMENT 'คนที่กดขอเป็นเพื่อน',
  `addressee_id` int(20) NOT NULL COMMENT 'คนถูกขอ',
  `status` enum('pending','accepted','declined') NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friendships`
--

INSERT INTO `friendships` (`id`, `requester_id`, `addressee_id`, `status`, `created_at`, `updated_at`) VALUES
(20, 81, 76, 'accepted', '2025-10-23 22:01:06', '2025-10-25 16:24:34'),
(23, 80, 81, 'pending', '2025-10-25 23:55:46', NULL),
(24, 80, 76, 'accepted', '2025-10-25 23:55:54', '2025-10-26 10:09:38'),
(26, 79, 80, 'accepted', '2025-10-26 01:10:54', '2025-10-26 01:10:59'),
(27, 81, 79, 'accepted', '2025-10-26 09:13:02', '2025-10-26 09:13:12'),
(28, 79, 76, 'accepted', '2025-10-26 09:49:00', '2025-10-26 09:49:29'),
(29, 82, 76, 'accepted', '2025-10-26 10:26:59', '2025-10-26 10:27:35'),
(30, 104, 101, 'accepted', '2025-10-30 15:22:42', '2025-10-31 08:58:08'),
(32, 76, 101, 'accepted', '2025-10-30 17:24:16', '2025-10-31 08:58:28'),
(33, 101, 82, 'accepted', '2025-10-31 08:59:16', '2025-10-31 17:37:40'),
(34, 104, 82, 'accepted', '2025-10-31 09:07:58', '2025-10-31 17:37:34'),
(35, 104, 76, 'pending', '2025-10-31 09:22:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `target` varchar(50) DEFAULT 'all',
  `sent_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `type` enum('register','reset') NOT NULL,
  `status` enum('active','expire','verify') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `user_id`, `otp`, `type`, `status`, `created_at`) VALUES
(33, 106, '890931', 'register', 'active', '2025-10-31 03:35:19'),
(34, 115, '503919', 'register', 'active', '2025-10-31 04:19:20'),
(35, 116, '488911', 'register', 'active', '2025-10-31 04:21:47'),
(36, 117, '902955', 'register', 'active', '2025-10-31 04:27:58'),
(41, 118, '475642', 'register', 'active', '2025-10-31 04:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `raid_boss`
--

CREATE TABLE `raid_boss` (
  `id` int(11) NOT NULL,
  `pokemon_id` int(11) DEFAULT NULL,
  `pokemon_name` varchar(100) NOT NULL,
  `pokemon_image` varchar(255) DEFAULT NULL,
  `pokemon_tier` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `cp_normal_min` int(11) NOT NULL,
  `cp_normal_max` int(11) NOT NULL,
  `cp_boost_min` int(11) NOT NULL,
  `cp_boost_max` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raid_boss`
--

INSERT INTO `raid_boss` (`id`, `pokemon_id`, `pokemon_name`, `pokemon_image`, `pokemon_tier`, `start_date`, `end_date`, `cp_normal_min`, `cp_normal_max`, `cp_boost_min`, `cp_boost_max`, `created_at`) VALUES
(39, 0, 'Cherubi', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 1, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 499, 542, 624, 678, '2025-10-17 16:31:45'),
(40, 0, 'Ferroseed', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm597.icon.png', 1, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 493, 537, 617, 672, '2025-10-17 16:31:45'),
(41, 0, 'Skiddo', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm672.icon.png', 1, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 664, 714, 830, 893, '2025-10-17 16:31:45'),
(42, 0, 'Gossifleur', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm829.icon.png', 1, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 347, 384, 434, 480, '2025-10-17 16:31:45'),
(43, 0, 'Whimsicott', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm547.icon.png', 3, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 1087, 1151, 1359, 1439, '2025-10-17 16:31:45'),
(44, 0, 'Hisuian Lilligant', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm549.fHISUIAN.icon.png', 3, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 1364, 1435, 1705, 1794, '2025-10-17 16:31:45'),
(45, 0, 'Hisuian Decidueye', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm724.fHISUIAN.icon.png', 3, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 1579, 1655, 1974, 2069, '2025-10-17 16:31:45'),
(46, 0, 'Deoxys (Attack)', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm386.fATTACK.icon.png', 5, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 1372, 1474, 1716, 1842, '2025-10-17 16:31:45'),
(47, 0, 'Deoxys (Speed)', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm386.fSPEED.icon.png', 5, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 1568, 1645, 1960, 2056, '2025-10-17 16:31:45'),
(48, 0, 'Mega Mawile', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm303.fMEGA.icon.png', 4, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 877, 934, 1096, 1167, '2025-10-17 16:31:45'),
(49, 0, 'Mega Salamence', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm373.fMEGA.icon.png', 4, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 2054, 2142, 2568, 2678, '2025-10-17 16:31:45'),
(50, 0, 'Drowzee', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm96.icon.png', 1, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 512, 594, 640, 743, '2025-10-17 16:31:45'),
(51, 0, 'Ralts', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm280.icon.png', 1, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 250, 308, 313, 385, '2025-10-17 16:31:45'),
(52, 0, 'Bagon', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm371.icon.png', 1, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 575, 660, 719, 826, '2025-10-17 16:31:45'),
(53, 0, 'Snover', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm459.icon.png', 1, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 577, 662, 721, 828, '2025-10-17 16:31:45'),
(54, 0, 'Scyther', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm123.icon.png', 3, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 1414, 1546, 1768, 1933, '2025-10-17 16:31:45'),
(55, 0, 'Aerodactyl', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm142.icon.png', 3, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 1456, 1590, 1821, 1988, '2025-10-17 16:31:45'),
(56, 0, 'Sableye', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm302.icon.png', 3, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 747, 843, 934, 1054, '2025-10-17 16:31:45'),
(57, 0, 'Latias', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm380.icon.png', 5, '2025-10-12 00:00:00', '2025-11-30 00:00:00', 1855, 2006, 2320, 2507, '2025-10-17 16:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `raid_cancel_reasons`
--

CREATE TABLE `raid_cancel_reasons` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raid_cancel_reasons`
--

INSERT INTO `raid_cancel_reasons` (`id`, `room_id`, `reason`, `created_at`) VALUES
(14, 429, 'เปลี่ยนใจไม่ตีบอส', '2025-10-25 16:04:25'),
(15, 431, 'เปลี่ยนใจไม่ตีบอส', '2025-10-25 16:17:21'),
(16, 450, 'เปลี่ยนใจไม่ตีบอส', '2025-10-31 08:19:53'),
(17, 452, 'บอสหมดเวลา', '2025-10-31 08:40:36'),
(18, 454, 'สร้างห้องผิดพลาด', '2025-10-31 08:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `raid_reviews`
--

CREATE TABLE `raid_reviews` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raid_reviews`
--

INSERT INTO `raid_reviews` (`id`, `room_id`, `user_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(215, 418, 79, 4, 'Raid success', '2025-10-23 21:31:16', NULL),
(216, 418, 76, 5, 'Raid success', '2025-10-23 21:31:32', NULL),
(222, 430, 76, 5, 'Raid success', '2025-10-25 23:13:49', NULL),
(223, 430, 79, 5, 'Raid success', '2025-10-25 23:16:59', NULL),
(224, 432, 81, 4, 'Raid success', '2025-10-26 09:12:18', NULL),
(225, 432, 79, 1, 'FAILED: คนไม่ครบ', '2025-10-26 09:33:27', NULL),
(226, 438, 76, 5, 'Raid success', '2025-10-26 10:11:09', NULL),
(227, 438, 81, 1, 'FAILED: ตีลงแล้ว แต่ได้ iv กาก หัวห้องหัวควยมาก', '2025-10-26 10:11:59', NULL),
(228, 440, 76, 5, 'Raid success', '2025-10-26 10:36:55', NULL),
(229, 440, 82, 4, 'Raid success', '2025-10-26 10:38:48', NULL),
(230, 451, 104, 5, 'Raid success', '2025-10-31 15:37:16', NULL),
(231, 455, 80, 5, 'Raid success', '2025-10-31 16:04:35', NULL),
(232, 455, 104, 1, 'FAILED: ควย', '2025-10-31 16:06:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `raid_rooms`
--

CREATE TABLE `raid_rooms` (
  `id` int(11) NOT NULL,
  `raid_boss_id` int(11) NOT NULL,
  `pokemon_image` varchar(255) NOT NULL,
  `boss` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `max_members` int(11) NOT NULL,
  `status` enum('active','closed','canceled','invited') NOT NULL DEFAULT 'active',
  `owner_id` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `avg_rating` decimal(3,2) DEFAULT NULL,
  `review_count` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raid_rooms`
--

INSERT INTO `raid_rooms` (`id`, `raid_boss_id`, `pokemon_image`, `boss`, `start_time`, `max_members`, `status`, `owner_id`, `note`, `avg_rating`, `review_count`, `created_at`) VALUES
(416, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-23 05:00:00', 6, 'closed', 76, NULL, NULL, 0, '2025-10-22 23:12:57'),
(418, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-23 21:35:00', 6, 'closed', 76, NULL, 4.33, 3, '2025-10-23 21:26:35'),
(421, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-25 15:25:00', 6, 'closed', 79, NULL, NULL, 0, '2025-10-25 15:20:17'),
(422, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-25 16:20:00', 6, 'closed', 79, 'ทดสอบระบบการเชิญเพื่อนในแอพ', NULL, 0, '2025-10-25 15:25:50'),
(423, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-25 17:00:00', 6, 'closed', 76, NULL, NULL, 0, '2025-10-25 15:42:36'),
(424, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-25 16:00:00', 6, 'closed', 81, NULL, NULL, 0, '2025-10-25 15:53:29'),
(425, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-25 17:30:00', 6, 'closed', 81, NULL, NULL, 0, '2025-10-25 16:08:36'),
(426, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-25 21:45:00', 6, 'closed', 79, NULL, NULL, 0, '2025-10-25 21:38:31'),
(427, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-25 22:20:00', 6, 'closed', 79, NULL, NULL, 0, '2025-10-25 21:49:22'),
(428, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-25 23:00:00', 6, 'closed', 79, NULL, NULL, 0, '2025-10-25 22:28:13'),
(429, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-26 05:00:00', 6, 'canceled', 79, NULL, NULL, 0, '2025-10-25 23:01:01'),
(430, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-26 05:00:00', 2, 'closed', 79, NULL, 5.00, 2, '2025-10-25 23:04:30'),
(431, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-26 05:00:00', 6, 'canceled', 79, NULL, NULL, 0, '2025-10-25 23:17:02'),
(432, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-26 05:00:00', 2, 'closed', 79, NULL, 2.50, 2, '2025-10-25 23:22:06'),
(433, 40, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm597.icon.png', 'Ferroseed', '2025-10-26 05:00:00', 6, 'closed', 81, NULL, NULL, 0, '2025-10-25 23:40:57'),
(434, 41, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm672.icon.png', 'Skiddo', '2025-10-26 05:00:00', 6, 'closed', 79, NULL, NULL, 0, '2025-10-26 00:18:35'),
(435, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-26 05:00:00', 6, 'closed', 80, NULL, NULL, 0, '2025-10-26 01:09:41'),
(436, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-26 09:50:00', 6, 'closed', 79, NULL, NULL, 0, '2025-10-26 09:43:08'),
(437, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-26 12:00:00', 6, 'closed', 79, NULL, NULL, 0, '2025-10-26 09:51:52'),
(438, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-26 12:00:00', 6, 'closed', 81, NULL, 3.00, 2, '2025-10-26 10:01:42'),
(439, 41, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm672.icon.png', 'Skiddo', '2025-10-26 10:10:00', 6, 'active', 81, NULL, NULL, 0, '2025-10-26 10:05:29'),
(440, 40, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm597.icon.png', 'Ferroseed', '2025-10-26 10:35:00', 6, 'closed', 82, NULL, 4.50, 2, '2025-10-26 10:26:53'),
(441, 41, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm672.icon.png', 'Skiddo', '2025-10-26 12:00:00', 2, 'closed', 82, '2 คนก็พอละ', NULL, 0, '2025-10-26 10:41:09'),
(442, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-26 14:00:00', 6, 'closed', 79, NULL, NULL, 0, '2025-10-26 13:55:56'),
(443, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-26 15:15:00', 6, 'closed', 79, NULL, NULL, 0, '2025-10-26 15:10:59'),
(444, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-26 15:25:00', 6, 'active', 79, NULL, NULL, 0, '2025-10-26 15:17:15'),
(448, 39, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm420.icon.png', 'Cherubi', '2025-10-30 16:40:00', 6, 'closed', 76, NULL, NULL, 0, '2025-10-30 16:35:37'),
(449, 46, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm386.fATTACK.icon.png', 'Deoxys (Attack)', '2025-10-31 12:00:00', 10, 'closed', 76, NULL, NULL, 0, '2025-10-31 10:14:54'),
(450, 46, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm386.fATTACK.icon.png', 'Deoxys (Attack)', '2025-10-31 15:25:00', 6, 'canceled', 104, NULL, NULL, 0, '2025-10-31 15:17:08'),
(451, 46, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm386.fATTACK.icon.png', 'Deoxys (Attack)', '2025-10-31 15:35:00', 6, 'invited', 104, NULL, 5.00, 1, '2025-10-31 15:28:59'),
(452, 46, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm386.fATTACK.icon.png', 'Deoxys (Attack)', '2025-10-31 15:45:00', 6, 'canceled', 104, NULL, NULL, 0, '2025-10-31 15:39:59'),
(453, 46, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm386.fATTACK.icon.png', 'Deoxys (Attack)', '2025-10-31 15:55:00', 6, 'closed', 80, NULL, NULL, 0, '2025-10-31 15:48:34'),
(454, 46, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm386.fATTACK.icon.png', 'Deoxys (Attack)', '2025-10-31 16:05:00', 6, 'canceled', 80, NULL, NULL, 0, '2025-10-31 15:58:05'),
(455, 46, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm386.fATTACK.icon.png', 'Deoxys (Attack)', '2025-10-31 16:10:00', 6, 'closed', 80, NULL, 3.00, 2, '2025-10-31 16:03:06'),
(456, 49, 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm373.fMEGA.icon.png', 'Mega Salamence', '2025-10-31 18:30:00', 6, 'active', 104, 'กี่คนก็เอาครับ', NULL, 0, '2025-10-31 17:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `raid_rooms_log`
--

CREATE TABLE `raid_rooms_log` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('join','leave','invite','review','create','cancel') NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raid_rooms_log`
--

INSERT INTO `raid_rooms_log` (`id`, `room_id`, `user_id`, `type`, `description`, `created_at`) VALUES
(36, 455, 80, 'cancel', 'ยกเลิกห้อง', '2025-10-31 08:40:36'),
(37, 455, 80, 'create', 'สร้างห้อง', '2025-10-31 08:48:34'),
(38, 455, 80, 'create', 'สร้างห้อง', '2025-10-31 08:58:05'),
(39, 455, 80, 'invite', 'ทำการเชิญเพื่อนเข้าร่วมห้อง', '2025-10-31 08:58:08'),
(40, 455, 80, 'cancel', 'ยกเลิกห้อง', '2025-10-31 08:58:14'),
(41, 455, 80, 'create', 'สร้างห้อง', '2025-10-31 09:03:06'),
(42, 455, 80, 'invite', 'ทำการเชิญเพื่อนเข้าร่วมห้อง', '2025-10-31 09:03:08'),
(43, 455, 80, 'invite', 'ทำการเชิญเพื่อนเข้าร่วมห้อง', '2025-10-31 09:03:14'),
(44, 455, 80, 'invite', 'ทำการเชิญเพื่อนเข้าร่วมห้อง', '2025-10-31 09:03:19'),
(45, 455, 80, 'join', 'เข้าร่วมห้อง', '2025-10-31 09:03:51'),
(46, 455, 104, 'leave', 'ออกจากห้อง', '2025-10-31 09:03:53'),
(47, 455, 104, 'join', 'เข้าร่วมห้อง', '2025-10-31 09:03:58'),
(48, 455, 80, 'invite', 'เชิญในเกมแล้ว', '2025-10-31 09:04:26'),
(49, 455, 80, 'review', 'ทำการรีวิวแล้ว ตีบอสสำเร็จ 5 ดาว', '2025-10-31 09:04:35'),
(50, 455, 104, 'review', 'ทำการรีวิวแล้ว ตีบอสไม่สำเร็จ : ควย', '2025-10-31 09:06:03'),
(51, 456, 104, 'create', 'สร้างห้อง', '2025-10-31 10:27:57'),
(52, 456, 104, 'invite', 'ทำการเชิญเพื่อนเข้าร่วมห้อง', '2025-10-31 10:28:22'),
(53, 456, 104, 'invite', 'ทำการเชิญเพื่อนเข้าร่วมห้อง PuwanatzGZ', '2025-10-31 10:30:48'),
(54, 456, 82, 'join', 'เข้าร่วมห้อง', '2025-10-31 10:34:40'),
(55, 456, 82, 'invite', 'ทำการเชิญเพื่อนเข้าร่วมห้อง AvenderMasterTZ', '2025-10-31 10:35:13'),
(56, 456, 82, 'invite', 'ทำการเชิญเพื่อนเข้าร่วมห้อง AvenderMasterTZ', '2025-10-31 10:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `report_type` enum('user','room','other') NOT NULL,
  `target_id` int(11) NOT NULL,
  `reporter_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  `status` enum('pending','reviewed','resolved') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `report_type`, `target_id`, `reporter_id`, `reason`, `status`, `created_at`, `updated_at`) VALUES
(13, 'user', 76, 81, 'ไม่รับเพื่อนสักที ทำไรอยู่วะ', 'pending', '2025-10-25 08:55:15', '2025-10-25 08:55:15'),
(14, 'user', 76, 82, 'ควยสัสหมา', 'pending', '2025-10-26 03:39:55', '2025-10-26 03:39:55'),
(15, 'other', 0, 104, 'ระบบทำมาค่อนข้างดี ตอบโจทย์มากๆครับ', 'pending', '2025-10-31 06:41:40', '2025-10-31 06:41:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(191) NOT NULL,
  `username` varchar(191) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `friend_code` varchar(32) DEFAULT NULL,
  `team` enum('Instinct','Mystic','Valor') DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `noti_status` enum('on','off') NOT NULL DEFAULT 'on',
  `setup_status` enum('yes','no') NOT NULL DEFAULT 'no',
  `role` enum('member','admin') NOT NULL,
  `status` enum('active','banned') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `google_sub` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `avatar`, `friend_code`, `team`, `level`, `device_token`, `noti_status`, `setup_status`, `role`, `status`, `created_at`, `google_sub`) VALUES
(1, 'admin@pogopartyth.com', 'Admin System', '$2y$10$bzDOiUCy.YXXcKCsKlRrzOcnShkR9WQjtbl3m5jPuLOFx6uh6lJ8m', '', '123456789012', NULL, 30, NULL, 'on', 'yes', 'admin', 'active', '2025-08-28 03:00:24', NULL),
(76, 'kensaohin@gmail.com', 'AvenderMasterTZ', '$2y$10$yClJDpspgG9oCsjUKMHFY.guuOjNf7umvPxyM9lJ6wfsu0Rxz7yXe', 'https://lh3.googleusercontent.com/a/ACg8ocJCDtqfh0lb9oCtgO9rH3KHU1yBNaAp0ELAUIp5t32f8_jmPFN0SA=s96-c', '566524538644', 'Instinct', 70, 'ExponentPushToken[IBs3fbKIqpyGQowZILl4nM]', 'on', 'yes', 'member', 'active', '2025-10-22 15:07:44', '109310031489025350320'),
(79, 'roxxxx889922x@gmail.com', 'Pikachu', '$2y$10$z2iMk8bC.HvkcDCw8Q5.BuA514sveGwnikSLhgWIWtTAGpGilcD3S', 'https://lh3.googleusercontent.com/a/ACg8ocJ1xwK3xTsA8d0wCfcDknm80lHGlo9YhkFIcDuih8y6e9QRww=s96-c', '156030032847', 'Valor', 70, '', 'on', 'yes', 'member', 'active', '2025-10-23 07:20:00', '101470389973278362683'),
(80, 'appsheet@kingwintransport.com', 'AppsheetKW', '$2y$10$afKlBZCnSucoMgShJZy1A.SaP99gywdiqUSXzrgTt.b6lJWGBxSr.', 'https://external-preview.redd.it/v2Q5yn7Y8OCjt1mu3FpvN2gDih3PFXuCGX_WoMuIxsk.jpg?auto=webp&s=cbbe51cf6fb897e585614e993d7ee35655173b23', '315564843801', 'Mystic', 65, 'ExponentPushToken[IBs3fbKIqpyGQowZILl4nM]', 'on', 'yes', 'member', 'active', '2025-10-23 14:55:45', '101467392080872934287'),
(81, 'developerappsheetappify@gmail.com', 'Ares', '$2y$10$9JfHa.u6ApM4.D87FD7coO86T1.26USYoPnTy.HCGderdC.nrJ.jW', 'https://lh3.googleusercontent.com/a/ACg8ocJG1JEPE8TDmbkdpV8kEColfelL2LOX_2ZdIbjfyL_-tZgEvcE=s96-c', '326594378139', 'Instinct', 80, '', 'on', 'yes', 'member', 'active', '2025-10-23 14:58:14', '114543549743557516789'),
(82, 'kenzanaqq@gmail.com', 'AkenzaMasterTH', '$2y$10$q00dEj4tAoi2hf4MctF03eYAI8vCNaNWzDW0wHd5eak.e.RQU3KhS', 'https://lh3.googleusercontent.com/a/ACg8ocLZug65I_DObPYbqnR-uv7_gDKsMOyvYiwlGEm1gXYj8wkjOtDY=s96-c', '316564318208', 'Mystic', 37, 'ExponentPushToken[IBs3fbKIqpyGQowZILl4nM]', 'on', 'yes', 'member', 'active', '2025-10-26 03:12:58', '115408613291253841250'),
(101, 'test@gmail.com', 'TestGaming', '$2y$10$Yk9cFfne4LfoPRKW/a0eGuFokMpNQ7Lc7/T09CRx37JMRrViHbt7a', 'https://ui-avatars.com/api/?name=T&background=random&size=256&bold=true', '917983712371', 'Valor', 72, 'ExponentPushToken[IBs3fbKIqpyGQowZILl4nM]', 'on', 'yes', 'member', 'active', '2025-10-30 07:05:27', NULL),
(102, 'test1@gmail.com', 'Test1', '$2y$10$NaGuZLb.kXjOaIrMD7mO2ehhVHYwGRWJplS4R4vjuXcLugWcGUrWm', 'https://ui-avatars.com/api/?name=T&background=random&size=256&bold=true', '823469242342', 'Mystic', 76, 'ExponentPushToken[IBs3fbKIqpyGQowZILl4nM]', 'on', 'yes', 'member', 'active', '2025-10-30 07:10:08', NULL),
(104, 'Puwanatz.30334@gmail.com', 'PuwanatzGZ', '$2y$10$HhHUxlp/Ul4T47ZkX5V27uHsUiU3nTEfBQ8zGKgRgUKoEju347pkW', 'https://ui-avatars.com/api/?name=P&background=random&size=256&bold=true', '384293785728', 'Mystic', 71, 'ExponentPushToken[IBs3fbKIqpyGQowZILl4nM]', 'on', 'yes', 'member', 'active', '2025-10-30 08:19:56', NULL),
(105, 'UprisingTH@gmail.com', NULL, NULL, 'https://ui-avatars.com/api/?name=U&background=random&size=256&bold=true', NULL, NULL, NULL, NULL, 'on', 'no', 'member', NULL, '2025-10-31 03:29:30', NULL),
(106, 'UprisingTH1@gmail.com', NULL, NULL, 'https://ui-avatars.com/api/?name=U&background=random&size=256&bold=true', NULL, NULL, NULL, NULL, 'on', 'no', 'member', NULL, '2025-10-31 03:35:19', NULL),
(115, 'test2@gmail.com', NULL, NULL, 'https://ui-avatars.com/api/?name=T&background=random&size=256&bold=true', NULL, NULL, NULL, NULL, 'on', 'no', 'member', NULL, '2025-10-31 04:19:20', NULL),
(116, 'test3@gmail.com', NULL, NULL, 'https://ui-avatars.com/api/?name=T&background=random&size=256&bold=true', NULL, NULL, NULL, NULL, 'on', 'no', 'member', NULL, '2025-10-31 04:21:47', NULL),
(117, 'test4@gmail.com', NULL, NULL, 'https://ui-avatars.com/api/?name=T&background=random&size=256&bold=true', NULL, NULL, NULL, NULL, 'on', 'no', 'member', NULL, '2025-10-31 04:27:58', NULL),
(118, 'test5@gmail.com', NULL, NULL, 'https://ui-avatars.com/api/?name=T&background=random&size=256&bold=true', NULL, NULL, NULL, NULL, 'on', 'no', 'member', NULL, '2025-10-31 04:39:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_raid_rooms`
--

CREATE TABLE `user_raid_rooms` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` enum('owner','member') NOT NULL DEFAULT 'member',
  `joined_at` datetime NOT NULL,
  `friend_ready` tinyint(1) NOT NULL DEFAULT 0,
  `friend_ready_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_raid_rooms`
--

INSERT INTO `user_raid_rooms` (`id`, `room_id`, `user_id`, `role`, `joined_at`, `friend_ready`, `friend_ready_at`) VALUES
(1143, 416, 76, 'owner', '2025-10-22 23:12:57', 0, NULL),
(1145, 418, 76, 'owner', '2025-10-23 21:26:35', 0, NULL),
(1146, 418, 79, 'member', '2025-10-23 21:26:50', 1, '2025-10-23 21:26:58'),
(1154, 421, 79, 'owner', '2025-10-25 15:20:17', 0, NULL),
(1155, 422, 79, 'owner', '2025-10-25 15:25:50', 0, NULL),
(1156, 422, 76, 'member', '2025-10-25 15:42:08', 1, '2025-10-25 15:42:09'),
(1157, 423, 76, 'owner', '2025-10-25 15:42:36', 0, NULL),
(1158, 424, 81, 'owner', '2025-10-25 15:53:29', 0, NULL),
(1159, 425, 81, 'owner', '2025-10-25 16:08:36', 0, NULL),
(1160, 426, 79, 'owner', '2025-10-25 21:38:31', 0, NULL),
(1161, 427, 79, 'owner', '2025-10-25 21:49:22', 0, NULL),
(1162, 428, 79, 'owner', '2025-10-25 22:28:13', 0, NULL),
(1163, 429, 79, 'owner', '2025-10-25 23:01:01', 0, NULL),
(1165, 430, 79, 'owner', '2025-10-25 23:04:30', 0, NULL),
(1167, 430, 76, 'member', '2025-10-25 23:13:16', 1, '2025-10-25 23:13:19'),
(1168, 431, 79, 'owner', '2025-10-25 23:17:02', 0, NULL),
(1169, 432, 79, 'owner', '2025-10-25 23:22:06', 0, NULL),
(1172, 432, 81, 'member', '2025-10-25 23:36:06', 1, '2025-10-25 23:36:08'),
(1173, 433, 81, 'owner', '2025-10-25 23:40:57', 0, NULL),
(1176, 433, 76, 'member', '2025-10-25 23:53:26', 1, '2025-10-25 23:53:28'),
(1177, 433, 80, 'member', '2025-10-25 23:59:33', 1, '2025-10-26 00:01:47'),
(1180, 434, 79, 'owner', '2025-10-26 00:18:35', 0, NULL),
(1181, 434, 76, 'member', '2025-10-26 00:37:18', 1, '2025-10-26 00:37:20'),
(1182, 433, 79, 'member', '2025-10-26 00:47:50', 1, '2025-10-26 00:47:51'),
(1183, 435, 80, 'owner', '2025-10-26 01:09:41', 0, NULL),
(1184, 436, 79, 'owner', '2025-10-26 09:43:08', 0, NULL),
(1185, 437, 79, 'owner', '2025-10-26 09:51:52', 0, NULL),
(1186, 438, 81, 'owner', '2025-10-26 10:01:42', 0, NULL),
(1187, 438, 76, 'member', '2025-10-26 10:04:51', 1, '2025-10-26 10:04:53'),
(1188, 439, 81, 'owner', '2025-10-26 10:05:29', 0, NULL),
(1189, 437, 76, 'member', '2025-10-26 10:17:11', 1, '2025-10-26 10:17:15'),
(1191, 440, 82, 'owner', '2025-10-26 10:26:53', 0, NULL),
(1192, 440, 76, 'member', '2025-10-26 10:29:44', 1, '2025-10-26 10:29:59'),
(1195, 437, 82, 'member', '2025-10-26 10:39:06', 1, '2025-10-26 10:39:09'),
(1196, 441, 82, 'owner', '2025-10-26 10:41:09', 0, NULL),
(1197, 442, 79, 'owner', '2025-10-26 13:55:56', 0, NULL),
(1198, 443, 79, 'owner', '2025-10-26 15:10:59', 0, NULL),
(1199, 444, 79, 'owner', '2025-10-26 15:17:15', 0, NULL),
(1203, 448, 76, 'owner', '2025-10-30 16:35:37', 0, NULL),
(1204, 449, 76, 'owner', '2025-10-31 10:14:54', 0, NULL),
(1205, 450, 104, 'owner', '2025-10-31 15:17:08', 0, NULL),
(1206, 451, 104, 'owner', '2025-10-31 15:28:59', 0, NULL),
(1207, 451, 76, 'member', '2025-10-31 15:30:19', 1, '2025-10-31 15:30:21'),
(1208, 452, 104, 'owner', '2025-10-31 15:39:59', 0, NULL),
(1209, 453, 80, 'owner', '2025-10-31 15:48:34', 0, NULL),
(1210, 454, 80, 'owner', '2025-10-31 15:58:05', 0, NULL),
(1211, 455, 80, 'owner', '2025-10-31 16:03:06', 0, NULL),
(1213, 455, 104, 'member', '2025-10-31 16:03:57', 1, '2025-10-31 16:03:59'),
(1214, 456, 104, 'owner', '2025-10-31 17:27:57', 0, NULL),
(1215, 456, 82, 'member', '2025-10-31 17:34:39', 1, '2025-10-31 17:34:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_room_id_id` (`raid_rooms_id`,`id`),
  ADD KEY `idx_room_created` (`raid_rooms_id`,`created_at`),
  ADD KEY `fk_chat_user` (`sender`);

--
-- Indexes for table `dm_messages`
--
ALTER TABLE `dm_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dm_msg_sender` (`sender_id`),
  ADD KEY `idx_thread_created` (`thread_id`,`created_at`),
  ADD KEY `idx_seen` (`thread_id`,`seen_by_recipient_at`);

--
-- Indexes for table `dm_threads`
--
ALTER TABLE `dm_threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_min` (`member_min`),
  ADD KEY `member_max` (`member_max`),
  ADD KEY `last_message_at` (`last_message_at`,`last_message_text`,`last_message_sender`);

--
-- Indexes for table `friendships`
--
ALTER TABLE `friendships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `friendships_ibfk_1` (`requester_id`),
  ADD KEY `friendships_ibfk_2` (`addressee_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sent_by` (`sent_by`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `otp` (`otp`),
  ADD KEY `type` (`type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `raid_boss`
--
ALTER TABLE `raid_boss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_time` (`start_date`,`end_date`),
  ADD KEY `idx_name` (`pokemon_name`),
  ADD KEY `idx_pid` (`pokemon_id`),
  ADD KEY `pokemon_tier` (`pokemon_tier`);

--
-- Indexes for table `raid_cancel_reasons`
--
ALTER TABLE `raid_cancel_reasons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_id_2` (`room_id`),
  ADD UNIQUE KEY `room_id_3` (`room_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `raid_reviews`
--
ALTER TABLE `raid_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_room_user` (`room_id`,`user_id`),
  ADD KEY `idx_room` (`room_id`),
  ADD KEY `fk_rr_user` (`user_id`);

--
-- Indexes for table `raid_rooms`
--
ALTER TABLE `raid_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_start_status` (`start_time`,`status`),
  ADD KEY `fk_rooms_owner` (`owner_id`),
  ADD KEY `raid_boss_id` (`raid_boss_id`,`boss`);

--
-- Indexes for table `raid_rooms_log`
--
ALTER TABLE `raid_rooms_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reporter_id` (`reporter_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `uniq_users_email` (`email`),
  ADD UNIQUE KEY `uniq_users_username` (`username`);

--
-- Indexes for table `user_raid_rooms`
--
ALTER TABLE `user_raid_rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_room_user` (`room_id`,`user_id`),
  ADD KEY `idx_room` (`room_id`),
  ADD KEY `fk_urr_user` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `dm_messages`
--
ALTER TABLE `dm_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dm_threads`
--
ALTER TABLE `dm_threads`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friendships`
--
ALTER TABLE `friendships`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `raid_boss`
--
ALTER TABLE `raid_boss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `raid_cancel_reasons`
--
ALTER TABLE `raid_cancel_reasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `raid_reviews`
--
ALTER TABLE `raid_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `raid_rooms`
--
ALTER TABLE `raid_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `raid_rooms_log`
--
ALTER TABLE `raid_rooms_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `user_raid_rooms`
--
ALTER TABLE `user_raid_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1216;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `fk_chat_room` FOREIGN KEY (`raid_rooms_id`) REFERENCES `raid_rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_chat_user` FOREIGN KEY (`sender`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dm_messages`
--
ALTER TABLE `dm_messages`
  ADD CONSTRAINT `fk_dm_msg_sender` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dm_msg_thread` FOREIGN KEY (`thread_id`) REFERENCES `dm_threads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dm_threads`
--
ALTER TABLE `dm_threads`
  ADD CONSTRAINT `dm_threads_ibfk_1` FOREIGN KEY (`member_min`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dm_threads_ibfk_2` FOREIGN KEY (`member_max`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `friendships`
--
ALTER TABLE `friendships`
  ADD CONSTRAINT `friendships_ibfk_1` FOREIGN KEY (`requester_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `friendships_ibfk_2` FOREIGN KEY (`addressee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`sent_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `otp`
--
ALTER TABLE `otp`
  ADD CONSTRAINT `otp_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `raid_cancel_reasons`
--
ALTER TABLE `raid_cancel_reasons`
  ADD CONSTRAINT `fk_raid_rooms` FOREIGN KEY (`room_id`) REFERENCES `raid_rooms` (`id`);

--
-- Constraints for table `raid_reviews`
--
ALTER TABLE `raid_reviews`
  ADD CONSTRAINT `fk_rr_room` FOREIGN KEY (`room_id`) REFERENCES `raid_rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rr_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `raid_rooms`
--
ALTER TABLE `raid_rooms`
  ADD CONSTRAINT `fk_rooms_owner` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `raid_rooms_log`
--
ALTER TABLE `raid_rooms_log`
  ADD CONSTRAINT `raid_rooms_log_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `raid_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `raid_rooms_log_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`reporter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_raid_rooms`
--
ALTER TABLE `user_raid_rooms`
  ADD CONSTRAINT `fk_urr_room` FOREIGN KEY (`room_id`) REFERENCES `raid_rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_urr_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
