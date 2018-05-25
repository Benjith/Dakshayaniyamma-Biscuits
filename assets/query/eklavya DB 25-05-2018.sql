-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2018 at 09:26 AM
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
-- Table structure for table `account_tbl`
--

CREATE TABLE `account_tbl` (
  `accountId` int(11) NOT NULL,
  `accountName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `accountCode` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `accountParentId` int(11) DEFAULT NULL,
  `defaultGroup` tinyint(1) DEFAULT NULL,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_bin,
  `nature` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `account_tbl`
--

INSERT INTO `account_tbl` (`accountId`, `accountName`, `accountCode`, `accountParentId`, `defaultGroup`, `entryDate`, `description`, `nature`) VALUES
(1, 'Expense', '0', 0, 1, '2015-03-17 11:37:32', NULL, 'Expenses'),
(2, 'Current Liability', '3', 23, 1, '2015-03-17 11:37:32', NULL, 'Liabilities'),
(3, 'Short Term Deposits (Asset)', '9', 49, 1, '2015-03-17 11:37:32', NULL, 'Assets'),
(4, 'Direct Expenses', '1', 1, 1, '2015-03-17 11:37:32', NULL, 'Expenses'),
(5, 'Direct Incomes', '2', 12, 1, '2015-03-17 11:37:32', NULL, 'Income'),
(6, 'Duties & Taxes', '10', 3, 1, '2015-03-17 11:37:32', NULL, 'Liabilities'),
(7, 'Fixed Assets', '4', 34, 1, '2015-03-17 11:37:33', NULL, 'Assets'),
(8, 'Indirect Expenses', '1', 1, 1, '2015-03-17 11:37:33', NULL, 'Expenses'),
(9, 'Indirect Incomes', '2', 12, 1, '2015-03-17 11:37:33', NULL, 'Income'),
(10, 'Investments', '4', 34, 1, '2015-03-17 11:37:33', NULL, 'Assets'),
(11, 'Loans & Advances(Asset)', '4', 34, 1, '2015-03-17 11:37:33', NULL, 'Assets'),
(12, 'Income', '0', 0, 1, '2015-03-17 11:37:33', NULL, 'Income'),
(13, 'Loans & Liability(Liability)', '3', 23, 1, '2015-03-17 11:37:33', NULL, 'Liabilities'),
(14, 'Miscellaneous  Expenses', '4', 34, 1, '2015-03-17 11:37:33', NULL, 'Expenses'),
(15, 'Provisions', '10', 2, 1, '2015-03-17 11:37:33', NULL, 'Liabilities'),
(16, 'Purchase Accounts', '1', 1, 1, '2015-03-17 11:37:33', NULL, 'Expenses'),
(17, 'Reserves & Surplus', '7', 47, 1, '2015-03-17 11:37:33', NULL, 'Liabilities'),
(18, 'Sales Accounts', '2', 12, 1, '2015-03-17 11:37:33', NULL, 'Income'),
(19, 'Secured Loans', '20', 13, 1, '2015-03-17 11:37:34', NULL, 'Liabilities'),
(20, 'Stock In Hand', '9', 49, 1, '2015-03-17 11:37:34', NULL, 'Assets'),
(21, 'Sundry Creditors', '10', 2, 1, '2015-03-17 11:37:34', NULL, 'Liabilities'),
(22, 'Sundry Debtors', '9', 49, 1, '2015-03-17 11:37:34', NULL, 'Assets'),
(23, 'Liability', '0', 0, 1, '2015-03-17 11:37:34', NULL, 'Liabilities'),
(24, 'Suspense Account(Asset)', '4', 34, 1, '2015-03-17 11:37:34', NULL, 'Assets'),
(25, 'Suspense Account(Liability)', '3', 23, 1, '2015-03-17 11:37:34', NULL, 'Liabilities'),
(26, 'Unsecured Loans', '20', 13, 1, '2015-03-17 11:37:34', NULL, 'Liabilities'),
(27, 'Proprietor Current Account', '7', 47, 1, '2015-03-17 11:37:34', NULL, 'Assets'),
(28, 'Chits Or Funds', '18', 10, 1, '2015-03-17 11:37:34', NULL, 'Liabilities'),
(29, 'Accounts Payables', '10', 2, 1, '2015-03-17 11:37:34', NULL, 'Expenses'),
(30, 'Accounts Receivables', '9', 10, 1, '2015-03-17 11:37:34', NULL, 'Income'),
(31, 'Accrued Income', '9', 10, 1, '2015-03-17 11:37:35', NULL, 'Income'),
(32, 'Long Term Deposits(Asset)', '3', 4, 1, '2015-03-17 11:37:35', NULL, 'Assets'),
(33, 'Short Term Loans(Liability)', '10', 2, 1, '2015-03-17 11:37:35', NULL, 'Liabilities'),
(34, 'Assets', '0', 0, 1, '2015-03-17 11:37:35', NULL, 'Assets'),
(35, 'Short Term Loans & Advances(Asset)', '9', 49, 1, '2015-03-17 11:37:35', NULL, 'Liabilities'),
(36, 'P D C Payable', '10', 2, 1, '2015-03-17 11:37:35', NULL, 'Expenses'),
(37, 'P D C Receivable', '9', 49, 1, '2015-03-17 11:37:35', NULL, 'Income'),
(38, 'Vendor', '28', 21, 1, '2015-03-17 11:37:35', NULL, 'Liabilities'),
(39, 'Customer', '29', 22, 1, '2015-03-17 11:37:35', NULL, 'Assets'),
(40, 'Operating Expense', '16', 8, 1, '2015-03-17 11:37:35', NULL, 'Expenses'),
(41, 'Non Operating Expense', '16', 8, 1, '2015-03-17 11:37:35', NULL, 'Expenses'),
(42, 'Additional Cost', '12', 4, 1, '2015-03-17 11:37:35', NULL, 'Expenses'),
(43, 'Production cost', '12', 4, 1, '2015-03-17 11:37:35', NULL, 'Expenses'),
(44, 'Bank Account', '9', 49, 1, '2015-03-17 11:37:35', NULL, 'Assets'),
(45, 'Staff Expenses', '12', 4, 1, '2015-03-17 11:37:36', NULL, 'Expenses'),
(46, 'Bank OD Account', '20', 13, 1, '2015-03-17 11:37:36', NULL, 'Liabilities'),
(47, 'Capital Account', '3', 34, 1, '2015-03-17 11:37:36', NULL, 'Liabilities'),
(48, 'Cash In Hand', '9', 49, 1, '2015-03-17 11:37:36', NULL, 'Assets'),
(49, 'Current Assets', '4', 34, 1, '2015-03-17 11:37:36', NULL, 'Assets'),
(51, 'Partner', '1', 1, 1, '2015-03-17 11:37:32', NULL, 'Expenses');

-- --------------------------------------------------------

--
-- Table structure for table `company_tbl`
--

CREATE TABLE `company_tbl` (
  `companyId` int(11) NOT NULL,
  `companyName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tinNumber` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `cstNumber` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `address` text COLLATE utf8_bin,
  `phone` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `place` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `state` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `pincode` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `printType` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `taxBill` tinyint(1) DEFAULT NULL,
  `isPreviousBalance` tinyint(1) DEFAULT NULL,
  `gstIn` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `stateCode` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bankName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `accountNo` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `branchAndIfsCode` varchar(200) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `company_tbl`
--

INSERT INTO `company_tbl` (`companyId`, `companyName`, `tinNumber`, `cstNumber`, `city`, `address`, `phone`, `email`, `place`, `state`, `pincode`, `entryDate`, `printType`, `taxBill`, `isPreviousBalance`, `gstIn`, `stateCode`, `bankName`, `accountNo`, `branchAndIfsCode`) VALUES
(1, 'PULARI AGENCIES', '', '', 'MANJERI', '', '+91 95 3939 6121', '', '', '', '', '2018-01-11 16:16:02', 'Dot', 0, 1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_tbl`
--

CREATE TABLE `contacts_tbl` (
  `contactId` int(11) NOT NULL,
  `ledgerId` int(11) DEFAULT NULL,
  `contactName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `address` text COLLATE utf8_bin,
  `city` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `phoneNumber` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `emailId` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `tinNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dlNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `creditPeriod` int(11) DEFAULT NULL,
  `state` text COLLATE utf8_bin,
  `stateCode` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `gstIn` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `contacts_tbl`
--

INSERT INTO `contacts_tbl` (`contactId`, `ledgerId`, `contactName`, `address`, `city`, `phoneNumber`, `mobile`, `emailId`, `type`, `description`, `tinNumber`, `dlNumber`, `creditPeriod`, `state`, `stateCode`, `gstIn`) VALUES
(1, 14, 'SAI PAPER CUPS', 'No.8, Sasthri Nagar, Ondipudur, Coimbatore - 641016', 'Coimbatore', '9894464994', '9344964994', 'marisk1981@gmail.com', 'Supplier', '', '33726343156', '', 0, 'Tamilnadu', 'TN', '33AQQPM3768M1Z7'),
(2, 16, 'SALI', '', '', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(3, 19, 'MAX AGENCIES', '', '', '', '', '', 'Supplier', '', '', '', 0, '', '', ''),
(4, 20, 'Ponnoth Agencies', '', 'Perinthalmanna', '', '917356116142', '', 'Customer', '', '', '', 0, '', '', ''),
(5, 21, 'Ashique', '', 'Perinthalmanna', '', '918921132585', '', 'Customer', '', '', '', 0, '', '', ''),
(6, 22, 'Kizhisseri Agencies', '', 'Perinthalmanna', '', '919846452828', '', 'Customer', 'Shamsu', '', '', 0, '', '', ''),
(7, 23, 'Kunnummal Agencies', '', 'Perinthalmanna', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(8, 24, 'Random Cstms', '', '', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(9, 25, 'RC KP STORE', 'PULLARA', '', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(10, 26, 'RC KP VEG', 'PULLARA', '', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(11, 27, 'RC PK STORE VALMGM ROAD', 'PULLARA', '', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(12, 28, 'V.P.S PANDIKKAD', 'PANDIKKAD', '', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(13, 29, 'RC THANAL', 'KIZHISSERY', '', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(14, 30, 'N S PACKING', 'KHALEEL', 'MORAYUR', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(15, 31, 'Mongam', '', 'Mongam', '9645935699', '', '', 'Customer', '', '', '', 0, '', '', ''),
(16, 32, 'Zeenath Store', '', 'Kuttippuram', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(17, 33, 'Friends Store Valanchery', '', 'Valanchery', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(18, 34, 'Dilshad Kuruppath', '', 'Kuruppath', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(19, 35, 'Jaseem Store', 'Melattur Bapputti', 'Melattur', '04933278141', '9946069586', '', 'Customer', '', '', '', 0, '', '', ''),
(20, 36, 'Friends Agency Edappal', '', 'Edappal', '', '9846041380', '', 'Customer', '', '', '', 0, '', '', ''),
(21, 37, 'Cmk Edappal', '', 'Edappal', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(22, 38, 'Madeena Store Edappal', '', 'Edappal', '', '9946091766', '', 'Customer', '', '', '', 0, '', '', ''),
(23, 39, 'New Bake House Valanchery', '', 'Valanchery', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(24, 40, 'RC Pullara Chicken Stall', '', 'Pullara', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(25, 41, 'K C Biriyani Store Edavanna', '', 'Edavanna', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(26, 42, 'Faanoos Edavanna', '', 'Edavanna', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(27, 43, 'AMEEN Paper Plates & Paper Works', '', 'Kondotty', '9746485193', '', '', 'Supplier', '', '', '', 0, '', '', ''),
(28, 44, 'Back spot Biriyani Store Kizhisseri', '', 'Kizhisseri', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(29, 45, 'Haqq Store Melattur', '', 'Melattur', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(30, 46, 'Iqbal Store Pandikkad', '', 'Pandikkad', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(31, 47, 'Star Biriyani Store Melattur', '', 'Melattur', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(32, 48, 'C.T Store Wandoor', '', 'Wandoor', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(33, 49, 'Raheem Store Wandoor', '', 'Wandoor', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(34, 50, 'Aee.Vee Polymer Nilambur', '', 'Nilambur', '04931223880', '9400083880', '', 'Customer', '', '', '', 0, '', '', ''),
(35, 51, 'Basheer Kuttippuram', '', 'Kuttippuram', '', '9995900617', '', 'Customer', '', '', '', 0, '', '', ''),
(36, 52, 'Ponnoth Mannarkkad', '', 'Mannarkkad', '9037177297', '8075179020', '', 'Customer', '', '', '', 0, '', '', ''),
(37, 53, 'Hameed Perinthalmanna', '', '', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(38, 54, 'Bake City Vengara', '', 'Vengara', '9947000142', '9142833778', '', 'Customer', '', '', '', 0, '', '', ''),
(39, 55, 'O M Store Vengara', '', 'Vengara', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(40, 56, 'C C Store Kondotty', '', '', '', '', '', 'Customer', '', '', '', 0, '', '', ''),
(41, 57, 'Mark Agencies Malappuram', '', 'Malappuram', '9946700045', '9446840606', '', 'Customer', '', '', '', 0, '', '', ''),
(42, 58, 'Irfan Valanchery', '', 'Valanchery', '9746997390', '', '', 'Customer', '', '', '', 0, '', '', ''),
(43, 59, 'Chattickal Traders Edappal', '', 'Edappal', '', '9562792998', '', 'Customer', '', '', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contradetails_tbl`
--

CREATE TABLE `contradetails_tbl` (
  `contraDetailsId` int(11) NOT NULL,
  `contraMasterId` int(11) DEFAULT NULL,
  `ledgerId` int(11) DEFAULT NULL,
  `amount` decimal(19,4) DEFAULT NULL,
  `chequeOrDD` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `narration` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `contramaster_tbl`
--

CREATE TABLE `contramaster_tbl` (
  `contraMasterId` int(11) NOT NULL,
  `prefix` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `voucherNo` int(11) DEFAULT NULL,
  `voucherDate` datetime DEFAULT NULL,
  `ledgerId` int(11) DEFAULT NULL,
  `DrOrCr` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `amount` decimal(19,4) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `userId` int(11) DEFAULT NULL,
  `financialYearId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `designation_tbl`
--

CREATE TABLE `designation_tbl` (
  `designationId` int(11) NOT NULL,
  `designationName` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `estimatedetails_tbl`
--

CREATE TABLE `estimatedetails_tbl` (
  `estimateDetailsId` int(11) NOT NULL,
  `estimateMasterId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `unitId` int(11) DEFAULT NULL,
  `unitConversionId` int(11) DEFAULT NULL,
  `unitConversionRate` decimal(18,2) DEFAULT NULL,
  `taxType` text COLLATE utf8_bin,
  `taxPercent` decimal(18,2) DEFAULT NULL,
  `qty` decimal(18,3) DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT NULL,
  `netAmount` decimal(18,2) DEFAULT NULL,
  `taxAmount` decimal(18,2) DEFAULT NULL,
  `totalAmount` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `estimatemaster_tbl`
--

CREATE TABLE `estimatemaster_tbl` (
  `estimateMasterId` int(11) NOT NULL,
  `prefix` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `voucherNo` int(11) DEFAULT NULL,
  `entryDate` datetime DEFAULT NULL,
  `ledgerHead` int(11) DEFAULT NULL,
  `salesHead` int(11) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `discount` decimal(18,2) DEFAULT NULL,
  `taxAmount` decimal(18,2) DEFAULT NULL,
  `totalAmount` decimal(18,2) DEFAULT NULL,
  `paidAmount` decimal(18,2) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `tinNo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `taxForm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `salesType` varchar(200) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `financialyear_tbl`
--

CREATE TABLE `financialyear_tbl` (
  `financialYearId` int(11) NOT NULL,
  `fromDate` datetime DEFAULT NULL,
  `toDate` datetime DEFAULT NULL,
  `closed` tinyint(1) DEFAULT NULL,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `closedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `userId` int(11) DEFAULT NULL,
  `finPrefix` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `financialyear_tbl`
--

INSERT INTO `financialyear_tbl` (`financialYearId`, `fromDate`, `toDate`, `closed`, `entryDate`, `closedDate`, `userId`, `finPrefix`) VALUES
(1, '2017-04-01 00:00:00', '2018-03-31 00:00:00', 0, '2018-01-11 16:16:03', '2018-01-11 16:16:03', 1, '2018');

-- --------------------------------------------------------

--
-- Table structure for table `journaldetails_tbl`
--

CREATE TABLE `journaldetails_tbl` (
  `journalDetailsId` int(11) NOT NULL,
  `journalMasterId` int(11) DEFAULT NULL,
  `ledgerId` int(11) DEFAULT NULL,
  `Dr` decimal(19,4) DEFAULT NULL,
  `Cr` decimal(19,4) DEFAULT NULL,
  `chequeOrDD` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `narration` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `journalmaster_tbl`
--

CREATE TABLE `journalmaster_tbl` (
  `journalMasterId` int(11) NOT NULL,
  `prefix` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `voucherNo` int(11) DEFAULT NULL,
  `voucherDate` datetime DEFAULT NULL,
  `amount` decimal(19,4) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `userId` int(11) DEFAULT NULL,
  `financialYearId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ledger_tbl`
--

CREATE TABLE `ledger_tbl` (
  `ledgerId` int(11) NOT NULL,
  `accountId` int(11) DEFAULT NULL,
  `ledgerName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ledgerDate` datetime DEFAULT NULL,
  `openingBalance` decimal(19,4) DEFAULT NULL,
  `CrOrDr` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ledgerDetails` text COLLATE utf8_bin,
  `defaultLedger` tinyint(1) DEFAULT NULL,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `tableName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ledger_tbl`
--

INSERT INTO `ledger_tbl` (`ledgerId`, `accountId`, `ledgerName`, `ledgerDate`, `openingBalance`, `CrOrDr`, `ledgerDetails`, `defaultLedger`, `entryDate`, `tableName`, `description`) VALUES
(1, 44, 'Bank', NULL, '0.0000', 'Dr', NULL, 1, '2015-03-17 12:14:05', 'Default', NULL),
(2, 8, 'Bank Charges', NULL, '0.0000', 'Dr', NULL, 1, '2015-03-17 12:14:05', 'Default', NULL),
(3, 46, 'Bank Overdraft', NULL, '0.0000', 'Dr', NULL, 1, '2015-03-17 12:14:05', 'Default', NULL),
(4, 48, 'Cash', NULL, '0.0000', 'Dr', NULL, 1, '2015-03-17 12:14:05', 'Default', NULL),
(5, 8, 'Salary & Wages', NULL, '0.0000', 'Dr', NULL, 1, '2015-03-17 12:14:05', 'Default', NULL),
(6, 8, 'Office Expenses', NULL, '0.0000', 'Dr', NULL, 1, '2015-03-17 12:14:05', 'Default', NULL),
(7, 8, 'Office Rent', NULL, '0.0000', 'Dr', NULL, 1, '2015-03-17 12:14:05', 'Default', NULL),
(8, 8, 'Stationery', NULL, '0.0000', 'Dr', NULL, 1, '2015-03-17 12:14:05', 'Default', NULL),
(9, 4, 'Telephone Expenses', NULL, '0.0000', 'Dr', NULL, 1, '2015-03-17 12:14:05', 'Default', NULL),
(10, 8, 'Travelling Expenses', NULL, '0.0000', 'Dr', NULL, 1, '2015-03-17 12:14:06', 'Default', NULL),
(11, 8, 'Petrol Expenses', NULL, '0.0000', 'Dr', NULL, 1, '2015-03-17 12:14:06', 'Default', NULL),
(12, 16, 'Service Purchase', NULL, '0.0000', 'Dr', NULL, 1, '2015-03-17 12:14:06', 'Default', NULL),
(13, 48, 'Petty Cash', NULL, '0.0000', 'Dr', NULL, 1, '2015-03-17 12:14:06', 'Default', NULL),
(14, 21, 'SAI PAPER CUPS', '2018-01-11 16:46:27', '0.0000', 'Dr', '', 0, '2018-01-11 16:46:27', 'Contact', ''),
(15, 18, 'Service Sales', '2018-01-11 17:04:32', '0.0000', 'Dr', '', 0, '2018-01-11 17:04:32', 'Ledger', ''),
(16, 22, 'SALI', '2018-01-11 17:06:58', '0.0000', 'Dr', '', 0, '2018-01-11 17:06:58', 'Contact', ''),
(19, 21, 'MAX AGENCIES', '2018-01-17 19:19:23', '0.0000', 'Cr', '', 0, '2018-01-17 19:19:23', 'Contact', ''),
(20, 22, 'Ponnoth Agencies', '2018-02-21 19:23:36', '0.0000', 'Dr', '', 0, '2018-02-21 19:23:36', 'Contact', ''),
(21, 22, 'Ashique', '2018-01-20 10:07:25', '0.0000', 'Dr', '', 0, '2018-01-20 10:07:25', 'Contact', ''),
(22, 22, 'Kizhisseri Agencies', '2018-01-20 10:08:13', '0.0000', 'Dr', '', 0, '2018-01-20 10:08:13', 'Contact', 'Shamsu'),
(23, 22, 'Kunnummal Agencies', '2018-01-26 09:11:57', '0.0000', 'Dr', '', 0, '2018-01-26 09:11:57', 'Contact', ''),
(24, 22, 'Random Cstms', '2018-01-28 12:09:34', '0.0000', 'Dr', '', 0, '2018-01-28 12:09:34', 'Contact', ''),
(25, 22, 'RC KP STORE', '2018-01-29 19:13:08', '0.0000', 'Dr', '', 0, '2018-01-29 19:13:08', 'Contact', ''),
(26, 22, 'RC KP VEG', '2018-01-29 19:13:29', '0.0000', 'Dr', '', 0, '2018-01-29 19:13:29', 'Contact', ''),
(27, 22, 'RC PK STORE VALMGM ROAD', '2018-02-05 09:21:14', '0.0000', 'Dr', '', 0, '2018-02-05 09:21:14', 'Contact', ''),
(28, 22, 'V.P.S PANDIKKAD', '2018-01-30 11:32:14', '0.0000', 'Dr', '', 0, '2018-01-30 11:32:14', 'Contact', ''),
(29, 22, 'RC THANAL', '2018-01-29 19:15:06', '0.0000', 'Dr', '', 0, '2018-01-29 19:15:06', 'Contact', ''),
(30, 22, 'N S PACKING', '2018-01-30 10:40:29', '0.0000', 'Dr', '', 0, '2018-01-30 10:40:29', 'Contact', ''),
(31, 22, 'Mongam', '2018-01-31 15:21:42', '0.0000', 'Dr', '', 0, '2018-01-31 15:21:42', 'Contact', ''),
(32, 22, 'Zeenath Store', '2018-02-06 09:20:04', '0.0000', 'Dr', '', 0, '2018-02-06 09:20:04', 'Contact', ''),
(33, 22, 'Friends Store Valanchery', '2018-02-09 19:36:10', '0.0000', 'Dr', '', 0, '2018-02-09 19:36:10', 'Contact', ''),
(34, 22, 'Dilshad Kuruppath', '2018-02-07 12:36:55', '0.0000', 'Dr', '', 0, '2018-02-07 12:36:55', 'Contact', ''),
(35, 22, 'Jaseem Store', '2018-02-08 10:11:07', '0.0000', 'Dr', '', 0, '2018-02-08 10:11:07', 'Contact', ''),
(36, 22, 'Friends Agency Edappal', '2018-02-09 19:34:56', '0.0000', 'Dr', '', 0, '2018-02-09 19:34:56', 'Contact', ''),
(37, 22, 'Cmk Edappal', '2018-02-09 19:34:45', '0.0000', 'Dr', '', 0, '2018-02-09 19:34:45', 'Contact', ''),
(38, 22, 'Madeena Store Edappal', '2018-02-09 19:35:24', '0.0000', 'Dr', '', 0, '2018-02-09 19:35:24', 'Contact', ''),
(39, 22, 'New Bake House Valanchery', '2018-02-09 19:35:53', '0.0000', 'Dr', '', 0, '2018-02-09 19:35:53', 'Contact', ''),
(40, 22, 'RC Pullara Chicken Stall', '2018-02-11 14:01:50', '0.0000', 'Dr', '', 0, '2018-02-11 14:01:50', 'Contact', ''),
(41, 22, 'K C Biriyani Store Edavanna', '2018-02-12 10:12:10', '0.0000', 'Dr', '', 0, '2018-02-12 10:12:10', 'Contact', ''),
(42, 22, 'Faanoos Edavanna', '2018-02-12 10:12:30', '0.0000', 'Dr', '', 0, '2018-02-12 10:12:30', 'Contact', ''),
(43, 21, 'AMEEN Paper Plates & Paper Works', '2018-02-14 11:07:53', '0.0000', 'Dr', '', 0, '2018-02-14 11:07:53', 'Contact', ''),
(44, 22, 'Back spot Biriyani Store Kizhisseri', '2018-02-16 16:14:01', '0.0000', 'Dr', '', 0, '2018-02-16 16:14:01', 'Contact', ''),
(45, 22, 'Haqq Store Melattur', '2018-02-16 16:20:37', '0.0000', 'Dr', '', 0, '2018-02-16 16:20:37', 'Contact', ''),
(46, 22, 'Iqbal Store Pandikkad', '2018-02-16 16:21:09', '0.0000', 'Dr', '', 0, '2018-02-16 16:21:09', 'Contact', ''),
(47, 22, 'Star Biriyani Store Melattur', '2018-02-16 16:25:51', '0.0000', 'Dr', '', 0, '2018-02-16 16:25:51', 'Contact', ''),
(48, 22, 'C.T Store Wandoor', '2018-02-16 16:31:39', '0.0000', 'Dr', '', 0, '2018-02-16 16:31:39', 'Contact', ''),
(49, 22, 'Raheem Store Wandoor', '2018-02-16 16:32:01', '0.0000', 'Dr', '', 0, '2018-02-16 16:32:01', 'Contact', ''),
(50, 22, 'Aee.Vee Polymer Nilambur', '2018-02-16 16:44:00', '0.0000', 'Dr', '', 0, '2018-02-16 16:44:00', 'Contact', ''),
(51, 22, 'Basheer Kuttippuram', '2018-02-20 10:46:55', '0.0000', 'Dr', '', 0, '2018-02-20 10:46:55', 'Contact', ''),
(52, 22, 'Ponnoth Mannarkkad', '2018-02-21 19:24:00', '0.0000', 'Dr', '', 0, '2018-02-21 19:24:00', 'Contact', ''),
(53, 22, 'Hameed Perinthalmanna', '2018-02-21 19:24:21', '0.0000', 'Dr', '', 0, '2018-02-21 19:24:21', 'Contact', ''),
(54, 22, '41-TRIAL-Bake City Vengara 167', '2018-02-27 10:48:26', '0.0000', '34-TRIAL- ', '269-TRIAL- 124', 0, '2018-02-27 10:48:26', '78-TRIAL-Contact 258', '262-TRIAL- 164'),
(55, 22, '5-TRIAL-O M Store Vengara 245', '2018-02-27 10:48:55', '0.0000', '181-TRIAL-', '61-TRIAL- 191', 0, '2018-02-27 10:48:55', '295-TRIAL- 242', '27-TRIAL- 36'),
(56, 22, '291-TRIAL-C C Store Kondotty 204', '2018-02-27 10:49:16', '0.0000', '2-TRIAL- 1', '292-TRIAL- 82', 0, '2018-02-27 10:49:16', '21-TRIAL-Contact 116', '218-TRIAL- 95'),
(57, 22, '47-TRIAL-Mark Agencies Malappuram 126', '2018-02-27 10:50:18', '0.0000', '71-TRIAL- ', '69-TRIAL- 112', 0, '2018-02-27 10:50:18', '167-TRIAL- 199', '235-TRIAL- 294'),
(58, 22, '203-TRIAL-Irfan Valanchery 111', '2018-02-27 11:05:34', '0.0000', '122-TRIAL-', '273-TRIAL- 164', 0, '2018-02-27 11:05:34', '141-TRIAL- 211', '53-TRIAL- 268'),
(59, 22, '47-TRIAL-Chattickal Traders Edappal 44', '2018-02-27 11:10:40', '0.0000', '262-TRIAL-', '237-TRIAL- 259', 0, '2018-02-27 11:10:40', '23-TRIAL-Contact 141', '229-TRIAL- 178');

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
  `icon` varchar(200) NOT NULL,
  `orderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainmodule_tbl`
--

INSERT INTO `mainmodule_tbl` (`moduleId`, `moduleName`, `subModule`, `status`, `userId`, `icon`, `orderId`) VALUES
(1, 'General', 1, 1, 1, 'zmdi zmdi-settings zmdi-hc-fw', 1),
(2, 'Masters', 1, 1, 1, 'zmdi zmdi-functions zmdi-hc-fw', 2),
(3, 'Transactions', 1, 1, 1, 'zmdi zmdi-money-box zmdi-hc-fw', 3),
(4, 'Reports', 1, 1, 1, 'zmdi zmdi-assignment-o zmdi-hc-fw', 4),
(5, 'Financial Statements', 1, 1, 1, 'zmdi zmdi-assignment-check zmdi-hc-fw', 5);

-- --------------------------------------------------------

--
-- Table structure for table `paymentvoucher_tbl`
--

CREATE TABLE `paymentvoucher_tbl` (
  `paymentID` int(11) NOT NULL,
  `prefix` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `VoucherNo` int(11) DEFAULT NULL,
  `voucherDate` datetime DEFAULT NULL,
  `ledgerFirst` int(11) DEFAULT NULL,
  `ledgerSecond` int(11) DEFAULT NULL,
  `total` decimal(19,4) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `userId` int(11) DEFAULT NULL,
  `financialYearId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `paymentvoucher_tbl`
--

INSERT INTO `paymentvoucher_tbl` (`paymentID`, `prefix`, `VoucherNo`, `voucherDate`, `ledgerFirst`, `ledgerSecond`, `total`, `description`, `entryDate`, `userId`, `financialYearId`) VALUES
(6, 'PV/2018', 1, '2018-01-16 15:18:53', 4, 5, '1050.0000', 'Purchase Load 1\r\nWage exp\r\nFood', '2018-02-01 15:21:17', 1, 1),
(7, 'PV/2018', 2, '2018-01-24 15:21:18', 4, 5, '270.0000', 'Purchase Load 2\r\nWage exp 60\r\nFood 210', '2018-02-01 15:22:25', 1, 1),
(9, 'PV/2018', 4, '2018-01-25 15:23:34', 4, 10, '415.0000', 'Food and Petrol on root', '2018-02-01 15:24:53', 1, 1),
(10, 'PV/2018', 5, '2018-01-26 15:24:54', 4, 10, '490.0000', 'Root(Prmna)	Amount\r\nVehicle (ptrl)	300\r\nFood	                190', '2018-02-01 15:26:43', 1, 1),
(11, 'PV/2018', 6, '2018-01-27 15:26:43', 4, 6, '270.0000', 'Extension wire', '2018-02-01 15:27:46', 1, 1),
(12, 'PV/2018', 7, '2018-01-27 15:27:47', 4, 10, '80.0000', '', '2018-02-01 15:28:11', 1, 1),
(13, 'PV/2018', 8, '2018-01-29 15:28:12', 4, 10, '156.0000', '', '2018-02-01 15:29:03', 1, 1),
(14, 'PV/2018/', 9, '2018-01-30 00:00:00', 4, 10, '260.0000', 'Pandikkad root Load\r\nPterol 220\r\nfood 40', '2018-02-28 12:26:11', 1, 1),
(15, 'PV/2018', 10, '2018-01-31 15:30:10', 4, 10, '165.0000', '', '2018-02-01 15:30:58', 1, 1),
(16, 'PV/2018', 11, '2018-01-31 15:30:59', 4, 5, '200.0000', 'Mongam Load \r\nVehle exp 200', '2018-02-01 15:31:41', 1, 1),
(17, 'PV/2018', 12, '2018-02-01 15:31:42', 4, 10, '210.0000', 'Petrol & Food', '2018-02-01 15:32:17', 1, 1),
(18, 'PV/2018', 13, '2018-02-01 15:32:18', 4, 5, '600.0000', 'Pmna Root Load\r\nVehcle Exp 600', '2018-02-01 15:32:48', 1, 1),
(19, 'PV/2018', 14, '2018-02-02 11:15:44', 4, 27, '90.0000', 'Hm Best 10 Damaged Penalty\r\nin 700gm Cover less Rate', '2018-02-02 11:16:36', 1, 1),
(20, 'PV/2018', 15, '2018-02-03 16:21:17', 4, 19, '34500.0000', 'on Shiyas Hand', '2018-02-03 16:21:56', 1, 1),
(21, 'PV/2018', 16, '2018-02-03 16:23:42', 4, 11, '250.0000', 'On kuutippuram', '2018-02-03 16:24:06', 1, 1),
(23, 'PV/2018', 18, '2018-02-05 10:06:23', 4, 10, '200.0000', '', '2018-02-07 10:06:47', 1, 1),
(24, 'PV/2018', 19, '2018-02-06 10:06:57', 4, 10, '400.0000', 'Petrol 60\r\nBus Fare 50\r\nMax Agency Load Food 3 person 290', '2018-02-07 10:08:20', 1, 1),
(25, 'PV/2018/', 20, '2018-02-07 00:00:00', 4, 10, '225.0000', '', '2018-02-08 19:25:29', 1, 1),
(26, 'PV/2018/', 21, '2018-02-07 00:00:00', 4, 10, '100.0000', 'Load on Morayur by Auto Ape', '2018-02-08 19:26:04', 1, 1),
(27, 'PV/2018/', 22, '2018-02-08 00:00:00', 4, 10, '1160.0000', 'Load on Perinthalmanna And Melattur\r\nGoods 1000 for rent\r\nFood 160', '2018-02-08 19:26:58', 1, 1),
(28, 'PV/2018/', 23, '2018-02-09 00:00:00', 4, 19, '31500.0000', '', '2018-02-09 19:09:53', 1, 1),
(29, 'PV/2018/', 24, '2018-02-09 00:00:00', 4, 7, '7000.0000', '', '2018-02-09 19:10:28', 1, 1),
(30, 'PV/2018/', 25, '2018-02-09 00:00:00', 4, 6, '130.0000', 'Electricity Bill 127/-', '2018-02-09 19:10:57', 1, 1),
(31, 'PV/2018/', 26, '2018-02-09 00:00:00', 4, 10, '330.0000', '290 petrol\r\n40  Food\r\non Edappal root', '2018-02-09 19:14:15', 1, 1),
(32, 'PV/2018/', 27, '2018-02-10 00:00:00', 4, 10, '320.0000', 'Petrol 280\r\nFood 40\r\nroot on Edavanna Wandoor Melattur', '2018-02-11 12:07:49', 1, 1),
(33, 'PV/2018/', 28, '2018-02-12 00:00:00', 4, 10, '190.0000', 'Petrol 170\r\nfood 20\r\nroot on Nilambur via edavanna', '2018-02-13 09:53:42', 1, 1),
(34, 'PV/2018/', 29, '2018-02-12 00:00:00', 4, 10, '200.0000', 'Load on Mongam', '2018-02-13 09:55:09', 1, 1),
(35, 'PV/2018/', 30, '2018-02-13 00:00:00', 4, 10, '182.0000', 'Load on Mongam by Auto 70/-\r\nBus fare on Pandikkad,Melattur,Perinthalmanna,and Valluvambram 72/-\r\nFood 50/-', '2018-02-13 19:27:39', 1, 1),
(36, 'PV/2018/', 31, '2018-02-13 00:00:00', 4, 11, '90.0000', '', '2018-02-28 12:44:59', 1, 1),
(37, 'PV/2018/', 32, '2018-02-13 00:00:00', 4, 10, '400.0000', 'Plates Purchase\r\nPetrol 200/-\r\nRent 200/-', '2018-02-14 13:20:29', 1, 1),
(38, 'PV/2018/', 33, '2018-02-13 00:00:00', 4, 43, '25000.0000', '', '2018-02-14 13:30:10', 1, 1),
(39, 'PV/2018/', 34, '2018-02-14 00:00:00', 4, 11, '80.0000', 'bike', '2018-02-15 13:33:20', 1, 1),
(40, 'PV/2018/', 35, '2018-02-14 00:00:00', 4, 10, '2605.0000', 'Rent for goods by Edappal  1600+400\r\nFood 40+180+50+35\r\nPurchase Load 300 on Mvtpza', '2018-02-15 13:35:34', 1, 1),
(41, 'PV/2018/', 36, '2018-02-14 00:00:00', 4, 19, '50000.0000', '', '2018-02-15 13:39:23', 1, 1),
(42, 'PV/2018/', 37, '2018-02-15 00:00:00', 4, 10, '132.0000', 'Food 90\r\nBus fare 42', '2018-02-28 12:47:50', 1, 1),
(43, 'PV/2018/', 38, '2018-02-15 00:00:00', 4, 11, '220.0000', '', '2018-02-16 16:49:10', 1, 1),
(44, 'PV/2018/', 39, '2018-02-16 00:00:00', 4, 11, '130.0000', '', '2018-02-19 10:01:26', 1, 1),
(45, 'PV/2018/', 40, '2018-02-16 00:00:00', 4, 10, '80.0000', 'food', '2018-02-19 10:01:53', 1, 1),
(46, 'PV/2018/', 41, '2018-02-17 00:00:00', 4, 10, '1720.0000', 'Load on Perinthamanna Nilambur 1600/-\r\nFood 120/-', '2018-02-28 12:49:47', 1, 1),
(47, 'PV/2018/', 42, '2018-02-17 00:00:00', 4, 11, '200.0000', 'Valanchery Collection', '2018-02-19 10:03:14', 1, 1),
(48, 'PV/2018/', 43, '2018-02-19 00:00:00', 4, 14, '56640.0000', '', '2018-02-19 10:10:48', 1, 1),
(49, 'PV/2018/', 44, '2018-02-19 00:00:00', 4, 11, '330.0000', '', '2018-02-21 10:21:01', 1, 1),
(50, 'PV/2018/', 45, '2018-02-19 00:00:00', 4, 10, '70.0000', 'Food 50+20', '2018-02-21 10:21:25', 1, 1),
(51, 'PV/2018/', 46, '2018-02-20 00:00:00', 4, 43, '3460.0000', '8\" & 10\"', '2018-02-21 10:21:57', 1, 1),
(52, 'PV/2018/', 47, '2018-02-20 00:00:00', 4, 10, '1330.0000', 'Petrol 550/-\r\nFood 80/-\r\nVehicle wage 700/-\r\nRoot on Edappal (Tata mini Ace)', '2018-02-21 10:23:19', 1, 1),
(53, 'PV/2018/', 48, '2018-02-21 00:00:00', 4, 11, '100.0000', '', '2018-02-21 19:21:37', 1, 1),
(54, 'PV/2018/', 49, '2018-02-21 00:00:00', 4, 10, '167.0000', 'Food 90/-\r\nBus Fare 77/-', '2018-02-21 19:22:10', 1, 1),
(55, 'PV/2018/', 50, '2018-02-21 00:00:00', 4, 43, '1500.0000', '', '2018-02-21 19:34:09', 1, 1),
(59, 'PV/2018/', 54, '2018-02-21 00:00:00', 4, 43, '3600.0000', '6\" print', '2018-02-23 11:35:50', 1, 1),
(60, 'PV/2018/', 55, '2018-02-24 00:00:00', 4, 19, '33500.0000', '', '2018-02-24 11:56:23', 1, 1),
(61, 'PV/2018/', 56, '2018-02-23 00:00:00', 4, 11, '300.0000', 'Other expenses on Shiyas', '2018-02-27 10:41:55', 1, 1),
(62, '16-TRIAL- ', 57, '2018-02-24 00:00:00', 4, 11, '150.0000', '290-TRIAL- 42', '2018-02-27 10:42:12', 1, 1),
(63, '288-TRIAL-', 58, '2018-02-24 00:00:00', 4, 10, '1190.0000', '40-TRIAL-Food 340\r\nVehicle Wage 850 242', '2018-02-27 10:42:54', 1, 1),
(64, '64-TRIAL- ', 59, '2018-02-26 00:00:00', 4, 11, '320.0000', '146-TRIAL- 105', '2018-02-27 10:43:23', 1, 1),
(65, '290-TRIAL-', 60, '2018-02-26 00:00:00', 4, 10, '70.0000', '70-TRIAL-Food 70/- 50', '2018-02-27 10:43:36', 1, 1),
(66, '6-TRIAL- 2', 61, '2018-02-26 00:00:00', 4, 14, '25000.0000', '93-TRIAL- 248', '2018-02-27 10:44:12', 1, 1),
(67, '129-TRIAL-', 62, '2018-02-28 00:00:00', 4, 14, '31450.0000', '84-TRIAL- 154', '2018-02-28 11:55:37', 1, 1),
(68, '156-TRIAL-', 63, '2018-02-26 00:00:00', 4, 5, '300.0000', '166-TRIAL-Load on Paper cups   300/- 176', '2018-02-28 12:13:08', 1, 1),
(69, '131-TRIAL-', 64, '2018-02-27 00:00:00', 4, 11, '700.0000', '144-TRIAL-On lorry tata 39', '2018-02-28 12:13:30', 1, 1),
(70, '26-TRIAL- ', 65, '2018-02-27 00:00:00', 4, 10, '920.0000', '137-TRIAL-Vehicle wage 800/-\r\nFood 120/- 238', '2018-02-28 12:14:05', 1, 1),
(71, '218-TRIAL-', 66, '2018-02-22 00:00:00', 4, 10, '2033.0000', '129-TRIAL-Petrol 800/-\r\nVehicle Wage 550/-  +   300/-\r\nPetrol Bike 260/-\r\nFood 85/-\r\nBus fare 38 41', '2018-02-28 13:16:50', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pdcpayable_tbl`
--

CREATE TABLE `pdcpayable_tbl` (
  `pdcPayableId` int(11) NOT NULL,
  `prefix` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `voucherNo` int(11) DEFAULT NULL,
  `voucherDate` datetime DEFAULT NULL,
  `ledgerCustId` int(11) DEFAULT NULL,
  `ledgerBankId` int(11) DEFAULT NULL,
  `amount` decimal(19,4) DEFAULT NULL,
  `chequeNo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `chequeDate` date DEFAULT NULL,
  `ClearStatus` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ClearDate` datetime DEFAULT NULL,
  `ClearUserId` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `userId` int(11) DEFAULT NULL,
  `financialYearId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `pdcreceivable_tbl`
--

CREATE TABLE `pdcreceivable_tbl` (
  `pdcReceivableId` int(11) NOT NULL,
  `prefix` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `voucherNo` int(11) DEFAULT NULL,
  `voucherDate` datetime DEFAULT NULL,
  `ledgerCustId` int(11) DEFAULT NULL,
  `ledgerBankId` int(11) DEFAULT NULL,
  `amount` decimal(19,4) DEFAULT NULL,
  `chequeNo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `chequeDate` date DEFAULT NULL,
  `ClearStatus` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ClearDate` datetime DEFAULT NULL,
  `ClearUserId` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `userId` int(11) DEFAULT NULL,
  `financialYearId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `productgroup_tbl`
--

CREATE TABLE `productgroup_tbl` (
  `productGroupId` int(11) NOT NULL,
  `productGroupName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `description` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `productgroup_tbl`
--

INSERT INTO `productgroup_tbl` (`productGroupId`, `productGroupName`, `Date`, `description`) VALUES
(1, 'PAPER CUP', '2018-01-11 16:23:13', ''),
(2, 'HM COVER GROCERY BAG', '2018-01-17 15:51:17', 'POLO,BEST SILKY,MASTER,LD BOSS,HM 5 STAR'),
(3, 'HM COVER PACKING MATERIALS', '2018-01-17 15:57:14', ''),
(4, 'SILKY SHEET 12X12', '2018-01-17 15:57:27', ''),
(5, 'SILKY SHEET 18X18', '2018-01-17 15:57:40', ''),
(6, 'PLASTIC PACKING BAG', '2018-01-17 15:57:53', ''),
(7, 'PLASTIC CARRY BAG', '2018-01-17 15:58:04', ''),
(8, 'PAPER PLATES', '2018-01-23 16:30:40', ''),
(9, 'PAPER PLATE', '2018-01-23 16:39:21', ''),
(10, 'SUTHLY', '2018-01-23 16:39:32', ''),
(11, 'ALUMINIUM FOIL', '2018-01-23 16:50:01', ''),
(12, 'CLING FILM', '2018-01-23 16:50:09', ''),
(13, 'THERMOCOL', '2018-01-23 16:50:32', ''),
(14, 'CONDAINER', '2018-01-23 16:50:49', ''),
(15, 'NAPKIN', '2018-01-23 16:50:54', ''),
(16, 'SPOON', '2018-01-23 16:51:06', ''),
(17, 'PAPER ROLL', '2018-01-23 16:51:22', ''),
(18, 'SPOON', '2018-01-23 17:29:19', ''),
(19, 'HM SHEEET', '2018-02-15 13:58:39', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_tbl`
--

CREATE TABLE `product_tbl` (
  `productId` int(11) NOT NULL,
  `productGroupId` int(11) DEFAULT NULL,
  `unitId` int(11) DEFAULT NULL,
  `productName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `productCode` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `taxType` text COLLATE utf8_bin,
  `taxPercent` decimal(18,2) DEFAULT NULL,
  `purchaseRate` decimal(18,2) DEFAULT NULL,
  `wholeSalesRate` decimal(18,2) DEFAULT NULL,
  `retailRate` decimal(18,2) DEFAULT NULL,
  `consumerRate` decimal(18,2) DEFAULT NULL,
  `mrp` decimal(18,2) DEFAULT NULL,
  `openingStock` decimal(18,2) DEFAULT NULL,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_bin,
  `purTaxPercent` decimal(18,2) DEFAULT NULL,
  `reorderLevel` int(11) DEFAULT NULL,
  `hsnOrSacCode` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `product_tbl`
--

INSERT INTO `product_tbl` (`productId`, `productGroupId`, `unitId`, `productName`, `productCode`, `taxType`, `taxPercent`, `purchaseRate`, `wholeSalesRate`, `retailRate`, `consumerRate`, `mrp`, `openingStock`, `entryDate`, `description`, `purTaxPercent`, `reorderLevel`, `hsnOrSacCode`) VALUES
(1, 1, 3, 'PAPER CUP PLANE 150 ml', 'PCPL 150', '', '0.00', '35.00', '35.50', '42.00', '0.00', '50.00', '0.00', '2018-01-30 11:42:50', '', '0.00', 0, '48Z36000'),
(2, 1, 3, 'PAPER CUP PRINT 150 ml', 'PCPR 150', '', '0.00', '35.00', '35.50', '42.00', '0.00', '50.00', '0.00', '2018-01-30 11:42:59', '', '0.00', 0, '48Z36000'),
(3, 1, 2, 'PAPER CUP PLANE 210 ml', 'PCPL 210', '', '0.00', '44.00', '45.50', '52.00', '0.00', '60.00', '0.00', '2018-01-31 15:26:19', '', '0.00', 0, '48Z36000'),
(4, 1, 2, 'PAPER CUP PRINT 210 ml', 'PCPR 210', '', '0.00', '44.00', '45.50', '52.00', '0.00', '60.00', '0.00', '2018-01-31 15:26:09', '', '0.00', 0, '48Z36000'),
(5, 7, 4, '13X16 ORANGE WHITE', '13X16 ORANGE WHITE', '', '0.00', '22.70', '26.00', '30.00', '0.00', '0.00', '0.00', '2018-01-17 15:58:19', '', '0.00', 0, ''),
(6, 7, 5, '17X23 REAL 40', '17X23 REAL 40', '', '0.00', '70.00', '80.00', '90.00', '0.00', '0.00', '0.00', '2018-01-23 16:44:47', '', '0.00', 0, ''),
(7, 7, 5, '20X26 REAL 40', '20X26 REAL 40', '', '0.00', '99.00', '110.00', '120.00', '0.00', '0.00', '0.00', '2018-01-23 16:44:35', '', '0.00', 0, ''),
(8, 10, 4, 'SUTHLY', 'SUTHLY', '', '0.00', '44.00', '48.00', '55.00', '0.00', '0.00', '0.00', '2018-01-23 16:39:57', '', '0.00', 0, ''),
(9, 10, 4, 'SUTHLY COLOUR', 'SUTHLY COLOUR', '', '0.00', '56.00', '62.00', '70.00', '0.00', '0.00', '0.00', '2018-01-23 16:40:16', '', '0.00', 0, ''),
(10, 9, 5, '7\" ROUND PLATE', '7\" ROUND PLATE', '', '0.00', '26.00', '28.00', '40.00', '0.00', '0.00', '0.00', '2018-01-31 15:02:29', '', '0.00', 0, ''),
(11, 7, 5, '10X12 DABAR (PKT 10)', '10X12 DABAR (PKT 10)', '', '0.00', '5.80', '6.00', '6.50', '0.00', '0.00', '0.00', '2018-02-14 15:10:36', '', '0.00', 0, ''),
(12, 7, 4, '13X16 DABAR KG', '13X16 DABAR KG', '', '0.00', '110.00', '122.00', '135.00', '0.00', '0.00', '0.00', '2018-01-17 16:05:29', '', '0.00', 0, ''),
(13, 2, 4, 'HM COVER POLO 1/4', 'HM POLO 1/4', '', '0.00', '116.00', '124.00', '130.00', '0.00', '0.00', '0.00', '2018-01-17 19:36:18', '', '0.00', 0, ''),
(14, 2, 4, 'HM COVER POLO 1/2', 'HM POLO 1/2', '', '0.00', '116.00', '124.00', '130.00', '0.00', '0.00', '0.00', '2018-01-17 19:36:10', '', '0.00', 0, ''),
(15, 2, 4, 'HM COVER POLO 1', 'HM  POLO 1', '', '0.00', '116.00', '124.00', '130.00', '0.00', '0.00', '0.00', '2018-01-17 19:36:00', '', '0.00', 0, ''),
(16, 2, 4, 'HM COVER POLO 2', 'HM POLO 2', '', '0.00', '116.00', '124.00', '130.00', '0.00', '0.00', '0.00', '2018-01-17 19:35:51', '', '0.00', 0, ''),
(17, 2, 4, 'HM COVER POLO 3', 'HM POLO 3', '', '0.00', '116.00', '124.00', '130.00', '0.00', '0.00', '0.00', '2018-01-17 19:35:42', '', '0.00', 0, ''),
(18, 2, 4, 'HM COVER POLO 5', 'HM POLO 5', '', '0.00', '116.00', '124.00', '130.00', '0.00', '0.00', '0.00', '2018-01-17 19:35:33', '', '0.00', 0, ''),
(19, 2, 4, 'HM COVER POLO 10', 'HM POLO 10', '', '0.00', '116.00', '124.00', '130.00', '0.00', '0.00', '0.00', '2018-01-17 19:35:24', '', '0.00', 0, ''),
(20, 2, 4, 'HM COVER BEST 1/4', 'HM BEST 1/4', '', '0.00', '124.00', '129.00', '135.00', '0.00', '0.00', '0.00', '2018-02-08 19:09:20', '', '0.00', 0, ''),
(21, 2, 4, 'HM COVER BEST 1/2', 'HM BEST 1/2', '', '0.00', '124.00', '129.00', '135.00', '0.00', '0.00', '0.00', '2018-02-08 19:08:59', '', '0.00', 0, ''),
(22, 2, 4, 'HM COVER BEST 1', 'HM BEST 1', '', '0.00', '124.00', '129.00', '135.00', '0.00', '0.00', '0.00', '2018-02-08 19:08:37', '', '0.00', 0, ''),
(23, 2, 4, 'HM COVER BEST 2', 'HM BEST 2', '', '0.00', '124.00', '129.00', '135.00', '0.00', '0.00', '0.00', '2018-02-08 19:08:05', '', '0.00', 0, ''),
(24, 2, 4, 'HM COVER BEST 3', 'HM BEST 3', '', '0.00', '124.00', '129.00', '135.00', '0.00', '0.00', '0.00', '2018-02-08 19:07:40', '', '0.00', 0, ''),
(25, 2, 4, 'HM COVER BEST 5', 'HM BEST 5', '', '0.00', '124.00', '129.00', '135.00', '0.00', '0.00', '0.00', '2018-02-08 19:07:13', '', '0.00', 0, ''),
(26, 2, 4, 'HM COVER BEST 10', 'HM BEST 10', '', '0.00', '124.00', '129.00', '135.00', '0.00', '0.00', '0.00', '2018-02-08 19:07:01', '', '0.00', 0, ''),
(27, 2, 4, 'LD COVER BOSS 1', 'LD COVER BOSS 1', '', '0.00', '125.00', '135.00', '145.00', '0.00', '0.00', '0.00', '2018-01-17 18:50:59', '', '0.00', 0, ''),
(28, 2, 4, 'LD COVER BOSS 2', 'LD COVER BOSS 2', '', '0.00', '125.00', '135.00', '145.00', '0.00', '0.00', '0.00', '2018-01-17 18:51:24', '', '0.00', 0, ''),
(29, 2, 4, 'LD COVER BOSS 3', 'LD COVER BOSS 3', '', '0.00', '125.00', '135.00', '145.00', '0.00', '0.00', '0.00', '2018-01-17 18:51:57', '', '0.00', 0, ''),
(30, 2, 4, 'LD COVER BOSS 5', 'LD COVER BOSS 5', '', '0.00', '125.00', '135.00', '145.00', '0.00', '0.00', '0.00', '2018-01-17 18:52:22', '', '0.00', 0, ''),
(31, 2, 4, 'LD COVER BOSS 10', 'LD COVER BOSS 10', '', '0.00', '125.00', '135.00', '145.00', '0.00', '0.00', '0.00', '2018-01-17 18:52:53', '', '0.00', 0, ''),
(32, 7, 4, '13X16 ORANGE', '13X16 ORANGE', '', '0.00', '85.00', '100.00', '110.00', '0.00', '0.00', '0.00', '2018-01-17 18:54:30', '', '0.00', 0, ''),
(33, 7, 4, '16X20 ORANGE', '16X20 ORANGE', '', '0.00', '85.00', '100.00', '110.00', '0.00', '0.00', '0.00', '2018-01-17 18:55:14', '', '0.00', 0, ''),
(34, 7, 4, '13X16 STAR ORANGE', '13X16 STAR ORANGE', '', '0.00', '105.00', '120.00', '130.00', '0.00', '0.00', '0.00', '2018-01-17 18:56:37', '', '0.00', 0, ''),
(35, 7, 4, '16X20 STAR ORANGE', '16X20 STAR ORANGE', '', '0.00', '105.00', '120.00', '130.00', '0.00', '0.00', '0.00', '2018-01-17 18:57:22', '', '0.00', 0, ''),
(36, 7, 4, '13X16 FISH YELLOW', '13X16 FISH YELLOW', '', '0.00', '98.00', '112.00', '122.00', '0.00', '0.00', '0.00', '2018-01-17 18:58:18', '', '0.00', 0, ''),
(37, 7, 4, '13X16 KERALA YELLOW', '13X16 KERALA YELLOW', '', '0.00', '95.00', '105.00', '120.00', '0.00', '0.00', '0.00', '2018-01-17 18:59:40', '', '0.00', 0, ''),
(38, 7, 4, '16X20 KERALA YELLOW', '16X20 KERALA YELLOW', '', '0.00', '95.00', '105.00', '120.00', '0.00', '0.00', '0.00', '2018-01-30 16:01:06', '', '0.00', 0, ''),
(39, 7, 4, '13X16 PAVIZHAM WHITE', '13X16 PAVIZHAM WHITE', '', '0.00', '98.00', '112.00', '122.00', '0.00', '0.00', '0.00', '2018-01-17 19:01:31', '', '0.00', 0, ''),
(40, 7, 4, '16X20 PAVIZHAM WHITE', '16X20 PAVIZHAM WHITE', '', '0.00', '98.00', '112.00', '122.00', '0.00', '0.00', '0.00', '2018-01-17 19:02:04', '', '0.00', 0, ''),
(41, 7, 4, '13X16 PLAIN YELLOW', '13X16 PLAIN YELLOW', '', '0.00', '126.00', '135.00', '150.00', '0.00', '0.00', '0.00', '2018-02-08 10:16:09', '', '0.00', 0, ''),
(42, 7, 4, '13X16 GLOBAL', '13X16 GLOBAL', '', '0.00', '131.00', '138.00', '155.00', '0.00', '0.00', '0.00', '2018-02-01 11:38:03', '', '0.00', 0, ''),
(43, 7, 4, '16X20 GLOBAL', '16X20 GLOBAL', '', '0.00', '135.00', '138.00', '155.00', '0.00', '0.00', '0.00', '2018-02-27 11:11:48', '', '0.00', 0, ''),
(44, 3, 4, 'HM COVER 5 STAR (S) 1/4', 'HM 5 STAR (S) 1/4', '', '0.00', '75.00', '85.00', '90.00', '0.00', '0.00', '0.00', '2018-01-17 19:33:28', '', '0.00', 0, ''),
(45, 3, 4, 'HM COVER 5 STAR (S) 1/2', 'HM 5 STAR (S) 1/2', '', '0.00', '75.00', '85.00', '90.00', '0.00', '0.00', '0.00', '2018-01-17 19:33:18', '', '0.00', 0, ''),
(46, 3, 4, 'HM COVER 5 STAR (S) 1', 'HM 5 STAR (S) 1', '', '0.00', '75.00', '85.00', '90.00', '0.00', '0.00', '0.00', '2018-01-17 19:33:08', '', '0.00', 0, ''),
(47, 3, 4, '18X18 SADHA', '18X18 SADHA', '', '0.00', '62.00', '64.00', '75.00', '0.00', '0.00', '0.00', '2018-02-20 10:52:35', '', '0.00', 0, ''),
(48, 3, 4, '12X12 SADHA', '12X12 SADHA', '', '0.00', '62.00', '64.00', '75.00', '0.00', '0.00', '0.00', '2018-02-20 10:52:27', '', '0.00', 0, ''),
(49, 3, 4, '15X15 SADHA', '15X15 SADHA', '', '0.00', '62.00', '64.00', '75.00', '0.00', '0.00', '0.00', '2018-02-20 10:52:19', '', '0.00', 0, ''),
(50, 2, 4, 'HM COVER MASTER 1', 'HM MASTER 1', '', '0.00', '126.00', '136.00', '150.00', '0.00', '0.00', '0.00', '2018-01-30 11:39:33', '', '0.00', 0, ''),
(51, 2, 4, 'HM COVER MASTER 2', 'HM MASTER 2', '', '0.00', '126.00', '136.00', '150.00', '0.00', '0.00', '0.00', '2018-01-30 11:39:19', '', '0.00', 0, ''),
(52, 2, 4, '245-TRIAL-HM COVER MASTER 3 249', '286-TRIAL-HM MASTER 3 213', '274-TRIAL- 122', '0.00', '126.00', '136.00', '150.00', '0.00', '0.00', '0.00', '2018-01-30 11:39:10', '68-TRIAL- 218', '0.00', 0, '187-TRIAL- 5'),
(53, 2, 4, '258-TRIAL-HM COVER MASTER 5 191', '2-TRIAL-HM MASTER 5 25', '77-TRIAL- 214', '0.00', '126.00', '136.00', '150.00', '0.00', '0.00', '0.00', '2018-01-30 11:38:54', '14-TRIAL- 24', '0.00', 0, '234-TRIAL- 74'),
(54, 2, 4, '72-TRIAL-HM COVER MASTER 10 59', '133-TRIAL-HM MASTER 10 170', '287-TRIAL- 97', '0.00', '126.00', '136.00', '150.00', '0.00', '0.00', '0.00', '2018-01-30 11:38:41', '18-TRIAL- 77', '0.00', 0, '73-TRIAL- 170'),
(55, 2, 4, '263-TRIAL-HM COVER MASTER 1/4 268', '92-TRIAL-HM MASTER 1/4 185', '102-TRIAL- 80', '0.00', '126.00', '136.00', '150.00', '0.00', '0.00', '0.00', '2018-01-30 11:38:32', '113-TRIAL- 127', '0.00', 0, '2-TRIAL- 199'),
(56, 2, 4, '227-TRIAL-HM COVER MASTER 1/2 225', '43-TRIAL-HM MASTER 1/2 124', '223-TRIAL- 272', '0.00', '126.00', '136.00', '150.00', '0.00', '0.00', '0.00', '2018-01-30 11:38:20', '161-TRIAL- 81', '0.00', 0, '103-TRIAL- 132'),
(57, 5, 4, '105-TRIAL-HM SHEET 18X18 NICE 293', '225-TRIAL-18X18 NICE 131', '92-TRIAL- 142', '0.00', '98.00', '104.00', '120.00', '0.00', '0.00', '0.00', '2018-02-09 19:43:07', '122-TRIAL- 86', '0.00', 0, '164-TRIAL- 100'),
(58, 4, 4, '287-TRIAL-HM SHEET 12X12 NICE 260', '213-TRIAL-12X12 NICE 74', '170-TRIAL- 70', '0.00', '98.00', '104.00', '120.00', '0.00', '0.00', '0.00', '2018-02-09 19:42:58', '235-TRIAL- 233', '0.00', 0, '211-TRIAL- 260'),
(59, 3, 4, '296-TRIAL-HM SHEET 15X15 NICE 167', '85-TRIAL-15X15 NICE 250', '140-TRIAL- 194', '0.00', '100.00', '103.00', '120.00', '0.00', '0.00', '0.00', '2018-02-21 19:29:28', '295-TRIAL- 24', '0.00', 0, '119-TRIAL- 25'),
(60, 5, 4, '176-TRIAL-HM SHEET 12X12 POLO 94', '158-TRIAL-12X12 POLO 202', '271-TRIAL- 266', '0.00', '102.00', '105.00', '120.00', '0.00', '0.00', '0.00', '2018-01-30 11:37:24', '178-TRIAL- 93', '0.00', 0, '151-TRIAL- 284'),
(61, 5, 4, '118-TRIAL-HM SHEET 18X18 POLO 264', '119-TRIAL-18X18 POLO 52', '100-TRIAL- 87', '0.00', '102.00', '105.00', '120.00', '0.00', '0.00', '0.00', '2018-01-30 11:37:12', '160-TRIAL- 126', '0.00', 0, '10-TRIAL- 257'),
(62, 7, 4, '70-TRIAL-13X16 SUMO (51) 215', '276-TRIAL-13X16 SUMO (51) 227', '43-TRIAL- 258', '0.00', '95.00', '110.00', '125.00', '0.00', '0.00', '0.00', '2018-01-23 16:32:18', '264-TRIAL- 9', '0.00', 0, '82-TRIAL- 286'),
(63, 7, 4, '165-TRIAL-16X20 SUMO (51) 187', '177-TRIAL-16X20 SUMO (51) 74', '225-TRIAL- 127', '0.00', '95.00', '110.00', '125.00', '0.00', '0.00', '0.00', '2018-01-23 16:33:04', '229-TRIAL- 128', '0.00', 0, '223-TRIAL- 20'),
(64, 7, 5, '2-TRIAL-V PACK 13X16 51 MI 262', '123-TRIAL-V PACK 13X16 51 MI 296', '137-TRIAL- 61', '0.00', '33.00', '37.00', '50.00', '0.00', '0.00', '0.00', '2018-01-31 15:04:41', '295-TRIAL- 125', '0.00', 0, '64-TRIAL- 160'),
(65, 7, 5, '202-TRIAL-V PACK 16X20 51 MI 16', '230-TRIAL-V PACK 16X20 51 MI 226', '211-TRIAL- 171', '0.00', '48.00', '60.00', '75.00', '0.00', '0.00', '0.00', '2018-01-23 16:35:13', '111-TRIAL- 47', '0.00', 0, '153-TRIAL- 220'),
(66, 7, 5, '90-TRIAL-V PACK 17X23 51 MI 224', '188-TRIAL-V PACK 17X23 51 MI 163', '140-TRIAL- 151', '0.00', '58.00', '70.00', '85.00', '0.00', '0.00', '0.00', '2018-01-23 16:35:50', '62-TRIAL- 29', '0.00', 0, '0-TRIAL- 13'),
(67, 7, 5, '58-TRIAL-V PACK 13X16 178', '265-TRIAL-V PACK 13X16 107', '77-TRIAL- 0', '0.00', '37.00', '40.00', '60.00', '0.00', '0.00', '0.00', '2018-02-21 19:31:53', '258-TRIAL- 139', '0.00', 0, '203-TRIAL- 160'),
(68, 7, 5, '157-TRIAL-V PACK 16X20 224', '177-TRIAL-V PACK 16X20 8', '113-TRIAL- 187', '0.00', '58.00', '60.00', '85.00', '0.00', '0.00', '0.00', '2018-02-21 19:31:42', '1-TRIAL- 50', '0.00', 0, '60-TRIAL- 228'),
(69, 7, 5, '93-TRIAL-V PACK 24X30 84', '205-TRIAL-V PACK 24X30 240', '211-TRIAL- 204', '0.00', '145.00', '165.00', '190.00', '0.00', '0.00', '0.00', '2018-01-23 16:38:03', '235-TRIAL- 256', '0.00', 0, '72-TRIAL- 250'),
(70, 9, 5, '223-TRIAL-10X12 PAPER PLATE SILVER 85', '156-TRIAL-12\" PLATE SILVER 116', '126-TRIAL- 57', '0.00', '119.00', '125.00', '145.00', '0.00', '0.00', '0.00', '2018-02-14 11:00:35', '126-TRIAL- 157', '0.00', 0, '237-TRIAL- 171'),
(71, 8, 5, '169-TRIAL-9X10 PAPER PLATE SILVER 261', '296-TRIAL-10\" PLATE SILVER 122', '217-TRIAL- 212', '0.00', '95.00', '97.00', '120.00', '0.00', '0.00', '0.00', '2018-02-14 11:00:23', '117-TRIAL- 96', '0.00', 0, '185-TRIAL- 41'),
(72, 8, 5, '123-TRIAL-7\" ROUND PLATE SILVER 129', '229-TRIAL-7\" ROUND PLATE SILVER 65', '259-TRIAL- 232', '0.00', '39.00', '45.00', '55.00', '0.00', '0.00', '0.00', '2018-02-19 10:32:04', '96-TRIAL- 155', '0.00', 0, '53-TRIAL- 162'),
(73, 8, 5, '284-TRIAL-8\" ROUND PLATE SILVER 34', '54-TRIAL-8\" ROUND PLATE SILVER 172', '157-TRIAL- 269', '0.00', '50.00', '56.00', '70.00', '0.00', '0.00', '0.00', '2018-02-19 10:32:48', '32-TRIAL- 263', '0.00', 0, '207-TRIAL- 83'),
(74, 8, 5, '11-TRIAL-5X6 SQURE PLATE 235', '167-TRIAL-5X6 SQURE 48', '175-TRIAL- 38', '0.00', '24.00', '30.00', '40.00', '0.00', '0.00', '0.00', '2018-01-23 16:45:30', '123-TRIAL- 242', '0.00', 0, '54-TRIAL- 211'),
(75, 7, 4, '241-TRIAL-10X12 DABAR (500) 75', '159-TRIAL-10X12 DABAR (500) 125', '221-TRIAL- 170', '0.00', '57.50', '61.00', '70.00', '0.00', '0.00', '0.00', '2018-02-07 10:12:04', '126-TRIAL- 134', '0.00', 0, '205-TRIAL- 283'),
(76, 11, 2, '150-TRIAL-ALUMINIUM FOIL 298', '79-TRIAL-ALUMINIUM FOIL 201', '193-TRIAL- 134', '0.00', '140.00', '160.00', '180.00', '0.00', '0.00', '0.00', '2018-01-23 16:52:24', '137-TRIAL- 134', '0.00', 0, '156-TRIAL- 193'),
(77, 12, 2, '276-TRIAL-CLING FILM SUN WR 205', '62-TRIAL-CLING FILM SUN WR 48', '281-TRIAL- 0', '0.00', '72.00', '82.00', '95.00', '0.00', '0.00', '0.00', '2018-01-23 17:22:03', '13-TRIAL- 141', '0.00', 0, '55-TRIAL- 255'),
(78, 12, 2, '242-TRIAL-CLING FILM WRAP ALL 62', '11-TRIAL-CLING FILM WRAP ALL 277', '24-TRIAL- 278', '0.00', '70.00', '80.00', '90.00', '0.00', '0.00', '0.00', '2018-01-23 17:23:07', '252-TRIAL- 143', '0.00', 0, '96-TRIAL- 73'),
(79, 13, 2, '140-TRIAL-DONA 13', '275-TRIAL-DONA 272', '218-TRIAL- 10', '0.00', '0.24', '0.28', '0.60', '0.00', '0.00', '0.00', '2018-01-31 15:08:55', '117-TRIAL- 232', '0.00', 0, '212-TRIAL- 95'),
(80, 14, 6, '269-TRIAL-750ml CONDAINER 131', '240-TRIAL-750ml CONDAINER 88', '185-TRIAL- 190', '0.00', '2450.00', '2550.00', '2700.00', '0.00', '0.00', '0.00', '2018-01-23 17:25:48', '297-TRIAL- 189', '0.00', 0, '190-TRIAL- 145'),
(81, 15, 5, '153-TRIAL-NAPKIN 20X20 ORCHID 114', '51-TRIAL-NAPKIN 20X20 ORCHID 40', '144-TRIAL- 158', '0.00', '5.00', '5.50', '8.00', '0.00', '0.00', '0.00', '2018-01-30 17:03:13', '35-TRIAL- 59', '0.00', 0, '92-TRIAL- 105'),
(82, 15, 5, '64-TRIAL-NAPKIN 30X30 181', '3-TRIAL-NAPKIN 30X30 229', '75-TRIAL- 208', '0.00', '16.00', '18.00', '22.00', '0.00', '0.00', '0.00', '2018-01-23 17:28:15', '192-TRIAL- 297', '0.00', 0, '149-TRIAL- 156'),
(83, 16, 5, '61-TRIAL-SPOON ROZY 127', '167-TRIAL-SPOON ROZY 141', '29-TRIAL- 40', '0.00', '21.00', '25.00', '30.00', '0.00', '0.00', '0.00', '2018-01-23 17:29:55', '213-TRIAL- 74', '0.00', 0, '201-TRIAL- 77'),
(84, 16, 5, '115-TRIAL-SPOON LITTLE CHAMP 283', '113-TRIAL-SPOON LITTLE CHAMP 292', '24-TRIAL- 201', '0.00', '16.00', '20.00', '25.00', '0.00', '0.00', '0.00', '2018-01-23 17:30:50', '292-TRIAL- 159', '0.00', 0, '270-TRIAL- 28'),
(85, 16, 5, '127-TRIAL-SPOON NEELAM MILKY 184', '175-TRIAL-SPOON NEELAM MILKY 186', '198-TRIAL- 70', '0.00', '22.00', '26.00', '30.00', '0.00', '0.00', '0.00', '2018-01-23 17:31:23', '287-TRIAL- 147', '0.00', 0, '204-TRIAL- 203'),
(86, 7, 4, '221-TRIAL-13X16 SUMO SUPER 163', '6-TRIAL-13X16 SUMO SUPER 263', '10-TRIAL- 271', '0.00', '100.00', '110.00', '130.00', '0.00', '0.00', '0.00', '2018-02-08 10:18:38', '189-TRIAL- 240', '0.00', 0, '164-TRIAL- 42'),
(87, 17, 4, '119-TRIAL-PAPER ROLL (DOUBLE) 213', '91-TRIAL-PR DOUBLE 104', '18-TRIAL- 232', '0.00', '53.00', '58.00', '65.00', '0.00', '0.00', '0.00', '2018-01-23 17:32:58', '150-TRIAL- 5', '0.00', 0, '175-TRIAL- 39'),
(88, 9, 5, '3-TRIAL-10X12 eXCEL PLATE 22', '98-TRIAL-12\" EXCEL PLATE 147', '84-TRIAL- 148', '0.00', '1.85', '2.10', '3.00', '0.00', '0.00', '0.00', '2018-01-23 17:33:45', '271-TRIAL- 164', '0.00', 0, '113-TRIAL- 275'),
(89, 6, 4, '245-TRIAL-WASTE COVER 30X50 212', '146-TRIAL-WC 30X50 78', '269-TRIAL- 262', '0.00', '80.00', '90.00', '100.00', '0.00', '0.00', '0.00', '2018-01-23 17:35:12', '119-TRIAL- 185', '0.00', 0, '89-TRIAL- 44'),
(90, 6, 5, '165-TRIAL-WASTE COVER 30X50 PKT 240', '145-TRIAL-WC 30X50 PKT 8', '118-TRIAL- 270', '0.00', '80.00', '90.00', '100.00', '0.00', '0.00', '0.00', '2018-01-23 17:36:07', '1-TRIAL- 123', '0.00', 0, '132-TRIAL- 172'),
(91, 7, 4, '152-TRIAL-16X20 FISH YELLOW 187', '70-TRIAL-16X20 FISH YELLOW 63', '201-TRIAL- 3', '0.00', '98.00', '110.00', '120.00', '0.00', '0.00', '0.00', '2018-01-23 17:46:11', '23-TRIAL- 227', '0.00', 0, '200-TRIAL- 269'),
(92, 7, 5, '215-TRIAL-13x16 STAR WHITE(100 PCS) 165', '28-TRIAL-13x16 STAR WHITE(100 PCS) 243', '147-TRIAL- 288', '0.00', '33.00', '36.00', '50.00', '0.00', '0.00', '0.00', '2018-01-30 11:35:41', '243-TRIAL- 37', '0.00', 0, '209-TRIAL- 63'),
(93, 7, 5, '249-TRIAL-10X14 EXPRESS 181', '88-TRIAL-10X14 EXPRESS 242', '8-TRIAL- 260', '0.00', '85.00', '95.00', '105.00', '0.00', '0.00', '0.00', '2018-01-28 12:12:17', '221-TRIAL- 258', '0.00', 0, '254-TRIAL- 188'),
(94, 7, 4, '46-TRIAL-13X16 SUMO 90', '149-TRIAL-13X16 SUMO 243', '130-TRIAL- 120', '0.00', '100.00', '108.00', '120.00', '0.00', '0.00', '0.00', '2018-02-07 09:53:25', '148-TRIAL- 67', '0.00', 0, '36-TRIAL- 83'),
(95, 7, 4, '35-TRIAL-16X20 SUMO 126', '185-TRIAL-16X20 SUMO 138', '253-TRIAL- 129', '0.00', '100.00', '108.00', '120.00', '0.00', '0.00', '0.00', '2018-02-07 09:53:55', '124-TRIAL- 148', '0.00', 0, '123-TRIAL- 59'),
(96, 14, 1, '157-TRIAL-450 ml CONDAINER 166', '144-TRIAL-450 ml CONDAINER 255', '218-TRIAL- 26', '0.00', '1.53', '1.65', '1.80', '0.00', '0.00', '0.00', '2018-02-07 09:55:23', '211-TRIAL- 25', '0.00', 0, '255-TRIAL- 101'),
(97, 5, 4, '49-TRIAL-18X18 HM SHEET MAYIL 196', '284-TRIAL-18X18 MAYIL 215', '264-TRIAL- 242', '0.00', '88.00', '94.00', '100.00', '0.00', '0.00', '0.00', '2018-02-07 09:56:39', '275-TRIAL- 213', '0.00', 0, '242-TRIAL- 296'),
(98, 4, 4, '48-TRIAL-12X12 HM SHEET MAYIL 172', '26-TRIAL-12X12 MAYIL 206', '73-TRIAL- 129', '0.00', '88.00', '94.00', '100.00', '0.00', '0.00', '0.00', '2018-02-07 09:57:19', '4-TRIAL- 105', '0.00', 0, '226-TRIAL- 112'),
(99, 8, 5, '175-TRIAL-9x10 PAPER PLATE PRINT 93', '65-TRIAL-10\" PLATE PRINT 136', '36-TRIAL- 41', '0.00', '58.00', '62.00', '68.00', '0.00', '0.00', '0.00', '2018-02-14 11:11:15', '214-TRIAL- 294', '0.00', 0, '156-TRIAL- 52'),
(100, 8, 5, '236-TRIAL-10\" PAPER PLATE ROUND PRINT 238', '82-TRIAL-10\" ROUND PRINT 155', '15-TRIAL- 231', '0.00', '62.00', '64.00', '70.00', '0.00', '0.00', '0.00', '2018-02-14 11:10:55', '230-TRIAL- 141', '0.00', 0, '225-TRIAL- 211'),
(101, 8, 5, '237-TRIAL-9X10 PAPER PLATE WHITE 286', '190-TRIAL-10\" PLATE WHITE 150', '262-TRIAL- 34', '0.00', '78.00', '82.00', '88.00', '0.00', '0.00', '0.00', '2018-02-14 11:12:00', '93-TRIAL- 153', '0.00', 0, '116-TRIAL- 252'),
(102, 15, 5, '208-TRIAL-NAPKIN 25X25 62', '33-TRIAL-NAPKIN 25X25 54', '103-TRIAL- 134', '0.00', '12.00', '14.00', '16.00', '0.00', '0.00', '0.00', '2018-02-14 15:06:21', '203-TRIAL- 156', '0.00', 0, '148-TRIAL- 24'),
(103, 7, 4, '17-TRIAL-16X20 SUMO SUPER 13', '109-TRIAL-16X20 SUMO SUPER 28', '100-TRIAL- 80', '0.00', '100.00', '113.00', '120.00', '0.00', '0.00', '0.00', '2018-02-15 13:57:13', '18-TRIAL- 58', '0.00', 0, '50-TRIAL- 155'),
(104, 19, 4, '161-TRIAL-HM SHEET 18X18 NO 1 264', '203-TRIAL-18X18 NO 1 76', '243-TRIAL- 209', '0.00', '80.00', '85.00', '92.00', '0.00', '0.00', '0.00', '2018-02-15 14:03:38', '202-TRIAL- 261', '0.00', 0, '289-TRIAL- 48'),
(105, 19, 4, '82-TRIAL-HM SHEET 12X12 NO 1 153', '74-TRIAL-12X12 NO 1 120', '2-TRIAL- 23', '0.00', '80.00', '85.00', '92.00', '0.00', '0.00', '0.00', '2018-02-15 14:03:47', '231-TRIAL- 169', '0.00', 0, '278-TRIAL- 159'),
(106, 19, 4, '108-TRIAL-HM SHEET 15X15 NO 1 119', '271-TRIAL-15X15 NO 1 3', '45-TRIAL- 181', '0.00', '80.00', '85.00', '92.00', '0.00', '0.00', '0.00', '2018-02-15 14:03:54', '104-TRIAL- 92', '0.00', 0, '285-TRIAL- 113'),
(107, 9, 5, '98-TRIAL-6\" PLATE PRINT 189', '122-TRIAL-6\" PLATE PRINT 238', '137-TRIAL- 110', '0.00', '20.00', '25.00', '30.00', '0.00', '0.00', '0.00', '2018-02-16 16:23:32', '261-TRIAL- 234', '0.00', 0, '208-TRIAL- 61'),
(108, 9, 5, '59-TRIAL-9X10 PAPER PLATE WHITE SP 193', '15-TRIAL-10\" PLATE WHITE SP 69', '37-TRIAL- 69', '0.00', '70.00', '75.00', '80.00', '0.00', '0.00', '0.00', '2018-02-20 10:44:44', '58-TRIAL- 0', '0.00', 0, '171-TRIAL- 164'),
(109, 9, 5, '117-TRIAL-8\" ROUND PLATE PRINT 15', '255-TRIAL-8\" ROUND PLATE PRINT 15', '30-TRIAL- 39', '0.00', '30.00', '34.00', '40.00', '0.00', '0.00', '0.00', '2018-02-20 10:45:29', '212-TRIAL- 188', '0.00', 0, '182-TRIAL- 154'),
(110, 12, 1, '185-TRIAL-CLING FILM 200 mm 10', '184-TRIAL-CLING FILM 200 mm 174', '280-TRIAL- 115', '0.00', '205.00', '250.00', '280.00', '0.00', '0.00', '0.00', '2018-02-24 16:12:26', '151-TRIAL- 241', '0.00', 0, '115-TRIAL- 179'),
(111, 12, 1, '10-TRIAL-CLING FILM 270 mm 98', '273-TRIAL-CLING FILM 270 mm 188', '277-TRIAL- 132', '0.00', '300.00', '340.00', '380.00', '0.00', '0.00', '0.00', '2018-02-24 16:13:23', '256-TRIAL- 189', '0.00', 0, '13-TRIAL- 108');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseldetails_tbl`
--

CREATE TABLE `purchaseldetails_tbl` (
  `purchaseDetailsId` int(11) NOT NULL,
  `purchaseMasterId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `unitId` int(11) DEFAULT NULL,
  `unitConversionId` int(11) DEFAULT NULL,
  `unitConversionRate` decimal(18,2) DEFAULT NULL,
  `taxType` text COLLATE utf8_bin,
  `taxPercent` decimal(18,2) DEFAULT NULL,
  `qty` decimal(18,2) DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT NULL,
  `netAmount` decimal(18,2) DEFAULT NULL,
  `taxAmount` decimal(18,2) DEFAULT NULL,
  `totalAmount` decimal(18,2) DEFAULT NULL,
  `hsnOrSacCode` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `purchaseldetails_tbl`
--

INSERT INTO `purchaseldetails_tbl` (`purchaseDetailsId`, `purchaseMasterId`, `productId`, `unitId`, `unitConversionId`, `unitConversionRate`, `taxType`, `taxPercent`, `qty`, `rate`, `netAmount`, `taxAmount`, `totalAmount`, `hsnOrSacCode`) VALUES
(1, 1, 1, 3, NULL, '1.00', 'Exclude', '0.00', '140.00', '34.00', '4760.00', '0.00', '4760.00', '48Z36000'),
(2, 1, 2, 3, NULL, '1.00', 'Exclude', '0.00', '1610.00', '34.00', '54740.00', '0.00', '54740.00', '48Z36000'),
(3, 1, 3, 2, NULL, '1.00', 'Exclude', '0.00', '240.00', '43.00', '10320.00', '0.00', '10320.00', '48Z36000'),
(4, 1, 4, 2, NULL, '1.00', 'Exclude', '0.00', '1260.00', '43.00', '54180.00', '0.00', '54180.00', '48Z36000'),
(5, 2, 5, 4, NULL, '1.00', 'Exclude', '0.00', '360.00', '22.70', '8172.00', '0.00', '8172.00', ''),
(6, 2, 6, 2, NULL, '1.00', 'Exclude', '0.00', '100.00', '70.00', '7000.00', '0.00', '7000.00', ''),
(7, 2, 7, 2, NULL, '1.00', 'Exclude', '0.00', '40.00', '99.00', '3960.00', '0.00', '3960.00', ''),
(8, 2, 8, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '44.00', '1320.00', '0.00', '1320.00', ''),
(9, 2, 9, 4, NULL, '1.00', 'Exclude', '0.00', '20.00', '56.00', '1120.00', '0.00', '1120.00', ''),
(10, 2, 10, 2, NULL, '1.00', 'Exclude', '0.00', '100.00', '26.00', '2600.00', '0.00', '2600.00', ''),
(11, 2, 11, 5, NULL, '1.00', 'Exclude', '0.00', '900.00', '5.80', '5220.00', '0.00', '5220.00', ''),
(12, 2, 12, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '110.00', '5500.00', '0.00', '5500.00', ''),
(13, 2, 13, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '116.00', '5800.00', '0.00', '5800.00', ''),
(14, 2, 14, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '116.00', '5800.00', '0.00', '5800.00', ''),
(15, 2, 15, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '116.00', '5800.00', '0.00', '5800.00', ''),
(16, 2, 16, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '116.00', '5800.00', '0.00', '5800.00', ''),
(17, 2, 17, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '116.00', '5800.00', '0.00', '5800.00', ''),
(18, 2, 18, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '116.00', '5800.00', '0.00', '5800.00', ''),
(19, 2, 19, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '116.00', '5800.00', '0.00', '5800.00', ''),
(20, 2, 20, 4, NULL, '1.00', 'Exclude', '0.00', '60.00', '115.00', '6900.00', '0.00', '6900.00', ''),
(21, 2, 21, 4, NULL, '1.00', 'Exclude', '0.00', '60.00', '115.00', '6900.00', '0.00', '6900.00', ''),
(22, 2, 22, 4, NULL, '1.00', 'Exclude', '0.00', '60.00', '115.00', '6900.00', '0.00', '6900.00', ''),
(23, 2, 23, 4, NULL, '1.00', 'Exclude', '0.00', '60.00', '115.00', '6900.00', '0.00', '6900.00', ''),
(24, 2, 24, 4, NULL, '1.00', 'Exclude', '0.00', '60.00', '115.00', '6900.00', '0.00', '6900.00', ''),
(25, 2, 25, 4, NULL, '1.00', 'Exclude', '0.00', '60.00', '115.00', '6900.00', '0.00', '6900.00', ''),
(26, 2, 26, 4, NULL, '1.00', 'Exclude', '0.00', '60.00', '115.00', '6900.00', '0.00', '6900.00', ''),
(27, 2, 27, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '125.00', '3750.00', '0.00', '3750.00', ''),
(28, 2, 28, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '125.00', '3750.00', '0.00', '3750.00', ''),
(29, 2, 29, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '125.00', '3750.00', '0.00', '3750.00', ''),
(30, 2, 30, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '125.00', '3750.00', '0.00', '3750.00', ''),
(31, 2, 31, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '125.00', '3750.00', '0.00', '3750.00', ''),
(32, 2, 32, 4, NULL, '1.00', 'Exclude', '0.00', '100.00', '85.00', '8500.00', '0.00', '8500.00', ''),
(33, 2, 33, 4, NULL, '1.00', 'Exclude', '0.00', '100.00', '85.00', '8500.00', '0.00', '8500.00', ''),
(34, 2, 34, 4, NULL, '1.00', 'Exclude', '0.00', '100.00', '105.00', '10500.00', '0.00', '10500.00', ''),
(35, 2, 35, 4, NULL, '1.00', 'Exclude', '0.00', '100.00', '105.00', '10500.00', '0.00', '10500.00', ''),
(36, 2, 36, 4, NULL, '1.00', 'Exclude', '0.00', '60.00', '98.00', '5880.00', '0.00', '5880.00', ''),
(37, 2, 37, 4, NULL, '1.00', 'Exclude', '0.00', '125.00', '95.00', '11875.00', '0.00', '11875.00', ''),
(38, 2, 38, 4, NULL, '1.00', 'Exclude', '0.00', '125.00', '95.00', '11875.00', '0.00', '11875.00', ''),
(39, 2, 40, 4, NULL, '1.00', 'Exclude', '0.00', '90.00', '98.00', '8820.00', '0.00', '8820.00', ''),
(40, 2, 39, 4, NULL, '1.00', 'Exclude', '0.00', '90.00', '98.00', '8820.00', '0.00', '8820.00', ''),
(41, 2, 41, 4, NULL, '1.00', 'Exclude', '0.00', '125.00', '126.00', '15750.00', '0.00', '15750.00', ''),
(42, 2, 42, 4, NULL, '1.00', 'Exclude', '0.00', '150.00', '131.00', '19650.00', '0.00', '19650.00', ''),
(43, 2, 43, 4, NULL, '1.00', 'Exclude', '0.00', '90.00', '131.00', '11790.00', '0.00', '11790.00', ''),
(44, 2, 44, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '75.00', '3750.00', '0.00', '3750.00', ''),
(45, 2, 45, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '75.00', '3750.00', '0.00', '3750.00', ''),
(46, 2, 46, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '75.00', '3750.00', '0.00', '3750.00', ''),
(47, 2, 47, 4, NULL, '1.00', 'Exclude', '0.00', '100.00', '58.50', '5850.00', '0.00', '5850.00', ''),
(48, 2, 48, 4, NULL, '1.00', 'Exclude', '0.00', '100.00', '58.50', '5850.00', '0.00', '5850.00', ''),
(49, 2, 49, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '58.50', '2925.00', '0.00', '2925.00', ''),
(50, 2, 55, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '126.00', '3780.00', '0.00', '3780.00', ''),
(51, 2, 56, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '126.00', '3780.00', '0.00', '3780.00', ''),
(52, 2, 50, 4, NULL, '1.00', '118-TRIAL-Exclude 219', '0.00', '30.00', '126.00', '3780.00', '0.00', '3780.00', '259-TRIAL- 227'),
(53, 2, 51, 4, NULL, '1.00', '209-TRIAL-Exclude 219', '0.00', '30.00', '126.00', '3780.00', '0.00', '3780.00', '179-TRIAL- 216'),
(54, 2, 52, 4, NULL, '1.00', '0-TRIAL-Exclude 96', '0.00', '30.00', '126.00', '3780.00', '0.00', '3780.00', '53-TRIAL- 58'),
(55, 2, 53, 4, NULL, '1.00', '130-TRIAL-Exclude 293', '0.00', '30.00', '126.00', '3780.00', '0.00', '3780.00', '206-TRIAL- 149'),
(56, 2, 54, 4, NULL, '1.00', '154-TRIAL-Exclude 272', '0.00', '30.00', '126.00', '3780.00', '0.00', '3780.00', '60-TRIAL- 294'),
(57, 2, 57, 4, NULL, '1.00', '54-TRIAL-Exclude 233', '0.00', '150.00', '98.00', '14700.00', '0.00', '14700.00', '146-TRIAL- 29'),
(58, 2, 59, 4, NULL, '1.00', '271-TRIAL-Exclude 228', '0.00', '50.00', '98.00', '4900.00', '0.00', '4900.00', '59-TRIAL- 41'),
(59, 2, 58, 4, NULL, '1.00', '21-TRIAL-Exclude 188', '0.00', '150.00', '98.00', '14700.00', '0.00', '14700.00', '166-TRIAL- 33'),
(60, 2, 61, 4, NULL, '1.00', '285-TRIAL-Exclude 170', '0.00', '150.00', '102.00', '15300.00', '0.00', '15300.00', '129-TRIAL- 161'),
(61, 2, 60, 4, NULL, '1.00', '60-TRIAL-Exclude 108', '0.00', '50.00', '102.00', '5100.00', '0.00', '5100.00', '282-TRIAL- 262'),
(62, 3, 62, 4, NULL, '1.00', '106-TRIAL-Exclude 278', '0.00', '150.00', '95.00', '14250.00', '0.00', '14250.00', '279-TRIAL- 97'),
(63, 3, 63, 4, NULL, '1.00', '87-TRIAL-Exclude 238', '0.00', '150.00', '95.00', '14250.00', '0.00', '14250.00', '69-TRIAL- 183'),
(64, 3, 64, 5, NULL, '1.00', '140-TRIAL-Exclude 295', '0.00', '525.00', '33.00', '17325.00', '0.00', '17325.00', '66-TRIAL- 33'),
(65, 3, 65, 5, NULL, '1.00', '9-TRIAL-Exclude 257', '0.00', '350.00', '48.00', '16800.00', '0.00', '16800.00', '217-TRIAL- 34'),
(66, 3, 66, 5, NULL, '1.00', '253-TRIAL-Exclude 135', '0.00', '55.00', '58.00', '3190.00', '0.00', '3190.00', '258-TRIAL- 193'),
(67, 3, 67, 5, NULL, '1.00', '143-TRIAL-Exclude 93', '0.00', '300.00', '37.00', '11100.00', '0.00', '11100.00', '266-TRIAL- 151'),
(68, 3, 68, 5, NULL, '1.00', '140-TRIAL-Exclude 294', '0.00', '70.00', '58.00', '4060.00', '0.00', '4060.00', '37-TRIAL- 74'),
(69, 3, 69, 5, NULL, '1.00', '112-TRIAL-Exclude 97', '0.00', '40.00', '145.00', '5800.00', '0.00', '5800.00', '251-TRIAL- 295'),
(70, 3, 55, 4, NULL, '1.00', '217-TRIAL-Exclude 92', '0.00', '30.00', '126.00', '3780.00', '0.00', '3780.00', '292-TRIAL- 137'),
(71, 3, 56, 4, NULL, '1.00', '230-TRIAL-Exclude 13', '0.00', '90.00', '126.00', '11340.00', '0.00', '11340.00', '96-TRIAL- 110'),
(72, 3, 50, 4, NULL, '1.00', '289-TRIAL-Exclude 228', '0.00', '30.00', '126.00', '3780.00', '0.00', '3780.00', '109-TRIAL- 286'),
(73, 3, 51, 4, NULL, '1.00', '244-TRIAL-Exclude 240', '0.00', '30.00', '126.00', '3780.00', '0.00', '3780.00', '82-TRIAL- 69'),
(74, 3, 8, 4, NULL, '1.00', '120-TRIAL-Exclude 93', '0.00', '50.00', '44.00', '2200.00', '0.00', '2200.00', '292-TRIAL- 262'),
(75, 3, 9, 4, NULL, '1.00', '114-TRIAL-Exclude 227', '0.00', '40.00', '56.00', '2240.00', '0.00', '2240.00', '107-TRIAL- 294'),
(76, 3, 70, 5, NULL, '1.00', '5-TRIAL-Exclude 13', '0.00', '170.00', '119.00', '20230.00', '0.00', '20230.00', '111-TRIAL- 13'),
(77, 3, 71, 5, NULL, '1.00', '93-TRIAL-Exclude 164', '0.00', '150.00', '95.00', '14250.00', '0.00', '14250.00', '103-TRIAL- 195'),
(78, 3, 72, 5, NULL, '1.00', '62-TRIAL-Exclude 281', '0.00', '240.00', '39.00', '9360.00', '0.00', '9360.00', '246-TRIAL- 209'),
(79, 3, 73, 5, NULL, '1.00', '148-TRIAL-Exclude 168', '0.00', '40.00', '50.00', '2000.00', '0.00', '2000.00', '224-TRIAL- 11'),
(80, 3, 10, 5, NULL, '1.00', '154-TRIAL-Exclude 35', '0.00', '210.00', '26.00', '5460.00', '0.00', '5460.00', '227-TRIAL- 233'),
(81, 3, 74, 5, NULL, '1.00', '40-TRIAL-Exclude 62', '0.00', '100.00', '24.00', '2400.00', '0.00', '2400.00', '127-TRIAL- 277'),
(82, 3, 91, 4, NULL, '1.00', '117-TRIAL-Exclude 240', '0.00', '60.00', '98.00', '5880.00', '0.00', '5880.00', '242-TRIAL- 100'),
(83, 3, 76, 2, NULL, '1.00', '200-TRIAL-Exclude 258', '0.00', '50.00', '140.00', '7000.00', '0.00', '7000.00', '176-TRIAL- 154'),
(84, 3, 77, 2, NULL, '1.00', '135-TRIAL-Exclude 230', '0.00', '60.00', '72.00', '4320.00', '0.00', '4320.00', '131-TRIAL- 295'),
(85, 3, 78, 2, NULL, '1.00', '237-TRIAL-Exclude 23', '0.00', '72.00', '70.00', '5040.00', '0.00', '5040.00', '222-TRIAL- 227'),
(86, 3, 79, 2, NULL, '1.00', '129-TRIAL-Exclude 211', '0.00', '16000.00', '0.24', '3840.00', '0.00', '3840.00', '11-TRIAL- 54'),
(87, 3, 80, 6, NULL, '1.00', '180-TRIAL-Exclude 253', '0.00', '3.00', '2450.00', '7350.00', '0.00', '7350.00', '293-TRIAL- 21'),
(88, 3, 81, 5, NULL, '1.00', '85-TRIAL-Exclude 128', '0.00', '600.00', '5.00', '3000.00', '0.00', '3000.00', '243-TRIAL- 100'),
(89, 3, 82, 5, NULL, '1.00', '55-TRIAL-Exclude 71', '0.00', '200.00', '16.00', '3200.00', '0.00', '3200.00', '270-TRIAL- 252'),
(90, 3, 3, 2, NULL, '1.00', '75-TRIAL-Exclude 231', '0.00', '600.00', '43.00', '25800.00', '0.00', '25800.00', '140-TRIAL-48Z36000 234'),
(91, 3, 83, 5, NULL, '1.00', '40-TRIAL-Exclude 186', '0.00', '200.00', '21.00', '4200.00', '0.00', '4200.00', '34-TRIAL- 148'),
(92, 3, 84, 5, NULL, '1.00', '39-TRIAL-Exclude 265', '0.00', '200.00', '16.00', '3200.00', '0.00', '3200.00', '196-TRIAL- 112'),
(93, 3, 85, 5, NULL, '1.00', '62-TRIAL-Exclude 152', '0.00', '200.00', '22.00', '4400.00', '0.00', '4400.00', '131-TRIAL- 287'),
(94, 3, 86, 4, NULL, '1.00', '164-TRIAL-Exclude 157', '0.00', '60.00', '100.00', '6000.00', '0.00', '6000.00', '148-TRIAL- 156'),
(95, 3, 88, 5, NULL, '1.00', '70-TRIAL-Exclude 50', '0.00', '2400.00', '1.85', '4440.00', '0.00', '4440.00', '182-TRIAL- 101'),
(96, 3, 87, 4, NULL, '1.00', '93-TRIAL-Exclude 99', '0.00', '62.80', '53.00', '3328.40', '0.00', '3328.40', '232-TRIAL- 144'),
(97, 3, 89, 4, NULL, '1.00', '231-TRIAL-Exclude 75', '0.00', '30.00', '80.00', '2400.00', '0.00', '2400.00', '104-TRIAL- 150'),
(98, 3, 90, 5, NULL, '1.00', '26-TRIAL-Exclude 266', '0.00', '50.00', '80.00', '4000.00', '0.00', '4000.00', '38-TRIAL- 1'),
(99, 3, 75, 4, NULL, '1.00', '123-TRIAL-Exclude 43', '0.00', '200.00', '57.50', '11500.00', '0.00', '11500.00', '141-TRIAL- 80'),
(100, 3, 92, 5, NULL, '1.00', '195-TRIAL-Exclude 118', '0.00', '170.00', '33.00', '5610.00', '0.00', '5610.00', '59-TRIAL- 163'),
(101, 3, 93, 5, NULL, '1.00', '28-TRIAL-Exclude 29', '0.00', '100.00', '85.00', '8500.00', '0.00', '8500.00', '188-TRIAL- 54'),
(102, 4, 49, 4, NULL, '1.00', '213-TRIAL-Exclude 79', '0.00', '900.00', '58.00', '52200.00', '0.00', '52200.00', '269-TRIAL- 66'),
(103, 4, 81, 5, NULL, '1.00', '179-TRIAL-Exclude 277', '0.00', '1500.00', '5.00', '7500.00', '0.00', '7500.00', '237-TRIAL- 102'),
(104, 4, 47, 4, NULL, '1.00', '15-TRIAL-Exclude 192', '0.00', '200.00', '58.00', '11600.00', '0.00', '11600.00', '223-TRIAL- 172'),
(105, 4, 48, 4, NULL, '1.00', '48-TRIAL-Exclude 23', '0.00', '150.00', '58.00', '8700.00', '0.00', '8700.00', '53-TRIAL- 48'),
(106, 4, 20, 4, NULL, '1.00', '95-TRIAL-Exclude 297', '0.00', '30.00', '124.00', '3720.00', '0.00', '3720.00', '8-TRIAL- 108'),
(107, 4, 21, 4, NULL, '1.00', '11-TRIAL-Exclude 193', '0.00', '30.00', '124.00', '3720.00', '0.00', '3720.00', '165-TRIAL- 81'),
(108, 4, 22, 4, NULL, '1.00', '202-TRIAL-Exclude 210', '0.00', '30.00', '124.00', '3720.00', '0.00', '3720.00', '228-TRIAL- 256'),
(109, 4, 23, 4, NULL, '1.00', '105-TRIAL-Exclude 265', '0.00', '30.00', '124.00', '3720.00', '0.00', '3720.00', '23-TRIAL- 69'),
(110, 4, 25, 4, NULL, '1.00', '15-TRIAL-Exclude 153', '0.00', '30.00', '124.00', '3720.00', '0.00', '3720.00', '5-TRIAL- 284'),
(111, 4, 97, 4, NULL, '1.00', '78-TRIAL-Exclude 45', '0.00', '100.00', '88.00', '8800.00', '0.00', '8800.00', '240-TRIAL- 233'),
(112, 4, 98, 4, NULL, '1.00', '85-TRIAL-Exclude 200', '0.00', '100.00', '88.00', '8800.00', '0.00', '8800.00', '168-TRIAL- 294'),
(113, 4, 96, 1, NULL, '1.00', '133-TRIAL-Exclude 85', '0.00', '3000.00', '1.53', '4590.00', '0.00', '4590.00', '48-TRIAL- 281'),
(114, 4, 94, 4, NULL, '1.00', '32-TRIAL-Exclude 56', '0.00', '60.00', '100.00', '6000.00', '0.00', '6000.00', '210-TRIAL- 72'),
(115, 4, 95, 4, NULL, '1.00', '282-TRIAL-Exclude 201', '0.00', '60.00', '100.00', '6000.00', '0.00', '6000.00', '6-TRIAL- 135'),
(116, 4, 80, 6, NULL, '1.00', '160-TRIAL-Exclude 71', '0.00', '5.00', '2450.00', '12250.00', '0.00', '12250.00', '127-TRIAL- 237'),
(120, 7, 99, 5, NULL, '1.00', '243-TRIAL-Exclude 168', '0.00', '240.00', '58.00', '13920.00', '0.00', '13920.00', '33-TRIAL- 95'),
(121, 7, 101, 5, NULL, '1.00', '71-TRIAL-Exclude 103', '0.00', '28.00', '78.00', '2184.00', '0.00', '2184.00', '142-TRIAL- 11'),
(122, 7, 100, 5, NULL, '1.00', '79-TRIAL-Exclude 134', '0.00', '144.00', '62.00', '8928.00', '0.00', '8928.00', '112-TRIAL- 293'),
(123, 8, 86, 4, NULL, '1.00', '230-TRIAL-Exclude 61', '0.00', '450.00', '100.00', '45000.00', '0.00', '45000.00', '134-TRIAL- 58'),
(124, 8, 102, 5, NULL, '1.00', '26-TRIAL-Exclude 206', '0.00', '200.00', '12.00', '2400.00', '0.00', '2400.00', '91-TRIAL- 43'),
(125, 8, 103, 4, NULL, '1.00', '188-TRIAL-Exclude 227', '0.00', '300.00', '100.00', '30000.00', '0.00', '30000.00', '19-TRIAL- 84'),
(126, 8, 59, 4, NULL, '1.00', '124-TRIAL-Exclude 193', '0.00', '100.00', '102.00', '10200.00', '0.00', '10200.00', '135-TRIAL- 24'),
(127, 8, 81, 5, NULL, '1.00', '194-TRIAL-Exclude 282', '0.00', '900.00', '5.00', '4500.00', '0.00', '4500.00', '167-TRIAL- 227'),
(128, 8, 82, 5, NULL, '1.00', '105-TRIAL-Exclude 46', '0.00', '100.00', '15.50', '1550.00', '0.00', '1550.00', '286-TRIAL- 89'),
(129, 8, 49, 4, NULL, '1.00', '140-TRIAL-Exclude 237', '0.00', '300.00', '62.00', '18600.00', '0.00', '18600.00', '50-TRIAL- 159'),
(130, 8, 47, 4, NULL, '1.00', '278-TRIAL-Exclude 156', '0.00', '200.00', '62.00', '12400.00', '0.00', '12400.00', '277-TRIAL- 3'),
(131, 8, 48, 4, NULL, '1.00', '142-TRIAL-Exclude 0', '0.00', '150.00', '62.00', '9300.00', '0.00', '9300.00', '211-TRIAL- 125'),
(132, 8, 75, 4, NULL, '1.00', '143-TRIAL-Exclude 295', '0.00', '200.00', '57.50', '11500.00', '0.00', '11500.00', '16-TRIAL- 215'),
(133, 8, 53, 4, NULL, '1.00', '4-TRIAL-Exclude 6', '0.00', '30.00', '140.00', '4200.00', '0.00', '4200.00', '168-TRIAL- 141'),
(134, 8, 50, 4, NULL, '1.00', '35-TRIAL-Exclude 98', '0.00', '30.00', '140.00', '4200.00', '0.00', '4200.00', '125-TRIAL- 113'),
(135, 8, 22, 4, NULL, '1.00', '123-TRIAL-Exclude 112', '0.00', '30.00', '125.00', '3750.00', '0.00', '3750.00', '18-TRIAL- 157'),
(136, 8, 25, 4, NULL, '1.00', '96-TRIAL-Exclude 239', '0.00', '30.00', '125.00', '3750.00', '0.00', '3750.00', '86-TRIAL- 294'),
(137, 8, 8, 4, NULL, '1.00', '46-TRIAL-Exclude 43', '0.00', '40.00', '44.00', '1760.00', '0.00', '1760.00', '22-TRIAL- 11'),
(138, 8, 12, 4, NULL, '1.00', '80-TRIAL-Exclude 55', '0.00', '50.00', '115.00', '5750.00', '0.00', '5750.00', '258-TRIAL- 147'),
(139, 8, 42, 4, NULL, '1.00', '70-TRIAL-Exclude 90', '0.00', '150.00', '135.00', '20250.00', '0.00', '20250.00', '273-TRIAL- 127'),
(140, 8, 43, 4, NULL, '1.00', '113-TRIAL-Exclude 154', '0.00', '240.00', '135.00', '32400.00', '0.00', '32400.00', '96-TRIAL- 172'),
(141, 8, 2, 3, NULL, '1.00', '150-TRIAL-Exclude 141', '0.00', '280.00', '35.00', '9800.00', '0.00', '9800.00', '141-TRIAL-48Z36000 246'),
(142, 8, 3, 2, NULL, '1.00', '125-TRIAL-Exclude 13', '0.00', '300.00', '44.00', '13200.00', '0.00', '13200.00', '24-TRIAL-48Z36000 229'),
(143, 8, 104, 4, NULL, '1.00', '295-TRIAL-Exclude 203', '0.00', '250.00', '80.00', '20000.00', '0.00', '20000.00', '294-TRIAL- 193'),
(144, 8, 106, 4, NULL, '1.00', '267-TRIAL-Exclude 287', '0.00', '250.00', '80.00', '20000.00', '0.00', '20000.00', '140-TRIAL- 179'),
(145, 8, 105, 4, NULL, '1.00', '141-TRIAL-Exclude 125', '0.00', '150.00', '80.00', '12000.00', '0.00', '12000.00', '234-TRIAL- 60'),
(146, 9, 1, 3, NULL, '1.00', '200-TRIAL-Exclude 107', '0.00', '140.00', '35.00', '4900.00', '0.00', '4900.00', '221-TRIAL-48Z36000 92'),
(147, 9, 2, 3, NULL, '1.00', '93-TRIAL-Exclude 17', '0.00', '1540.00', '35.00', '53900.00', '0.00', '53900.00', '217-TRIAL-48Z36000 3'),
(148, 9, 3, 2, NULL, '1.00', '43-TRIAL-Exclude 193', '0.00', '360.00', '44.00', '15840.00', '0.00', '15840.00', '139-TRIAL-48Z36000 211'),
(149, 9, 4, 2, NULL, '1.00', '225-TRIAL-Exclude 28', '0.00', '1200.00', '44.00', '52800.00', '0.00', '52800.00', '178-TRIAL-48Z36000 248'),
(150, 7, 107, 5, NULL, '1.00', '150-TRIAL-Exclude 92', '0.00', '5.00', '20.00', '100.00', '0.00', '100.00', '44-TRIAL- 154'),
(151, 10, 108, 5, NULL, '1.00', '223-TRIAL-Exclude 53', '0.00', '28.00', '70.00', '1960.00', '0.00', '1960.00', '36-TRIAL- 47'),
(152, 10, 109, 5, NULL, '1.00', '46-TRIAL-Exclude 226', '0.00', '100.00', '30.00', '3000.00', '0.00', '3000.00', '161-TRIAL- 4'),
(153, 11, 107, 5, NULL, '1.00', '38-TRIAL-Exclude 171', '0.00', '180.00', '20.00', '3600.00', '0.00', '3600.00', '186-TRIAL- 205'),
(154, 8, 110, 1, NULL, '1.00', '199-TRIAL-Exclude 156', '0.00', '6.00', '205.00', '1230.00', '0.00', '1230.00', '28-TRIAL- 67'),
(155, 8, 111, 1, NULL, '1.00', '151-TRIAL-Exclude 219', '0.00', '6.00', '300.00', '1800.00', '0.00', '1800.00', '191-TRIAL- 166'),
(156, 12, 2, 3, NULL, '1.00', '17-TRIAL-Exclude 46', '0.00', '1050.00', '35.00', '36750.00', '0.00', '36750.00', '293-TRIAL-48Z36000 187'),
(157, 12, 1, 3, NULL, '1.00', '221-TRIAL-Exclude 112', '0.00', '700.00', '35.00', '24500.00', '0.00', '24500.00', '267-TRIAL-48Z36000 99'),
(158, 12, 3, 2, NULL, '1.00', '44-TRIAL-Exclude 197', '0.00', '600.00', '44.00', '26400.00', '0.00', '26400.00', '1-TRIAL-48Z36000 28'),
(159, 12, 4, 2, NULL, '1.00', '42-TRIAL-Exclude 204', '0.00', '900.00', '44.00', '39600.00', '0.00', '39600.00', '268-TRIAL-48Z36000 68');

-- --------------------------------------------------------

--
-- Table structure for table `purchasemaster_tbl`
--

CREATE TABLE `purchasemaster_tbl` (
  `purchaseMasterId` int(11) NOT NULL,
  `prefix` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `voucherNo` int(11) DEFAULT NULL,
  `entryDate` datetime DEFAULT NULL,
  `ledgerHead` int(11) DEFAULT NULL,
  `purchaseHead` int(11) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `discount` decimal(18,2) DEFAULT NULL,
  `taxAmount` decimal(18,2) DEFAULT NULL,
  `totalAmount` decimal(18,2) DEFAULT NULL,
  `paidAmount` decimal(18,2) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `tinNo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `taxForm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `previousBalance` decimal(18,2) DEFAULT NULL,
  `purInvoiceNo` text COLLATE utf8_bin,
  `purInvoiceDate` datetime DEFAULT NULL,
  `financialYearId` int(11) DEFAULT NULL,
  `isInterstatePurchase` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `purchasemaster_tbl`
--

INSERT INTO `purchasemaster_tbl` (`purchaseMasterId`, `prefix`, `voucherNo`, `entryDate`, `ledgerHead`, `purchaseHead`, `amount`, `discount`, `taxAmount`, `totalAmount`, `paidAmount`, `description`, `tinNo`, `taxForm`, `previousBalance`, `purInvoiceNo`, `purInvoiceDate`, `financialYearId`, `isInterstatePurchase`) VALUES
(1, 'PI/2018/', 1, '2018-01-02 00:00:00', 14, 12, '124000.00', '0.00', '0.00', '124000.00', '0.00', '', '33726343156', '', '0.00', '037', '2018-02-24 10:54:47', 1, 1),
(2, 'PI/2018/', 2, '2018-01-16 00:00:00', 19, 12, '382037.00', '0.00', '0.00', '382037.00', '0.00', '', '', '', '0.00', '', '2018-02-14 15:11:09', 1, 0),
(3, 'PI/2018', 3, '2018-01-24 17:36:14', 19, 12, '290603.40', '0.00', '0.00', '290603.40', '0.00', '', '', '', '-382567.00', '1313863', '2018-01-31 15:12:55', 1, 0),
(4, 'PI/2018/', 4, '2018-02-06 00:00:00', 19, 12, '145040.00', '0.00', '0.00', '145040.00', '0.00', '', '', '', '-638670.00', '1313955', '2018-02-08 19:00:32', 1, 0),
(7, 'PI/2018/', 6, '2018-02-14 00:00:00', 43, 12, '25132.00', '0.00', '0.00', '25132.00', '0.00', '', '', '', '0.00', '0001', '2018-02-16 16:24:10', 1, 0),
(8, 'PI/2018/', 7, '2018-02-13 00:00:00', 19, 12, '299540.00', '0.00', '0.00', '299540.00', '0.00', '', '', '', '-752210.00', '1314020', '2018-02-24 16:14:15', 1, 0),
(9, 'PI/2018/', 8, '2018-02-16 00:00:00', 14, 12, '127440.00', '0.00', '0.00', '127440.00', '0.00', '', '33726343156', '', '-124000.00', '048', '2018-02-16 16:09:39', 1, 0),
(10, 'PI/2018/', 9, '2018-02-20 00:00:00', 43, 12, '4960.00', '0.00', '0.00', '4960.00', '0.00', '', '', '', '-132.00', '', '2018-02-21 19:33:46', 1, 0),
(11, 'PI/2018/', 10, '2018-02-23 00:00:00', 43, 12, '3600.00', '0.00', '0.00', '3600.00', '0.00', '', '', '', '-132.00', '03', '2018-02-23 11:27:49', 1, 0),
(12, 'PI/2018/', 11, '2018-02-26 00:00:00', 14, 12, '127250.00', '0.00', '0.00', '127250.00', '0.00', '', '33726343156', '', '-169800.00', '', '2018-02-27 10:53:10', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchasereturndetails_tbl`
--

CREATE TABLE `purchasereturndetails_tbl` (
  `purchaseReturnDetailsId` int(11) NOT NULL,
  `purchaseReturnMasterId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `unitId` int(11) DEFAULT NULL,
  `unitConversionId` int(11) DEFAULT NULL,
  `unitConversionRate` decimal(18,2) DEFAULT NULL,
  `taxType` text COLLATE utf8_bin,
  `taxPercent` decimal(18,2) DEFAULT NULL,
  `qty` decimal(18,2) DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT NULL,
  `netAmount` decimal(18,2) DEFAULT NULL,
  `taxAmount` decimal(18,2) DEFAULT NULL,
  `totalAmount` decimal(18,2) DEFAULT NULL,
  `purchaseDetailsId` int(11) DEFAULT NULL,
  `hsnOrSacCode` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `purchasereturnmaster_tbl`
--

CREATE TABLE `purchasereturnmaster_tbl` (
  `purchaseReturnMasterId` int(11) NOT NULL,
  `purchaseMasterId` int(11) DEFAULT NULL,
  `prefix` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `voucherNo` int(11) DEFAULT NULL,
  `entryDate` datetime DEFAULT NULL,
  `ledgerHead` int(11) DEFAULT NULL,
  `purchaseHead` int(11) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `taxAmount` decimal(18,2) DEFAULT NULL,
  `totalAmount` decimal(18,2) DEFAULT NULL,
  `paidAmount` decimal(18,2) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `tinNo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `taxForm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `discount` decimal(18,2) DEFAULT NULL,
  `previousBalance` decimal(18,2) DEFAULT NULL,
  `financialYearId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `receiptvoucher_tbl`
--

CREATE TABLE `receiptvoucher_tbl` (
  `receiptID` int(11) NOT NULL,
  `prefix` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `VoucherNo` int(11) DEFAULT NULL,
  `voucherDate` datetime DEFAULT NULL,
  `ledgerFirst` int(11) DEFAULT NULL,
  `ledgerSecond` int(11) DEFAULT NULL,
  `total` decimal(19,4) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `userId` int(11) DEFAULT NULL,
  `financialYearId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `receiptvoucher_tbl`
--

INSERT INTO `receiptvoucher_tbl` (`receiptID`, `prefix`, `VoucherNo`, `voucherDate`, `ledgerFirst`, `ledgerSecond`, `total`, `description`, `entryDate`, `userId`, `financialYearId`) VALUES
(3, 'RV/2018', 1, '2018-01-29 19:17:55', 4, 29, '345.0000', '', '2018-01-29 19:18:13', 1, 1),
(4, 'RV/2018', 2, '2018-01-29 19:19:52', 4, 25, '250.0000', '', '2018-01-29 19:20:05', 1, 1),
(5, 'RV/2018', 3, '2018-01-29 19:20:55', 4, 26, '280.0000', '\r\n', '2018-01-29 19:21:09', 1, 1),
(6, 'RV/2018', 4, '2018-01-29 19:22:46', 4, 27, '521.0000', '', '2018-01-29 19:22:58', 1, 1),
(7, 'RV/2018', 5, '2018-01-30 11:43:43', 4, 30, '2550.0000', '750ml Condainer', '2018-01-30 11:44:07', 1, 1),
(8, 'RV/2018', 6, '2018-01-30 11:45:22', 4, 29, '135.0000', '', '2018-01-30 11:45:34', 1, 1),
(9, 'RV/2018', 7, '2018-01-30 15:39:09', 4, 22, '2485.0000', '150ml pc', '2018-01-30 15:39:30', 1, 1),
(10, 'RV/2018', 8, '2018-01-30 15:39:44', 4, 23, '3600.0000', 'hm best', '2018-01-30 15:40:02', 1, 1),
(11, 'RV/2018', 9, '2018-01-30 15:40:02', 4, 28, '1500.0000', '', '2018-01-30 15:40:17', 1, 1),
(12, 'RV/2018', 10, '2018-02-01 10:29:45', 4, 27, '128.0000', 'hm best 1', '2018-02-01 10:30:08', 1, 1),
(13, 'RV/2018', 11, '2018-02-01 10:30:09', 4, 31, '21105.0000', 'pcpr 210 & 150', '2018-02-01 10:30:37', 1, 1),
(14, 'RV/2018', 12, '2018-02-01 15:12:15', 4, 20, '6000.0000', '100 kg sadha sheet', '2018-02-01 15:12:51', 1, 1),
(15, 'RV/2018', 13, '2018-02-02 11:14:31', 4, 27, '138.0000', 'Hm mAster 10', '2018-02-02 11:14:53', 1, 1),
(16, 'RV/2018', 14, '2018-02-03 16:51:56', 4, 25, '280.0000', 'Hm Master 10&5\r\n\r\n', '2018-02-03 16:52:47', 1, 1),
(17, 'RV/2018', 15, '2018-02-05 09:22:24', 4, 27, '130.0000', '16X20 kerala Yellow', '2018-02-05 09:22:49', 1, 1),
(18, 'RV/2018', 16, '2018-02-07 10:03:34', 4, 33, '3000.0000', '18x18 Sadha 50kg', '2018-02-07 10:03:58', 1, 1),
(19, 'RV/2018', 17, '2018-02-07 12:39:24', 4, 30, '2000.0000', '', '2018-02-07 12:39:39', 1, 1),
(20, 'RV/2018', 18, '2018-02-07 12:39:40', 4, 34, '3000.0000', '', '2018-02-08 18:14:07', 1, 1),
(21, 'RV/2018/', 19, '2018-02-07 00:00:00', 4, 31, '6000.0000', '', '2018-02-08 19:27:24', 1, 1),
(22, 'RV/2018/', 20, '2018-02-07 00:00:00', 4, 22, '4970.0000', '\r\n\r\n', '2018-02-08 19:27:43', 1, 1),
(24, 'RV/2018/', 22, '2018-02-08 00:00:00', 4, 31, '10000.0000', '\r\n\r\n', '2018-02-08 19:28:13', 1, 1),
(25, 'RV/2018/', 23, '2018-02-08 00:00:00', 4, 20, '10000.0000', '\r\n\r\n', '2018-02-11 12:55:57', 1, 1),
(26, 'RV/2018/', 24, '2018-02-09 00:00:00', 4, 31, '10000.0000', '', '2018-02-09 19:09:23', 1, 1),
(27, 'RV/2018/', 25, '2018-02-10 00:00:00', 4, 30, '1000.0000', '', '2018-02-11 12:08:08', 1, 1),
(28, 'RV/2018/', 26, '2018-02-10 00:00:00', 4, 35, '20680.0000', '', '2018-02-11 12:10:23', 1, 1),
(29, 'RV/2018/', 27, '2018-02-10 00:00:00', 4, 31, '7150.0000', '', '2018-02-11 12:10:43', 1, 1),
(30, 'RV/2018/', 28, '2018-02-11 00:00:00', 4, 40, '260.0000', '', '2018-02-11 14:02:56', 1, 1),
(31, 'RV/2018/', 29, '2018-02-12 00:00:00', 4, 42, '2295.0000', '', '2018-02-13 09:56:44', 1, 1),
(32, 'RV/2018/', 30, '2018-02-13 00:00:00', 4, 22, '12950.0000', '', '2018-02-13 19:28:05', 1, 1),
(33, 'RV/2018/', 31, '2018-02-13 00:00:00', 4, 23, '5100.0000', '\r\n\r\n', '2018-02-13 19:28:20', 1, 1),
(34, 'RV/2018/', 32, '2018-02-13 00:00:00', 4, 28, '1500.0000', '', '2018-02-13 19:28:36', 1, 1),
(35, 'RV/2018/', 33, '2018-02-13 00:00:00', 4, 30, '1000.0000', '', '2018-02-14 13:29:32', 1, 1),
(36, 'RV/2018/', 34, '2018-02-14 00:00:00', 4, 38, '15000.0000', '', '2018-02-15 13:23:55', 1, 1),
(37, 'RV/2018/', 35, '2018-02-14 00:00:00', 4, 36, '8000.0000', '', '2018-02-15 13:24:11', 1, 1),
(38, 'RV/2018/', 36, '2018-02-14 00:00:00', 4, 37, '3330.0000', '', '2018-02-15 13:24:27', 1, 1),
(39, 'RV/2018/', 37, '2018-02-15 00:00:00', 4, 33, '13000.0000', '\r\n\r\n', '2018-02-15 13:24:49', 1, 1),
(40, 'RV/2018/', 38, '2018-02-17 00:00:00', 4, 50, '2000.0000', '', '2018-02-19 10:03:57', 1, 1),
(41, 'RV/2018/', 39, '2018-02-17 00:00:00', 4, 41, '2000.0000', '', '2018-02-19 10:04:14', 1, 1),
(42, 'RV/2018/', 40, '2018-02-17 00:00:00', 4, 39, '10000.0000', '', '2018-02-19 10:05:01', 1, 1),
(43, 'RV/2018/', 41, '2018-02-17 00:00:00', 4, 20, '10000.0000', '', '2018-02-19 10:05:22', 1, 1),
(44, 'RV/2018/', 42, '2018-02-17 00:00:00', 4, 45, '3275.0000', '', '2018-02-19 10:06:48', 1, 1),
(45, 'RV/2018/', 43, '2018-02-17 00:00:00', 4, 48, '8430.0000', '', '2018-02-19 10:07:07', 1, 1),
(46, 'RV/2018/', 44, '2018-02-17 00:00:00', 4, 49, '3450.0000', '', '2018-02-19 10:07:27', 1, 1),
(47, 'RV/2018/', 45, '2018-02-17 00:00:00', 4, 31, '10000.0000', '', '2018-02-19 10:09:46', 1, 1),
(48, 'RV/2018/', 46, '2018-02-20 00:00:00', 4, 32, '3050.0000', '', '2018-02-21 10:23:55', 1, 1),
(49, 'RV/2018/', 47, '2018-02-20 00:00:00', 4, 30, '2000.0000', '', '2018-02-21 10:24:07', 1, 1),
(50, 'RV/2018/', 48, '2018-02-21 00:00:00', 4, 44, '4000.0000', '', '2018-02-21 10:24:32', 1, 1),
(51, 'RV/2018/', 49, '2018-02-21 00:00:00', 4, 23, '1800.0000', '', '2018-02-21 19:26:49', 1, 1),
(52, 'RV/2018/', 50, '2018-02-21 00:00:00', 4, 22, '2960.0000', '', '2018-02-21 19:26:59', 1, 1),
(53, 'RV/2018/', 51, '2018-02-21 00:00:00', 4, 31, '10000.0000', '', '2018-02-23 11:31:46', 1, 1),
(54, 'RV/2018/', 52, '2018-02-22 00:00:00', 4, 46, '4000.0000', '', '2018-02-23 11:32:05', 1, 1),
(55, '125-TRIAL-', 53, '2018-02-22 00:00:00', 4, 35, '940.0000', '134-TRIAL- 49', '2018-02-23 11:32:19', 1, 1),
(56, '241-TRIAL-', 54, '2018-02-22 00:00:00', 4, 20, '10000.0000', '145-TRIAL- 60', '2018-02-23 11:32:39', 1, 1),
(57, '118-TRIAL-', 55, '2018-02-22 00:00:00', 4, 47, '5340.0000', '239-TRIAL- 123', '2018-02-23 11:33:07', 1, 1),
(58, '79-TRIAL- ', 56, '2018-02-24 00:00:00', 4, 39, '5000.0000', '187-TRIAL-on murshid 229', '2018-02-26 12:09:25', 1, 1),
(59, '49-TRIAL- ', 57, '2018-02-24 00:00:00', 4, 31, '19100.0000', '66-TRIAL- 49', '2018-02-26 12:10:15', 1, 1),
(60, '193-TRIAL-', 58, '2018-02-24 00:00:00', 4, 45, '1000.0000', '297-TRIAL- 16', '2018-02-26 12:11:19', 1, 1),
(61, '86-TRIAL- ', 59, '2018-02-24 00:00:00', 4, 53, '1830.0000', '188-TRIAL- 82', '2018-02-26 12:12:09', 1, 1),
(62, '155-TRIAL-', 60, '2018-02-26 00:00:00', 4, 38, '10100.0000', '114-TRIAL-Discount   40/- 1', '2018-02-27 10:59:02', 1, 1),
(63, '116-TRIAL-', 61, '2018-02-26 00:00:00', 4, 36, '5000.0000', '86-TRIAL- 263', '2018-02-27 10:45:01', 1, 1),
(64, '113-TRIAL-', 62, '2018-02-26 00:00:00', 4, 51, '4000.0000', '285-TRIAL- 253', '2018-02-27 10:45:17', 1, 1),
(65, '12-TRIAL- ', 63, '2018-02-26 00:00:00', 4, 32, '3000.0000', '32-TRIAL- 245', '2018-02-27 10:45:29', 1, 1),
(66, '113-TRIAL-', 64, '2018-02-27 00:00:00', 4, 54, '29000.0000', '121-TRIAL-Discount 33/- 58', '2018-02-28 11:51:28', 1, 1),
(67, '246-TRIAL-', 65, '2018-02-27 00:00:00', 4, 57, '3420.0000', '181-TRIAL- 244', '2018-02-28 11:53:31', 1, 1),
(68, '96-TRIAL- ', 66, '2018-02-27 00:00:00', 4, 58, '8280.0000', '229-TRIAL- 61', '2018-02-28 11:53:44', 1, 1),
(69, '135-TRIAL-', 67, '2018-02-27 00:00:00', 4, 36, '3200.0000', '73-TRIAL- 266', '2018-02-28 11:53:57', 1, 1),
(70, '44-TRIAL- ', 68, '2018-02-27 00:00:00', 4, 59, '6000.0000', '192-TRIAL- 39', '2018-02-28 11:54:08', 1, 1),
(71, '153-TRIAL-', 69, '2018-02-27 00:00:00', 4, 30, '2000.0000', '54-TRIAL- 110', '2018-02-28 11:54:21', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_tbl`
--

CREATE TABLE `role_tbl` (
  `roleId` int(11) NOT NULL,
  `roleName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `role_tbl`
--

INSERT INTO `role_tbl` (`roleId`, `roleName`, `description`, `entryDate`) VALUES
(1, 'Administration', NULL, '2018-05-23 16:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `salesdetails_tbl`
--

CREATE TABLE `salesdetails_tbl` (
  `salesDetailsId` int(11) NOT NULL,
  `salesMasterId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `unitId` int(11) DEFAULT NULL,
  `unitConversionId` int(11) DEFAULT NULL,
  `unitConversionRate` decimal(18,2) DEFAULT NULL,
  `taxType` text COLLATE utf8_bin,
  `taxPercent` decimal(18,2) DEFAULT NULL,
  `qty` decimal(18,2) DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT NULL,
  `netAmount` decimal(18,2) DEFAULT NULL,
  `taxAmount` decimal(18,2) DEFAULT NULL,
  `totalAmount` decimal(18,2) DEFAULT NULL,
  `hsnOrSacCode` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `purchaseRate` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `salesdetails_tbl`
--

INSERT INTO `salesdetails_tbl` (`salesDetailsId`, `salesMasterId`, `productId`, `unitId`, `unitConversionId`, `unitConversionRate`, `taxType`, `taxPercent`, `qty`, `rate`, `netAmount`, `taxAmount`, `totalAmount`, `hsnOrSacCode`, `purchaseRate`) VALUES
(17, 9, 2, 3, NULL, '1.00', 'Exclude', '0.00', '70.00', '35.50', '2485.00', '0.00', '2485.00', '48Z36000', '34.00'),
(18, 10, 25, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '120.00', '3600.00', '0.00', '3600.00', '', '115.00'),
(19, 11, 48, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '60.00', '3000.00', '0.00', '3000.00', '', '58.50'),
(20, 11, 47, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '60.00', '3000.00', '0.00', '3000.00', '', '58.50'),
(25, 14, 12, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '135.00', '135.00', '0.00', '135.00', '', '110.00'),
(26, 14, 92, 5, NULL, '1.00', 'Exclude', '0.00', '5.00', '42.00', '210.00', '0.00', '210.00', '', '33.00'),
(27, 14, 5, 4, NULL, '1.00', 'Exclude', '0.00', '5.00', '27.00', '135.00', '0.00', '135.00', '', '22.70'),
(28, 15, 86, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '125.00', '125.00', '0.00', '125.00', '', '100.00'),
(29, 15, 40, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '125.00', '125.00', '0.00', '125.00', '', '98.00'),
(30, 16, 12, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '135.00', '135.00', '0.00', '135.00', '', '110.00'),
(31, 16, 43, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '145.00', '145.00', '0.00', '145.00', '', '131.00'),
(32, 17, 12, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '135.00', '135.00', '0.00', '135.00', '', '110.00'),
(33, 17, 38, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '130.00', '130.00', '0.00', '130.00', '', '95.00'),
(34, 17, 21, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '128.00', '128.00', '0.00', '128.00', '', '115.00'),
(35, 17, 26, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '128.00', '128.00', '0.00', '128.00', '', '115.00'),
(36, 18, 21, 4, NULL, '1.00', 'Exclude', '0.00', '5.00', '122.00', '610.00', '0.00', '610.00', '', '115.00'),
(37, 18, 22, 4, NULL, '1.00', 'Exclude', '0.00', '10.00', '122.00', '1220.00', '0.00', '1220.00', '', '115.00'),
(38, 18, 23, 4, NULL, '1.00', 'Exclude', '0.00', '3.00', '122.00', '366.00', '0.00', '366.00', '', '115.00'),
(39, 18, 25, 4, NULL, '1.00', 'Exclude', '0.00', '3.00', '122.00', '366.00', '0.00', '366.00', '', '115.00'),
(40, 18, 39, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '118.00', '118.00', '0.00', '118.00', '', '98.00'),
(41, 18, 40, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '118.00', '118.00', '0.00', '118.00', '', '98.00'),
(42, 18, 86, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '116.00', '116.00', '0.00', '116.00', '', '100.00'),
(43, 18, 12, 4, NULL, '1.00', 'Exclude', '0.00', '10.00', '124.00', '1240.00', '0.00', '1240.00', '', '110.00'),
(44, 19, 80, 6, NULL, '1.00', 'Exclude', '0.00', '1.00', '2550.00', '2550.00', '0.00', '2550.00', '', '2450.00'),
(45, 20, 2, 3, NULL, '1.00', 'Exclude', '0.00', '210.00', '35.50', '7455.00', '0.00', '7455.00', '48Z36000', '34.00'),
(46, 20, 4, 2, NULL, '1.00', 'Exclude', '0.00', '300.00', '45.50', '13650.00', '0.00', '13650.00', '48Z36000', '43.00'),
(47, 21, 2, 3, NULL, '1.00', 'Exclude', '0.00', '140.00', '35.50', '4970.00', '0.00', '4970.00', '48Z36000', '34.00'),
(50, 23, 22, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '128.00', '128.00', '0.00', '128.00', '', '115.00'),
(51, 24, 42, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '138.00', '4140.00', '0.00', '4140.00', '', '131.00'),
(52, 24, 43, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '138.00', '4140.00', '0.00', '4140.00', '', '131.00'),
(53, 24, 20, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '123.00', '3690.00', '0.00', '3690.00', '', '115.00'),
(54, 25, 81, 5, NULL, '1.00', 'Exclude', '0.00', '600.00', '5.80', '3480.00', '0.00', '3480.00', '', '5.00'),
(55, 25, 49, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '60.00', '3000.00', '0.00', '3000.00', '', '58.50'),
(56, 17, 54, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '138.00', '138.00', '0.00', '138.00', '', '126.00'),
(57, 26, 54, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '140.00', '140.00', '0.00', '140.00', '', '126.00'),
(58, 26, 53, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '140.00', '140.00', '0.00', '140.00', '', '126.00'),
(59, 27, 38, 4, NULL, '1.00', 'Exclude', '0.00', '1.00', '130.00', '130.00', '0.00', '130.00', '', '95.00'),
(60, 28, 47, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '61.00', '3050.00', '0.00', '3050.00', '', '58.00'),
(61, 29, 49, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '60.00', '3000.00', '0.00', '3000.00', '', '58.00'),
(62, 30, 49, 4, NULL, '1.00', 'Exclude', '0.00', '700.00', '60.00', '42000.00', '0.00', '42000.00', '', '58.00'),
(63, 31, 42, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '138.00', '4140.00', '0.00', '4140.00', '', '131.00'),
(64, 31, 43, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '138.00', '4140.00', '0.00', '4140.00', '', '131.00'),
(65, 31, 81, 5, NULL, '1.00', 'Exclude', '0.00', '300.00', '5.80', '1740.00', '0.00', '1740.00', '', '5.00'),
(66, 31, 79, 2, NULL, '1.00', 'Exclude', '0.00', '8000.00', '0.26', '2040.00', '0.00', '2040.00', '', '0.24'),
(67, 31, 2, 3, NULL, '1.00', 'Exclude', '0.00', '210.00', '35.50', '7455.00', '0.00', '7455.00', '48Z36000', '34.00'),
(68, 31, 4, 2, NULL, '1.00', 'Exclude', '0.00', '300.00', '45.50', '13650.00', '0.00', '13650.00', '48Z36000', '43.00'),
(69, 32, 39, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '116.00', '3480.00', '0.00', '3480.00', '', '98.00'),
(70, 32, 75, 4, NULL, '1.00', 'Exclude', '0.00', '50.00', '61.00', '3050.00', '0.00', '3050.00', '', '57.50'),
(71, 32, 22, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '123.00', '3690.00', '0.00', '3690.00', '', '115.00'),
(72, 32, 23, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '123.00', '3690.00', '0.00', '3690.00', '', '115.00'),
(73, 33, 39, 4, NULL, '1.00', 'Exclude', '0.00', '30.00', '113.00', '3390.00', '0.00', '3390.00', '', '98.00'),
(74, 34, 1, 3, NULL, '1.00', '41-TRIAL-Exclude 190', '0.00', '70.00', '35.50', '2485.00', '0.00', '2485.00', '223-TRIAL-48Z36000 63', '34.00'),
(75, 34, 2, 3, NULL, '1.00', '28-TRIAL-Exclude 284', '0.00', '70.00', '36.00', '2520.00', '0.00', '2520.00', '178-TRIAL-48Z36000 0', '34.00'),
(76, 34, 81, 5, NULL, '1.00', '271-TRIAL-Exclude 85', '0.00', '300.00', '5.80', '1740.00', '0.00', '1740.00', '74-TRIAL- 171', '5.00'),
(77, 34, 42, 4, NULL, '1.00', '233-TRIAL-Exclude 67', '0.00', '30.00', '138.00', '4140.00', '0.00', '4140.00', '53-TRIAL- 195', '131.00'),
(78, 34, 43, 4, NULL, '1.00', '68-TRIAL-Exclude 125', '0.00', '25.00', '138.00', '3450.00', '0.00', '3450.00', '76-TRIAL- 29', '131.00'),
(79, 34, 49, 4, NULL, '1.00', '150-TRIAL-Exclude 198', '0.00', '50.00', '60.50', '3025.00', '0.00', '3025.00', '9-TRIAL- 193', '57.00'),
(80, 34, 41, 4, NULL, '1.00', '186-TRIAL-Exclude 80', '0.00', '25.00', '135.00', '3375.00', '0.00', '3375.00', '216-TRIAL- 249', '126.00'),
(81, 35, 8, 4, NULL, '1.00', '267-TRIAL-Exclude 28', '0.00', '40.00', '48.00', '1920.00', '0.00', '1920.00', '279-TRIAL- 64', '44.00'),
(82, 36, 86, 4, NULL, '1.00', '21-TRIAL-Exclude 5', '0.00', '30.00', '110.00', '3300.00', '0.00', '3300.00', '126-TRIAL- 216', '100.00'),
(83, 36, 82, 5, NULL, '1.00', '16-TRIAL-Exclude 126', '0.00', '100.00', '18.00', '1800.00', '0.00', '1800.00', '166-TRIAL- 287', '16.00'),
(86, 38, 2, 3, NULL, '1.00', '81-TRIAL-Exclude 164', '0.00', '210.00', '35.50', '7455.00', '0.00', '7455.00', '140-TRIAL-48Z36000 286', '34.00'),
(87, 38, 4, 2, NULL, '1.00', '21-TRIAL-Exclude 262', '0.00', '120.00', '46.00', '5520.00', '0.00', '5520.00', '21-TRIAL-48Z36000 64', '43.00'),
(104, 44, 12, 4, NULL, '1.00', '209-TRIAL-Exclude 15', '0.00', '1.00', '130.00', '130.00', '0.00', '130.00', '202-TRIAL- 173', '110.00'),
(105, 44, 75, 4, NULL, '1.00', '24-TRIAL-Exclude 241', '0.00', '2.00', '65.00', '130.00', '0.00', '130.00', '45-TRIAL- 262', '57.50'),
(106, 45, 2, 3, NULL, '1.00', '223-TRIAL-Exclude 231', '0.00', '70.00', '36.50', '2555.00', '0.00', '2555.00', '6-TRIAL-48Z36000 268', '34.00'),
(107, 46, 92, 5, NULL, '1.00', '18-TRIAL-Exclude 202', '0.00', '25.00', '37.00', '925.00', '0.00', '925.00', '107-TRIAL- 7', '33.00'),
(108, 46, 3, 2, NULL, '1.00', '81-TRIAL-Exclude 112', '0.00', '30.00', '46.50', '1395.00', '0.00', '1395.00', '136-TRIAL-48Z36000 230', '43.00'),
(109, 47, 2, 3, NULL, '1.00', '114-TRIAL-Exclude 109', '0.00', '210.00', '35.50', '7455.00', '0.00', '7455.00', '184-TRIAL-48Z36000 156', '34.00'),
(110, 47, 4, 2, NULL, '1.00', '290-TRIAL-Exclude 293', '0.00', '180.00', '45.50', '8190.00', '0.00', '8190.00', '296-TRIAL-48Z36000 52', '43.00'),
(111, 47, 3, 2, NULL, '1.00', '154-TRIAL-Exclude 145', '0.00', '180.00', '45.00', '8100.00', '0.00', '8100.00', '8-TRIAL-48Z36000 248', '43.00'),
(112, 47, 22, 4, NULL, '1.00', '291-TRIAL-Exclude 212', '0.00', '30.00', '130.00', '3900.00', '0.00', '3900.00', '31-TRIAL- 114', '43.00'),
(113, 47, 25, 4, NULL, '1.00', '239-TRIAL-Exclude 158', '0.00', '30.00', '130.00', '3900.00', '0.00', '3900.00', '122-TRIAL- 4', '43.00'),
(114, 47, 50, 4, NULL, '1.00', '95-TRIAL-Exclude 152', '0.00', '30.00', '138.00', '4140.00', '0.00', '4140.00', '69-TRIAL- 279', '43.00'),
(115, 47, 53, 4, NULL, '1.00', '238-TRIAL-Exclude 23', '0.00', '25.00', '138.00', '3450.00', '0.00', '3450.00', '18-TRIAL- 66', '43.00'),
(119, 48, 86, 4, NULL, '1.00', '259-TRIAL-Exclude 98', '0.00', '25.00', '115.00', '2875.00', '0.00', '2875.00', '286-TRIAL- 196', '100.00'),
(120, 48, 40, 4, NULL, '1.00', '262-TRIAL-Exclude 233', '0.00', '30.00', '115.00', '3450.00', '0.00', '3450.00', '158-TRIAL- 22', '98.00'),
(121, 48, 4, 2, NULL, '1.00', '246-TRIAL-Exclude 92', '0.00', '300.00', '45.50', '13650.00', '0.00', '13650.00', '137-TRIAL-48Z36000 25', '43.00'),
(122, 48, 82, 5, NULL, '1.00', '147-TRIAL-Exclude 58', '0.00', '99.00', '18.00', '1782.00', '0.00', '1782.00', '2-TRIAL- 207', '16.00'),
(123, 48, 70, 5, NULL, '1.00', '198-TRIAL-Exclude 230', '0.00', '34.00', '125.00', '4250.00', '0.00', '4250.00', '192-TRIAL- 200', '119.00'),
(124, 48, 99, 5, NULL, '1.00', '78-TRIAL-Exclude 99', '0.00', '40.00', '62.00', '2480.00', '0.00', '2480.00', '52-TRIAL- 48', '58.00'),
(125, 49, 40, 4, NULL, '1.00', '82-TRIAL-Exclude 240', '0.00', '30.00', '113.00', '3390.00', '0.00', '3390.00', '115-TRIAL- 75', '98.00'),
(126, 49, 59, 4, NULL, '1.00', '62-TRIAL-Exclude 267', '0.00', '10.00', '105.00', '1050.00', '0.00', '1050.00', '136-TRIAL- 97', '98.00'),
(127, 49, 48, 4, NULL, '1.00', '218-TRIAL-Exclude 97', '0.00', '50.00', '61.00', '3050.00', '0.00', '3050.00', '28-TRIAL- 51', '58.00'),
(128, 49, 99, 5, NULL, '1.00', '116-TRIAL-Exclude 230', '0.00', '40.00', '62.00', '2480.00', '0.00', '2480.00', '249-TRIAL- 125', '58.00'),
(129, 50, 81, 5, NULL, '1.00', '58-TRIAL-Exclude 229', '0.00', '300.00', '6.50', '1950.00', '0.00', '1950.00', '220-TRIAL- 140', '5.00'),
(134, 52, 47, 4, NULL, '1.00', '160-TRIAL-Exclude 147', '0.00', '50.00', '60.00', '3000.00', '0.00', '3000.00', '262-TRIAL- 155', '58.00'),
(135, 52, 49, 4, NULL, '1.00', '275-TRIAL-Exclude 192', '0.00', '100.00', '60.00', '6000.00', '0.00', '6000.00', '161-TRIAL- 254', '58.00'),
(136, 52, 2, 3, NULL, '1.00', '198-TRIAL-Exclude 46', '0.00', '70.00', '35.50', '2485.00', '0.00', '2485.00', '14-TRIAL-48Z36000 246', '34.00'),
(137, 53, 59, 4, NULL, '1.00', '188-TRIAL-Exclude 69', '0.00', '25.00', '104.00', '2600.00', '0.00', '2600.00', '238-TRIAL- 63', '98.00'),
(138, 53, 57, 4, NULL, '1.00', '75-TRIAL-Exclude 215', '0.00', '10.00', '104.00', '1040.00', '0.00', '1040.00', '121-TRIAL- 175', '98.00'),
(139, 53, 2, 3, NULL, '1.00', '15-TRIAL-Exclude 128', '0.00', '349.00', '35.50', '12389.50', '0.00', '12389.50', '34-TRIAL-48Z36000 270', '34.00'),
(140, 53, 3, 2, NULL, '1.00', '5-TRIAL-Exclude 164', '0.00', '240.00', '45.50', '10920.00', '0.00', '10920.00', '57-TRIAL-48Z36000 162', '43.00'),
(141, 49, 86, 4, NULL, '1.00', '61-TRIAL-Exclude 224', '0.00', '30.00', '113.00', '3390.00', '0.00', '3390.00', '249-TRIAL- 69', '58.00'),
(142, 50, 102, 5, NULL, '1.00', '30-TRIAL-Exclude 123', '0.00', '100.00', '14.00', '1400.00', '0.00', '1400.00', '150-TRIAL- 233', '5.00'),
(143, 52, 11, 5, NULL, '1.00', '125-TRIAL-Exclude 110', '0.00', '300.00', '6.00', '1800.00', '0.00', '1800.00', '237-TRIAL- 136', '34.00'),
(144, 53, 86, 4, NULL, '1.00', '37-TRIAL-Exclude 78', '0.00', '30.00', '113.00', '3390.00', '0.00', '3390.00', '93-TRIAL- 136', '43.00'),
(146, 55, 99, 5, NULL, '1.00', '114-TRIAL-Exclude 264', '0.00', '80.00', '62.00', '4960.00', '0.00', '4960.00', '91-TRIAL- 149', '58.00'),
(147, 55, 71, 5, NULL, '1.00', '235-TRIAL-Exclude 105', '0.00', '30.00', '94.00', '2820.00', '0.00', '2820.00', '137-TRIAL- 104', '95.00'),
(148, 55, 1, 3, NULL, '1.00', '137-TRIAL-Exclude 223', '0.00', '70.00', '35.50', '2485.00', '0.00', '2485.00', '164-TRIAL-48Z36000 70', '35.00'),
(149, 55, 3, 2, NULL, '1.00', '108-TRIAL-Exclude 268', '0.00', '60.00', '45.50', '2730.00', '0.00', '2730.00', '81-TRIAL-48Z36000 185', '44.00'),
(150, 56, 82, 5, NULL, '1.00', '152-TRIAL-Exclude 73', '0.00', '100.00', '18.00', '1800.00', '0.00', '1800.00', '152-TRIAL- 94', '16.00'),
(151, 57, 8, 4, NULL, '1.00', '276-TRIAL-Exclude 126', '0.00', '20.00', '46.00', '920.00', '0.00', '920.00', '196-TRIAL- 72', '44.00'),
(152, 57, 86, 4, NULL, '1.00', '249-TRIAL-Exclude 240', '0.00', '30.00', '110.00', '3300.00', '0.00', '3300.00', '74-TRIAL- 219', '100.00'),
(153, 57, 81, 5, NULL, '1.00', '43-TRIAL-Exclude 211', '0.00', '300.00', '5.80', '1740.00', '0.00', '1740.00', '141-TRIAL- 189', '5.00'),
(154, 58, 8, 4, NULL, '1.00', '19-TRIAL-Exclude 165', '0.00', '20.00', '47.00', '940.00', '0.00', '940.00', '205-TRIAL- 85', '44.00'),
(155, 59, 2, 3, NULL, '1.00', '16-TRIAL-Exclude 250', '0.00', '70.00', '35.50', '2485.00', '0.00', '2485.00', '115-TRIAL-48Z36000 209', '35.00'),
(156, 59, 4, 2, NULL, '1.00', '264-TRIAL-Exclude 166', '0.00', '60.00', '45.50', '2730.00', '0.00', '2730.00', '93-TRIAL-48Z36000 174', '44.00'),
(157, 59, 80, 6, NULL, '1.00', '9-TRIAL-Exclude 0', '0.00', '1.00', '2550.00', '2550.00', '0.00', '2550.00', '195-TRIAL- 273', '2450.00'),
(158, 60, 80, 6, NULL, '1.00', '289-TRIAL-Exclude 261', '0.00', '1.00', '2550.00', '2550.00', '0.00', '2550.00', '272-TRIAL- 268', '2450.00'),
(159, 60, 81, 5, NULL, '1.00', '58-TRIAL-Exclude 231', '0.00', '100.00', '6.00', '600.00', '0.00', '600.00', '168-TRIAL- 226', '5.00'),
(160, 60, 107, 5, NULL, '1.00', '10-TRIAL-Exclude 222', '0.00', '5.00', '25.00', '125.00', '0.00', '125.00', '174-TRIAL- 79', '20.00'),
(161, 61, 2, 3, NULL, '1.00', '10-TRIAL-Exclude 152', '0.00', '70.00', '36.50', '2555.00', '0.00', '2555.00', '282-TRIAL-48Z36000 191', '35.00'),
(162, 61, 4, 2, NULL, '1.00', '195-TRIAL-Exclude 64', '0.00', '60.00', '46.50', '2790.00', '0.00', '2790.00', '274-TRIAL-48Z36000 164', '44.00'),
(163, 62, 75, 4, NULL, '1.00', '202-TRIAL-Exclude 55', '0.00', '50.00', '63.00', '3150.00', '0.00', '3150.00', '260-TRIAL- 174', '57.50'),
(164, 62, 2, 3, NULL, '1.00', '72-TRIAL-Exclude 121', '0.00', '70.00', '36.00', '2520.00', '0.00', '2520.00', '22-TRIAL-48Z36000 47', '35.00'),
(165, 62, 4, 2, NULL, '1.00', '277-TRIAL-Exclude 189', '0.00', '60.00', '46.00', '2760.00', '0.00', '2760.00', '105-TRIAL-48Z36000 195', '44.00'),
(166, 63, 86, 4, NULL, '1.00', '294-TRIAL-Exclude 150', '0.00', '30.00', '115.00', '3450.00', '0.00', '3450.00', '143-TRIAL- 154', '100.00'),
(167, 64, 86, 4, NULL, '1.00', '81-TRIAL-Exclude 112', '0.00', '30.00', '116.00', '3480.00', '0.00', '3480.00', '272-TRIAL- 39', '100.00'),
(168, 64, 92, 5, NULL, '1.00', '228-TRIAL-Exclude 212', '0.00', '30.00', '38.00', '1140.00', '0.00', '1140.00', '162-TRIAL- 267', '33.00'),
(169, 64, 12, 4, NULL, '1.00', '108-TRIAL-Exclude 215', '0.00', '25.00', '126.00', '3150.00', '0.00', '3150.00', '108-TRIAL- 123', '110.00'),
(170, 64, 2, 3, NULL, '1.00', '59-TRIAL-Exclude 34', '0.00', '70.00', '36.00', '2520.00', '0.00', '2520.00', '104-TRIAL-48Z36000 86', '35.00'),
(171, 64, 4, 2, NULL, '1.00', '119-TRIAL-Exclude 58', '0.00', '60.00', '46.00', '2760.00', '0.00', '2760.00', '245-TRIAL-48Z36000 106', '44.00'),
(172, 64, 49, 4, NULL, '1.00', '66-TRIAL-Exclude 100', '0.00', '25.00', '66.00', '1650.00', '0.00', '1650.00', '267-TRIAL- 292', '58.00'),
(173, 64, 47, 4, NULL, '1.00', '187-TRIAL-Exclude 32', '0.00', '25.00', '66.00', '1650.00', '0.00', '1650.00', '256-TRIAL- 74', '58.00'),
(174, 65, 86, 4, NULL, '1.00', '147-TRIAL-Exclude 221', '0.00', '30.00', '115.00', '3450.00', '0.00', '3450.00', '283-TRIAL- 122', '100.00'),
(175, 65, 103, 4, NULL, '1.00', '231-TRIAL-Exclude 276', '0.00', '30.00', '115.00', '3450.00', '0.00', '3450.00', '83-TRIAL- 248', '100.00'),
(176, 66, 2, 3, NULL, '1.00', '123-TRIAL-Exclude 282', '0.00', '70.00', '36.50', '2555.00', '0.00', '2555.00', '118-TRIAL-48Z36000 76', '35.00'),
(177, 66, 4, 2, NULL, '1.00', '220-TRIAL-Exclude 211', '0.00', '60.00', '46.50', '2790.00', '0.00', '2790.00', '82-TRIAL-48Z36000 156', '44.00'),
(178, 66, 47, 4, NULL, '1.00', '290-TRIAL-Exclude 225', '0.00', '50.00', '61.00', '3050.00', '0.00', '3050.00', '124-TRIAL- 186', '58.00'),
(179, 67, 47, 4, NULL, '1.00', '177-TRIAL-Exclude 69', '0.00', '50.00', '64.00', '3200.00', '0.00', '3200.00', '243-TRIAL- 34', '62.00'),
(180, 67, 80, 6, NULL, '1.00', '77-TRIAL-Exclude 168', '0.00', '1.00', '2550.00', '2550.00', '0.00', '2550.00', '168-TRIAL- 91', '2450.00'),
(181, 67, 101, 5, NULL, '1.00', '96-TRIAL-Exclude 283', '0.00', '28.00', '82.00', '2296.00', '0.00', '2296.00', '28-TRIAL- 227', '78.00'),
(182, 67, 108, 5, NULL, '1.00', '26-TRIAL-Exclude 271', '0.00', '28.00', '75.00', '2100.00', '0.00', '2100.00', '197-TRIAL- 212', '70.00'),
(183, 68, 109, 5, NULL, '1.00', '103-TRIAL-Exclude 227', '0.00', '50.00', '34.00', '1700.00', '0.00', '1700.00', '8-TRIAL- 145', '30.00'),
(184, 68, 47, 4, NULL, '1.00', '208-TRIAL-Exclude 285', '0.00', '50.00', '64.00', '3200.00', '0.00', '3200.00', '238-TRIAL- 237', '62.00'),
(185, 68, 8, 4, NULL, '1.00', '43-TRIAL-Exclude 13', '0.00', '20.00', '48.00', '960.00', '0.00', '960.00', '1-TRIAL- 150', '44.00'),
(186, 69, 105, 4, NULL, '1.00', '228-TRIAL-Exclude 11', '0.00', '50.00', '86.00', '4300.00', '0.00', '4300.00', '250-TRIAL- 249', '80.00'),
(187, 70, 75, 4, NULL, '1.00', '92-TRIAL-Exclude 254', '0.00', '30.00', '61.00', '1830.00', '0.00', '1830.00', '269-TRIAL- 81', '57.50'),
(188, 71, 2, 3, NULL, '1.00', '165-TRIAL-Exclude 167', '0.00', '840.00', '36.00', '30240.00', '0.00', '30240.00', '13-TRIAL-48Z36000 293', '35.00'),
(189, 71, 4, 2, NULL, '1.00', '34-TRIAL-Exclude 272', '0.00', '300.00', '46.00', '13800.00', '0.00', '13800.00', '272-TRIAL-48Z36000 30', '44.00'),
(190, 71, 67, 5, NULL, '1.00', '1-TRIAL-Exclude 242', '0.00', '290.00', '40.00', '11600.00', '0.00', '11600.00', '77-TRIAL- 77', '37.00'),
(191, 71, 68, 5, NULL, '1.00', '270-TRIAL-Exclude 102', '0.00', '70.00', '60.00', '4200.00', '0.00', '4200.00', '264-TRIAL- 181', '58.00'),
(192, 71, 59, 4, NULL, '1.00', '90-TRIAL-Exclude 123', '0.00', '100.00', '103.00', '10300.00', '0.00', '10300.00', '137-TRIAL- 223', '100.00'),
(193, 71, 109, 5, NULL, '1.00', '79-TRIAL-Exclude 95', '0.00', '50.00', '33.00', '1650.00', '0.00', '1650.00', '69-TRIAL- 227', '100.00'),
(194, 72, 86, 4, NULL, '1.00', '42-TRIAL-Exclude 110', '0.00', '30.00', '110.00', '3300.00', '0.00', '3300.00', '282-TRIAL- 258', '100.00'),
(195, 73, 84, 5, NULL, '1.00', '126-TRIAL-Exclude 187', '0.00', '50.00', '18.00', '900.00', '0.00', '900.00', '170-TRIAL- 128', '16.00'),
(198, 74, 12, 4, NULL, '1.00', '251-TRIAL-Exclude 158', '0.00', '25.00', '120.00', '3000.00', '0.00', '3000.00', '13-TRIAL- 260', '110.00'),
(199, 74, 75, 4, NULL, '1.00', '283-TRIAL-Exclude 286', '0.00', '50.00', '60.00', '3000.00', '0.00', '3000.00', '42-TRIAL- 210', '57.50'),
(200, 74, 86, 4, NULL, '1.00', '272-TRIAL-Exclude 228', '0.00', '30.00', '110.00', '3300.00', '0.00', '3300.00', '134-TRIAL- 141', '100.00'),
(201, 74, 103, 4, NULL, '1.00', '18-TRIAL-Exclude 203', '0.00', '30.00', '110.00', '3300.00', '0.00', '3300.00', '167-TRIAL- 265', '100.00'),
(202, 74, 107, 5, NULL, '1.00', '138-TRIAL-Exclude 81', '0.00', '20.00', '23.00', '460.00', '0.00', '460.00', '257-TRIAL- 250', '20.00'),
(204, 74, 4, 2, NULL, '1.00', '114-TRIAL-Exclude 298', '0.00', '60.00', '46.00', '2760.00', '0.00', '2760.00', '258-TRIAL-48Z36000 261', '44.00'),
(205, 74, 80, 6, NULL, '1.00', '263-TRIAL-Exclude 56', '0.00', '1.00', '2550.00', '2550.00', '0.00', '2550.00', '107-TRIAL- 178', '2450.00'),
(206, 74, 96, 1, NULL, '1.00', '289-TRIAL-Exclude 235', '0.00', '1500.00', '1.62', '2422.50', '0.00', '2422.50', '65-TRIAL- 275', '1.53'),
(207, 75, 107, 5, NULL, '1.00', '86-TRIAL-Exclude 186', '0.00', '40.00', '25.00', '1000.00', '0.00', '1000.00', '33-TRIAL- 260', '20.00'),
(212, 77, 2, 3, NULL, '1.00', '130-TRIAL-Exclude 248', '0.00', '280.00', '36.25', '10150.00', '0.00', '10150.00', '228-TRIAL-48Z36000 92', '35.00'),
(213, 77, 4, 2, NULL, '1.00', '133-TRIAL-Exclude 140', '0.00', '360.00', '46.25', '16650.00', '0.00', '16650.00', '166-TRIAL-48Z36000 235', '44.00'),
(214, 77, 3, 2, NULL, '1.00', '10-TRIAL-Exclude 199', '0.00', '240.00', '46.00', '11040.00', '0.00', '11040.00', '137-TRIAL-48Z36000 292', '44.00'),
(215, 77, 42, 4, NULL, '1.00', '182-TRIAL-Exclude 128', '0.00', '30.00', '143.00', '4290.00', '0.00', '4290.00', '252-TRIAL- 269', '131.00'),
(216, 77, 43, 4, NULL, '1.00', '44-TRIAL-Exclude 194', '0.00', '30.00', '143.00', '4290.00', '0.00', '4290.00', '8-TRIAL- 252', '131.00'),
(217, 78, 80, 6, NULL, '1.00', '247-TRIAL-Exclude 32', '0.00', '1.00', '2550.00', '2550.00', '0.00', '2550.00', '235-TRIAL- 8', '2450.00'),
(218, 78, 48, 4, NULL, '1.00', '264-TRIAL-Exclude 197', '0.00', '25.00', '65.00', '1625.00', '0.00', '1625.00', '143-TRIAL- 49', '62.00'),
(219, 78, 49, 4, NULL, '1.00', '115-TRIAL-Exclude 141', '0.00', '25.00', '65.00', '1625.00', '0.00', '1625.00', '189-TRIAL- 200', '62.00'),
(220, 79, 28, 4, NULL, '1.00', '12-TRIAL-Exclude 48', '0.00', '30.00', '132.00', '3960.00', '0.00', '3960.00', '223-TRIAL- 51', '125.00'),
(221, 79, 30, 4, NULL, '1.00', '174-TRIAL-Exclude 133', '0.00', '30.00', '132.00', '3960.00', '0.00', '3960.00', '191-TRIAL- 200', '125.00'),
(222, 79, 31, 4, NULL, '1.00', '54-TRIAL-Exclude 90', '0.00', '29.00', '132.00', '3828.00', '0.00', '3828.00', '197-TRIAL- 119', '125.00'),
(223, 79, 2, 3, NULL, '1.00', '80-TRIAL-Exclude 78', '0.00', '350.00', '36.00', '12600.00', '0.00', '12600.00', '31-TRIAL-48Z36000 144', '35.00'),
(224, 79, 25, 4, NULL, '1.00', '40-TRIAL-Exclude 287', '0.00', '30.00', '130.00', '3900.00', '0.00', '3900.00', '299-TRIAL- 25', '124.00'),
(225, 80, 2, 3, NULL, '1.00', '83-TRIAL-Exclude 138', '0.00', '210.00', '36.50', '7665.00', '0.00', '7665.00', '292-TRIAL-48Z36000 193', '35.00'),
(226, 80, 4, 2, NULL, '1.00', '52-TRIAL-Exclude 111', '0.00', '180.00', '46.50', '8370.00', '0.00', '8370.00', '60-TRIAL-48Z36000 234', '44.00'),
(227, 80, 83, 5, NULL, '1.00', '40-TRIAL-Exclude 297', '0.00', '199.00', '22.00', '4378.00', '0.00', '4378.00', '85-TRIAL- 229', '21.00'),
(228, 80, 59, 4, NULL, '1.00', '40-TRIAL-Exclude 205', '0.00', '14.00', '110.00', '1540.00', '0.00', '1540.00', '291-TRIAL- 192', '100.00'),
(229, 80, 86, 4, NULL, '1.00', '10-TRIAL-Exclude 49', '0.00', '30.00', '118.00', '3540.00', '0.00', '3540.00', '278-TRIAL- 279', '100.00'),
(230, 80, 103, 4, NULL, '1.00', '71-TRIAL-Exclude 277', '0.00', '30.00', '118.00', '3540.00', '0.00', '3540.00', '73-TRIAL- 93', '100.00'),
(232, 82, 86, 4, NULL, '1.00', '120-TRIAL-Exclude 197', '0.00', '30.00', '114.00', '3420.00', '0.00', '3420.00', '26-TRIAL- 76', '100.00'),
(234, 83, 4, 2, NULL, '1.00', '290-TRIAL-Exclude 282', '0.00', '180.00', '46.00', '8280.00', '0.00', '8280.00', '78-TRIAL-48Z36000 59', '44.00'),
(236, 84, 78, 2, NULL, '1.00', '18-TRIAL-Exclude 89', '0.00', '10.00', '78.00', '780.00', '0.00', '780.00', '159-TRIAL- 149', '70.00'),
(237, 85, 2, 3, NULL, '1.00', '24-TRIAL-Exclude 72', '0.00', '140.00', '37.00', '5180.00', '0.00', '5180.00', '180-TRIAL-48Z36000 8', '35.00'),
(238, 85, 4, 2, NULL, '1.00', '67-TRIAL-Exclude 8', '0.00', '120.00', '46.50', '5580.00', '0.00', '5580.00', '177-TRIAL-48Z36000 203', '44.00'),
(239, 86, 42, 4, NULL, '1.00', '70-TRIAL-Exclude 207', '0.00', '30.00', '140.00', '4200.00', '0.00', '4200.00', '96-TRIAL- 74', '131.00'),
(240, 86, 43, 4, NULL, '1.00', '222-TRIAL-Exclude 11', '0.00', '60.00', '140.00', '8400.00', '0.00', '8400.00', '119-TRIAL- 261', '135.00'),
(241, 87, 2, 3, NULL, '1.00', '256-TRIAL-Exclude 290', '0.00', '210.00', '36.50', '7665.00', '0.00', '7665.00', '263-TRIAL-48Z36000 183', '35.00'),
(242, 87, 4, 2, NULL, '1.00', '216-TRIAL-Exclude 132', '0.00', '120.00', '46.00', '5520.00', '0.00', '5520.00', '252-TRIAL-48Z36000 41', '44.00'),
(243, 88, 49, 4, NULL, '1.00', '154-TRIAL-Exclude 213', '0.00', '50.00', '64.00', '3200.00', '0.00', '3200.00', '162-TRIAL- 196', '62.00'),
(244, 89, 2, 3, NULL, '1.00', '160-TRIAL-Exclude 215', '0.00', '70.00', '37.00', '2590.00', '0.00', '2590.00', '104-TRIAL-48Z36000 199', '35.00');

-- --------------------------------------------------------

--
-- Table structure for table `salesmaster_tbl`
--

CREATE TABLE `salesmaster_tbl` (
  `salesMasterId` int(11) NOT NULL,
  `prefix` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `voucherNo` int(11) DEFAULT NULL,
  `entryDate` datetime DEFAULT NULL,
  `ledgerHead` int(11) DEFAULT NULL,
  `salesHead` int(11) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `discount` decimal(18,2) DEFAULT NULL,
  `taxAmount` decimal(18,2) DEFAULT NULL,
  `totalAmount` decimal(18,2) DEFAULT NULL,
  `paidAmount` decimal(18,2) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `tinNo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `taxForm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `salesType` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `previousBalance` decimal(18,2) DEFAULT NULL,
  `poNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `poDate` datetime DEFAULT NULL,
  `financialYearId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `salesmaster_tbl`
--

INSERT INTO `salesmaster_tbl` (`salesMasterId`, `prefix`, `voucherNo`, `entryDate`, `ledgerHead`, `salesHead`, `amount`, `discount`, `taxAmount`, `totalAmount`, `paidAmount`, `description`, `tinNo`, `taxForm`, `salesType`, `previousBalance`, `poNumber`, `poDate`, `financialYearId`) VALUES
(9, '8/2018/', 1, '2018-01-26 00:00:00', 22, 15, '2485.00', '0.00', '0.00', '2485.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(10, '8/2018/', 2, '2018-01-26 00:00:00', 23, 15, '3600.00', '0.00', '0.00', '3600.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(11, '8/2018/', 3, '2018-01-26 00:00:00', 20, 15, '6000.00', '0.00', '0.00', '6000.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(14, '8/2018/', 4, '2018-01-29 00:00:00', 29, 15, '480.00', '0.00', '0.00', '480.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(15, '8/2018/', 5, '2018-01-29 00:00:00', 25, 15, '250.00', '0.00', '0.00', '250.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(16, '8/2018/', 6, '2018-01-29 00:00:00', 26, 15, '280.00', '0.00', '0.00', '280.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(17, '8/2018/', 7, '2018-01-29 00:00:00', 27, 15, '659.00', '0.00', '0.00', '659.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(18, '8/2018/', 8, '2018-01-30 00:00:00', 28, 15, '4154.00', '0.00', '0.00', '4154.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(19, '8/2018/', 9, '2018-01-30 00:00:00', 30, 15, '2550.00', '0.00', '0.00', '2550.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(20, '8/2018/', 10, '2018-01-31 00:00:00', 31, 15, '21105.00', '0.00', '0.00', '21105.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(21, '8/2018/', 11, '2018-02-01 00:00:00', 22, 15, '4970.00', '0.00', '0.00', '4970.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(23, '8/2018/', 13, '2018-02-01 00:00:00', 27, 15, '128.00', '0.00', '0.00', '128.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(24, '8/2018/', 14, '2018-02-01 00:00:00', 30, 15, '11970.00', '0.00', '0.00', '11970.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(25, '8/2018/', 15, '2018-02-01 00:00:00', 20, 15, '6480.00', '0.00', '0.00', '6480.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '6000.00', NULL, NULL, 1),
(26, '8/2018/', 16, '2018-02-03 00:00:00', 25, 15, '280.00', '0.00', '0.00', '280.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(27, '8/2018/', 17, '2018-02-05 00:00:00', 27, 15, '130.00', '0.00', '0.00', '130.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '90.00', NULL, NULL, 1),
(28, '8/2018/', 18, '2018-02-06 00:00:00', 32, 15, '3050.00', '0.00', '0.00', '3050.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(29, '8/2018/', 19, '2018-02-06 00:00:00', 33, 15, '3000.00', '0.00', '0.00', '3000.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(30, '8/2018/', 20, '2018-02-06 00:00:00', 20, 15, '42000.00', '0.00', '0.00', '42000.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '6480.00', NULL, NULL, 1),
(31, '8/2018/', 21, '2018-02-06 00:00:00', 31, 15, '33165.00', '15.00', '0.00', '33150.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(32, '8/2018/', 22, '2018-02-07 00:00:00', 30, 15, '13910.00', '0.00', '0.00', '13910.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '11970.00', NULL, NULL, 1),
(33, '8/2018/', 23, '2018-02-07 00:00:00', 34, 15, '3390.00', '0.00', '0.00', '3390.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(34, '8/2018/', 24, '2018-02-08 00:00:00', 35, 15, '20735.00', '55.00', '0.00', '20680.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(35, '8/2018/', 25, '2018-02-08 00:00:00', 20, 15, '1920.00', '0.00', '0.00', '1920.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '48480.00', NULL, NULL, 1),
(36, '8/2018/', 26, '2018-02-08 00:00:00', 23, 15, '5100.00', '0.00', '0.00', '5100.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(38, '8/2018/', 27, '2018-02-08 00:00:00', 22, 15, '12975.00', '25.00', '0.00', '12950.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(44, '8/2018/', 33, '2018-02-11 00:00:00', 40, 15, '260.00', '0.00', '0.00', '260.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(45, '8/2018/', 34, '2018-02-12 00:00:00', 41, 15, '2555.00', '0.00', '0.00', '2555.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(46, '8/2018/', 35, '2018-02-12 00:00:00', 42, 15, '2320.00', '25.00', '0.00', '2295.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(47, '8/2018/', 36, '2018-02-12 00:00:00', 31, 15, '39135.00', '0.00', '0.00', '39135.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(48, '8/2018/', 37, '2018-02-14 00:00:00', 38, 15, '28487.00', '0.00', '0.00', '28487.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(49, '8/2018/', 38, '2018-02-14 00:00:00', 36, 15, '13360.00', '0.00', '0.00', '13360.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(50, '8/2018/', 39, '2018-02-14 00:00:00', 37, 15, '3350.00', '20.00', '0.00', '3330.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(52, '8/2018/', 41, '2018-02-14 00:00:00', 33, 15, '13285.00', '285.00', '0.00', '13000.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(53, '8/2018/', 42, '2018-02-14 00:00:00', 39, 15, '30339.50', '0.00', '0.00', '30339.50', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(55, '8/2018/', 43, '2018-02-16 00:00:00', 44, 15, '12995.00', '0.00', '0.00', '12995.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(56, '8/2018/', 44, '2018-02-17 00:00:00', 23, 15, '1800.00', '0.00', '0.00', '1800.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(57, '8/2018/', 45, '2018-02-17 00:00:00', 22, 15, '5960.00', '0.00', '0.00', '5960.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(58, '8/2018/', 46, '2018-02-17 00:00:00', 35, 15, '940.00', '0.00', '0.00', '940.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(59, '8/2018/', 47, '2018-02-17 00:00:00', 46, 15, '7765.00', '0.00', '0.00', '7765.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(60, '8/2018/', 48, '2018-02-17 00:00:00', 45, 15, '3275.00', '0.00', '0.00', '3275.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(61, '8/2018/', 49, '2018-02-17 00:00:00', 47, 15, '5345.00', '0.00', '0.00', '5345.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(62, '8/2018/', 50, '2018-02-17 00:00:00', 48, 15, '8430.00', '0.00', '0.00', '8430.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(63, '8/2018/', 51, '2018-02-17 00:00:00', 49, 15, '3450.00', '0.00', '0.00', '3450.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(64, '8/2018/', 52, '2018-02-17 00:00:00', 50, 15, '16350.00', '0.00', '0.00', '16350.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(65, '8/2018/', 53, '2018-02-20 00:00:00', 51, 15, '6900.00', '0.00', '0.00', '6900.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(66, '8/2018/', 54, '2018-02-20 00:00:00', 32, 15, '8395.00', '0.00', '0.00', '8395.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '3050.00', NULL, NULL, 1),
(67, '8/2018/', 55, '2018-02-20 00:00:00', 38, 15, '10146.00', '46.00', '0.00', '10100.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '13487.00', NULL, NULL, 1),
(68, '8/2018/', 56, '2018-02-20 00:00:00', 36, 15, '5860.00', '0.00', '0.00', '5860.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '5360.00', NULL, NULL, 1),
(69, '8/2018/', 57, '2018-02-20 00:00:00', 30, 15, '4300.00', '0.00', '0.00', '4300.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '21880.00', NULL, NULL, 1),
(70, '8/2018/', 58, '2018-02-21 00:00:00', 53, 15, '1830.00', '0.00', '0.00', '1830.00', '0.00', '', '', 'FORM No. 8', 'Wholesale Bill', '0.00', NULL, NULL, 1),
(71, '33-TRIAL-8/2018/ 215', 59, '2018-02-22 00:00:00', 52, 15, '71790.00', '0.00', '0.00', '71790.00', '0.00', '139-TRIAL- 258', '204-TRIAL- 30', '177-TRIAL-FORM No. 8 206', '173-TRIAL-Wholesale Bill 186', '0.00', '221-TRIAL- 245', NULL, 1),
(72, '224-TRIAL- 172', 60, '2018-02-22 00:00:00', 23, 15, '3300.00', '0.00', '0.00', '3300.00', '0.00', '270-TRIAL- 129', '77-TRIAL- 273', '297-TRIAL-FORM No. 8 12', '286-TRIAL-Wholesale Bill 90', '0.00', '161-TRIAL- 36', NULL, 1),
(73, '155-TRIAL- 167', 61, '2018-02-24 00:00:00', 48, 15, '900.00', '0.00', '0.00', '900.00', '0.00', '255-TRIAL- 274', '131-TRIAL- 52', '50-TRIAL-FORM No. 8 250', '141-TRIAL-Wholesale Bill 124', '0.00', '166-TRIAL- 130', NULL, 1),
(74, '207-TRIAL- 191', 62, '2018-02-24 00:00:00', 35, 15, '20792.50', '0.00', '0.00', '20792.50', '0.00', '7-TRIAL- 237', '157-TRIAL- 287', '153-TRIAL-FORM No. 8 183', '245-TRIAL-Wholesale Bill 209', '0.00', '109-TRIAL- 158', NULL, 1),
(75, '221-TRIAL- 288', 63, '2018-02-24 00:00:00', 45, 15, '1000.00', '0.00', '0.00', '1000.00', '0.00', '122-TRIAL- 46', '206-TRIAL- 130', '213-TRIAL-FORM No. 8 68', '0-TRIAL-Wholesale Bill 191', '0.00', '162-TRIAL- 155', NULL, 1),
(77, '10-TRIAL-8/2018/ 59', 65, '2018-02-24 00:00:00', 31, 15, '46420.00', '0.00', '0.00', '46420.00', '0.00', '24-TRIAL- 137', '248-TRIAL- 183', '295-TRIAL-FORM No. 8 141', '2-TRIAL-Wholesale Bill 50', '19135.00', '91-TRIAL- 236', NULL, 1),
(78, '74-TRIAL-8/2018/ 220', 66, '2018-02-24 00:00:00', 50, 15, '5800.00', '0.00', '0.00', '5800.00', '0.00', '96-TRIAL- 21', '48-TRIAL- 99', '168-TRIAL-FORM No. 8 184', '181-TRIAL-Wholesale Bill 234', '14350.00', '53-TRIAL- 199', NULL, 1),
(79, '18-TRIAL-8/2018/ 38', 67, '2018-02-24 00:00:00', 23, 15, '28248.00', '0.00', '0.00', '28248.00', '0.00', '0-TRIAL- 188', '127-TRIAL- 167', '128-TRIAL-FORM No. 8 193', '48-TRIAL-Wholesale Bill 283', '3300.00', '107-TRIAL- 21', NULL, 1),
(80, '210-TRIAL- 17', 68, '2018-02-27 00:00:00', 54, 15, '29033.00', '33.00', '0.00', '29000.00', '0.00', '13-TRIAL- 214', '209-TRIAL- 116', '35-TRIAL-FORM No. 8 51', '200-TRIAL-Wholesale Bill 149', '0.00', '19-TRIAL- 56', NULL, 1),
(82, '298-TRIAL- 3', 70, '2018-02-27 00:00:00', 57, 15, '3420.00', '0.00', '0.00', '3420.00', '0.00', '224-TRIAL- 208', '144-TRIAL- 209', '289-TRIAL-FORM No. 8 2', '195-TRIAL-Wholesale Bill 85', '0.00', '93-TRIAL- 243', NULL, 1),
(83, '223-TRIAL- 87', 71, '2018-02-27 00:00:00', 58, 15, '8280.00', '0.00', '0.00', '8280.00', '0.00', '214-TRIAL- 203', '248-TRIAL- 0', '258-TRIAL-FORM No. 8 18', '180-TRIAL-Wholesale Bill 296', '0.00', '98-TRIAL- 281', NULL, 1),
(84, '89-TRIAL-8/2018/ 98', 72, '2018-02-27 00:00:00', 32, 15, '780.00', '0.00', '0.00', '780.00', '0.00', '109-TRIAL- 157', '72-TRIAL- 222', '238-TRIAL-FORM No. 8 292', '38-TRIAL-Wholesale Bill 179', '5395.00', '190-TRIAL- 257', NULL, 1),
(85, '158-TRIAL- 191', 73, '2018-02-27 00:00:00', 51, 15, '10760.00', '0.00', '0.00', '10760.00', '0.00', '15-TRIAL- 88', '256-TRIAL- 111', '2-TRIAL-FORM No. 8 234', '272-TRIAL-Wholesale Bill 255', '2900.00', '228-TRIAL- 146', NULL, 1),
(86, '262-TRIAL- 86', 74, '2018-02-27 00:00:00', 59, 15, '12600.00', '0.00', '0.00', '12600.00', '0.00', '275-TRIAL- 233', '169-TRIAL- 42', '144-TRIAL-FORM No. 8 216', '281-TRIAL-Wholesale Bill 198', '0.00', '122-TRIAL- 51', NULL, 1),
(87, '121-TRIAL- 299', 75, '2018-02-27 00:00:00', 38, 15, '13185.00', '0.00', '0.00', '13185.00', '0.00', '257-TRIAL- 276', '292-TRIAL- 89', '275-TRIAL-FORM No. 8 212', '200-TRIAL-Wholesale Bill 110', '13487.00', '3-TRIAL- 169', NULL, 1),
(88, '161-TRIAL- 288', 76, '2018-02-27 00:00:00', 36, 15, '3200.00', '0.00', '0.00', '3200.00', '0.00', '201-TRIAL- 189', '255-TRIAL- 223', '202-TRIAL-FORM No. 8 85', '182-TRIAL-Wholesale Bill 85', '6220.00', '88-TRIAL- 226', NULL, 1),
(89, '117-TRIAL- 57', 77, '2018-02-27 00:00:00', 56, 15, '2590.00', '0.00', '0.00', '2590.00', '0.00', '232-TRIAL- 32', '269-TRIAL- 54', '221-TRIAL-FORM No. 8 89', '176-TRIAL-Wholesale Bill 129', '0.00', '268-TRIAL- 192', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salesreturndetails_tbl`
--

CREATE TABLE `salesreturndetails_tbl` (
  `salesReturnDetailsId` int(11) NOT NULL,
  `salesReturnMasterId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `unitId` int(11) DEFAULT NULL,
  `unitConversionId` int(11) DEFAULT NULL,
  `unitConversionRate` decimal(18,2) DEFAULT NULL,
  `taxType` text COLLATE utf8_bin,
  `taxPercent` decimal(18,2) DEFAULT NULL,
  `qty` decimal(18,2) DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT NULL,
  `netAmount` decimal(18,2) DEFAULT NULL,
  `taxAmount` decimal(18,2) DEFAULT NULL,
  `totalAmount` decimal(18,2) DEFAULT NULL,
  `salesDetailsId` int(11) DEFAULT NULL,
  `hsnOrSacCode` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `salesreturnmaster_tbl`
--

CREATE TABLE `salesreturnmaster_tbl` (
  `salesReturnMasterId` int(11) NOT NULL,
  `salesMasterId` int(11) DEFAULT NULL,
  `prefix` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `voucherNo` int(11) DEFAULT NULL,
  `entryDate` datetime DEFAULT NULL,
  `ledgerHead` int(11) DEFAULT NULL,
  `salesHead` int(11) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `taxAmount` decimal(18,2) DEFAULT NULL,
  `totalAmount` decimal(18,2) DEFAULT NULL,
  `paidAmount` decimal(18,2) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `tinNo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `taxForm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `salesType` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `discount` decimal(18,2) DEFAULT NULL,
  `previousBalance` decimal(18,2) DEFAULT NULL,
  `financialYearId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `servicedepartment_tbl`
--

CREATE TABLE `servicedepartment_tbl` (
  `serviceDepartmentId` int(11) NOT NULL,
  `serviceDepartmentName` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `description` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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

-- --------------------------------------------------------

--
-- Table structure for table `transaction_tbl`
--

CREATE TABLE `transaction_tbl` (
  `transId` int(11) NOT NULL,
  `voucherId` int(11) DEFAULT NULL,
  `voucherType` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `voucherDate` datetime DEFAULT NULL,
  `voucherNo` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ledgerId` int(11) DEFAULT NULL,
  `Dr` decimal(19,4) DEFAULT NULL,
  `Cr` decimal(19,4) DEFAULT NULL,
  `transDate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `transaction_tbl`
--

INSERT INTO `transaction_tbl` (`transId`, `voucherId`, `voucherType`, `voucherDate`, `voucherNo`, `ledgerId`, `Dr`, `Cr`, `transDate`) VALUES
(77, 3, 'Receipt Voucher', '2018-01-29 19:17:55', 'RV/20181', 29, '0.0000', '345.0000', '2018-01-29 19:18:13'),
(78, 3, 'Receipt Voucher', '2018-01-29 19:17:55', 'RV/20181', 4, '345.0000', '0.0000', '2018-01-29 19:18:13'),
(81, 4, 'Receipt Voucher', '2018-01-29 19:19:52', 'RV/20182', 25, '0.0000', '250.0000', '2018-01-29 19:20:05'),
(82, 4, 'Receipt Voucher', '2018-01-29 19:19:52', 'RV/20182', 4, '250.0000', '0.0000', '2018-01-29 19:20:05'),
(85, 5, 'Receipt Voucher', '2018-01-29 19:20:55', 'RV/20183', 26, '0.0000', '280.0000', '2018-01-29 19:21:09'),
(86, 5, 'Receipt Voucher', '2018-01-29 19:20:55', 'RV/20183', 4, '280.0000', '0.0000', '2018-01-29 19:21:09'),
(89, 6, 'Receipt Voucher', '2018-01-29 19:22:46', 'RV/20184', 27, '0.0000', '521.0000', '2018-01-29 19:22:58'),
(90, 6, 'Receipt Voucher', '2018-01-29 19:22:46', 'RV/20184', 4, '521.0000', '0.0000', '2018-01-29 19:22:58'),
(101, 7, 'Receipt Voucher', '2018-01-30 11:43:43', 'RV/20185', 30, '0.0000', '2550.0000', '2018-01-30 11:44:07'),
(102, 7, 'Receipt Voucher', '2018-01-30 11:43:43', 'RV/20185', 4, '2550.0000', '0.0000', '2018-01-30 11:44:07'),
(105, 8, 'Receipt Voucher', '2018-01-30 11:45:22', 'RV/20186', 29, '0.0000', '135.0000', '2018-01-30 11:45:34'),
(106, 8, 'Receipt Voucher', '2018-01-30 11:45:22', 'RV/20186', 4, '135.0000', '0.0000', '2018-01-30 11:45:34'),
(107, 9, 'Receipt Voucher', '2018-01-30 15:39:09', 'RV/20187', 22, '0.0000', '2485.0000', '2018-01-30 15:39:31'),
(108, 9, 'Receipt Voucher', '2018-01-30 15:39:09', 'RV/20187', 4, '2485.0000', '0.0000', '2018-01-30 15:39:31'),
(109, 10, 'Receipt Voucher', '2018-01-30 15:39:44', 'RV/20188', 23, '0.0000', '3600.0000', '2018-01-30 15:40:02'),
(110, 10, 'Receipt Voucher', '2018-01-30 15:39:44', 'RV/20188', 4, '3600.0000', '0.0000', '2018-01-30 15:40:02'),
(111, 11, 'Receipt Voucher', '2018-01-30 15:40:02', 'RV/20189', 28, '0.0000', '1500.0000', '2018-01-30 15:40:17'),
(112, 11, 'Receipt Voucher', '2018-01-30 15:40:02', 'RV/20189', 4, '1500.0000', '0.0000', '2018-01-30 15:40:17'),
(115, 3, 'Purchase Invoice', '2018-01-24 17:36:14', 'PI/20183', 19, '0.0000', '290603.0000', '2018-01-31 15:12:55'),
(116, 3, 'Purchase Invoice', '2018-01-24 17:36:14', 'PI/20183', 12, '290603.0000', '0.0000', '2018-01-31 15:12:55'),
(131, 12, 'Receipt Voucher', '2018-02-01 10:29:45', 'RV/201810', 27, '0.0000', '128.0000', '2018-02-01 10:30:08'),
(132, 12, 'Receipt Voucher', '2018-02-01 10:29:45', 'RV/201810', 4, '128.0000', '0.0000', '2018-02-01 10:30:08'),
(133, 13, 'Receipt Voucher', '2018-02-01 10:30:09', 'RV/201811', 31, '0.0000', '21105.0000', '2018-02-01 10:30:37'),
(134, 13, 'Receipt Voucher', '2018-02-01 10:30:09', 'RV/201811', 4, '21105.0000', '0.0000', '2018-02-01 10:30:37'),
(155, 14, 'Receipt Voucher', '2018-02-01 15:12:15', 'RV/201812', 20, '0.0000', '6000.0000', '2018-02-01 15:12:51'),
(156, 14, 'Receipt Voucher', '2018-02-01 15:12:15', 'RV/201812', 4, '6000.0000', '0.0000', '2018-02-01 15:12:51'),
(159, 6, 'Payment Voucher', '2018-01-16 15:18:53', 'PV/20181', 5, '1050.0000', '0.0000', '2018-02-01 15:21:17'),
(160, 6, 'Payment Voucher', '2018-01-16 15:18:53', 'PV/20181', 4, '0.0000', '1050.0000', '2018-02-01 15:21:17'),
(161, 7, 'Payment Voucher', '2018-01-24 15:21:18', 'PV/20182', 5, '270.0000', '0.0000', '2018-02-01 15:22:25'),
(162, 7, 'Payment Voucher', '2018-01-24 15:21:18', 'PV/20182', 4, '0.0000', '270.0000', '2018-02-01 15:22:25'),
(167, 9, 'Payment Voucher', '2018-01-25 15:23:34', 'PV/20184', 10, '415.0000', '0.0000', '2018-02-01 15:24:53'),
(168, 9, 'Payment Voucher', '2018-01-25 15:23:34', 'PV/20184', 4, '0.0000', '415.0000', '2018-02-01 15:24:53'),
(169, 10, 'Payment Voucher', '2018-01-26 15:24:54', 'PV/20185', 10, '490.0000', '0.0000', '2018-02-01 15:26:43'),
(170, 10, 'Payment Voucher', '2018-01-26 15:24:54', 'PV/20185', 4, '0.0000', '490.0000', '2018-02-01 15:26:43'),
(171, 11, 'Payment Voucher', '2018-01-27 15:26:43', 'PV/20186', 6, '270.0000', '0.0000', '2018-02-01 15:27:46'),
(172, 11, 'Payment Voucher', '2018-01-27 15:26:43', 'PV/20186', 4, '0.0000', '270.0000', '2018-02-01 15:27:46'),
(173, 12, 'Payment Voucher', '2018-01-27 15:27:47', 'PV/20187', 10, '80.0000', '0.0000', '2018-02-01 15:28:11'),
(174, 12, 'Payment Voucher', '2018-01-27 15:27:47', 'PV/20187', 4, '0.0000', '80.0000', '2018-02-01 15:28:11'),
(175, 13, 'Payment Voucher', '2018-01-29 15:28:12', 'PV/20188', 10, '156.0000', '0.0000', '2018-02-01 15:29:03'),
(176, 13, 'Payment Voucher', '2018-01-29 15:28:12', 'PV/20188', 4, '0.0000', '156.0000', '2018-02-01 15:29:03'),
(179, 15, 'Payment Voucher', '2018-01-31 15:30:10', 'PV/201810', 10, '165.0000', '0.0000', '2018-02-01 15:30:58'),
(180, 15, 'Payment Voucher', '2018-01-31 15:30:10', 'PV/201810', 4, '0.0000', '165.0000', '2018-02-01 15:30:58'),
(181, 16, 'Payment Voucher', '2018-01-31 15:30:59', 'PV/201811', 5, '200.0000', '0.0000', '2018-02-01 15:31:41'),
(182, 16, 'Payment Voucher', '2018-01-31 15:30:59', 'PV/201811', 4, '0.0000', '200.0000', '2018-02-01 15:31:41'),
(183, 17, 'Payment Voucher', '2018-02-01 15:31:42', 'PV/201812', 10, '210.0000', '0.0000', '2018-02-01 15:32:17'),
(184, 17, 'Payment Voucher', '2018-02-01 15:31:42', 'PV/201812', 4, '0.0000', '210.0000', '2018-02-01 15:32:17'),
(185, 18, 'Payment Voucher', '2018-02-01 15:32:18', 'PV/201813', 5, '600.0000', '0.0000', '2018-02-01 15:32:48'),
(186, 18, 'Payment Voucher', '2018-02-01 15:32:18', 'PV/201813', 4, '0.0000', '600.0000', '2018-02-01 15:32:48'),
(201, 15, 'Receipt Voucher', '2018-02-02 11:14:31', 'RV/201813', 27, '0.0000', '138.0000', '2018-02-02 11:14:53'),
(202, 15, 'Receipt Voucher', '2018-02-02 11:14:31', 'RV/201813', 4, '138.0000', '0.0000', '2018-02-02 11:14:53'),
(203, 19, 'Payment Voucher', '2018-02-02 11:15:44', 'PV/201814', 27, '90.0000', '0.0000', '2018-02-02 11:16:36'),
(204, 19, '36-TRIAL-Payment Voucher 180', '2018-02-02 11:15:44', '198-TRIAL-PV/201814 32', 4, '0.0000', '90.0000', '2018-02-02 11:16:36'),
(205, 20, '287-TRIAL-Payment Voucher 184', '2018-02-03 16:21:17', '40-TRIAL-PV/201815 217', 19, '34500.0000', '0.0000', '2018-02-03 16:21:57'),
(206, 20, '206-TRIAL-Payment Voucher 270', '2018-02-03 16:21:17', '241-TRIAL-PV/201815 282', 4, '0.0000', '34500.0000', '2018-02-03 16:21:57'),
(207, 21, '49-TRIAL-Payment Voucher 223', '2018-02-03 16:23:42', '258-TRIAL-PV/201816 105', 11, '250.0000', '0.0000', '2018-02-03 16:24:06'),
(208, 21, '221-TRIAL-Payment Voucher 295', '2018-02-03 16:23:42', '96-TRIAL-PV/201816 16', 4, '0.0000', '250.0000', '2018-02-03 16:24:06'),
(211, 16, '78-TRIAL-Receipt Voucher 278', '2018-02-03 16:51:56', '79-TRIAL-RV/201814 158', 25, '0.0000', '280.0000', '2018-02-03 16:52:47'),
(212, 16, '277-TRIAL-Receipt Voucher 150', '2018-02-03 16:51:56', '207-TRIAL-RV/201814 29', 4, '280.0000', '0.0000', '2018-02-03 16:52:47'),
(215, 17, '81-TRIAL-Receipt Voucher 295', '2018-02-05 09:22:24', '278-TRIAL-RV/201815 76', 27, '0.0000', '130.0000', '2018-02-05 09:22:49'),
(216, 17, '153-TRIAL-Receipt Voucher 199', '2018-02-05 09:22:24', '84-TRIAL-RV/201815 265', 4, '130.0000', '0.0000', '2018-02-05 09:22:49'),
(241, 18, '93-TRIAL-Receipt Voucher 108', '2018-02-07 10:03:34', '172-TRIAL-RV/201816 143', 33, '0.0000', '3000.0000', '2018-02-07 10:03:58'),
(242, 18, '229-TRIAL-Receipt Voucher 14', '2018-02-07 10:03:34', '268-TRIAL-RV/201816 255', 4, '3000.0000', '0.0000', '2018-02-07 10:03:58'),
(245, 23, '91-TRIAL-Payment Voucher 273', '2018-02-05 10:06:23', '222-TRIAL-PV/201818 148', 10, '200.0000', '0.0000', '2018-02-07 10:06:47'),
(246, 23, '251-TRIAL-Payment Voucher 186', '2018-02-05 10:06:23', '44-TRIAL-PV/201818 246', 4, '0.0000', '200.0000', '2018-02-07 10:06:47'),
(247, 24, '77-TRIAL-Payment Voucher 117', '2018-02-06 10:06:57', '229-TRIAL-PV/201819 216', 10, '400.0000', '0.0000', '2018-02-07 10:08:20'),
(248, 24, '174-TRIAL-Payment Voucher 191', '2018-02-06 10:06:57', '169-TRIAL-PV/201819 112', 4, '0.0000', '400.0000', '2018-02-07 10:08:20'),
(257, 19, '46-TRIAL-Receipt Voucher 93', '2018-02-07 12:39:24', '91-TRIAL-RV/201817 215', 30, '0.0000', '2000.0000', '2018-02-07 12:39:39'),
(258, 19, '249-TRIAL-Receipt Voucher 157', '2018-02-07 12:39:24', '240-TRIAL-RV/201817 252', 4, '2000.0000', '0.0000', '2018-02-07 12:39:39'),
(287, 20, '236-TRIAL-Receipt Voucher 151', '2018-02-07 12:39:40', '187-TRIAL-RV/201818 26', 34, '0.0000', '3000.0000', '2018-02-08 18:14:08'),
(288, 20, '262-TRIAL-Receipt Voucher 155', '2018-02-07 12:39:40', '83-TRIAL-RV/201818 294', 4, '3000.0000', '0.0000', '2018-02-08 18:14:08'),
(307, 11, '180-TRIAL-Wholesale Invoice 197', '2018-01-26 00:00:00', '65-TRIAL-8/2018/3 65', 20, '6000.0000', '0.0000', '2018-02-08 18:55:10'),
(308, 11, '113-TRIAL-Wholesale Invoice 261', '2018-01-26 00:00:00', '278-TRIAL-8/2018/3 78', 15, '0.0000', '6000.0000', '2018-02-08 18:55:10'),
(313, 29, '78-TRIAL-Wholesale Invoice 40', '2018-02-06 00:00:00', '111-TRIAL-8/2018/19 147', 33, '3000.0000', '0.0000', '2018-02-08 18:56:59'),
(314, 29, '45-TRIAL-Wholesale Invoice 170', '2018-02-06 00:00:00', '275-TRIAL-8/2018/19 289', 15, '0.0000', '3000.0000', '2018-02-08 18:56:59'),
(315, 30, '150-TRIAL-Wholesale Invoice 149', '2018-02-06 00:00:00', '33-TRIAL-8/2018/20 65', 20, '42000.0000', '0.0000', '2018-02-08 18:57:08'),
(316, 30, '14-TRIAL-Wholesale Invoice 182', '2018-02-06 00:00:00', '7-TRIAL-8/2018/20 132', 15, '0.0000', '42000.0000', '2018-02-08 18:57:08'),
(321, 4, '196-TRIAL-Purchase Invoice 167', '2018-02-06 00:00:00', '22-TRIAL-PI/2018/4 82', 19, '0.0000', '145040.0000', '2018-02-08 19:00:32'),
(322, 4, '10-TRIAL-Purchase Invoice 241', '2018-02-06 00:00:00', '31-TRIAL-PI/2018/4 87', 12, '145040.0000', '0.0000', '2018-02-08 19:00:32'),
(323, 10, '105-TRIAL-Wholesale Invoice 179', '2018-01-26 00:00:00', '21-TRIAL-8/20182 238', 23, '3600.0000', '0.0000', '2018-02-08 19:03:42'),
(324, 10, '151-TRIAL-Wholesale Invoice 247', '2018-01-26 00:00:00', '208-TRIAL-8/20182 46', 15, '0.0000', '3600.0000', '2018-02-08 19:03:42'),
(325, 17, '76-TRIAL-Wholesale Invoice 259', '2018-01-29 00:00:00', '189-TRIAL-8/20187 122', 27, '659.0000', '0.0000', '2018-02-08 19:04:11'),
(326, 17, '66-TRIAL-Wholesale Invoice 86', '2018-01-29 00:00:00', '155-TRIAL-8/20187 228', 15, '0.0000', '659.0000', '2018-02-08 19:04:11'),
(327, 18, '214-TRIAL-Wholesale Invoice 60', '2018-01-30 00:00:00', '153-TRIAL-8/20188 77', 28, '4154.0000', '0.0000', '2018-02-08 19:04:23'),
(328, 18, '148-TRIAL-Wholesale Invoice 203', '2018-01-30 00:00:00', '61-TRIAL-8/20188 231', 15, '0.0000', '4154.0000', '2018-02-08 19:04:23'),
(335, 24, '282-TRIAL-Wholesale Invoice 155', '2018-02-01 00:00:00', '97-TRIAL-8/2018/14 206', 30, '11970.0000', '0.0000', '2018-02-08 19:05:30'),
(336, 24, '52-TRIAL-Wholesale Invoice 221', '2018-02-01 00:00:00', '196-TRIAL-8/2018/14 181', 15, '0.0000', '11970.0000', '2018-02-08 19:05:30'),
(341, 32, '221-TRIAL-Wholesale Invoice 155', '2018-02-07 00:00:00', '47-TRIAL-8/201822 124', 30, '13910.0000', '0.0000', '2018-02-08 19:06:17'),
(342, 32, '18-TRIAL-Wholesale Invoice 135', '2018-02-07 00:00:00', '276-TRIAL-8/201822 274', 15, '0.0000', '13910.0000', '2018-02-08 19:06:17'),
(343, 14, '159-TRIAL-Wholesale Invoice 98', '2018-01-29 00:00:00', '74-TRIAL-8/20184 253', 29, '480.0000', '0.0000', '2018-02-08 19:10:47'),
(344, 14, '22-TRIAL-Wholesale Invoice 135', '2018-01-29 00:00:00', '143-TRIAL-8/20184 88', 15, '0.0000', '480.0000', '2018-02-08 19:10:47'),
(345, 9, '53-TRIAL-Wholesale Invoice 32', '2018-01-26 00:00:00', '247-TRIAL-8/20181 180', 22, '2485.0000', '0.0000', '2018-02-08 19:11:07'),
(346, 9, '126-TRIAL-Wholesale Invoice 178', '2018-01-26 00:00:00', '150-TRIAL-8/20181 101', 15, '0.0000', '2485.0000', '2018-02-08 19:11:07'),
(347, 15, '61-TRIAL-Wholesale Invoice 99', '2018-01-29 00:00:00', '155-TRIAL-8/20185 263', 25, '250.0000', '0.0000', '2018-02-08 19:11:14'),
(348, 15, '16-TRIAL-Wholesale Invoice 73', '2018-01-29 00:00:00', '61-TRIAL-8/20185 145', 15, '0.0000', '250.0000', '2018-02-08 19:11:14'),
(349, 16, '173-TRIAL-Wholesale Invoice 74', '2018-01-29 00:00:00', '50-TRIAL-8/20186 53', 26, '280.0000', '0.0000', '2018-02-08 19:11:22'),
(350, 16, '281-TRIAL-Wholesale Invoice 87', '2018-01-29 00:00:00', '299-TRIAL-8/20186 110', 15, '0.0000', '280.0000', '2018-02-08 19:11:22'),
(351, 19, '43-TRIAL-Wholesale Invoice 65', '2018-01-30 00:00:00', '272-TRIAL-8/20189 129', 30, '2550.0000', '0.0000', '2018-02-08 19:11:36'),
(352, 19, '81-TRIAL-Wholesale Invoice 12', '2018-01-30 00:00:00', '276-TRIAL-8/20189 181', 15, '0.0000', '2550.0000', '2018-02-08 19:11:36'),
(353, 20, '147-TRIAL-Wholesale Invoice 190', '2018-01-31 00:00:00', '171-TRIAL-8/201810 105', 31, '21105.0000', '0.0000', '2018-02-08 19:11:48'),
(354, 20, '272-TRIAL-Wholesale Invoice 32', '2018-01-31 00:00:00', '89-TRIAL-8/201810 20', 15, '0.0000', '21105.0000', '2018-02-08 19:11:48'),
(363, 33, '65-TRIAL-Wholesale Invoice 131', '2018-02-07 00:00:00', '58-TRIAL-8/201823 193', 34, '3390.0000', '0.0000', '2018-02-08 19:13:05'),
(364, 33, '106-TRIAL-Wholesale Invoice 178', '2018-02-07 00:00:00', '148-TRIAL-8/201823 106', 15, '0.0000', '3390.0000', '2018-02-08 19:13:05'),
(373, 25, '171-TRIAL-Payment Voucher 166', '2018-02-07 19:25:03', '96-TRIAL-PV/2018/20 197', 10, '225.0000', '0.0000', '2018-02-08 19:25:29'),
(374, 25, '120-TRIAL-Payment Voucher 294', '2018-02-07 00:00:00', '229-TRIAL-PV/2018/20 88', 4, '0.0000', '225.0000', '2018-02-08 19:25:29'),
(375, 26, '109-TRIAL-Payment Voucher 284', '2018-02-07 19:25:30', '269-TRIAL-PV/2018/21 178', 10, '100.0000', '0.0000', '2018-02-08 19:26:04'),
(376, 26, '17-TRIAL-Payment Voucher 115', '2018-02-07 00:00:00', '126-TRIAL-PV/2018/21 84', 4, '0.0000', '100.0000', '2018-02-08 19:26:04'),
(377, 27, '168-TRIAL-Payment Voucher 206', '2018-02-08 19:26:05', '128-TRIAL-PV/2018/22 97', 10, '1160.0000', '0.0000', '2018-02-08 19:26:58'),
(378, 27, '218-TRIAL-Payment Voucher 90', '2018-02-08 00:00:00', '199-TRIAL-PV/2018/22 85', 4, '0.0000', '1160.0000', '2018-02-08 19:26:58'),
(379, 21, '86-TRIAL-Receipt Voucher 299', '2018-02-07 19:27:06', '120-TRIAL-RV/2018/19 10', 31, '0.0000', '6000.0000', '2018-02-08 19:27:24'),
(380, 21, '271-TRIAL-Receipt Voucher 213', '2018-02-07 00:00:00', '115-TRIAL-RV/2018/19 85', 4, '6000.0000', '0.0000', '2018-02-08 19:27:24'),
(381, 22, '18-TRIAL-Receipt Voucher 280', '2018-02-07 19:27:25', '131-TRIAL-RV/2018/20 67', 22, '0.0000', '4970.0000', '2018-02-08 19:27:43'),
(382, 22, '287-TRIAL-Receipt Voucher 244', '2018-02-07 00:00:00', '86-TRIAL-RV/2018/20 107', 4, '4970.0000', '0.0000', '2018-02-08 19:27:43'),
(385, 24, '160-TRIAL-Receipt Voucher 127', '2018-02-08 19:27:56', '174-TRIAL-RV/2018/22 31', 31, '0.0000', '10000.0000', '2018-02-08 19:28:13'),
(386, 24, '252-TRIAL-Receipt Voucher 271', '2018-02-08 00:00:00', '68-TRIAL-RV/2018/22 193', 4, '10000.0000', '0.0000', '2018-02-08 19:28:13'),
(393, 26, '85-TRIAL-Receipt Voucher 37', '2018-02-09 19:09:01', '111-TRIAL-RV/2018/24 204', 31, '0.0000', '10000.0000', '2018-02-09 19:09:23'),
(394, 26, '77-TRIAL-Receipt Voucher 106', '2018-02-09 00:00:00', '268-TRIAL-RV/2018/24 222', 4, '10000.0000', '0.0000', '2018-02-09 19:09:23'),
(395, 28, '213-TRIAL-Payment Voucher 200', '2018-02-09 19:09:38', '242-TRIAL-PV/2018/23 137', 19, '31500.0000', '0.0000', '2018-02-09 19:09:53'),
(396, 28, '38-TRIAL-Payment Voucher 88', '2018-02-09 00:00:00', '155-TRIAL-PV/2018/23 89', 4, '0.0000', '31500.0000', '2018-02-09 19:09:53'),
(397, 29, '147-TRIAL-Payment Voucher 181', '2018-02-09 19:10:11', '193-TRIAL-PV/2018/24 84', 7, '7000.0000', '0.0000', '2018-02-09 19:10:28'),
(398, 29, '187-TRIAL-Payment Voucher 261', '2018-02-09 00:00:00', '93-TRIAL-PV/2018/24 117', 4, '0.0000', '7000.0000', '2018-02-09 19:10:28'),
(399, 30, '201-TRIAL-Payment Voucher 82', '2018-02-09 19:10:28', '47-TRIAL-PV/2018/25 65', 6, '130.0000', '0.0000', '2018-02-09 19:10:57'),
(400, 30, '253-TRIAL-Payment Voucher 204', '2018-02-09 00:00:00', '84-TRIAL-PV/2018/25 195', 4, '0.0000', '130.0000', '2018-02-09 19:10:57'),
(401, 31, '25-TRIAL-Payment Voucher 221', '2018-02-09 19:12:12', '64-TRIAL-PV/2018/26 181', 10, '330.0000', '0.0000', '2018-02-09 19:14:15'),
(402, 31, '72-TRIAL-Payment Voucher 6', '2018-02-09 00:00:00', '56-TRIAL-PV/2018/26 43', 4, '0.0000', '330.0000', '2018-02-09 19:14:15'),
(421, 32, '93-TRIAL-Payment Voucher 80', '2018-02-10 12:07:07', '180-TRIAL-PV/2018/27 168', 10, '320.0000', '0.0000', '2018-02-11 12:07:50'),
(422, 32, '111-TRIAL-Payment Voucher 213', '2018-02-10 00:00:00', '268-TRIAL-PV/2018/27 251', 4, '0.0000', '320.0000', '2018-02-11 12:07:50'),
(423, 27, '216-TRIAL-Receipt Voucher 79', '2018-02-10 12:07:55', '268-TRIAL-RV/2018/25 240', 30, '0.0000', '1000.0000', '2018-02-11 12:08:08'),
(424, 27, '31-TRIAL-Receipt Voucher 33', '2018-02-10 00:00:00', '79-TRIAL-RV/2018/25 263', 4, '1000.0000', '0.0000', '2018-02-11 12:08:08'),
(425, 34, '259-TRIAL-Wholesale Invoice 253', '2018-02-08 00:00:00', '36-TRIAL-8/2018/24 295', 35, '20680.0000', '0.0000', '2018-02-11 12:10:04'),
(426, 34, '65-TRIAL-Wholesale Invoice 174', '2018-02-08 00:00:00', '220-TRIAL-8/2018/24 135', 15, '0.0000', '20680.0000', '2018-02-11 12:10:04'),
(427, 28, '180-TRIAL-Receipt Voucher 276', '2018-02-10 12:10:08', '155-TRIAL-RV/2018/26 25', 35, '0.0000', '20680.0000', '2018-02-11 12:10:23'),
(428, 28, '171-TRIAL-Receipt Voucher 208', '2018-02-10 00:00:00', '59-TRIAL-RV/2018/26 156', 4, '20680.0000', '0.0000', '2018-02-11 12:10:23'),
(429, 29, '202-TRIAL-Receipt Voucher 132', '2018-02-10 12:10:23', '105-TRIAL-RV/2018/27 240', 31, '0.0000', '7150.0000', '2018-02-11 12:10:43'),
(430, 29, '175-TRIAL-Receipt Voucher 262', '2018-02-10 00:00:00', '85-TRIAL-RV/2018/27 62', 4, '7150.0000', '0.0000', '2018-02-11 12:10:43'),
(431, 31, '80-TRIAL-Wholesale Invoice 36', '2018-02-06 00:00:00', '297-TRIAL-8/2018/21 2', 31, '33150.0000', '0.0000', '2018-02-11 12:11:01'),
(432, 31, '8-TRIAL-Wholesale Invoice 180', '2018-02-06 00:00:00', '240-TRIAL-8/2018/21 76', 15, '0.0000', '33150.0000', '2018-02-11 12:11:01'),
(433, 25, '58-TRIAL-Receipt Voucher 293', '2018-02-08 00:00:00', '240-TRIAL-RV/2018/23 146', 20, '0.0000', '10000.0000', '2018-02-11 12:55:57'),
(434, 25, '74-TRIAL-Receipt Voucher 173', '2018-02-08 00:00:00', '197-TRIAL-RV/2018/23 180', 4, '10000.0000', '0.0000', '2018-02-11 12:55:57'),
(435, 35, '235-TRIAL-Wholesale Invoice 272', '2018-02-08 00:00:00', '0-TRIAL-8/2018/25 107', 20, '1920.0000', '0.0000', '2018-02-11 13:15:54'),
(436, 35, '155-TRIAL-Wholesale Invoice 266', '2018-02-08 00:00:00', '241-TRIAL-8/2018/25 188', 15, '0.0000', '1920.0000', '2018-02-11 13:15:54'),
(437, 21, '181-TRIAL-Wholesale Invoice 68', '2018-02-01 00:00:00', '115-TRIAL-8/2018/11 196', 22, '4970.0000', '0.0000', '2018-02-11 13:23:45'),
(438, 21, '25-TRIAL-Wholesale Invoice 109', '2018-02-01 00:00:00', '112-TRIAL-8/2018/11 136', 15, '0.0000', '4970.0000', '2018-02-11 13:23:45'),
(439, 23, '55-TRIAL-Wholesale Invoice 162', '2018-02-01 00:00:00', '143-TRIAL-8/2018/13 142', 27, '128.0000', '0.0000', '2018-02-11 13:25:04'),
(440, 23, '21-TRIAL-Wholesale Invoice 222', '2018-02-01 00:00:00', '212-TRIAL-8/2018/13 248', 15, '0.0000', '128.0000', '2018-02-11 13:25:04'),
(441, 25, '218-TRIAL-Wholesale Invoice 68', '2018-02-01 00:00:00', '17-TRIAL-8/2018/15 114', 20, '6480.0000', '0.0000', '2018-02-11 13:28:25'),
(442, 25, '250-TRIAL-Wholesale Invoice 90', '2018-02-01 00:00:00', '35-TRIAL-8/2018/15 159', 15, '0.0000', '6480.0000', '2018-02-11 13:28:25'),
(443, 26, '169-TRIAL-Wholesale Invoice 295', '2018-02-03 00:00:00', '203-TRIAL-8/2018/16 140', 25, '280.0000', '0.0000', '2018-02-11 13:28:51'),
(444, 26, '79-TRIAL-Wholesale Invoice 199', '2018-02-03 00:00:00', '5-TRIAL-8/2018/16 191', 15, '0.0000', '280.0000', '2018-02-11 13:28:51'),
(445, 27, '61-TRIAL-Wholesale Invoice 281', '2018-02-05 00:00:00', '52-TRIAL-8/2018/17 53', 27, '130.0000', '0.0000', '2018-02-11 13:29:06'),
(446, 27, '33-TRIAL-Wholesale Invoice 229', '2018-02-05 00:00:00', '87-TRIAL-8/2018/17 142', 15, '0.0000', '130.0000', '2018-02-11 13:29:06'),
(449, 44, '153-TRIAL-Wholesale Invoice 283', '2018-02-11 00:00:00', '20-TRIAL-8/2018/33 214', 40, '260.0000', '0.0000', '2018-02-11 14:02:38'),
(450, 44, '18-TRIAL-Wholesale Invoice 244', '2018-02-11 00:00:00', '163-TRIAL-8/2018/33 29', 15, '0.0000', '260.0000', '2018-02-11 14:02:38'),
(451, 30, '252-TRIAL-Receipt Voucher 264', '2018-02-11 14:02:44', '269-TRIAL-RV/2018/28 170', 40, '0.0000', '260.0000', '2018-02-11 14:02:57'),
(452, 30, '5-TRIAL-Receipt Voucher 47', '2018-02-11 00:00:00', '94-TRIAL-RV/2018/28 187', 4, '260.0000', '0.0000', '2018-02-11 14:02:57'),
(453, 45, '26-TRIAL-Wholesale Invoice 276', '2018-02-12 00:00:00', '23-TRIAL-8/2018/34 240', 41, '2555.0000', '0.0000', '2018-02-12 10:18:30'),
(454, 45, '179-TRIAL-Wholesale Invoice 290', '2018-02-12 00:00:00', '188-TRIAL-8/2018/34 110', 15, '0.0000', '2555.0000', '2018-02-12 10:18:30'),
(461, 47, '171-TRIAL-Wholesale Invoice 245', '2018-02-12 00:00:00', '121-TRIAL-8/2018/36 270', 31, '39135.0000', '0.0000', '2018-02-13 09:19:27'),
(462, 47, '83-TRIAL-Wholesale Invoice 189', '2018-02-12 00:00:00', '255-TRIAL-8/2018/36 178', 15, '0.0000', '39135.0000', '2018-02-13 09:19:27'),
(463, 33, '179-TRIAL-Payment Voucher 206', '2018-02-12 09:52:52', '62-TRIAL-PV/2018/28 35', 10, '190.0000', '0.0000', '2018-02-13 09:53:43'),
(464, 33, '87-TRIAL-Payment Voucher 196', '2018-02-12 00:00:00', '233-TRIAL-PV/2018/28 288', 4, '0.0000', '190.0000', '2018-02-13 09:53:43'),
(465, 34, '35-TRIAL-Payment Voucher 279', '2018-02-12 09:53:44', '93-TRIAL-PV/2018/29 90', 10, '200.0000', '0.0000', '2018-02-13 09:55:09'),
(466, 34, '62-TRIAL-Payment Voucher 65', '2018-02-12 00:00:00', '201-TRIAL-PV/2018/29 205', 4, '0.0000', '200.0000', '2018-02-13 09:55:09'),
(467, 31, '107-TRIAL-Receipt Voucher 267', '2018-02-12 09:56:04', '269-TRIAL-RV/2018/29 134', 42, '0.0000', '2295.0000', '2018-02-13 09:56:44'),
(468, 31, '271-TRIAL-Receipt Voucher 257', '2018-02-12 00:00:00', '98-TRIAL-RV/2018/29 245', 4, '2295.0000', '0.0000', '2018-02-13 09:56:44'),
(469, 46, '97-TRIAL-Wholesale Invoice 118', '2018-02-12 00:00:00', '138-TRIAL-8/2018/35 144', 42, '2295.0000', '0.0000', '2018-02-13 09:57:00'),
(470, 46, '172-TRIAL-Wholesale Invoice 163', '2018-02-12 00:00:00', '28-TRIAL-8/2018/35 164', 15, '0.0000', '2295.0000', '2018-02-13 09:57:00'),
(473, 35, '1-TRIAL-Payment Voucher 23', '2018-02-13 19:18:22', '290-TRIAL-PV/2018/30 104', 10, '182.0000', '0.0000', '2018-02-13 19:27:40'),
(474, 35, '101-TRIAL-Payment Voucher 227', '2018-02-13 00:00:00', '97-TRIAL-PV/2018/30 292', 4, '0.0000', '182.0000', '2018-02-13 19:27:40'),
(475, 32, '271-TRIAL-Receipt Voucher 263', '2018-02-13 19:27:47', '201-TRIAL-RV/2018/30 163', 22, '0.0000', '12950.0000', '2018-02-13 19:28:05'),
(476, 32, '221-TRIAL-Receipt Voucher 265', '2018-02-13 00:00:00', '21-TRIAL-RV/2018/30 45', 4, '12950.0000', '0.0000', '2018-02-13 19:28:05'),
(477, 33, '10-TRIAL-Receipt Voucher 195', '2018-02-13 19:28:05', '241-TRIAL-RV/2018/31 22', 23, '0.0000', '5100.0000', '2018-02-13 19:28:20'),
(478, 33, '12-TRIAL-Receipt Voucher 51', '2018-02-13 00:00:00', '215-TRIAL-RV/2018/31 255', 4, '5100.0000', '0.0000', '2018-02-13 19:28:20'),
(479, 34, '93-TRIAL-Receipt Voucher 38', '2018-02-13 19:28:20', '279-TRIAL-RV/2018/32 82', 28, '0.0000', '1500.0000', '2018-02-13 19:28:36'),
(480, 34, '108-TRIAL-Receipt Voucher 54', '2018-02-13 00:00:00', '222-TRIAL-RV/2018/32 7', 4, '1500.0000', '0.0000', '2018-02-13 19:28:36'),
(483, 38, '245-TRIAL-Wholesale Invoice 138', '2018-02-08 00:00:00', '144-TRIAL-8/2018/27 90', 22, '12950.0000', '0.0000', '2018-02-13 19:52:01'),
(484, 38, '139-TRIAL-Wholesale Invoice 54', '2018-02-08 00:00:00', '4-TRIAL-8/2018/27 123', 15, '0.0000', '12950.0000', '2018-02-13 19:52:01'),
(485, 36, '25-TRIAL-Wholesale Invoice 278', '2018-02-08 00:00:00', '124-TRIAL-8/2018/26 181', 23, '5100.0000', '0.0000', '2018-02-13 19:52:11'),
(486, 36, '230-TRIAL-Wholesale Invoice 33', '2018-02-08 00:00:00', '23-TRIAL-8/2018/26 194', 15, '0.0000', '5100.0000', '2018-02-13 19:52:11'),
(515, 37, '30-TRIAL-Payment Voucher 246', '2018-02-13 13:19:16', '187-TRIAL-PV/2018/32 45', 10, '400.0000', '0.0000', '2018-02-14 13:20:29'),
(516, 37, '205-TRIAL-Payment Voucher 216', '2018-02-13 00:00:00', '50-TRIAL-PV/2018/32 89', 4, '0.0000', '400.0000', '2018-02-14 13:20:29'),
(517, 35, '38-TRIAL-Receipt Voucher 63', '2018-02-13 13:29:13', '235-TRIAL-RV/2018/33 297', 30, '0.0000', '1000.0000', '2018-02-14 13:29:32'),
(518, 35, '109-TRIAL-Receipt Voucher 30', '2018-02-13 00:00:00', '124-TRIAL-RV/2018/33 108', 4, '1000.0000', '0.0000', '2018-02-14 13:29:32'),
(519, 38, '37-TRIAL-Payment Voucher 174', '2018-02-13 13:29:51', '120-TRIAL-PV/2018/33 72', 43, '25000.0000', '0.0000', '2018-02-14 13:30:10'),
(520, 38, '93-TRIAL-Payment Voucher 255', '2018-02-13 00:00:00', '134-TRIAL-PV/2018/33 261', 4, '0.0000', '25000.0000', '2018-02-14 13:30:10'),
(523, 2, '156-TRIAL-Purchase Invoice 6', '2018-01-16 00:00:00', '84-TRIAL-PI/20182 175', 19, '0.0000', '382037.0000', '2018-02-14 15:11:10'),
(524, 2, '182-TRIAL-Purchase Invoice 19', '2018-01-16 00:00:00', '141-TRIAL-PI/20182 132', 12, '382037.0000', '0.0000', '2018-02-14 15:11:10'),
(525, 48, '84-TRIAL-Wholesale Invoice 179', '2018-02-14 00:00:00', '279-TRIAL-8/2018/37 283', 38, '28487.0000', '0.0000', '2018-02-14 15:16:14'),
(526, 48, '267-TRIAL-Wholesale Invoice 236', '2018-02-14 00:00:00', '125-TRIAL-8/2018/37 118', 15, '0.0000', '28487.0000', '2018-02-14 15:16:14'),
(529, 49, '137-TRIAL-Wholesale Invoice 28', '2018-02-14 00:00:00', '19-TRIAL-8/2018/38 177', 36, '13360.0000', '0.0000', '2018-02-14 15:18:49'),
(530, 49, '237-TRIAL-Wholesale Invoice 291', '2018-02-14 00:00:00', '156-TRIAL-8/2018/38 295', 15, '0.0000', '13360.0000', '2018-02-14 15:18:49'),
(537, 53, '160-TRIAL-Wholesale Invoice 1', '2018-02-14 00:00:00', '93-TRIAL-8/2018/42 132', 39, '30340.0000', '0.0000', '2018-02-15 13:18:36'),
(538, 53, '36-TRIAL-Wholesale Invoice 80', '2018-02-14 00:00:00', '175-TRIAL-8/2018/42 207', 15, '0.0000', '30340.0000', '2018-02-15 13:18:36'),
(539, 52, '184-TRIAL-Wholesale Invoice 174', '2018-02-14 00:00:00', '19-TRIAL-8/2018/41 90', 33, '13000.0000', '0.0000', '2018-02-15 13:19:14'),
(540, 52, '76-TRIAL-Wholesale Invoice 41', '2018-02-14 00:00:00', '51-TRIAL-8/2018/41 229', 15, '0.0000', '13000.0000', '2018-02-15 13:19:14'),
(541, 50, '90-TRIAL-Wholesale Invoice 174', '2018-02-14 00:00:00', '272-TRIAL-8/2018/39 291', 37, '3330.0000', '0.0000', '2018-02-15 13:21:46'),
(542, 50, '189-TRIAL-Wholesale Invoice 187', '2018-02-14 00:00:00', '290-TRIAL-8/2018/39 239', 15, '0.0000', '3330.0000', '2018-02-15 13:21:46'),
(543, 36, '193-TRIAL-Receipt Voucher 53', '2018-02-14 13:21:51', '263-TRIAL-RV/2018/34 181', 38, '0.0000', '15000.0000', '2018-02-15 13:23:55'),
(544, 36, '103-TRIAL-Receipt Voucher 5', '2018-02-14 00:00:00', '176-TRIAL-RV/2018/34 179', 4, '15000.0000', '0.0000', '2018-02-15 13:23:55'),
(545, 37, '195-TRIAL-Receipt Voucher 139', '2018-02-14 13:23:56', '68-TRIAL-RV/2018/35 198', 36, '0.0000', '8000.0000', '2018-02-15 13:24:11'),
(546, 37, '83-TRIAL-Receipt Voucher 239', '2018-02-14 00:00:00', '115-TRIAL-RV/2018/35 21', 4, '8000.0000', '0.0000', '2018-02-15 13:24:11'),
(547, 38, '293-TRIAL-Receipt Voucher 226', '2018-02-14 13:24:13', '122-TRIAL-RV/2018/36 138', 37, '0.0000', '3330.0000', '2018-02-15 13:24:27'),
(548, 38, '228-TRIAL-Receipt Voucher 281', '2018-02-14 00:00:00', '99-TRIAL-RV/2018/36 278', 4, '3330.0000', '0.0000', '2018-02-15 13:24:27'),
(549, 39, '191-TRIAL-Receipt Voucher 123', '2018-02-15 13:24:27', '243-TRIAL-RV/2018/37 234', 33, '0.0000', '13000.0000', '2018-02-15 13:24:49'),
(550, 39, '143-TRIAL-Receipt Voucher 149', '2018-02-15 00:00:00', '2-TRIAL-RV/2018/37 7', 4, '13000.0000', '0.0000', '2018-02-15 13:24:49'),
(551, 39, '102-TRIAL-Payment Voucher 241', '2018-02-14 13:33:01', '187-TRIAL-PV/2018/34 246', 11, '80.0000', '0.0000', '2018-02-15 13:33:20'),
(552, 39, '291-TRIAL-Payment Voucher 37', '2018-02-14 00:00:00', '113-TRIAL-PV/2018/34 0', 4, '0.0000', '80.0000', '2018-02-15 13:33:20'),
(553, 40, '16-TRIAL-Payment Voucher 190', '2018-02-14 13:33:20', '262-TRIAL-PV/2018/35 235', 10, '2605.0000', '0.0000', '2018-02-15 13:35:34'),
(554, 40, '26-TRIAL-Payment Voucher 210', '2018-02-14 00:00:00', '77-TRIAL-PV/2018/35 282', 4, '0.0000', '2605.0000', '2018-02-15 13:35:34'),
(555, 41, '160-TRIAL-Payment Voucher 189', '2018-02-14 13:39:10', '5-TRIAL-PV/2018/36 74', 19, '50000.0000', '0.0000', '2018-02-15 13:39:23'),
(556, 41, '263-TRIAL-Payment Voucher 22', '2018-02-14 00:00:00', '95-TRIAL-PV/2018/36 66', 4, '0.0000', '50000.0000', '2018-02-15 13:39:23'),
(569, 9, '160-TRIAL-Purchase Invoice 38', '2018-02-16 00:00:00', '288-TRIAL-PI/2018/8 11', 14, '0.0000', '127440.0000', '2018-02-16 16:09:40'),
(570, 9, '45-TRIAL-Purchase Invoice 167', '2018-02-16 00:00:00', '25-TRIAL-PI/2018/8 167', 12, '127440.0000', '0.0000', '2018-02-16 16:09:40'),
(583, 7, '289-TRIAL-Purchase Invoice 42', '2018-02-14 00:00:00', '163-TRIAL-PI/2018/6 247', 43, '0.0000', '25132.0000', '2018-02-16 16:24:11'),
(584, 7, '202-TRIAL-Purchase Invoice 217', '2018-02-14 00:00:00', '99-TRIAL-PI/2018/6 123', 12, '25132.0000', '0.0000', '2018-02-16 16:24:11'),
(597, 43, '126-TRIAL-Payment Voucher 3', '2018-02-15 16:48:58', '48-TRIAL-PV/2018/38 51', 11, '220.0000', '0.0000', '2018-02-16 16:49:10'),
(598, 43, '70-TRIAL-Payment Voucher 236', '2018-02-15 00:00:00', '158-TRIAL-PV/2018/38 167', 4, '0.0000', '220.0000', '2018-02-16 16:49:10'),
(603, 55, '56-TRIAL-Wholesale Invoice 105', '2018-02-16 00:00:00', '131-TRIAL-8/2018/43 262', 44, '12995.0000', '0.0000', '2018-02-16 18:06:18'),
(604, 55, '119-TRIAL-Wholesale Invoice 175', '2018-02-16 00:00:00', '56-TRIAL-8/2018/43 31', 15, '0.0000', '12995.0000', '2018-02-16 18:06:18'),
(623, 56, '295-TRIAL-Wholesale Invoice 244', '2018-02-17 00:00:00', '291-TRIAL-8/2018/44 103', 23, '1800.0000', '0.0000', '2018-02-17 10:32:54'),
(624, 56, '88-TRIAL-Wholesale Invoice 15', '2018-02-17 00:00:00', '250-TRIAL-8/2018/44 19', 15, '0.0000', '1800.0000', '2018-02-17 10:32:54'),
(625, 57, '272-TRIAL-Wholesale Invoice 291', '2018-02-17 00:00:00', '283-TRIAL-8/2018/45 233', 22, '5960.0000', '0.0000', '2018-02-17 10:33:09'),
(626, 57, '275-TRIAL-Wholesale Invoice 42', '2018-02-17 00:00:00', '169-TRIAL-8/2018/45 0', 15, '0.0000', '5960.0000', '2018-02-17 10:33:09'),
(627, 58, '254-TRIAL-Wholesale Invoice 78', '2018-02-17 00:00:00', '285-TRIAL-8/2018/46 157', 35, '940.0000', '0.0000', '2018-02-17 10:33:23'),
(628, 58, '133-TRIAL-Wholesale Invoice 293', '2018-02-17 00:00:00', '290-TRIAL-8/2018/46 203', 15, '0.0000', '940.0000', '2018-02-17 10:33:23'),
(629, 59, '250-TRIAL-Wholesale Invoice 133', '2018-02-17 00:00:00', '222-TRIAL-8/2018/47 271', 46, '7765.0000', '0.0000', '2018-02-17 10:33:38'),
(630, 59, '111-TRIAL-Wholesale Invoice 90', '2018-02-17 00:00:00', '38-TRIAL-8/2018/47 41', 15, '0.0000', '7765.0000', '2018-02-17 10:33:38'),
(633, 60, '158-TRIAL-Wholesale Invoice 147', '2018-02-17 00:00:00', '252-TRIAL-8/2018/48 58', 45, '3275.0000', '0.0000', '2018-02-17 10:34:15'),
(634, 60, '179-TRIAL-Wholesale Invoice 102', '2018-02-17 00:00:00', '283-TRIAL-8/2018/48 90', 15, '0.0000', '3275.0000', '2018-02-17 10:34:15'),
(635, 61, '102-TRIAL-Wholesale Invoice 268', '2018-02-17 00:00:00', '222-TRIAL-8/2018/49 95', 47, '5345.0000', '0.0000', '2018-02-17 10:34:29'),
(636, 61, '135-TRIAL-Wholesale Invoice 8', '2018-02-17 00:00:00', '61-TRIAL-8/2018/49 242', 15, '0.0000', '5345.0000', '2018-02-17 10:34:29'),
(637, 62, '294-TRIAL-Wholesale Invoice 299', '2018-02-17 00:00:00', '88-TRIAL-8/2018/50 78', 48, '8430.0000', '0.0000', '2018-02-17 10:34:41'),
(638, 62, '142-TRIAL-Wholesale Invoice 157', '2018-02-17 00:00:00', '241-TRIAL-8/2018/50 47', 15, '0.0000', '8430.0000', '2018-02-17 10:34:41'),
(639, 63, '269-TRIAL-Wholesale Invoice 145', '2018-02-17 00:00:00', '180-TRIAL-8/2018/51 113', 49, '3450.0000', '0.0000', '2018-02-17 10:34:53'),
(640, 63, '264-TRIAL-Wholesale Invoice 210', '2018-02-17 00:00:00', '261-TRIAL-8/2018/51 185', 15, '0.0000', '3450.0000', '2018-02-17 10:34:53'),
(641, 64, '273-TRIAL-Wholesale Invoice 204', '2018-02-17 00:00:00', '162-TRIAL-8/2018/52 3', 50, '16350.0000', '0.0000', '2018-02-17 10:35:04'),
(642, 64, '202-TRIAL-Wholesale Invoice 269', '2018-02-17 00:00:00', '54-TRIAL-8/2018/52 229', 15, '0.0000', '16350.0000', '2018-02-17 10:35:04'),
(643, 44, '52-TRIAL-Payment Voucher 274', '2018-02-16 00:00:00', '249-TRIAL-PV/2018/39 130', 11, '130.0000', '0.0000', '2018-02-19 10:01:26'),
(644, 44, '144-TRIAL-Payment Voucher 44', '2018-02-16 00:00:00', '149-TRIAL-PV/2018/39 18', 4, '0.0000', '130.0000', '2018-02-19 10:01:27'),
(645, 45, '65-TRIAL-Payment Voucher 263', '2018-02-16 10:01:28', '52-TRIAL-PV/2018/40 273', 10, '80.0000', '0.0000', '2018-02-19 10:01:53'),
(646, 45, '170-TRIAL-Payment Voucher 31', '2018-02-16 00:00:00', '147-TRIAL-PV/2018/40 11', 4, '0.0000', '80.0000', '2018-02-19 10:01:53'),
(649, 47, '169-TRIAL-Payment Voucher 298', '2018-02-17 10:02:44', '298-TRIAL-PV/2018/42 203', 11, '200.0000', '0.0000', '2018-02-19 10:03:14'),
(650, 47, '52-TRIAL-Payment Voucher 179', '2018-02-17 00:00:00', '153-TRIAL-PV/2018/42 143', 4, '0.0000', '200.0000', '2018-02-19 10:03:14'),
(651, 40, '122-TRIAL-Receipt Voucher 188', '2018-02-17 10:03:30', '63-TRIAL-RV/2018/38 34', 50, '0.0000', '2000.0000', '2018-02-19 10:03:57'),
(652, 40, '250-TRIAL-Receipt Voucher 222', '2018-02-17 00:00:00', '40-TRIAL-RV/2018/38 11', 4, '2000.0000', '0.0000', '2018-02-19 10:03:57'),
(653, 41, '192-TRIAL-Receipt Voucher 251', '2018-02-17 10:03:58', '80-TRIAL-RV/2018/39 177', 41, '0.0000', '2000.0000', '2018-02-19 10:04:14'),
(654, 41, '16-TRIAL-Receipt Voucher 176', '2018-02-17 00:00:00', '278-TRIAL-RV/2018/39 120', 4, '2000.0000', '0.0000', '2018-02-19 10:04:14'),
(655, 42, '215-TRIAL-Receipt Voucher 148', '2018-02-17 10:04:14', '98-TRIAL-RV/2018/40 79', 39, '0.0000', '10000.0000', '2018-02-19 10:05:01'),
(656, 42, '135-TRIAL-Receipt Voucher 57', '2018-02-17 00:00:00', '183-TRIAL-RV/2018/40 162', 4, '10000.0000', '0.0000', '2018-02-19 10:05:01'),
(657, 43, '2-TRIAL-Receipt Voucher 62', '2018-02-17 10:05:01', '220-TRIAL-RV/2018/41 270', 20, '0.0000', '10000.0000', '2018-02-19 10:05:22'),
(658, 43, '122-TRIAL-Receipt Voucher 273', '2018-02-17 00:00:00', '41-TRIAL-RV/2018/41 86', 4, '10000.0000', '0.0000', '2018-02-19 10:05:22'),
(659, 44, '88-TRIAL-Receipt Voucher 17', '2018-02-17 10:05:23', '217-TRIAL-RV/2018/42 92', 45, '0.0000', '3275.0000', '2018-02-19 10:06:48'),
(660, 44, '198-TRIAL-Receipt Voucher 167', '2018-02-17 00:00:00', '49-TRIAL-RV/2018/42 65', 4, '3275.0000', '0.0000', '2018-02-19 10:06:48'),
(661, 45, '189-TRIAL-Receipt Voucher 32', '2018-02-17 10:06:49', '119-TRIAL-RV/2018/43 181', 48, '0.0000', '8430.0000', '2018-02-19 10:07:07'),
(662, 45, '203-TRIAL-Receipt Voucher 30', '2018-02-17 00:00:00', '128-TRIAL-RV/2018/43 31', 4, '8430.0000', '0.0000', '2018-02-19 10:07:07'),
(663, 46, '189-TRIAL-Receipt Voucher 52', '2018-02-17 10:07:07', '30-TRIAL-RV/2018/44 272', 49, '0.0000', '3450.0000', '2018-02-19 10:07:27'),
(664, 46, '64-TRIAL-Receipt Voucher 107', '2018-02-17 00:00:00', '295-TRIAL-RV/2018/44 228', 4, '3450.0000', '0.0000', '2018-02-19 10:07:27'),
(665, 47, '281-TRIAL-Receipt Voucher 190', '2018-02-17 10:09:32', '210-TRIAL-RV/2018/45 77', 31, '0.0000', '10000.0000', '2018-02-19 10:09:46'),
(666, 47, '171-TRIAL-Receipt Voucher 36', '2018-02-17 00:00:00', '159-TRIAL-RV/2018/45 243', 4, '10000.0000', '0.0000', '2018-02-19 10:09:46'),
(667, 48, '40-TRIAL-Payment Voucher 33', '2018-02-19 10:10:31', '37-TRIAL-PV/2018/43 193', 14, '56640.0000', '0.0000', '2018-02-19 10:10:48'),
(668, 48, '130-TRIAL-Payment Voucher 174', '2018-02-19 00:00:00', '93-TRIAL-PV/2018/43 282', 4, '0.0000', '56640.0000', '2018-02-19 10:10:48'),
(671, 65, '103-TRIAL-Wholesale Invoice 61', '2018-02-20 00:00:00', '190-TRIAL-8/2018/53 162', 51, '6900.0000', '0.0000', '2018-02-20 10:47:36'),
(672, 65, '107-TRIAL-Wholesale Invoice 297', '2018-02-20 00:00:00', '251-TRIAL-8/2018/53 123', 15, '0.0000', '6900.0000', '2018-02-20 10:47:36'),
(673, 28, '190-TRIAL-Wholesale Invoice 217', '2018-02-06 00:00:00', '40-TRIAL-8/2018/18 203', 32, '3050.0000', '0.0000', '2018-02-20 10:51:05'),
(674, 28, '166-TRIAL-Wholesale Invoice 83', '2018-02-06 00:00:00', '261-TRIAL-8/2018/18 159', 15, '0.0000', '3050.0000', '2018-02-20 10:51:05'),
(675, 66, '245-TRIAL-Wholesale Invoice 286', '2018-02-20 00:00:00', '251-TRIAL-8/2018/54 65', 32, '8395.0000', '0.0000', '2018-02-20 10:51:55'),
(676, 66, '101-TRIAL-Wholesale Invoice 40', '2018-02-20 00:00:00', '109-TRIAL-8/2018/54 297', 15, '0.0000', '8395.0000', '2018-02-20 10:51:55'),
(683, 68, '283-TRIAL-Wholesale Invoice 150', '2018-02-20 00:00:00', '58-TRIAL-8/2018/56 21', 36, '5860.0000', '0.0000', '2018-02-20 10:59:28'),
(684, 68, '175-TRIAL-Wholesale Invoice 281', '2018-02-20 00:00:00', '87-TRIAL-8/2018/56 271', 15, '0.0000', '5860.0000', '2018-02-20 10:59:28'),
(685, 69, '87-TRIAL-Wholesale Invoice 99', '2018-02-20 00:00:00', '204-TRIAL-8/2018/57 79', 30, '4300.0000', '0.0000', '2018-02-20 11:07:50'),
(686, 69, '38-TRIAL-Wholesale Invoice 200', '2018-02-20 00:00:00', '230-TRIAL-8/2018/57 61', 15, '0.0000', '4300.0000', '2018-02-20 11:07:50'),
(687, 49, '118-TRIAL-Payment Voucher 205', '2018-02-19 10:18:28', '40-TRIAL-PV/2018/44 228', 11, '330.0000', '0.0000', '2018-02-21 10:21:01'),
(688, 49, '159-TRIAL-Payment Voucher 222', '2018-02-19 00:00:00', '298-TRIAL-PV/2018/44 160', 4, '0.0000', '330.0000', '2018-02-21 10:21:01'),
(689, 50, '98-TRIAL-Payment Voucher 35', '2018-02-19 10:21:02', '281-TRIAL-PV/2018/45 14', 10, '70.0000', '0.0000', '2018-02-21 10:21:25'),
(690, 50, '67-TRIAL-Payment Voucher 193', '2018-02-19 00:00:00', '96-TRIAL-PV/2018/45 261', 4, '0.0000', '70.0000', '2018-02-21 10:21:25'),
(691, 51, '246-TRIAL-Payment Voucher 38', '2018-02-20 10:21:25', '170-TRIAL-PV/2018/46 138', 43, '3460.0000', '0.0000', '2018-02-21 10:21:57'),
(692, 51, '176-TRIAL-Payment Voucher 255', '2018-02-20 00:00:00', '17-TRIAL-PV/2018/46 171', 4, '0.0000', '3460.0000', '2018-02-21 10:21:57'),
(693, 52, '260-TRIAL-Payment Voucher 52', '2018-02-20 10:21:57', '258-TRIAL-PV/2018/47 133', 10, '1330.0000', '0.0000', '2018-02-21 10:23:19'),
(694, 52, '155-TRIAL-Payment Voucher 265', '2018-02-20 00:00:00', '126-TRIAL-PV/2018/47 1', 4, '0.0000', '1330.0000', '2018-02-21 10:23:19'),
(695, 48, '34-TRIAL-Receipt Voucher 159', '2018-02-20 10:23:43', '193-TRIAL-RV/2018/46 248', 32, '0.0000', '3050.0000', '2018-02-21 10:23:55'),
(696, 48, '273-TRIAL-Receipt Voucher 192', '2018-02-20 00:00:00', '293-TRIAL-RV/2018/46 33', 4, '3050.0000', '0.0000', '2018-02-21 10:23:55'),
(697, 49, '137-TRIAL-Receipt Voucher 3', '2018-02-20 10:23:56', '90-TRIAL-RV/2018/47 11', 30, '0.0000', '2000.0000', '2018-02-21 10:24:07'),
(698, 49, '194-TRIAL-Receipt Voucher 68', '2018-02-20 00:00:00', '227-TRIAL-RV/2018/47 298', 4, '2000.0000', '0.0000', '2018-02-21 10:24:07'),
(699, 50, '89-TRIAL-Receipt Voucher 248', '2018-02-21 10:24:07', '279-TRIAL-RV/2018/48 247', 44, '0.0000', '4000.0000', '2018-02-21 10:24:32'),
(700, 50, '49-TRIAL-Receipt Voucher 31', '2018-02-21 00:00:00', '69-TRIAL-RV/2018/48 275', 4, '4000.0000', '0.0000', '2018-02-21 10:24:32'),
(701, 53, '98-TRIAL-Payment Voucher 249', '2018-02-21 19:21:25', '236-TRIAL-PV/2018/48 299', 11, '100.0000', '0.0000', '2018-02-21 19:21:37'),
(702, 53, '23-TRIAL-Payment Voucher 243', '2018-02-21 00:00:00', '231-TRIAL-PV/2018/48 154', 4, '0.0000', '100.0000', '2018-02-21 19:21:37'),
(703, 54, '61-TRIAL-Payment Voucher 234', '2018-02-21 19:21:38', '85-TRIAL-PV/2018/49 267', 10, '167.0000', '0.0000', '2018-02-21 19:22:10'),
(704, 54, '16-TRIAL-Payment Voucher 293', '2018-02-21 00:00:00', '204-TRIAL-PV/2018/49 166', 4, '0.0000', '167.0000', '2018-02-21 19:22:10'),
(705, 70, '53-TRIAL-Wholesale Invoice 8', '2018-02-21 00:00:00', '23-TRIAL-8/2018/58 84', 53, '1830.0000', '0.0000', '2018-02-21 19:25:15'),
(706, 70, '192-TRIAL-Wholesale Invoice 167', '2018-02-21 00:00:00', '148-TRIAL-8/2018/58 69', 15, '0.0000', '1830.0000', '2018-02-21 19:25:15'),
(707, 51, '130-TRIAL-Receipt Voucher 211', '2018-02-21 19:26:07', '14-TRIAL-RV/2018/49 190', 23, '0.0000', '1800.0000', '2018-02-21 19:26:49'),
(708, 51, '27-TRIAL-Receipt Voucher 43', '2018-02-21 00:00:00', '104-TRIAL-RV/2018/49 99', 4, '1800.0000', '0.0000', '2018-02-21 19:26:49'),
(709, 52, '274-TRIAL-Receipt Voucher 295', '2018-02-21 19:26:50', '206-TRIAL-RV/2018/50 58', 22, '0.0000', '2960.0000', '2018-02-21 19:26:59'),
(710, 52, '189-TRIAL-Receipt Voucher 258', '2018-02-21 00:00:00', '209-TRIAL-RV/2018/50 189', 4, '2960.0000', '0.0000', '2018-02-21 19:26:59'),
(713, 10, '47-TRIAL-Purchase Invoice 40', '2018-02-20 00:00:00', '218-TRIAL-PI/2018/9 64', 43, '0.0000', '4960.0000', '2018-02-21 19:33:46'),
(714, 10, '275-TRIAL-Purchase Invoice 26', '2018-02-20 00:00:00', '189-TRIAL-PI/2018/9 103', 12, '4960.0000', '0.0000', '2018-02-21 19:33:46'),
(715, 55, '66-TRIAL-Payment Voucher 12', '2018-02-21 19:34:00', '240-TRIAL-PV/2018/50 270', 43, '1500.0000', '0.0000', '2018-02-21 19:34:09'),
(716, 55, '276-TRIAL-Payment Voucher 195', '2018-02-21 00:00:00', '141-TRIAL-PV/2018/50 286', 4, '0.0000', '1500.0000', '2018-02-21 19:34:09'),
(719, 72, '251-TRIAL-Wholesale Invoice 109', '2018-02-22 00:00:00', '87-TRIAL-8/2018/60 283', 23, '3300.0000', '0.0000', '2018-02-21 19:35:07'),
(720, 72, '85-TRIAL-Wholesale Invoice 290', '2018-02-22 00:00:00', '50-TRIAL-8/2018/60 86', 15, '0.0000', '3300.0000', '2018-02-21 19:35:07'),
(723, 71, '255-TRIAL-Wholesale Invoice 281', '2018-02-22 00:00:00', '228-TRIAL-8/2018/59 2', 52, '71790.0000', '0.0000', '2018-02-22 04:19:39'),
(724, 71, '277-TRIAL-Wholesale Invoice 262', '2018-02-22 00:00:00', '24-TRIAL-8/2018/59 265', 15, '0.0000', '71790.0000', '2018-02-22 04:19:39'),
(725, 11, '272-TRIAL-Purchase Invoice 232', '2018-02-23 00:00:00', '285-TRIAL-PI/2018/10 28', 43, '0.0000', '3600.0000', '2018-02-23 11:27:49'),
(726, 11, '46-TRIAL-Purchase Invoice 189', '2018-02-23 00:00:00', '178-TRIAL-PI/2018/10 83', 12, '3600.0000', '0.0000', '2018-02-23 11:27:50'),
(733, 53, '25-TRIAL-Receipt Voucher 265', '2018-02-21 11:31:35', '60-TRIAL-RV/2018/51 245', 31, '0.0000', '10000.0000', '2018-02-23 11:31:46'),
(734, 53, '78-TRIAL-Receipt Voucher 121', '2018-02-21 00:00:00', '55-TRIAL-RV/2018/51 120', 4, '10000.0000', '0.0000', '2018-02-23 11:31:46'),
(735, 54, '27-TRIAL-Receipt Voucher 173', '2018-02-22 11:31:47', '234-TRIAL-RV/2018/52 251', 46, '0.0000', '4000.0000', '2018-02-23 11:32:05'),
(736, 54, '175-TRIAL-Receipt Voucher 136', '2018-02-22 00:00:00', '134-TRIAL-RV/2018/52 1', 4, '4000.0000', '0.0000', '2018-02-23 11:32:05'),
(737, 55, '37-TRIAL-Receipt Voucher 10', '2018-02-22 11:32:06', '274-TRIAL-RV/2018/53 90', 35, '0.0000', '940.0000', '2018-02-23 11:32:19'),
(738, 55, '256-TRIAL-Receipt Voucher 171', '2018-02-22 00:00:00', '280-TRIAL-RV/2018/53 135', 4, '940.0000', '0.0000', '2018-02-23 11:32:19'),
(739, 56, '45-TRIAL-Receipt Voucher 182', '2018-02-22 11:32:19', '25-TRIAL-RV/2018/54 118', 20, '0.0000', '10000.0000', '2018-02-23 11:32:39'),
(740, 56, '73-TRIAL-Receipt Voucher 212', '2018-02-22 00:00:00', '137-TRIAL-RV/2018/54 198', 4, '10000.0000', '0.0000', '2018-02-23 11:32:39'),
(741, 57, '5-TRIAL-Receipt Voucher 262', '2018-02-22 11:32:39', '217-TRIAL-RV/2018/55 292', 47, '0.0000', '5340.0000', '2018-02-23 11:33:07'),
(742, 57, '39-TRIAL-Receipt Voucher 147', '2018-02-22 00:00:00', '146-TRIAL-RV/2018/55 203', 4, '5340.0000', '0.0000', '2018-02-23 11:33:07'),
(745, 59, '231-TRIAL-Payment Voucher 115', '2018-02-21 11:35:37', '239-TRIAL-PV/2018/54 58', 43, '3600.0000', '0.0000', '2018-02-23 11:35:50'),
(746, 59, '129-TRIAL-Payment Voucher 245', '2018-02-21 00:00:00', '94-TRIAL-PV/2018/54 99', 4, '0.0000', '3600.0000', '2018-02-23 11:35:50'),
(749, 1, '145-TRIAL-Purchase Invoice 172', '2018-01-02 00:00:00', '75-TRIAL-PI/20181 262', 14, '0.0000', '124000.0000', '2018-02-24 10:54:47'),
(750, 1, '272-TRIAL-Purchase Invoice 273', '2018-01-02 00:00:00', '80-TRIAL-PI/20181 138', 12, '124000.0000', '0.0000', '2018-02-24 10:54:47'),
(751, 60, '197-TRIAL-Payment Voucher 242', '2018-02-24 11:56:02', '208-TRIAL-PV/2018/55 3', 19, '33500.0000', '0.0000', '2018-02-24 11:56:24'),
(752, 60, '177-TRIAL-Payment Voucher 125', '2018-02-24 00:00:00', '34-TRIAL-PV/2018/55 201', 4, '0.0000', '33500.0000', '2018-02-24 11:56:24'),
(755, 8, '78-TRIAL-Purchase Invoice 82', '2018-02-13 00:00:00', '69-TRIAL-PI/2018/7 36', 19, '0.0000', '299540.0000', '2018-02-24 16:14:16'),
(756, 8, '178-TRIAL-Purchase Invoice 239', '2018-02-13 00:00:00', '138-TRIAL-PI/2018/7 121', 12, '299540.0000', '0.0000', '2018-02-24 16:14:16'),
(769, 77, '226-TRIAL-Wholesale Invoice 163', '2018-02-24 00:00:00', '177-TRIAL-8/2018/65 275', 31, '46420.0000', '0.0000', '2018-02-24 16:48:40'),
(770, 77, '124-TRIAL-Wholesale Invoice 181', '2018-02-24 00:00:00', '100-TRIAL-8/2018/65 161', 15, '0.0000', '46420.0000', '2018-02-24 16:48:40'),
(775, 75, '62-TRIAL-Wholesale Invoice 102', '2018-02-24 00:00:00', '148-TRIAL-8/2018/63 195', 45, '1000.0000', '0.0000', '2018-02-24 17:29:05'),
(776, 75, '84-TRIAL-Wholesale Invoice 16', '2018-02-24 00:00:00', '137-TRIAL-8/2018/63 207', 15, '0.0000', '1000.0000', '2018-02-24 17:29:05'),
(779, 78, '193-TRIAL-Wholesale Invoice 284', '2018-02-24 00:00:00', '244-TRIAL-8/2018/66 259', 50, '5800.0000', '0.0000', '2018-02-24 17:29:30'),
(780, 78, '221-TRIAL-Wholesale Invoice 158', '2018-02-24 00:00:00', '43-TRIAL-8/2018/66 268', 15, '0.0000', '5800.0000', '2018-02-24 17:29:30'),
(781, 74, '177-TRIAL-Wholesale Invoice 119', '2018-02-24 00:00:00', '157-TRIAL-8/2018/62 241', 35, '20793.0000', '0.0000', '2018-02-24 17:57:43'),
(782, 74, '191-TRIAL-Wholesale Invoice 64', '2018-02-24 00:00:00', '123-TRIAL-8/2018/62 15', 15, '0.0000', '20793.0000', '2018-02-24 17:57:43'),
(783, 79, '272-TRIAL-Wholesale Invoice 229', '2018-02-24 00:00:00', '241-TRIAL-8/2018/67 215', 23, '28248.0000', '0.0000', '2018-02-25 10:20:50'),
(784, 79, '215-TRIAL-Wholesale Invoice 236', '2018-02-24 00:00:00', '257-TRIAL-8/2018/67 159', 15, '0.0000', '28248.0000', '2018-02-25 10:20:50'),
(785, 58, '100-TRIAL-Receipt Voucher 252', '2018-02-24 12:09:07', '293-TRIAL-RV/2018/56 241', 39, '0.0000', '5000.0000', '2018-02-26 12:09:25'),
(786, 58, '129-TRIAL-Receipt Voucher 148', '2018-02-24 00:00:00', '127-TRIAL-RV/2018/56 98', 4, '5000.0000', '0.0000', '2018-02-26 12:09:25'),
(787, 59, '24-TRIAL-Receipt Voucher 124', '2018-02-24 12:10:04', '274-TRIAL-RV/2018/57 133', 31, '0.0000', '19100.0000', '2018-02-26 12:10:15'),
(788, 59, '85-TRIAL-Receipt Voucher 38', '2018-02-24 00:00:00', '170-TRIAL-RV/2018/57 262', 4, '19100.0000', '0.0000', '2018-02-26 12:10:15'),
(789, 60, '229-TRIAL-Receipt Voucher 284', '2018-02-24 12:11:09', '209-TRIAL-RV/2018/58 178', 45, '0.0000', '1000.0000', '2018-02-26 12:11:19'),
(790, 60, '23-TRIAL-Receipt Voucher 85', '2018-02-24 00:00:00', '0-TRIAL-RV/2018/58 224', 4, '1000.0000', '0.0000', '2018-02-26 12:11:19'),
(791, 61, '93-TRIAL-Receipt Voucher 5', '2018-02-24 12:11:49', '112-TRIAL-RV/2018/59 165', 53, '0.0000', '1830.0000', '2018-02-26 12:12:09'),
(792, 61, '67-TRIAL-Receipt Voucher 107', '2018-02-24 00:00:00', '177-TRIAL-RV/2018/59 284', 4, '1830.0000', '0.0000', '2018-02-26 12:12:09'),
(793, 61, '104-TRIAL-Payment Voucher 90', '2018-02-23 10:41:28', '234-TRIAL-PV/2018/56 91', 11, '300.0000', '0.0000', '2018-02-27 10:41:56'),
(794, 61, '21-TRIAL-Payment Voucher 85', '2018-02-23 00:00:00', '134-TRIAL-PV/2018/56 290', 4, '0.0000', '300.0000', '2018-02-27 10:41:56'),
(795, 62, '142-TRIAL-Payment Voucher 298', '2018-02-24 10:41:57', '186-TRIAL-PV/2018/57 218', 11, '150.0000', '0.0000', '2018-02-27 10:42:12'),
(796, 62, '21-TRIAL-Payment Voucher 124', '2018-02-24 00:00:00', '97-TRIAL-PV/2018/57 76', 4, '0.0000', '150.0000', '2018-02-27 10:42:12'),
(797, 63, '254-TRIAL-Payment Voucher 269', '2018-02-24 10:42:13', '108-TRIAL-PV/2018/58 27', 10, '1190.0000', '0.0000', '2018-02-27 10:42:54'),
(798, 63, '193-TRIAL-Payment Voucher 268', '2018-02-24 00:00:00', '66-TRIAL-PV/2018/58 102', 4, '0.0000', '1190.0000', '2018-02-27 10:42:54'),
(799, 64, '38-TRIAL-Payment Voucher 0', '2018-02-26 10:42:55', '19-TRIAL-PV/2018/59 218', 11, '320.0000', '0.0000', '2018-02-27 10:43:23'),
(800, 64, '190-TRIAL-Payment Voucher 284', '2018-02-26 00:00:00', '139-TRIAL-PV/2018/59 156', 4, '0.0000', '320.0000', '2018-02-27 10:43:23'),
(801, 65, '8-TRIAL-Payment Voucher 132', '2018-02-26 10:43:24', '178-TRIAL-PV/2018/60 114', 10, '70.0000', '0.0000', '2018-02-27 10:43:36'),
(802, 65, '287-TRIAL-Payment Voucher 39', '2018-02-26 00:00:00', '174-TRIAL-PV/2018/60 120', 4, '0.0000', '70.0000', '2018-02-27 10:43:36'),
(803, 66, '27-TRIAL-Payment Voucher 154', '2018-02-26 10:43:51', '188-TRIAL-PV/2018/61 241', 14, '25000.0000', '0.0000', '2018-02-27 10:44:12'),
(804, 66, '298-TRIAL-Payment Voucher 142', '2018-02-26 00:00:00', '102-TRIAL-PV/2018/61 121', 4, '0.0000', '25000.0000', '2018-02-27 10:44:12'),
(807, 63, '104-TRIAL-Receipt Voucher 146', '2018-02-26 10:44:47', '156-TRIAL-RV/2018/61 209', 36, '0.0000', '5000.0000', '2018-02-27 10:45:01'),
(808, 63, '133-TRIAL-Receipt Voucher 8', '2018-02-26 00:00:00', '261-TRIAL-RV/2018/61 233', 4, '5000.0000', '0.0000', '2018-02-27 10:45:01'),
(809, 64, '286-TRIAL-Receipt Voucher 104', '2018-02-26 10:45:02', '285-TRIAL-RV/2018/62 242', 51, '0.0000', '4000.0000', '2018-02-27 10:45:17'),
(810, 64, '242-TRIAL-Receipt Voucher 160', '2018-02-26 00:00:00', '261-TRIAL-RV/2018/62 120', 4, '4000.0000', '0.0000', '2018-02-27 10:45:17'),
(811, 65, '143-TRIAL-Receipt Voucher 278', '2018-02-26 10:45:18', '287-TRIAL-RV/2018/63 113', 32, '0.0000', '3000.0000', '2018-02-27 10:45:29'),
(812, 65, '163-TRIAL-Receipt Voucher 91', '2018-02-26 00:00:00', '234-TRIAL-RV/2018/63 15', 4, '3000.0000', '0.0000', '2018-02-27 10:45:29'),
(813, 12, '56-TRIAL-Purchase Invoice 61', '2018-02-26 00:00:00', '112-TRIAL-PI/2018/11 211', 14, '0.0000', '127250.0000', '2018-02-27 10:53:10'),
(814, 12, '259-TRIAL-Purchase Invoice 51', '2018-02-26 00:00:00', '138-TRIAL-PI/2018/11 170', 12, '127250.0000', '0.0000', '2018-02-27 10:53:10'),
(819, 62, '24-TRIAL-Receipt Voucher 107', '2018-02-26 00:00:00', '207-TRIAL-RV/2018/60 184', 38, '0.0000', '10100.0000', '2018-02-27 10:59:02'),
(820, 62, '151-TRIAL-Receipt Voucher 1', '2018-02-26 00:00:00', '89-TRIAL-RV/2018/60 58', 4, '10100.0000', '0.0000', '2018-02-27 10:59:02'),
(831, 85, '141-TRIAL-Wholesale Invoice 290', '2018-02-27 00:00:00', '213-TRIAL-8/2018/73 112', 51, '10760.0000', '0.0000', '2018-02-27 11:09:50');
INSERT INTO `transaction_tbl` (`transId`, `voucherId`, `voucherType`, `voucherDate`, `voucherNo`, `ledgerId`, `Dr`, `Cr`, `transDate`) VALUES
(832, 85, '155-TRIAL-Wholesale Invoice 60', '2018-02-27 00:00:00', '193-TRIAL-8/2018/73 72', 15, '0.0000', '10760.0000', '2018-02-27 11:09:50'),
(833, 86, '202-TRIAL-Wholesale Invoice 276', '2018-02-27 00:00:00', '43-TRIAL-8/2018/74 173', 59, '12600.0000', '0.0000', '2018-02-27 11:12:20'),
(834, 86, '266-TRIAL-Wholesale Invoice 51', '2018-02-27 00:00:00', '275-TRIAL-8/2018/74 228', 15, '0.0000', '12600.0000', '2018-02-27 11:12:20'),
(835, 67, '232-TRIAL-Wholesale Invoice 261', '2018-02-20 00:00:00', '69-TRIAL-8/2018/55 103', 38, '10100.0000', '0.0000', '2018-02-27 11:14:50'),
(836, 67, '29-TRIAL-Wholesale Invoice 7', '2018-02-20 00:00:00', '292-TRIAL-8/2018/55 51', 15, '0.0000', '10100.0000', '2018-02-27 11:14:50'),
(837, 87, '253-TRIAL-Wholesale Invoice 192', '2018-02-27 00:00:00', '70-TRIAL-8/2018/75 19', 38, '13185.0000', '0.0000', '2018-02-27 11:15:46'),
(838, 87, '272-TRIAL-Wholesale Invoice 7', '2018-02-27 00:00:00', '294-TRIAL-8/2018/75 205', 15, '0.0000', '13185.0000', '2018-02-27 11:15:46'),
(839, 88, '240-TRIAL-Wholesale Invoice 283', '2018-02-27 00:00:00', '162-TRIAL-8/2018/76 109', 36, '3200.0000', '0.0000', '2018-02-27 11:16:26'),
(840, 88, '107-TRIAL-Wholesale Invoice 38', '2018-02-27 00:00:00', '160-TRIAL-8/2018/76 71', 15, '0.0000', '3200.0000', '2018-02-27 11:16:26'),
(841, 89, '71-TRIAL-Wholesale Invoice 254', '2018-02-27 00:00:00', '247-TRIAL-8/2018/77 114', 56, '2590.0000', '0.0000', '2018-02-27 11:16:53'),
(842, 89, '123-TRIAL-Wholesale Invoice 229', '2018-02-27 00:00:00', '189-TRIAL-8/2018/77 166', 15, '0.0000', '2590.0000', '2018-02-27 11:16:53'),
(843, 66, '187-TRIAL-Receipt Voucher 56', '2018-02-27 11:50:29', '232-TRIAL-RV/2018/64 270', 54, '0.0000', '29000.0000', '2018-02-28 11:51:28'),
(844, 66, '239-TRIAL-Receipt Voucher 266', '2018-02-27 00:00:00', '122-TRIAL-RV/2018/64 83', 4, '29000.0000', '0.0000', '2018-02-28 11:51:28'),
(845, 80, '60-TRIAL-Wholesale Invoice 153', '2018-02-27 00:00:00', '105-TRIAL-8/2018/68 91', 54, '29000.0000', '0.0000', '2018-02-28 11:51:46'),
(846, 80, '59-TRIAL-Wholesale Invoice 186', '2018-02-27 00:00:00', '187-TRIAL-8/2018/68 129', 15, '0.0000', '29000.0000', '2018-02-28 11:51:46'),
(847, 82, '42-TRIAL-Wholesale Invoice 117', '2018-02-27 00:00:00', '145-TRIAL-8/2018/70 56', 57, '3420.0000', '0.0000', '2018-02-28 11:52:11'),
(848, 82, '188-TRIAL-Wholesale Invoice 252', '2018-02-27 00:00:00', '154-TRIAL-8/2018/70 166', 15, '0.0000', '3420.0000', '2018-02-28 11:52:11'),
(849, 83, '133-TRIAL-Wholesale Invoice 160', '2018-02-27 00:00:00', '219-TRIAL-8/2018/71 131', 58, '8280.0000', '0.0000', '2018-02-28 11:52:34'),
(850, 83, '138-TRIAL-Wholesale Invoice 267', '2018-02-27 00:00:00', '276-TRIAL-8/2018/71 98', 15, '0.0000', '8280.0000', '2018-02-28 11:52:34'),
(851, 84, '14-TRIAL-Wholesale Invoice 120', '2018-02-27 00:00:00', '153-TRIAL-8/2018/72 7', 32, '780.0000', '0.0000', '2018-02-28 11:52:45'),
(852, 84, '269-TRIAL-Wholesale Invoice 216', '2018-02-27 00:00:00', '122-TRIAL-8/2018/72 42', 15, '0.0000', '780.0000', '2018-02-28 11:52:45'),
(853, 67, '207-TRIAL-Receipt Voucher 163', '2018-02-27 11:53:17', '160-TRIAL-RV/2018/65 47', 57, '0.0000', '3420.0000', '2018-02-28 11:53:31'),
(854, 67, '293-TRIAL-Receipt Voucher 130', '2018-02-27 00:00:00', '117-TRIAL-RV/2018/65 243', 4, '3420.0000', '0.0000', '2018-02-28 11:53:31'),
(855, 68, '176-TRIAL-Receipt Voucher 114', '2018-02-27 11:53:31', '126-TRIAL-RV/2018/66 17', 58, '0.0000', '8280.0000', '2018-02-28 11:53:44'),
(856, 68, '134-TRIAL-Receipt Voucher 220', '2018-02-27 00:00:00', '71-TRIAL-RV/2018/66 92', 4, '8280.0000', '0.0000', '2018-02-28 11:53:44'),
(857, 69, '264-TRIAL-Receipt Voucher 254', '2018-02-27 11:53:45', '266-TRIAL-RV/2018/67 293', 36, '0.0000', '3200.0000', '2018-02-28 11:53:57'),
(858, 69, '64-TRIAL-Receipt Voucher 75', '2018-02-27 00:00:00', '100-TRIAL-RV/2018/67 212', 4, '3200.0000', '0.0000', '2018-02-28 11:53:57'),
(859, 70, '100-TRIAL-Receipt Voucher 51', '2018-02-27 11:53:58', '276-TRIAL-RV/2018/68 79', 59, '0.0000', '6000.0000', '2018-02-28 11:54:08'),
(860, 70, '143-TRIAL-Receipt Voucher 177', '2018-02-27 00:00:00', '189-TRIAL-RV/2018/68 61', 4, '6000.0000', '0.0000', '2018-02-28 11:54:08'),
(861, 71, '285-TRIAL-Receipt Voucher 172', '2018-02-27 11:54:09', '34-TRIAL-RV/2018/69 144', 30, '0.0000', '2000.0000', '2018-02-28 11:54:21'),
(862, 71, '161-TRIAL-Receipt Voucher 63', '2018-02-27 00:00:00', '104-TRIAL-RV/2018/69 46', 4, '2000.0000', '0.0000', '2018-02-28 11:54:21'),
(863, 67, '188-TRIAL-Payment Voucher 208', '2018-02-28 11:55:23', '157-TRIAL-PV/2018/62 230', 14, '31450.0000', '0.0000', '2018-02-28 11:55:37'),
(864, 67, '23-TRIAL-Payment Voucher 164', '2018-02-28 00:00:00', '174-TRIAL-PV/2018/62 146', 4, '0.0000', '31450.0000', '2018-02-28 11:55:37'),
(865, 68, '37-TRIAL-Payment Voucher 181', '2018-02-26 12:12:46', '118-TRIAL-PV/2018/63 211', 5, '300.0000', '0.0000', '2018-02-28 12:13:08'),
(866, 68, '92-TRIAL-Payment Voucher 191', '2018-02-26 00:00:00', '232-TRIAL-PV/2018/63 123', 4, '0.0000', '300.0000', '2018-02-28 12:13:08'),
(867, 69, '161-TRIAL-Payment Voucher 191', '2018-02-27 12:13:09', '261-TRIAL-PV/2018/64 30', 11, '700.0000', '0.0000', '2018-02-28 12:13:30'),
(868, 69, '298-TRIAL-Payment Voucher 269', '2018-02-27 00:00:00', '191-TRIAL-PV/2018/64 0', 4, '0.0000', '700.0000', '2018-02-28 12:13:30'),
(869, 70, '79-TRIAL-Payment Voucher 117', '2018-02-27 12:13:30', '217-TRIAL-PV/2018/65 114', 10, '920.0000', '0.0000', '2018-02-28 12:14:05'),
(870, 70, '95-TRIAL-Payment Voucher 241', '2018-02-27 00:00:00', '236-TRIAL-PV/2018/65 267', 4, '0.0000', '920.0000', '2018-02-28 12:14:05'),
(871, 14, '128-TRIAL-Payment Voucher 253', '2018-01-30 15:29:04', '9-TRIAL-PV/2018/9 173', 10, '260.0000', '0.0000', '2018-02-28 12:26:11'),
(872, 14, '281-TRIAL-Payment Voucher 103', '2018-01-30 00:00:00', '169-TRIAL-PV/2018/9 216', 4, '0.0000', '260.0000', '2018-02-28 12:26:11'),
(873, 36, '83-TRIAL-Payment Voucher 167', '2018-02-13 00:00:00', '285-TRIAL-PV/2018/31 202', 11, '90.0000', '0.0000', '2018-02-28 12:44:59'),
(874, 36, '130-TRIAL-Payment Voucher 57', '2018-02-13 00:00:00', '181-TRIAL-PV/2018/31 267', 4, '0.0000', '90.0000', '2018-02-28 12:44:59'),
(875, 42, '210-TRIAL-Payment Voucher 66', '2018-02-15 00:00:00', '87-TRIAL-PV/2018/37 271', 10, '132.0000', '0.0000', '2018-02-28 12:47:50'),
(876, 42, '177-TRIAL-Payment Voucher 45', '2018-02-15 00:00:00', '64-TRIAL-PV/2018/37 238', 4, '0.0000', '132.0000', '2018-02-28 12:47:50'),
(877, 46, '71-TRIAL-Payment Voucher 247', '2018-02-17 00:00:00', '15-TRIAL-PV/2018/41 92', 10, '1720.0000', '0.0000', '2018-02-28 12:49:47'),
(878, 46, '11-TRIAL-Payment Voucher 257', '2018-02-17 00:00:00', '205-TRIAL-PV/2018/41 53', 4, '0.0000', '1720.0000', '2018-02-28 12:49:47'),
(881, 71, '271-TRIAL-Payment Voucher 180', '2018-02-22 13:14:54', '240-TRIAL-PV/2018/66 30', 10, '2033.0000', '0.0000', '2018-02-28 13:16:50'),
(882, 71, '175-TRIAL-Payment Voucher 20', '2018-02-22 00:00:00', '290-TRIAL-PV/2018/66 177', 4, '0.0000', '2033.0000', '2018-02-28 13:16:50'),
(883, 73, '198-TRIAL-Wholesale Invoice 86', '2018-02-24 00:00:00', '4-TRIAL-8/2018/61 289', 48, '900.0000', '0.0000', '2018-02-28 13:57:11'),
(884, 73, '131-TRIAL-Wholesale Invoice 44', '2018-02-24 00:00:00', '288-TRIAL-8/2018/61 210', 15, '0.0000', '900.0000', '2018-02-28 13:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `unitconversion_tbl`
--

CREATE TABLE `unitconversion_tbl` (
  `unitConversionId` int(11) NOT NULL,
  `unitId` int(11) DEFAULT NULL,
  `conversionUnitId` int(11) DEFAULT NULL,
  `conversionRate` decimal(18,2) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `downCode` text COLLATE utf8_bin,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `unitconversion_tbl`
--

INSERT INTO `unitconversion_tbl` (`unitConversionId`, `unitId`, `conversionUnitId`, `conversionRate`, `description`, `downCode`, `entryDate`) VALUES
(1, 2, 1, '60.00', '\r\n\r\n', NULL, '2018-01-16 17:56:16'),
(2, 3, 1, '70.00', '\r\n\r\n', NULL, '2018-01-11 16:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `unit_tbl`
--

CREATE TABLE `unit_tbl` (
  `unitId` int(11) NOT NULL,
  `unitName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `unit_tbl`
--

INSERT INTO `unit_tbl` (`unitId`, `unitName`, `description`) VALUES
(1, 'PCs', ''),
(2, 'NOS', ''),
(3, 'NOS', ''),
(4, 'KG', ''),
(5, 'PKT', 'Packets'),
(6, 'BOX', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) DEFAULT NULL,
  `userName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `userType` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `secondPassword` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`userId`, `roleId`, `userName`, `email`, `password`, `userType`, `secondPassword`, `entryDate`) VALUES
(1, NULL, 'admin', '', 'admin', NULL, 'admin', '2018-01-11 16:16:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_tbl`
--
ALTER TABLE `account_tbl`
  ADD PRIMARY KEY (`accountId`);

--
-- Indexes for table `company_tbl`
--
ALTER TABLE `company_tbl`
  ADD PRIMARY KEY (`companyId`);

--
-- Indexes for table `contacts_tbl`
--
ALTER TABLE `contacts_tbl`
  ADD PRIMARY KEY (`contactId`),
  ADD KEY `FK__contacts___ledge__719CDDE7` (`ledgerId`);

--
-- Indexes for table `contradetails_tbl`
--
ALTER TABLE `contradetails_tbl`
  ADD PRIMARY KEY (`contraDetailsId`),
  ADD KEY `FK__contraDet__contr__72910220` (`contraMasterId`),
  ADD KEY `FK__contraDet__ledge__73852659` (`ledgerId`);

--
-- Indexes for table `contramaster_tbl`
--
ALTER TABLE `contramaster_tbl`
  ADD PRIMARY KEY (`contraMasterId`),
  ADD KEY `FK__contraMas__finan__2E86BBED` (`financialYearId`),
  ADD KEY `FK__contraMas__ledge__6FB49575` (`ledgerId`),
  ADD KEY `FK__contraMas__userI__70A8B9AE` (`userId`);

--
-- Indexes for table `designation_tbl`
--
ALTER TABLE `designation_tbl`
  ADD PRIMARY KEY (`designationId`);

--
-- Indexes for table `estimatedetails_tbl`
--
ALTER TABLE `estimatedetails_tbl`
  ADD PRIMARY KEY (`estimateDetailsId`),
  ADD KEY `FK__estimateD__estim__558AAF1E` (`estimateMasterId`),
  ADD KEY `FK__estimateD__produ__567ED357` (`productId`),
  ADD KEY `FK__estimateD__unitC__58671BC9` (`unitConversionId`),
  ADD KEY `FK__estimateD__unitI__5772F790` (`unitId`);

--
-- Indexes for table `estimatemaster_tbl`
--
ALTER TABLE `estimatemaster_tbl`
  ADD PRIMARY KEY (`estimateMasterId`),
  ADD KEY `FK__estimateM__ledge__4FD1D5C8` (`ledgerHead`),
  ADD KEY `FK__estimateM__sales__50C5FA01` (`salesHead`);

--
-- Indexes for table `financialyear_tbl`
--
ALTER TABLE `financialyear_tbl`
  ADD PRIMARY KEY (`financialYearId`),
  ADD KEY `FK__financial__userI__2BAA4F42` (`userId`);

--
-- Indexes for table `journaldetails_tbl`
--
ALTER TABLE `journaldetails_tbl`
  ADD PRIMARY KEY (`journalDetailsId`),
  ADD KEY `FK__journalDe__journ__74794A92` (`journalMasterId`),
  ADD KEY `FK__journalDe__ledge__756D6ECB` (`ledgerId`);

--
-- Indexes for table `journalmaster_tbl`
--
ALTER TABLE `journalmaster_tbl`
  ADD PRIMARY KEY (`journalMasterId`),
  ADD KEY `FK__journalMa__finan__2F7AE026` (`financialYearId`),
  ADD KEY `FK__journalMa__userI__6EC0713C` (`userId`);

--
-- Indexes for table `ledger_tbl`
--
ALTER TABLE `ledger_tbl`
  ADD PRIMARY KEY (`ledgerId`),
  ADD KEY `FK__ledger_tb__accou__5E8A0973` (`accountId`);

--
-- Indexes for table `mainmodule_tbl`
--
ALTER TABLE `mainmodule_tbl`
  ADD PRIMARY KEY (`moduleId`);

--
-- Indexes for table `paymentvoucher_tbl`
--
ALTER TABLE `paymentvoucher_tbl`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `FK__paymentVo__finan__2C9E737B` (`financialYearId`),
  ADD KEY `FK__paymentVo__ledge__6442E2C9` (`ledgerFirst`),
  ADD KEY `FK__paymentVo__ledge__65370702` (`ledgerSecond`),
  ADD KEY `FK__paymentVo__userI__662B2B3B` (`userId`);

--
-- Indexes for table `pdcpayable_tbl`
--
ALTER TABLE `pdcpayable_tbl`
  ADD PRIMARY KEY (`pdcPayableId`),
  ADD KEY `FK__pdcPayabl__Clear__671F4F74` (`ClearUserId`),
  ADD KEY `FK__pdcPayabl__finan__306F045F` (`financialYearId`),
  ADD KEY `FK__pdcPayabl__ledge__681373AD` (`ledgerCustId`),
  ADD KEY `FK__pdcPayabl__ledge__690797E6` (`ledgerBankId`),
  ADD KEY `FK__pdcPayabl__userI__69FBBC1F` (`userId`);

--
-- Indexes for table `pdcreceivable_tbl`
--
ALTER TABLE `pdcreceivable_tbl`
  ADD PRIMARY KEY (`pdcReceivableId`),
  ADD KEY `FK__pdcReceiv__Clear__6AEFE058` (`ClearUserId`),
  ADD KEY `FK__pdcReceiv__finan__31632898` (`financialYearId`),
  ADD KEY `FK__pdcReceiv__ledge__6BE40491` (`ledgerCustId`),
  ADD KEY `FK__pdcReceiv__ledge__6CD828CA` (`ledgerBankId`),
  ADD KEY `FK__pdcReceiv__userI__6DCC4D03` (`userId`);

--
-- Indexes for table `productgroup_tbl`
--
ALTER TABLE `productgroup_tbl`
  ADD PRIMARY KEY (`productGroupId`);

--
-- Indexes for table `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `FK__product_t__produ__7167D3BD` (`productGroupId`),
  ADD KEY `FK__product_t__unitI__725BF7F6` (`unitId`);

--
-- Indexes for table `purchaseldetails_tbl`
--
ALTER TABLE `purchaseldetails_tbl`
  ADD PRIMARY KEY (`purchaseDetailsId`),
  ADD KEY `FK__purchasel__produ__7EC1CEDB` (`productId`),
  ADD KEY `FK__purchasel__purch__7DCDAAA2` (`purchaseMasterId`),
  ADD KEY `FK__purchasel__unitC__00AA174D` (`unitConversionId`),
  ADD KEY `FK__purchasel__unitI__7FB5F314` (`unitId`);

--
-- Indexes for table `purchasemaster_tbl`
--
ALTER TABLE `purchasemaster_tbl`
  ADD PRIMARY KEY (`purchaseMasterId`),
  ADD KEY `FK__purchaseM__finan__32574CD1` (`financialYearId`),
  ADD KEY `FK__purchaseM__ledge__7814D14C` (`ledgerHead`),
  ADD KEY `FK__purchaseM__purch__7908F585` (`purchaseHead`);

--
-- Indexes for table `purchasereturndetails_tbl`
--
ALTER TABLE `purchasereturndetails_tbl`
  ADD PRIMARY KEY (`purchaseReturnDetailsId`),
  ADD KEY `FK__purchaseR__produ__0D0FEE32` (`productId`),
  ADD KEY `FK__purchaseR__purch__0C1BC9F9` (`purchaseReturnMasterId`),
  ADD KEY `FK__purchaseR__purch__3118447E` (`purchaseDetailsId`),
  ADD KEY `FK__purchaseR__unitC__0EF836A4` (`unitConversionId`),
  ADD KEY `FK__purchaseR__unitI__0E04126B` (`unitId`);

--
-- Indexes for table `purchasereturnmaster_tbl`
--
ALTER TABLE `purchasereturnmaster_tbl`
  ADD PRIMARY KEY (`purchaseReturnMasterId`),
  ADD KEY `FK__purchaseR__finan__334B710A` (`financialYearId`),
  ADD KEY `FK__purchaseR__ledge__0662F0A3` (`ledgerHead`),
  ADD KEY `FK__purchaseR__purch__056ECC6A` (`purchaseMasterId`),
  ADD KEY `FK__purchaseR__purch__075714DC` (`purchaseHead`);

--
-- Indexes for table `receiptvoucher_tbl`
--
ALTER TABLE `receiptvoucher_tbl`
  ADD PRIMARY KEY (`receiptID`),
  ADD KEY `FK__receiptVo__finan__2D9297B4` (`financialYearId`),
  ADD KEY `FK__receiptVo__ledge__607251E5` (`ledgerFirst`),
  ADD KEY `FK__receiptVo__ledge__6166761E` (`ledgerSecond`),
  ADD KEY `FK__receiptVo__userI__625A9A57` (`userId`);

--
-- Indexes for table `role_tbl`
--
ALTER TABLE `role_tbl`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `salesdetails_tbl`
--
ALTER TABLE `salesdetails_tbl`
  ADD PRIMARY KEY (`salesDetailsId`),
  ADD KEY `FK__salesDeta__produ__1A69E950` (`productId`),
  ADD KEY `FK__salesDeta__sales__1975C517` (`salesMasterId`),
  ADD KEY `FK__salesDeta__unitC__1C5231C2` (`unitConversionId`),
  ADD KEY `FK__salesDeta__unitI__1B5E0D89` (`unitId`);

--
-- Indexes for table `salesmaster_tbl`
--
ALTER TABLE `salesmaster_tbl`
  ADD PRIMARY KEY (`salesMasterId`),
  ADD KEY `FK__salesMast__finan__343F9543` (`financialYearId`),
  ADD KEY `FK__salesMast__ledge__13BCEBC1` (`ledgerHead`),
  ADD KEY `FK__salesMast__sales__14B10FFA` (`salesHead`);

--
-- Indexes for table `salesreturndetails_tbl`
--
ALTER TABLE `salesreturndetails_tbl`
  ADD PRIMARY KEY (`salesReturnDetailsId`),
  ADD KEY `FK__salesRetu__produ__28B808A7` (`productId`),
  ADD KEY `FK__salesRetu__sales__27C3E46E` (`salesReturnMasterId`),
  ADD KEY `FK__salesRetu__sales__320C68B7` (`salesDetailsId`),
  ADD KEY `FK__salesRetu__unitC__2AA05119` (`unitConversionId`),
  ADD KEY `FK__salesRetu__unitI__29AC2CE0` (`unitId`);

--
-- Indexes for table `salesreturnmaster_tbl`
--
ALTER TABLE `salesreturnmaster_tbl`
  ADD PRIMARY KEY (`salesReturnMasterId`),
  ADD KEY `FK__salesRetu__finan__3533B97C` (`financialYearId`),
  ADD KEY `FK__salesRetu__ledge__220B0B18` (`ledgerHead`),
  ADD KEY `FK__salesRetu__sales__2116E6DF` (`salesMasterId`),
  ADD KEY `FK__salesRetu__sales__22FF2F51` (`salesHead`);

--
-- Indexes for table `servicedepartment_tbl`
--
ALTER TABLE `servicedepartment_tbl`
  ADD PRIMARY KEY (`serviceDepartmentId`);

--
-- Indexes for table `submodule_tbl`
--
ALTER TABLE `submodule_tbl`
  ADD PRIMARY KEY (`subModuleId`);

--
-- Indexes for table `transaction_tbl`
--
ALTER TABLE `transaction_tbl`
  ADD PRIMARY KEY (`transId`),
  ADD KEY `FK__transacti__ledge__634EBE90` (`ledgerId`);

--
-- Indexes for table `unitconversion_tbl`
--
ALTER TABLE `unitconversion_tbl`
  ADD PRIMARY KEY (`unitConversionId`),
  ADD KEY `FK__unitConve__conve__7EF6D905` (`conversionUnitId`),
  ADD KEY `FK__unitConve__unitI__7E02B4CC` (`unitId`);

--
-- Indexes for table `unit_tbl`
--
ALTER TABLE `unit_tbl`
  ADD PRIMARY KEY (`unitId`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`userId`),
  ADD KEY `FK__user_tbl__roleId__5F7E2DAC` (`roleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_tbl`
--
ALTER TABLE `account_tbl`
  MODIFY `accountId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `company_tbl`
--
ALTER TABLE `company_tbl`
  MODIFY `companyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts_tbl`
--
ALTER TABLE `contacts_tbl`
  MODIFY `contactId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `contradetails_tbl`
--
ALTER TABLE `contradetails_tbl`
  MODIFY `contraDetailsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contramaster_tbl`
--
ALTER TABLE `contramaster_tbl`
  MODIFY `contraMasterId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designation_tbl`
--
ALTER TABLE `designation_tbl`
  MODIFY `designationId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimatedetails_tbl`
--
ALTER TABLE `estimatedetails_tbl`
  MODIFY `estimateDetailsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimatemaster_tbl`
--
ALTER TABLE `estimatemaster_tbl`
  MODIFY `estimateMasterId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financialyear_tbl`
--
ALTER TABLE `financialyear_tbl`
  MODIFY `financialYearId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `journaldetails_tbl`
--
ALTER TABLE `journaldetails_tbl`
  MODIFY `journalDetailsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journalmaster_tbl`
--
ALTER TABLE `journalmaster_tbl`
  MODIFY `journalMasterId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ledger_tbl`
--
ALTER TABLE `ledger_tbl`
  MODIFY `ledgerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `mainmodule_tbl`
--
ALTER TABLE `mainmodule_tbl`
  MODIFY `moduleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paymentvoucher_tbl`
--
ALTER TABLE `paymentvoucher_tbl`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `pdcpayable_tbl`
--
ALTER TABLE `pdcpayable_tbl`
  MODIFY `pdcPayableId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pdcreceivable_tbl`
--
ALTER TABLE `pdcreceivable_tbl`
  MODIFY `pdcReceivableId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productgroup_tbl`
--
ALTER TABLE `productgroup_tbl`
  MODIFY `productGroupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `purchaseldetails_tbl`
--
ALTER TABLE `purchaseldetails_tbl`
  MODIFY `purchaseDetailsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `purchasemaster_tbl`
--
ALTER TABLE `purchasemaster_tbl`
  MODIFY `purchaseMasterId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `purchasereturndetails_tbl`
--
ALTER TABLE `purchasereturndetails_tbl`
  MODIFY `purchaseReturnDetailsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchasereturnmaster_tbl`
--
ALTER TABLE `purchasereturnmaster_tbl`
  MODIFY `purchaseReturnMasterId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receiptvoucher_tbl`
--
ALTER TABLE `receiptvoucher_tbl`
  MODIFY `receiptID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `role_tbl`
--
ALTER TABLE `role_tbl`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salesdetails_tbl`
--
ALTER TABLE `salesdetails_tbl`
  MODIFY `salesDetailsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `salesmaster_tbl`
--
ALTER TABLE `salesmaster_tbl`
  MODIFY `salesMasterId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `salesreturndetails_tbl`
--
ALTER TABLE `salesreturndetails_tbl`
  MODIFY `salesReturnDetailsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salesreturnmaster_tbl`
--
ALTER TABLE `salesreturnmaster_tbl`
  MODIFY `salesReturnMasterId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servicedepartment_tbl`
--
ALTER TABLE `servicedepartment_tbl`
  MODIFY `serviceDepartmentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submodule_tbl`
--
ALTER TABLE `submodule_tbl`
  MODIFY `subModuleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `transaction_tbl`
--
ALTER TABLE `transaction_tbl`
  MODIFY `transId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=885;

--
-- AUTO_INCREMENT for table `unitconversion_tbl`
--
ALTER TABLE `unitconversion_tbl`
  MODIFY `unitConversionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unit_tbl`
--
ALTER TABLE `unit_tbl`
  MODIFY `unitId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts_tbl`
--
ALTER TABLE `contacts_tbl`
  ADD CONSTRAINT `FK__contacts___ledge__719CDDE7` FOREIGN KEY (`ledgerId`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contradetails_tbl`
--
ALTER TABLE `contradetails_tbl`
  ADD CONSTRAINT `FK__contraDet__contr__72910220` FOREIGN KEY (`contraMasterId`) REFERENCES `contramaster_tbl` (`contraMasterId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__contraDet__ledge__73852659` FOREIGN KEY (`ledgerId`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contramaster_tbl`
--
ALTER TABLE `contramaster_tbl`
  ADD CONSTRAINT `FK__contraMas__finan__2E86BBED` FOREIGN KEY (`financialYearId`) REFERENCES `financialyear_tbl` (`financialYearId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__contraMas__ledge__6FB49575` FOREIGN KEY (`ledgerId`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__contraMas__userI__70A8B9AE` FOREIGN KEY (`userId`) REFERENCES `user_tbl` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `estimatedetails_tbl`
--
ALTER TABLE `estimatedetails_tbl`
  ADD CONSTRAINT `FK__estimateD__estim__558AAF1E` FOREIGN KEY (`estimateMasterId`) REFERENCES `estimatemaster_tbl` (`estimateMasterId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__estimateD__produ__567ED357` FOREIGN KEY (`productId`) REFERENCES `product_tbl` (`productId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__estimateD__unitC__58671BC9` FOREIGN KEY (`unitConversionId`) REFERENCES `unitconversion_tbl` (`unitConversionId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__estimateD__unitI__5772F790` FOREIGN KEY (`unitId`) REFERENCES `unit_tbl` (`unitId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `estimatemaster_tbl`
--
ALTER TABLE `estimatemaster_tbl`
  ADD CONSTRAINT `FK__estimateM__ledge__4FD1D5C8` FOREIGN KEY (`ledgerHead`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__estimateM__sales__50C5FA01` FOREIGN KEY (`salesHead`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `financialyear_tbl`
--
ALTER TABLE `financialyear_tbl`
  ADD CONSTRAINT `FK__financial__userI__2BAA4F42` FOREIGN KEY (`userId`) REFERENCES `user_tbl` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `journaldetails_tbl`
--
ALTER TABLE `journaldetails_tbl`
  ADD CONSTRAINT `FK__journalDe__journ__74794A92` FOREIGN KEY (`journalMasterId`) REFERENCES `journalmaster_tbl` (`journalMasterId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__journalDe__ledge__756D6ECB` FOREIGN KEY (`ledgerId`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `journalmaster_tbl`
--
ALTER TABLE `journalmaster_tbl`
  ADD CONSTRAINT `FK__journalMa__finan__2F7AE026` FOREIGN KEY (`financialYearId`) REFERENCES `financialyear_tbl` (`financialYearId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__journalMa__userI__6EC0713C` FOREIGN KEY (`userId`) REFERENCES `user_tbl` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ledger_tbl`
--
ALTER TABLE `ledger_tbl`
  ADD CONSTRAINT `FK__ledger_tb__accou__5E8A0973` FOREIGN KEY (`accountId`) REFERENCES `account_tbl` (`accountId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `paymentvoucher_tbl`
--
ALTER TABLE `paymentvoucher_tbl`
  ADD CONSTRAINT `FK__paymentVo__finan__2C9E737B` FOREIGN KEY (`financialYearId`) REFERENCES `financialyear_tbl` (`financialYearId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__paymentVo__ledge__6442E2C9` FOREIGN KEY (`ledgerFirst`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__paymentVo__ledge__65370702` FOREIGN KEY (`ledgerSecond`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__paymentVo__userI__662B2B3B` FOREIGN KEY (`userId`) REFERENCES `user_tbl` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pdcpayable_tbl`
--
ALTER TABLE `pdcpayable_tbl`
  ADD CONSTRAINT `FK__pdcPayabl__Clear__671F4F74` FOREIGN KEY (`ClearUserId`) REFERENCES `user_tbl` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__pdcPayabl__finan__306F045F` FOREIGN KEY (`financialYearId`) REFERENCES `financialyear_tbl` (`financialYearId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__pdcPayabl__ledge__681373AD` FOREIGN KEY (`ledgerCustId`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__pdcPayabl__ledge__690797E6` FOREIGN KEY (`ledgerBankId`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__pdcPayabl__userI__69FBBC1F` FOREIGN KEY (`userId`) REFERENCES `user_tbl` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pdcreceivable_tbl`
--
ALTER TABLE `pdcreceivable_tbl`
  ADD CONSTRAINT `FK__pdcReceiv__Clear__6AEFE058` FOREIGN KEY (`ClearUserId`) REFERENCES `user_tbl` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__pdcReceiv__finan__31632898` FOREIGN KEY (`financialYearId`) REFERENCES `financialyear_tbl` (`financialYearId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__pdcReceiv__ledge__6BE40491` FOREIGN KEY (`ledgerCustId`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__pdcReceiv__ledge__6CD828CA` FOREIGN KEY (`ledgerBankId`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__pdcReceiv__userI__6DCC4D03` FOREIGN KEY (`userId`) REFERENCES `user_tbl` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD CONSTRAINT `FK__product_t__produ__7167D3BD` FOREIGN KEY (`productGroupId`) REFERENCES `productgroup_tbl` (`productGroupId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__product_t__unitI__725BF7F6` FOREIGN KEY (`unitId`) REFERENCES `unit_tbl` (`unitId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `purchaseldetails_tbl`
--
ALTER TABLE `purchaseldetails_tbl`
  ADD CONSTRAINT `FK__purchasel__produ__7EC1CEDB` FOREIGN KEY (`productId`) REFERENCES `product_tbl` (`productId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__purchasel__purch__7DCDAAA2` FOREIGN KEY (`purchaseMasterId`) REFERENCES `purchasemaster_tbl` (`purchaseMasterId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__purchasel__unitC__00AA174D` FOREIGN KEY (`unitConversionId`) REFERENCES `unitconversion_tbl` (`unitConversionId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__purchasel__unitI__7FB5F314` FOREIGN KEY (`unitId`) REFERENCES `unit_tbl` (`unitId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `purchasemaster_tbl`
--
ALTER TABLE `purchasemaster_tbl`
  ADD CONSTRAINT `FK__purchaseM__finan__32574CD1` FOREIGN KEY (`financialYearId`) REFERENCES `financialyear_tbl` (`financialYearId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__purchaseM__ledge__7814D14C` FOREIGN KEY (`ledgerHead`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__purchaseM__purch__7908F585` FOREIGN KEY (`purchaseHead`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `purchasereturndetails_tbl`
--
ALTER TABLE `purchasereturndetails_tbl`
  ADD CONSTRAINT `FK__purchaseR__produ__0D0FEE32` FOREIGN KEY (`productId`) REFERENCES `product_tbl` (`productId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__purchaseR__purch__0C1BC9F9` FOREIGN KEY (`purchaseReturnMasterId`) REFERENCES `purchasereturnmaster_tbl` (`purchaseReturnMasterId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__purchaseR__purch__3118447E` FOREIGN KEY (`purchaseDetailsId`) REFERENCES `purchaseldetails_tbl` (`purchaseDetailsId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__purchaseR__unitC__0EF836A4` FOREIGN KEY (`unitConversionId`) REFERENCES `unitconversion_tbl` (`unitConversionId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__purchaseR__unitI__0E04126B` FOREIGN KEY (`unitId`) REFERENCES `unit_tbl` (`unitId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `purchasereturnmaster_tbl`
--
ALTER TABLE `purchasereturnmaster_tbl`
  ADD CONSTRAINT `FK__purchaseR__finan__334B710A` FOREIGN KEY (`financialYearId`) REFERENCES `financialyear_tbl` (`financialYearId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__purchaseR__ledge__0662F0A3` FOREIGN KEY (`ledgerHead`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__purchaseR__purch__056ECC6A` FOREIGN KEY (`purchaseMasterId`) REFERENCES `purchasemaster_tbl` (`purchaseMasterId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__purchaseR__purch__075714DC` FOREIGN KEY (`purchaseHead`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `receiptvoucher_tbl`
--
ALTER TABLE `receiptvoucher_tbl`
  ADD CONSTRAINT `FK__receiptVo__finan__2D9297B4` FOREIGN KEY (`financialYearId`) REFERENCES `financialyear_tbl` (`financialYearId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__receiptVo__ledge__607251E5` FOREIGN KEY (`ledgerFirst`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__receiptVo__ledge__6166761E` FOREIGN KEY (`ledgerSecond`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__receiptVo__userI__625A9A57` FOREIGN KEY (`userId`) REFERENCES `user_tbl` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `salesdetails_tbl`
--
ALTER TABLE `salesdetails_tbl`
  ADD CONSTRAINT `FK__salesDeta__produ__1A69E950` FOREIGN KEY (`productId`) REFERENCES `product_tbl` (`productId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__salesDeta__sales__1975C517` FOREIGN KEY (`salesMasterId`) REFERENCES `salesmaster_tbl` (`salesMasterId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__salesDeta__unitC__1C5231C2` FOREIGN KEY (`unitConversionId`) REFERENCES `unitconversion_tbl` (`unitConversionId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__salesDeta__unitI__1B5E0D89` FOREIGN KEY (`unitId`) REFERENCES `unit_tbl` (`unitId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `salesmaster_tbl`
--
ALTER TABLE `salesmaster_tbl`
  ADD CONSTRAINT `FK__salesMast__finan__343F9543` FOREIGN KEY (`financialYearId`) REFERENCES `financialyear_tbl` (`financialYearId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__salesMast__ledge__13BCEBC1` FOREIGN KEY (`ledgerHead`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__salesMast__sales__14B10FFA` FOREIGN KEY (`salesHead`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `salesreturndetails_tbl`
--
ALTER TABLE `salesreturndetails_tbl`
  ADD CONSTRAINT `FK__salesRetu__produ__28B808A7` FOREIGN KEY (`productId`) REFERENCES `product_tbl` (`productId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__salesRetu__sales__27C3E46E` FOREIGN KEY (`salesReturnMasterId`) REFERENCES `salesreturnmaster_tbl` (`salesReturnMasterId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__salesRetu__sales__320C68B7` FOREIGN KEY (`salesDetailsId`) REFERENCES `salesdetails_tbl` (`salesDetailsId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__salesRetu__unitC__2AA05119` FOREIGN KEY (`unitConversionId`) REFERENCES `unitconversion_tbl` (`unitConversionId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__salesRetu__unitI__29AC2CE0` FOREIGN KEY (`unitId`) REFERENCES `unit_tbl` (`unitId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `salesreturnmaster_tbl`
--
ALTER TABLE `salesreturnmaster_tbl`
  ADD CONSTRAINT `FK__salesRetu__finan__3533B97C` FOREIGN KEY (`financialYearId`) REFERENCES `financialyear_tbl` (`financialYearId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__salesRetu__ledge__220B0B18` FOREIGN KEY (`ledgerHead`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__salesRetu__sales__2116E6DF` FOREIGN KEY (`salesMasterId`) REFERENCES `salesmaster_tbl` (`salesMasterId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__salesRetu__sales__22FF2F51` FOREIGN KEY (`salesHead`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transaction_tbl`
--
ALTER TABLE `transaction_tbl`
  ADD CONSTRAINT `FK__transacti__ledge__634EBE90` FOREIGN KEY (`ledgerId`) REFERENCES `ledger_tbl` (`ledgerId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `unitconversion_tbl`
--
ALTER TABLE `unitconversion_tbl`
  ADD CONSTRAINT `FK__unitConve__conve__7EF6D905` FOREIGN KEY (`conversionUnitId`) REFERENCES `unit_tbl` (`unitId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__unitConve__unitI__7E02B4CC` FOREIGN KEY (`unitId`) REFERENCES `unit_tbl` (`unitId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD CONSTRAINT `FK__user_tbl__roleId__5F7E2DAC` FOREIGN KEY (`roleId`) REFERENCES `role_tbl` (`roleId`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
