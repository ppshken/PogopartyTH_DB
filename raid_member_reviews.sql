-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2026 at 12:21 PM
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
-- Table structure for table `raid_member_reviews`
--

CREATE TABLE `raid_member_reviews` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `reviewer_id` int(11) NOT NULL,
  `target_user_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raid_member_reviews`
--

INSERT INTO `raid_member_reviews` (`id`, `room_id`, `reviewer_id`, `target_user_id`, `rating`, `comment`, `created_at`) VALUES
(13, 811, 134, 135, 5, NULL, '2026-01-29 17:07:27'),
(14, 811, 134, 136, 5, NULL, '2026-01-29 17:07:27'),
(15, 811, 134, 137, 5, NULL, '2026-01-29 17:07:27'),
(16, 811, 134, 143, 5, NULL, '2026-01-29 17:07:27'),
(17, 811, 134, 144, 5, NULL, '2026-01-29 17:07:27'),
(28, 812, 134, 135, 5, NULL, '2026-01-29 18:13:19'),
(29, 812, 134, 136, 5, NULL, '2026-01-29 18:13:19'),
(30, 812, 134, 137, 5, NULL, '2026-01-29 18:13:19'),
(31, 812, 134, 143, 5, NULL, '2026-01-29 18:13:19'),
(32, 812, 134, 144, 5, NULL, '2026-01-29 18:13:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `raid_member_reviews`
--
ALTER TABLE `raid_member_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_room_target` (`room_id`,`target_user_id`),
  ADD UNIQUE KEY `room_id` (`room_id`,`target_user_id`),
  ADD KEY `idx_target` (`target_user_id`),
  ADD KEY `reviewer_id` (`reviewer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `raid_member_reviews`
--
ALTER TABLE `raid_member_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `raid_member_reviews`
--
ALTER TABLE `raid_member_reviews`
  ADD CONSTRAINT `raid_member_reviews_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `raid_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `raid_member_reviews_ibfk_2` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `raid_member_reviews_ibfk_3` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
