-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2025 at 07:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
-- Table structure for table `chat_friends`
--

CREATE TABLE `chat_friends` (
  `id` int(11) NOT NULL,
  `friendship_id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `message` text NOT NULL,
  `status` enum('read','send') NOT NULL DEFAULT 'send',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_friends`
--

INSERT INTO `chat_friends` (`id`, `friendship_id`, `sender`, `message`, `status`, `created_at`) VALUES
(65, 56, 76, 'สวัสดีครับ', 'read', '2025-11-02 18:14:12'),
(66, 56, 76, 'เมื่อไหร่จะเริ่ม', 'read', '2025-11-02 18:14:20'),
(67, 56, 76, 'ยังอีก', 'read', '2025-11-02 18:15:32'),
(68, 56, 76, 'ว่าไง เมื่อไหร่จะรับเพื่อนครับ', 'read', '2025-11-02 18:17:11'),
(69, 56, 79, 'แปปครับ', 'read', '2025-11-02 18:17:44'),
(70, 57, 76, 'ควย', 'send', '2025-11-02 18:18:43'),
(71, 57, 76, 'อ่านด้วย สัส', 'send', '2025-11-02 18:18:52'),
(72, 56, 76, 'โอเครครับ', 'read', '2025-11-02 18:19:08'),
(73, 56, 76, 'สัสหมา', 'send', '2025-11-02 18:19:24'),
(74, 56, 76, 'เหี้ยจริงๆนะ', 'send', '2025-11-02 18:19:29'),
(75, 56, 76, 'สันขวาน', 'send', '2025-11-02 18:19:52'),
(76, 58, 76, 'สวัสดีครับ', 'read', '2025-11-02 18:20:07'),
(77, 58, 76, 'ผมขอเพื่อนไป รับเพื่อนผมด้วยนะครับ', 'read', '2025-11-02 18:20:19'),
(78, 58, 76, 'ขอบคุณมากๆครับ ที่ชวนผมตีบอส', 'read', '2025-11-02 18:20:32'),
(79, 56, 76, 'ควย', 'send', '2025-11-02 18:21:50'),
(80, 56, 76, 'สัส', 'send', '2025-11-02 18:21:52'),
(81, 56, 76, 'หน้าหี', 'send', '2025-11-02 18:21:55'),
(82, 56, 76, 'ฮัลโหล เพื่อน', 'send', '2025-11-02 18:22:32'),
(83, 58, 82, 'ไม่เป็นไรครับ 555', 'read', '2025-11-02 18:25:28'),
(84, 58, 82, 'ช่วยๆกันไปครับ', 'read', '2025-11-02 18:25:38'),
(85, 58, 82, 'แอพนี้ดีจริงครับเนี้ย', 'read', '2025-11-02 18:25:46'),
(86, 58, 76, 'ผมก็ว่างั้นแหล่ะ ถือว่าเจ๋งเอาเรื่อง', 'read', '2025-11-02 18:27:19'),
(87, 58, 82, 'ทำมาดีมาก', 'send', '2025-11-02 18:36:40'),
(88, 58, 82, 'ฟังชั่นครบครัน', 'send', '2025-11-02 18:36:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_friends`
--
ALTER TABLE `chat_friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `friendship_id` (`friendship_id`,`created_at`),
  ADD KEY `sender` (`sender`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_friends`
--
ALTER TABLE `chat_friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_friends`
--
ALTER TABLE `chat_friends`
  ADD CONSTRAINT `chat_friends_ibfk_1` FOREIGN KEY (`friendship_id`) REFERENCES `friendships` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_friends_ibfk_2` FOREIGN KEY (`sender`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
