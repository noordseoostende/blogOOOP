-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Gegenereerd op: 16 jun 2020 om 12:46
-- Serverversie: 8.0.18
-- PHP-versie: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbblogooop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL COMMENT 'INDEX',
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `comment`
--

INSERT INTO `comment` (`id`, `photo_id`, `author`, `body`) VALUES
(1, 1, 'liam', '26'),
(2, 3, 'SAM', '15'),
(3, 2, 'Sam', '0'),
(4, 1, 'Sam', 'mijn 2e commentaar');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE IF NOT EXISTS `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text NOT NULL,
  `filename` varchar(255) NOT NULL,
  `alternate_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `photo`
--

INSERT INTO `photo` (`id`, `title`, `caption`, `description`, `filename`, `alternate_text`, `type`, `size`) VALUES
(1, 'Photo Flag Belgium', '', '<p>Lorem ipsum dolor sit amet, consectetur</p>', 'image.jpg', '', 'jpg', 35),
(2, 'SAM', '', 'Lorem ipsum', '', '', '', 15),
(3, 'SAM', '', 'Lorem ipsum', 'images.jpg', '', '', 15),
(4, 'SAM', '', 'Lorem ipsum', 'images.jpg', '', '', 15),
(6, 'btrflyy2', 'pratend', 'hoelang? 18 min', 'hi.jpg', 'de vlinder praat over haar leven', 'jpg', 15),
(7, 'vlinder', '', '', 'imbtrfly.jpg', '', 'jpg', 15),
(9, 'o2', '', '', 'inkt.jpg', '', 'jpg', 15),
(10, 'vue', '', '', 'kader', '', '', 15),
(11, 'o3', '', '', 'veel.jpg', '', 'jpg', 15),
(12, 'o4', '', '', 'violet.jpg', '', '', 15),
(13, 'o5', '', '', 'rondom.jpg', '', 'jpg', 15),
(14, 'o6', '', '', 'zwrt.jpg', '', '', 15),
(15, 'kleur', '', '', 'kleur.jpg', '', 'jpg', 15),
(16, 'o7', '', '', 'opbloem.jpg', '', 'jpg', 15),
(17, 'o8', '', '', 'quentin.jpg', '', 'jpg', 15),
(18, 'in', '', '', 'inkt.jpg', '', '', 15),
(19, 'o9', '', '', 'gbtr.jpg', '', 'jpg', 15),
(20, 'o20', '', '', 'wit.jpg', '', 'jpg', 15),
(21, 'o21', '', '', 'zweeft.jpg', '', 'jpg', 15),
(22, 'o22', '', '', 'hidden.jpg', '', 'jpg', 15),
(23, 'o23', '', '', 'dezeblm.jpg', '', 'jpg', 15);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `user_image`) VALUES
(1, 'liam', 'alfa', 'Liam', 'Tompson', 'nm.jpg'),
(2, 'charli', 'charli', 'charlion', 'chaplin', 'gd.jpg'),
(3, 'sara', 'sara', 'Sara', 'Conor', 'im.jpg'),
(4, 'Sam', '123', 'Sam', 'Decursist', 'violeta.jpg'),
(7, 'TEST20', '', '', '', 'nata.jpg'),
(12, 'Jack', 'alfa', 'Jack', 'Wolfscin', 'istina.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
