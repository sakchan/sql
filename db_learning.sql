-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 10:16 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id_book` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `id_publish` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `years` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id_book`, `title`, `author`, `id_publish`, `price`, `years`) VALUES
(1, 'VB.net', 'ศักดิ์ชาญ เหลืองมณีโรจน์', 1, 550, '2550'),
(2, 'Windows Server 2008', 'กิตติ สามารถ', 2, 1100, '2553'),
(3, 'การตกแต่งเว็บด้วย joomla', 'บุญเหลือ นาบำรุง', 3, 1100, '2553'),
(4, 'Microsoft words', 'ฐิติมา อนันตาภรณ์', 2, 950, '2549'),
(5, 'Delphi Programming ', 'บุญ เจริญดี', 1, 350, '2539'),
(6, 'Windows 2003', 'วรัญญู มากเจริญ', 2, 850, '2552'),
(7, 'Microsoft Excel 2003', 'แบกรับ ทุกด้าน', 2, 1600, '2553'),
(8, '๋๋๋๋J Query', 'มานะ อดทน', 4, 100, '2543');

-- --------------------------------------------------------

--
-- Table structure for table `type_book`
--

CREATE TABLE `type_book` (
  `id_publish` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type_book`
--

INSERT INTO `type_book` (`id_publish`, `name`, `address`) VALUES
(1, 'KTP books', '11/1 ถ.มาลีนนท์ บางพลัด กทม 10240'),
(2, 'se-ed books', '33/6 บางรัก กทม 10520'),
(3, 'ฺB-Books', '35-3 บางนายาว ห้วยชวาง กทม 11560');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id_book`);

--
-- Indexes for table `type_book`
--
ALTER TABLE `type_book`
  ADD PRIMARY KEY (`id_publish`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `type_book`
--
ALTER TABLE `type_book`
  MODIFY `id_publish` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
