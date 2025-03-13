-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 09:57 AM
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
-- Database: `rt_pintar`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_auth`
--

CREATE TABLE `t_auth` (
  `id` int(11) NOT NULL,
  `c_username` varchar(100) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `c_password` varchar(200) NOT NULL,
  `c_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_list_blood`
--

CREATE TABLE `t_list_blood` (
  `id` int(11) NOT NULL,
  `c_name` varchar(5) NOT NULL,
  `c_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_list_education`
--

CREATE TABLE `t_list_education` (
  `id` int(11) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `c_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_list_marriage_status`
--

CREATE TABLE `t_list_marriage_status` (
  `id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `c_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_list_national`
--

CREATE TABLE `t_list_national` (
  `id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `c_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_list_religion`
--

CREATE TABLE `t_list_religion` (
  `id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `c_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_list_status`
--

CREATE TABLE `t_list_status` (
  `id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `c_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_residents`
--

CREATE TABLE `t_residents` (
  `id` int(11) NOT NULL,
  `c_nik` varchar(200) DEFAULT NULL,
  `c_name` varchar(200) DEFAULT NULL,
  `c_born_loc` varchar(200) DEFAULT NULL,
  `c_born_date` date DEFAULT NULL,
  `c_gender` varchar(1) DEFAULT NULL,
  `c_religion` varchar(1) DEFAULT NULL,
  `c_education` varchar(1) DEFAULT NULL,
  `c_work` varchar(200) DEFAULT NULL,
  `c_blood` varchar(1) DEFAULT NULL,
  `c_marriage_status` varchar(1) DEFAULT NULL,
  `c_marriage_date` date DEFAULT NULL,
  `c_status` varchar(1) DEFAULT NULL,
  `c_national` varchar(1) DEFAULT NULL,
  `c_paspor` varchar(200) DEFAULT NULL,
  `c_kitap` varchar(200) DEFAULT NULL,
  `c_father` varchar(200) DEFAULT NULL,
  `c_mother` varchar(200) DEFAULT NULL,
  `c_kk_number` varchar(200) DEFAULT NULL,
  `c_address` text DEFAULT NULL,
  `c_phone` varchar(20) NOT NULL,
  `c_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_residents_place`
--

CREATE TABLE `t_residents_place` (
  `id` int(11) NOT NULL,
  `c_code` varchar(50) NOT NULL,
  `c_nik` varchar(200) NOT NULL,
  `c_coordinate` varchar(200) NOT NULL,
  `c_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_auth`
--
ALTER TABLE `t_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_list_blood`
--
ALTER TABLE `t_list_blood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_list_education`
--
ALTER TABLE `t_list_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_list_marriage_status`
--
ALTER TABLE `t_list_marriage_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_list_national`
--
ALTER TABLE `t_list_national`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_list_religion`
--
ALTER TABLE `t_list_religion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_list_status`
--
ALTER TABLE `t_list_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_residents`
--
ALTER TABLE `t_residents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_residents_place`
--
ALTER TABLE `t_residents_place`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_auth`
--
ALTER TABLE `t_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_list_blood`
--
ALTER TABLE `t_list_blood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_list_education`
--
ALTER TABLE `t_list_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_list_marriage_status`
--
ALTER TABLE `t_list_marriage_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_list_national`
--
ALTER TABLE `t_list_national`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_list_religion`
--
ALTER TABLE `t_list_religion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_list_status`
--
ALTER TABLE `t_list_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_residents`
--
ALTER TABLE `t_residents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_residents_place`
--
ALTER TABLE `t_residents_place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
