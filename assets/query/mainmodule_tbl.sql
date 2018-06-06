-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2018 at 02:57 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eklavya`
--

-- --------------------------------------------------------

--
-- Table structure for table `mainmodule_tbl`
--

CREATE TABLE `mainmodule_tbl` (
  `moduleId` int(11) NOT NULL,
  `moduleName` varchar(100) NOT NULL,
  `subModule` int(11) NOT NULL COMMENT '0=false 1=true ',
  `status` int(11) NOT NULL COMMENT '0=false 1=true ',
  `userId` int(11) DEFAULT NULL,
  `orderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainmodule_tbl`
--

INSERT INTO `mainmodule_tbl` (`moduleId`, `moduleName`, `subModule`, `status`, `userId`, `orderId`) VALUES
(1, 'General', 1, 1, 1, 1),
(2, 'Masters', 1, 1, 1, 2),
(3, 'Transactions', 1, 1, 1, 3),
(4, 'Reports', 1, 1, 1, 4),
(5, 'Financial Statements', 1, 1, 1, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mainmodule_tbl`
--
ALTER TABLE `mainmodule_tbl`
  ADD PRIMARY KEY (`moduleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mainmodule_tbl`
--
ALTER TABLE `mainmodule_tbl`
  MODIFY `moduleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
