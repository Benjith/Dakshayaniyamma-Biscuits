-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2018 at 10:58 AM
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
(1, 'PULARI AGENCIES', '', '', 'MANJERI', 'dfgdf', '+91 95 3939 6121', '', '', '', '', '2018-01-11 16:16:02', 'Dot', 1, 1, '', '', 'dfgdf', '', '');

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
  `gstIn` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(1, 22, '', NULL, '0.0000', NULL, NULL, NULL, '2018-06-03 10:42:01', 'contacts_tbl', NULL),
(2, 22, NULL, NULL, '0.0000', NULL, NULL, NULL, '2018-06-03 10:42:02', 'contacts_tbl', NULL),
(3, 22, 'con', NULL, '0.0000', NULL, NULL, NULL, '2018-06-03 10:42:18', 'contacts_tbl', NULL),
(4, 22, NULL, NULL, '0.0000', NULL, NULL, NULL, '2018-06-03 10:42:18', 'contacts_tbl', NULL),
(5, 22, '', NULL, '0.0000', NULL, NULL, NULL, '2018-06-03 12:41:48', 'contacts_tbl', NULL),
(6, 22, '', NULL, '0.0000', NULL, NULL, NULL, '2018-06-03 12:42:06', 'contacts_tbl', NULL),
(7, 22, 'benjith', NULL, '0.0000', NULL, NULL, NULL, '2018-06-03 12:43:16', 'contacts_tbl', NULL),
(8, 22, 'ram', NULL, '0.0000', NULL, NULL, NULL, '2018-06-03 12:43:27', 'contacts_tbl', NULL),
(9, 22, 'ram', NULL, '0.0000', NULL, NULL, NULL, '2018-06-03 12:43:27', 'contacts_tbl', NULL),
(10, 22, 'one', NULL, '0.0000', NULL, NULL, NULL, '2018-06-03 12:44:35', 'contacts_tbl', NULL),
(11, 22, 'one', NULL, '0.0000', NULL, NULL, NULL, '2018-06-03 12:44:35', 'contacts_tbl', NULL);

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
  `Date` datetime DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `productgroup_tbl`
--

INSERT INTO `productgroup_tbl` (`productGroupId`, `productGroupName`, `Date`, `description`) VALUES
(24, 'Gold', '2018-06-02 18:41:50', 'Gold'),
(25, 'diamond', '2018-06-03 12:58:06', 'diamond');

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
  `hsnOrSacCode` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `product_tbl`
--

INSERT INTO `product_tbl` (`productId`, `productGroupId`, `unitId`, `productName`, `productCode`, `taxType`, `taxPercent`, `purchaseRate`, `wholeSalesRate`, `retailRate`, `consumerRate`, `mrp`, `openingStock`, `entryDate`, `description`, `purTaxPercent`, `reorderLevel`, `hsnOrSacCode`, `image`) VALUES
(292, 24, 7, 'Gold chain', '22k', NULL, '123.00', '454555.00', '12312.00', '13.00', '123.00', '131313.00', '5.00', '2018-06-03 12:51:15', 'gold chian ', NULL, 1, '123456', '1958-81XoN8DdizL._UL1500_.jpg'),
(293, 25, 8, 'Ring', 'Diamonf', NULL, '0.00', '123.00', '12.00', '0.00', '123.00', '1233213.00', '12.00', '2018-06-03 13:31:27', '', NULL, 0, 'asd', '869-53021_main.jpg');

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
  `hsnOrSacCode` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `grossWeight` decimal(18,2) NOT NULL,
  `stoneWeight` decimal(18,2) NOT NULL,
  `stoneRate` decimal(18,2) NOT NULL,
  `nettWeight` decimal(18,2) NOT NULL,
  `wastage` decimal(18,2) NOT NULL,
  `makingCharge` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(7, 'Gram', 'Gram '),
(8, 'diamond', 'diamond');

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
  `entryDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `companyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`userId`, `roleId`, `userName`, `email`, `password`, `userType`, `secondPassword`, `entryDate`, `companyId`) VALUES
(1, NULL, 'admin', '', 'admin', NULL, 'admin', '2018-01-11 16:16:03', 1),
(2, NULL, 'gyuyugfjgfjhg', 'cgfdgfdhgfchg', 'jfydyryfu', 'User', NULL, '2018-05-28 15:21:23', 0);

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
  MODIFY `contactId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `ledgerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mainmodule_tbl`
--
ALTER TABLE `mainmodule_tbl`
  MODIFY `moduleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paymentvoucher_tbl`
--
ALTER TABLE `paymentvoucher_tbl`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `productGroupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `purchaseldetails_tbl`
--
ALTER TABLE `purchaseldetails_tbl`
  MODIFY `purchaseDetailsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchasemaster_tbl`
--
ALTER TABLE `purchasemaster_tbl`
  MODIFY `purchaseMasterId` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `receiptID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_tbl`
--
ALTER TABLE `role_tbl`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salesdetails_tbl`
--
ALTER TABLE `salesdetails_tbl`
  MODIFY `salesDetailsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salesmaster_tbl`
--
ALTER TABLE `salesmaster_tbl`
  MODIFY `salesMasterId` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `transId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unitconversion_tbl`
--
ALTER TABLE `unitconversion_tbl`
  MODIFY `unitConversionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit_tbl`
--
ALTER TABLE `unit_tbl`
  MODIFY `unitId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
