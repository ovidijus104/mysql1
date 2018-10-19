-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2018 m. Spa 19 d. 13:57
-- Server version: 5.7.19
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `comments`
--

CREATE TABLE `comments` (
  `commentId` int(10) UNSIGNED NOT NULL,
  `newsId` int(10) UNSIGNED NOT NULL,
  `text` tinytext NOT NULL,
  `date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `comments`
--

INSERT INTO `comments` (`commentId`, `newsId`, `text`, `date`) VALUES
(1, 1, 'Komentaras naujas, pirma naujiena', '2018-10-18 05:23:12'),
(2, 1, 'Komentaras senas, pirma naujiena', '2018-10-18 04:23:12'),
(3, 2, 'Komentras naujas, antra naujiena', '2018-10-19 08:16:13'),
(4, 2, 'Komentaras senas, antra naujiena', '2018-10-19 07:16:13'),
(5, 3, 'Komentaras naujas, trecia naujiena', '2018-10-18 11:12:13'),
(6, 3, 'Komentaras senas, trecia naujiena', '2018-10-17 11:05:13'),
(9, 4, 'Komentaras senas, ketvirta naujiena', '2018-10-19 09:23:18'),
(10, 4, 'Komentaras naujas, ketvirta naujiena', '2018-10-19 09:40:18'),
(11, 5, 'Komentaras naujas, naujiena 5', '2018-10-18 05:23:21'),
(12, 5, 'Komentaras senas, naujiena 5', '2018-10-18 03:23:21'),
(13, 5, 'senas komentaras, naujiena 5', '2018-10-09 03:17:12'),
(14, 4, 'senas komentaras, naujiena 4', '2018-10-14 23:11:05'),
(15, 6, 'Naujas komentras, naujiena 6', '2018-10-17 02:07:07'),
(16, 6, 'Senas komentaras, naujiena 6', '2018-10-17 01:07:07'),
(17, 7, 'Naujas komentras, naujiena 7', '2018-10-19 00:00:00'),
(18, 7, 'Senas komentaras, naujiena 7', '2018-10-18 23:20:00'),
(19, 8, 'Naujas komentras, naujiena 8', '2018-10-17 23:00:00'),
(20, 8, 'Senas komentras, naujiena 8', '2018-10-16 22:00:00'),
(21, 9, 'Naujas komentaras, naujiena 9', '2018-10-18 12:12:00'),
(22, 9, 'Senas komentaras, naujiena 9', '2018-10-18 12:10:00'),
(23, 10, 'Naujas komentras, naujiena 10', '2018-10-19 05:00:00'),
(24, 10, 'Senas komentras, naujiena 10', '2018-10-19 04:00:00'),
(27, 11, 'Naujas komentaras, naujiena 11', '2018-10-19 13:00:00'),
(28, 11, 'Senas komentaras, naujiena 11', '2018-10-19 12:00:00'),
(29, 12, 'Naujas komentaras, naujiena 12', '2018-10-18 09:00:00'),
(30, 12, 'Senas komentaras, naujiena 12', '2018-10-18 07:00:00'),
(31, 12, 'Senas komentaras, naujiena 12', '2018-10-17 00:00:00'),
(32, 11, 'Senas komentaras, naujiena 11', '2018-10-15 23:08:06');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `news`
--

CREATE TABLE `news` (
  `newsId` int(10) UNSIGNED NOT NULL,
  `text` tinytext NOT NULL,
  `date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `news`
--

INSERT INTO `news` (`newsId`, `text`, `date`) VALUES
(1, 'Naujiena vienas', '2018-10-16 04:16:18'),
(2, 'Naujiena antra', '2018-10-19 04:16:18'),
(3, 'Naujiena trys', '2018-10-18 07:18:21'),
(4, 'Naujiena keturi', '2018-10-18 08:18:21'),
(5, 'Naujiena penki', '2018-10-19 03:16:13'),
(6, 'Naujiena šeši', '2018-10-19 06:16:13'),
(7, 'Naujiena septyni', '2018-10-18 10:28:16'),
(8, 'Naujiena astuoni', '2018-10-18 15:28:16'),
(9, 'Naujiena devini', '2018-10-19 10:28:16'),
(10, 'Naujiena desimt', '2018-10-17 09:28:15'),
(11, 'Naujiena vienuolika', '2018-10-19 11:55:50'),
(12, 'Naujiena dvylika', '2018-10-15 17:20:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
