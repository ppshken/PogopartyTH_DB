-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2025 at 11:46 AM
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
-- Table structure for table `raid_rooms_log`
--

CREATE TABLE `raid_rooms_log` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('join','leave','invite','review') NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raid_rooms_log`
--

INSERT INTO `raid_rooms_log` (`id`, `room_id`, `user_id`, `type`, `description`, `created_at`) VALUES
(5, 403, 77, 'join', 'ผู้ใช้เข้าร่วมห้องสำเร็จ', '2025-10-27 09:12:40'),
(6, 416, 77, 'join', 'เข้าร่วมห้อง', '2025-10-27 09:17:01'),
(7, 416, 77, 'join', 'เข้าร่วมห้อง', '2025-10-27 09:22:14'),
(8, 416, 77, 'leave', 'ออกจากห้อง', '2025-10-27 09:22:19'),
(9, 416, 77, 'join', 'เข้าร่วมห้อง', '2025-10-27 09:27:34'),
(10, 416, 77, 'leave', 'ออกจากห้อง', '2025-10-27 09:27:58'),
(11, 416, 77, 'join', 'เข้าร่วมห้อง', '2025-10-27 09:28:01'),
(12, 416, 74, 'invite', 'เชิญในเกมแล้ว', '2025-10-27 09:28:10'),
(13, 416, 77, 'review', 'ทำการรีวิวแล้ว ตีบอสสำเร็จ 3 ดาว', '2025-10-27 09:28:21'),
(14, 416, 74, 'review', 'ทำการรีวิวแล้ว ตีบอสไม่สำเร็จ : คนไม่ครบ', '2025-10-27 09:28:34'),
(15, 417, 77, 'leave', 'ออกจากห้อง', '2025-10-27 09:38:54'),
(16, 417, 77, 'join', 'เข้าร่วมห้อง', '2025-10-27 09:39:03'),
(17, 418, 77, 'join', 'เข้าร่วมห้อง', '2025-10-27 10:20:28'),
(18, 418, 77, 'leave', 'ออกจากห้อง', '2025-10-27 10:20:39'),
(19, 418, 77, 'join', 'เข้าร่วมห้อง', '2025-10-27 10:20:41'),
(20, 418, 74, 'invite', 'เชิญในเกมแล้ว', '2025-10-27 10:44:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `raid_rooms_log`
--
ALTER TABLE `raid_rooms_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `raid_rooms_log`
--
ALTER TABLE `raid_rooms_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `raid_rooms_log`
--
ALTER TABLE `raid_rooms_log`
  ADD CONSTRAINT `raid_rooms_log_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `raid_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `raid_rooms_log_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
