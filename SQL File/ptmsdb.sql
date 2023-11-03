-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2019 at 05:43 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ptmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898989, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-12-30 21:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblticforeigner`
--

CREATE TABLE `tblticforeigner` (
  `ID` int(10) NOT NULL,
  `TicketID` varchar(200) DEFAULT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblticforeigner`
--

INSERT INTO `tblticforeigner` (`ID`, `TicketID`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
(1, '103618900', 2, 1, '1000', '800', '2019-12-30 12:05:44'),
(2, '886489653', 8, 0, '1000', '800', '2019-12-30 12:06:05'),
(3, '671028076', 5, 2, '1000', '800', '2019-12-30 12:06:26'),
(4, '776418013', 5, 2, '1000', '800', '2019-12-30 12:09:33'),
(5, '542608571', 7, 7, '1000', '800', '2019-12-31 06:20:55'),
(6, '535130983', 4, 2, '1000', '800', '2019-12-31 06:21:06'),
(7, '554656170', 2, 1, '1100', '800', '2019-12-31 16:05:56'),
(8, '158113815', 5, 4, '1100', '800', '2019-12-31 16:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblticindian`
--

CREATE TABLE `tblticindian` (
  `ID` int(10) NOT NULL,
  `TicketID` varchar(100) NOT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblticindian`
--

INSERT INTO `tblticindian` (`ID`, `TicketID`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
(1, '340973208', 5, 3, '200', '100', '2019-12-30 08:04:11'),
(2, '340973207', 8, 6, '200', '100', '2019-12-31 11:08:33'),
(3, '340973206', 4, 4, '200', '100', '2019-12-31 11:15:05'),
(4, '222133961', 6, 2, '200', '100', '2019-12-31 11:21:21'),
(5, '325226844', 2, 1, '', '', '2019-12-31 16:02:58'),
(6, '646984509', 4, 2, '250', '100', '2019-12-31 16:05:29'),
(7, '940539604', 4, 2, '200', '80', '2019-12-31 16:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbltickettype`
--

CREATE TABLE `tbltickettype` (
  `ID` int(10) NOT NULL,
  `TicketType` varchar(200) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltickettype`
--

INSERT INTO `tbltickettype` (`ID`, `TicketType`, `Price`, `CreationDate`) VALUES
(1, 'Normal Adult', '200', '2019-12-30 06:31:56'),
(2, 'Normal Child', '80', '2019-12-30 06:32:27'),
(3, 'Foreigner Adult', '1100', '2019-12-30 06:33:16'),
(4, 'Foreigner Child', '800', '2019-12-30 06:33:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblticforeigner`
--
ALTER TABLE `tblticforeigner`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TicketID` (`TicketID`),
  ADD KEY `TicketID_2` (`TicketID`);

--
-- Indexes for table `tblticindian`
--
ALTER TABLE `tblticindian`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TicketID` (`TicketID`);

--
-- Indexes for table `tbltickettype`
--
ALTER TABLE `tbltickettype`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TicketType` (`TicketType`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblticforeigner`
--
ALTER TABLE `tblticforeigner`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblticindian`
--
ALTER TABLE `tblticindian`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbltickettype`
--
ALTER TABLE `tbltickettype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
