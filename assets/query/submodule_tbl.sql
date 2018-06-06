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
-- Table structure for table `submodule_tbl`
--

CREATE TABLE `submodule_tbl` (
  `subModuleId` int(11) NOT NULL,
  `mainModuleId` int(11) DEFAULT NULL,
  `moduleName` varchar(100) DEFAULT NULL,
  `isActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submodule_tbl`
--

INSERT INTO `submodule_tbl` (`subModuleId`, `mainModuleId`, `moduleName`, `isActive`) VALUES
(1, 1, 'Company', b'1'),
(2, 1, 'Role', b'1'),
(3, 1, 'Users', b'1'),
(4, 1, 'Settings', b'1'),
(5, 2, 'Units', b'1'),
(6, 2, 'Unit Conversion', b'1'),
(7, 2, 'Product Group', b'1'),
(8, 2, 'Products', b'1'),
(9, 2, 'Contacts', b'1'),
(10, 2, 'Account Groups', b'1'),
(11, 2, 'Account Ledger', b'1'),
(12, 1, 'Financial Year', b'1'),
(13, 3, 'Payment Voucher', b'1'),
(14, 3, 'Receipt Voucher', b'1'),
(15, 3, 'Contra Voucher', b'1'),
(16, 3, 'Journal Voucher', b'1'),
(17, 3, 'PDC Payble', b'1'),
(18, 3, 'PDC Receivable', b'1'),
(19, 3, 'PDC Clearance ', b'1'),
(20, 3, 'Purchase Invoice', b'1'),
(21, 3, 'Purchase Return', b'1'),
(22, 3, 'Sales Bill', b'1'),
(23, 3, 'POS', b'1'),
(24, 3, 'Sales Return', b'1'),
(25, 3, 'Estimate Bill', b'1'),
(26, 4, 'Day Book', b'1'),
(27, 4, 'Ledger Book', b'1'),
(28, 4, 'Stock Report', b'1'),
(29, 4, 'Closing Stock Report', b'1'),
(30, 4, 'Tax Report', b'1'),
(32, 5, 'Profit And Loss', b'1'),
(33, 5, 'Balance Sheet', b'1'),
(34, 5, 'Trial Balance', b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `submodule_tbl`
--
ALTER TABLE `submodule_tbl`
  ADD PRIMARY KEY (`subModuleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `submodule_tbl`
--
ALTER TABLE `submodule_tbl`
  MODIFY `subModuleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
