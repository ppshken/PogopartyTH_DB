-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 11, 2026 at 08:34 PM
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
-- Table structure for table `raid_boss_counter`
--

CREATE TABLE `raid_boss_counter` (
  `id` int(11) NOT NULL,
  `raid_boss_id` int(11) NOT NULL,
  `pokemon_id` int(11) NOT NULL,
  `pokemon_name` varchar(255) NOT NULL,
  `pokemon_image` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raid_boss_counter`
--

INSERT INTO `raid_boss_counter` (`id`, `raid_boss_id`, `pokemon_id`, `pokemon_name`, `pokemon_image`, `created_at`) VALUES
(1, 39, 0, 'Ponyta', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm77.icon.png', '2026-01-11 15:27:54'),
(2, 39, 0, 'Krabby', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm98.icon.png', '2026-01-11 15:27:54'),
(3, 39, 0, 'Sandygast', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm769.icon.png', '2026-01-11 15:27:54'),
(4, 39, 0, 'Mega Blaziken', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm257.fMEGA.icon.png', '2026-01-11 15:27:54'),
(5, 39, 0, 'Onix', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm95.icon.png', '2026-01-11 15:27:54'),
(6, 39, 0, 'Magmar', 'https://cdn.leekduck.com/assets/img/pokemon_icons/pm126.icon.png', '2026-01-11 15:27:54'),
(7, 58, 0, 'White Kyurem', 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/646_f2.png', '2026-01-11 20:15:45'),
(8, 58, 0, 'Black Kyurem', 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/646_f3.png', '2026-01-11 20:15:45'),
(9, 58, 0, 'Diancie', 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/719_f2.png', '2026-01-11 20:15:45'),
(10, 58, 0, 'Rhyperior', 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/464.png', '2026-01-11 20:15:45'),
(11, 58, 0, 'Rampardos', 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/409.png', '2026-01-11 20:15:45'),
(12, 58, 0, 'Mamoswine', 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/473.png', '2026-01-11 20:15:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `raid_boss_counter`
--
ALTER TABLE `raid_boss_counter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raid_boss_id` (`raid_boss_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `raid_boss_counter`
--
ALTER TABLE `raid_boss_counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `raid_boss_counter`
--
ALTER TABLE `raid_boss_counter`
  ADD CONSTRAINT `raid_boss_counter_ibfk_1` FOREIGN KEY (`raid_boss_id`) REFERENCES `raid_boss` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
