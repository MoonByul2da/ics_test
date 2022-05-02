-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2022 at 01:44 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ics_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_id` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(30) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `sum` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `paid_date` date NOT NULL,
  `pay_status` varchar(50) NOT NULL,
  `paid_date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `pid`, `name`, `price`, `quantity`, `sum`, `address`, `paid_date`, `pay_status`, `paid_date_end`) VALUES
(1, '0002', 'Moon Byul-Yi', '150', '5', '750', '(Daehan-minguk)\r\nSeoul-teukbyeolsi, Jongno-gu, Sajik-ro-3-gil 23,\r\n102-dong 304-ho\r\nHong Gildong gwiha\r\n30174', '2022-05-07', 'paid success', '2022-05-02'),
(2, '0001', 'Kim Youngson', '120', '3', '360', '(Daehan-minguk)\r\nSeoul-teukbyeolsi, Jongno-gu, Naesu-2-dong 199-beonji 1-ho,\r\nSilla Apateu 102-dong 304-ho\r\nHong Gildong gwiha\r\n103-531', '2022-05-05', 'not success', '2022-05-07'),
(3, '0003', 'park chare young', '200', '3', '600', 'Thailand Bangkok 10200', '2022-05-03', 'not success', '2022-05-09'),
(4, '0004', 'lalisa manoban', '', '5', '', 'Thailand Bangkok 10400', '0000-00-00', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pid` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `pattern` varchar(50) NOT NULL,
  `figure` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pid`, `color`, `pattern`, `figure`, `size`, `price`, `gender`) VALUES
(1, '0001', 'green', 'ผ้าบาง', 'คอกลม', 'l', '120', 'male'),
(2, '0002', 'red', 'ผ้าหนา', 'คอวี', 'm', '150', 'male'),
(3, '0003', 'whilte', 'ผ้าบาง', 'คอกลม', 'm', '200', 'female'),
(4, '0004', 'black', 'ผ้าบาง', 'คอวี', 's', '120', 'female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
