-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2019 at 09:44 AM
-- Server version: 5.7.26-0ubuntu0.19.04.1
-- PHP Version: 7.2.19-0ubuntu0.19.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FIA`
--
CREATE DATABASE IF NOT EXISTS `FIA` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `FIA`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(250) NOT NULL,
  `fullName` varchar(250) NOT NULL,
  `emailAddress` varchar(250) NOT NULL,
  `mobileNumber` varchar(250) NOT NULL,
  `physicalAddress` varchar(250) NOT NULL,
  `universityCampus` varchar(250) NOT NULL,
  `locationPreference` varchar(250) NOT NULL,
  `priceRange` varchar(250) NOT NULL,
  `createdAt` varchar(250) NOT NULL,
  `updatedAt` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `emailAddress`, `mobileNumber`, `physicalAddress`, `universityCampus`, `locationPreference`, `priceRange`, `createdAt`, `updatedAt`) VALUES
(64395, 'Malcom X', 'mx@mail.com', '137365353535', 'Harlem', 'New York', 'Town,Westlands', 'D', '2019-07-04 19:38:52', '2019-07-04 19:38:52'),
(66315, 'Kendrick Lamar', 'kdot@mail.com', '56738282', 'Compton', 'UCLA', 'Parklands', 'E', '2019-07-05 05:22:41', '2019-07-05 05:22:41'),
(187136, 'Real Rude Boy From Kingston', 'rrbfk@mail.com', '9876363636', 'Kingston', 'Technical University of Kingston', 'Town', 'D', '2019-07-05 05:38:37', '2019-07-05 05:38:37'),
(198367, 'Tom Mboya', 'tom@mail.com', '0706850346', 'Harlem', 'University of Nairobi', 'Town,Kileleshwa', 'C', '2019-07-04 19:47:23', '2019-07-04 19:47:23'),
(388256, 'Hare Hare', 'h@mail.com', '27272899191', 'Buruburu', 'Technical University of Mombasa', 'Parklands,Ngumo Estate,Kileleshwa', 'D', '2019-07-05 03:34:29', '2019-07-05 03:34:29'),
(641581, 'Arnold Mboya', 'mboyamziki@gmail.com', '63783883', 'Buruburu', 'JKUAT', 'Town,Parklands,Ngara', 'C', '2019-07-05 03:31:10', '2019-07-05 03:31:10'),
(725415, 'Chris Muga', 'ChrisMuga94@gmail.com', '254704313126', 'Buruburu', 'Technical University of Mombasa', 'Town,Pangani,Kileleshwa', 'F', '2019-07-04 18:59:08', '2019-07-04 18:59:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emailAddress` (`emailAddress`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
