-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 07:39 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jeager_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clientId` varchar(255) NOT NULL,
  `clientSecret` varchar(255) NOT NULL,
  `redirectUri` varchar(255) NOT NULL,
  `grants` set('','','','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientId`, `clientSecret`, `redirectUri`, `grants`) VALUES
('will.com', 'will.com Secret', 'http://localhost:8000/auth/callback', ''),
('will.com', 'will.com Secret', 'http://localhost:8000/auth/callback', ''),
('will.comm', 'will.comm Secret', 'http://localhost:8000/auth/callback', ''),
('will.comm', 'will.comm Secret', 'http://localhost:8000/auth/callback', ''),
('will.comm', 'will.comm Secret', 'http://localhost:8000/auth/callback', ''),
('will.comm', 'will.comm Secret', 'http://localhost:8000/auth/callback', ''),
('will.comm', 'will.comm Secret', 'http://localhost:8000/auth/callback', ''),
('will.comm', 'will.comm Secret', 'http://localhost:8000/auth/callback', ''),
('will.comm', 'will.comm Secret', 'http://localhost:8000/auth/callback', ''),
('will.comm', 'will.comm Secret', 'http://localhost:8000/auth/callback', ''),
('will.comm', 'will.comm Secret', 'http://localhost:8000/auth/callback', ''),
('wildan', '123456', 'http://localhost:8000/auth/callback', '');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Super admin'),
(2, 'Admin'),
(3, 'Director'),
(4, 'Head of engineering'),
(5, 'Operator');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `accessToken` varchar(255) NOT NULL,
  `accessTokenExpiresAt` date NOT NULL,
  `refreshToken` varchar(255) NOT NULL,
  `refreshTokenExpiresAt` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
