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
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `target` enum('all','user','room') NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `sent_by` int(11) NOT NULL,
  `status` enum('sended','schedule') NOT NULL,
  `schedule_at` datetime DEFAULT NULL,
  `schedule_status` enum('success','failed','waiting') DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `target`, `user_id`, `room_id`, `sent_by`, `status`, `schedule_at`, `schedule_status`, `created_at`) VALUES
(24, 'กิจกรรมบอส Gmax Snorlax เริ่มแล้ว', 'เวลา 14:00 - 17:00 น.', 'all', NULL, NULL, 1, 'sended', NULL, NULL, '2025-12-12 08:25:06'),
(25, 'ทดสอบ บอร์ดแคส', 'เวลา 14:00 - 17:00 น.', 'all', NULL, NULL, 1, 'sended', NULL, NULL, '2025-12-16 09:56:51'),
(26, 'กิจกรรม Community Day', 'XP x2 ตลอดการจับ มาจับกันเถอะ', 'all', NULL, NULL, 1, 'sended', NULL, NULL, '2025-12-16 15:04:17'),
(28, '🕕 Raid Hour วันนี้! บอส 5 ดาวเกิดเต็มแมพ', 'เตรียมปาร์ตี้ให้พร้อม! 18:00 น. นี้ เจอกัน หาเพื่อนช่วยตีบอส หรือสร้างห้องรอเพื่อนได้เลยที่ Pogopartyth 🚀', 'all', NULL, NULL, 1, 'sended', NULL, NULL, '2025-12-17 06:07:35'),
(29, '❄️ ลมหนาวมาแล้ว พร้อมบอสใหม่!', 'กิจกรรม Winter Holiday เริ่มแล้ว! อย่าพลาดโอกาสจับโปเกมอนคอสตูมพิเศษและบอสน้ำแข็งสุดแกร่ง เข้ามาเช็คห้องว่างเลย! ☃️', 'all', NULL, NULL, 1, 'sended', NULL, NULL, '2025-12-20 09:04:51'),
(30, '🔥 ห้องเต็มไวมาก! เทรนเนอร์รออยู่', 'เพื่อนๆ กำลังหาคนช่วยตีบอสอยู่เพียบ! ขาดอีกแค่ไม่กี่คนก็เริ่มตีได้แล้ว เข้ามาจองที่ด่วน 🏃💨', 'all', NULL, NULL, 1, 'sended', NULL, NULL, '2025-12-23 07:43:21'),
(31, '⚔️ ได้เวลาตีบอสแล้ว!', 'เพื่อนๆ กำลังหาคนช่วยตีบอสอยู่เพียบ! ขาดอีกแค่ไม่กี่คนก็เริ่มตีได้แล้ว เข้ามาจองที่ด่วน 🏃💨', 'all', NULL, NULL, 1, 'sended', NULL, NULL, '2025-12-23 07:49:04'),
(33, 'เย็นนี้ 6 โมง! น้องแมวน้ำ Spheal กลิ้งมาแจก XP', 'Spotlight Hour วันนี้พบกับ Spheal (ชิมาซึ) พร้อมโบนัส XP x2 เมื่อวิวัฒนาการ! 📈 ใครดองของไว้เตรียมกดยาวๆ จบแล้วมาหาเพื่อนตีบอสต่อได้เลย!', 'all', NULL, NULL, 1, 'sended', NULL, NULL, '2025-12-23 08:11:37'),
(34, '⚡️ Zekrom มังกรสายฟ้า กลับมาแล้ว!', 'บอส 5 ดาวตัวใหม่ Zekrom และเมก้า Mega Glalie ❄️ เริ่มเกิดแล้ว! ใครยังไม่มีตัว หรือตามล่าไชนี่เท่ๆ เข้ามาจองห้องตีบอสด่วน เพื่อนรอเพียบ!', 'all', NULL, NULL, 1, 'sended', NULL, NULL, '2025-12-23 08:20:44'),
(37, '🎄 โค้งสุดท้าย Winter Holiday Part 1', 'พรุ่งนี้กิจกรรมจะเปลี่ยนพาร์ทแล้ว! รีบเก็บตกโปเกมอนคอสตูมชุดคริสต์มาสก่อนหมดเวลา 🎅 แล้วมาจัดปาร์ตี้ตีบอสส่งท้ายปีกันที่ Pogopartyth', 'all', NULL, NULL, 1, 'sended', NULL, NULL, '2025-12-24 13:20:27'),
(38, 'ทดสอบการสร้าง Notification', 'ทดสอบการสร้าง Notification', 'all', NULL, NULL, 1, 'sended', NULL, NULL, '2025-12-25 15:41:48'),
(39, 'ทดสอบการสร้าง Notification 2', 'ทดสอบการสร้าง Notification 2', 'all', NULL, NULL, 1, 'schedule', '2025-12-25 15:00:00', 'success', '2025-12-25 15:42:38'),
(40, 'ทดสอบการสร้าง Notification 3', 'ทดสอบการสร้าง Notification 3', 'user', 134, NULL, 1, 'sended', NULL, NULL, '2025-12-25 15:43:26'),
(41, 'ทดสอบการสร้าง Notification 4', 'ทดสอบการสร้าง Notification 4', 'room', NULL, 675, 1, 'sended', NULL, NULL, '2025-12-25 15:45:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sent_by` (`sent_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`sent_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
