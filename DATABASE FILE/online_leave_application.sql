-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 10:57 AM
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
-- Database: `online leave application`
--

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(11) NOT NULL,
  `eid` int(11) NOT NULL COMMENT 'Employee ID',
  `ename` varchar(255) NOT NULL COMMENT 'Employee''s Username',
  `descr` varchar(255) NOT NULL COMMENT 'Leave Reason',
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `eid`, `ename`, `descr`, `fromdate`, `todate`, `status`) VALUES
(1, 2, 'AB', 'Other : Demo Test', '2021-07-01', '2021-07-02', 'Rejected'),
(2, 2, 'Keny', 'Sabbatical : Testing after setting up dates', '2021-07-25', '2021-07-27', 'Rejected'),
(4, 2, 'Yasar', 'Vacation : test after setting up interval days', '2021-07-25', '2021-08-04', 'Rejected'),
(5, 5, 'Meet', 'Casual : need to spend some time with my family!', '2021-07-26', '2021-07-28', 'Accepted'),
(6, 6, 'Parth', 'Sick : I need to Quarantine myself!', '2021-07-26', '2021-08-09', 'Accepted'),
(7, 5, 'Jeet', 'Maternity / Paternity : Need to take care of my newborn', '2021-07-26', '2021-08-02', 'Accepted'),
(8, 2, 'xyz', 'Casual : going on a vacation', '2021-07-27', '2021-08-03', 'Rejected'),
(9, 7, 'Ayush', 'Sick : rretrrtert', '2023-07-04', '2023-07-26', 'Accepted'),
(11, 7, 'darshan029', 'Time off without pay : Demo leave', '2023-07-19', '2023-07-31', 'Accepted'),
(12, 10, 'keny', 'Vacation : rurtrutruu', '2023-07-06', '2023-07-20', 'Accepted'),
(13, 8, 'darshan029', 'Time off without pay : cghhffygf', '2023-07-14', '2023-07-23', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `city` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `phone` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `name`, `password`, `type`, `email`, `gender`, `city`, `department`, `phone`) VALUES
(8, 'Darshan Rana', 'darshan029', '$2y$10$NmYxMjAxYTNhODY0ZmZkZ.AhOqJmYQ3i9U32qnInEnbJ2x3KClgEG', 'admin', 'darshan41@gmail.com', 'Male', 'Khambhat', 'Engineering', '1234567668'),
(10, 'keny patel', 'keny', '$2y$10$NDg2NzU3ZDdhYjA1NmVkZ.2G5xLXfQFujyetyyLNFJEmpOPAdj6NK', 'employee', 'dugduigdugd', 'Male', 'Borsad', 'Engineering', '3243435146');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
