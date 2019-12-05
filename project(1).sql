-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2017 at 03:56 PM
-- Server version: 5.7.20-0ubuntu0.17.04.1
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `FCHECK` (IN `FIDD` INT(5))  BEGIN
SELECT * FROM FACULTY,TIMING  WHERE FACULTY.FID_NO = FIDD and TIMING.ID= FIDD ; 

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `FACULTY`
--

CREATE TABLE `FACULTY` (
  `FID_NO` int(5) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DEPARTMENT` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FACULTY`
--

INSERT INTO `FACULTY` (`FID_NO`, `NAME`, `DEPARTMENT`) VALUES
(12093, 'NAVNEETHA', 'C.S.E'),
(12098, 'SWETHA KV', 'C.S.E'),
(12345, 'SHERLY NOEL', 'C.S.E.'),
(12478, 'SAVITHA S', 'C.S.E'),
(12875, 'KASHIF AHMED', 'EEE'),
(12905, 'HARISH P', 'MECH'),
(12914, 'PREETHI V', 'ECE'),
(12925, 'SMRITHY REKHA', 'MECH'),
(12974, 'PREETHI', 'C.S.E'),
(12975, 'KARTHIK NM', 'CVL');

-- --------------------------------------------------------

--
-- Table structure for table `LOG`
--

CREATE TABLE `LOG` (
  `ID` int(10) DEFAULT NULL,
  `IN_TIME` datetime DEFAULT NULL,
  `OUT_TIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LOG`
--

INSERT INTO `LOG` (`ID`, `IN_TIME`, `OUT_TIME`) VALUES
(15413, '2017-11-16 15:48:02', '2017-11-16 15:48:12'),
(12323, '2017-11-16 14:51:39', '2017-11-16 15:57:04'),
(15413, '2017-11-22 15:03:22', '2017-11-22 15:03:47'),
(1234, '2017-11-22 15:30:56', '2017-11-22 15:31:45'),
(12342, '2017-11-22 16:16:21', '2017-11-22 16:16:53'),
(14004, '2017-11-22 15:34:39', '2017-11-24 13:12:50'),
(14397, '2017-11-24 13:13:02', '2017-11-24 13:13:24'),
(54454, '2017-11-24 13:14:05', '2017-11-24 13:14:50'),
(12093, '2017-11-22 15:34:56', '2017-11-24 13:16:37'),
(12345, '2017-11-25 23:27:16', '2017-11-25 23:27:35'),
(12345, '2017-11-25 23:32:33', '2017-11-25 23:32:39'),
(12345, '2017-11-25 23:33:09', '2017-11-25 23:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `NON_TEACHING_STAFF`
--

CREATE TABLE `NON_TEACHING_STAFF` (
  `NID_NO` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PHONE` int(10) DEFAULT NULL,
  `DESIGNATION` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `NON_TEACHING_STAFF`
--

INSERT INTO `NON_TEACHING_STAFF` (`NID_NO`, `NAME`, `PHONE`, `DESIGNATION`) VALUES
(21478, 'avinash', 847845698, 'canteen staff'),
(25457, 'madhav', 856971478, 'canteen staff'),
(25987, 'KAMLESH', 856974524, 'canteen manager'),
(27125, 'sweta', 842323455, 'plumber'),
(29865, 'madhu', 842343857, 'electrician'),
(29876, 'suyash', 842345698, 'cleaning staff');

-- --------------------------------------------------------

--
-- Table structure for table `OFFICE`
--

CREATE TABLE `OFFICE` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(40) DEFAULT NULL,
  `DESIGNATION` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OFFICE`
--

INSERT INTO `OFFICE` (`ID`, `NAME`, `DESIGNATION`, `PASSWORD`) VALUES
(33333, 'Y. Swathi', 'HOD-CSE', 'cmrit123');

-- --------------------------------------------------------

--
-- Table structure for table `SECURITY`
--

CREATE TABLE `SECURITY` (
  `SID_NO` int(5) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PHONE` int(11) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SECURITY`
--

INSERT INTO `SECURITY` (`SID_NO`, `NAME`, `PHONE`, `PASSWORD`) VALUES
(12341, 'S. Vishwanath', 987654323, 'cmrit123'),
(12344, 'R. Chandra', 234567, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT`
--

CREATE TABLE `STUDENT` (
  `STID_NO` int(5) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `USN` varchar(12) DEFAULT NULL,
  `DEPARTMENT` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STUDENT`
--

INSERT INTO `STUDENT` (`STID_NO`, `NAME`, `USN`, `DEPARTMENT`) VALUES
(14004, 'DHEERAJ', '1CR15ME048', 'MECH'),
(14034, 'AMIT', '1CR15CV099', 'CIVIL'),
(14334, 'GOURAV SHARMA', '1CR15IS030', 'ISE'),
(14337, 'ANAMIKA', '1CR15TE101', 'TCE'),
(14397, 'DISHA TIWARI', '1CR15TE030', 'TCE'),
(14432, 'KUSHAGRA', '1CR15EC087', 'ECE'),
(14434, 'SHRUTI SAXENA', '1CR15IS099', 'ISE'),
(14823, 'SUBHASHIS GUPTA', '1CR15CS157', 'COMPUTER SCIENCE'),
(14956, 'AVINASH', '1CR15CS187', 'COMPUTER SCIENCE'),
(15413, 'SUMAN KUMAR', '1CR15CS193', 'COMPUTER SCIENCE');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(11) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `o_t` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `in_time`, `o_t`) VALUES
(15413, '2017-11-11 23:46:26', NULL),
(15413, '2017-11-11 23:46:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `TIMING`
--

CREATE TABLE `TIMING` (
  `ID` int(11) DEFAULT NULL,
  `IN_TIME` datetime DEFAULT NULL,
  `OUT_TIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TIMING`
--

INSERT INTO `TIMING` (`ID`, `IN_TIME`, `OUT_TIME`) VALUES
(18896, '2017-11-16 14:29:27', NULL),
(14283, '2017-11-16 14:40:39', NULL),
(3456, '2017-11-16 14:51:05', NULL),
(21478, '2017-11-22 15:35:30', NULL),
(45678, '2017-11-22 15:36:05', NULL),
(5679, '2017-11-22 15:37:45', NULL),
(15413, '2017-11-24 13:16:19', NULL),
(12974, '2017-11-24 13:16:46', NULL),
(29865, '2017-11-24 13:17:12', NULL);

--
-- Triggers `TIMING`
--
DELIMITER $$
CREATE TRIGGER `OUT_TIME` BEFORE UPDATE ON `TIMING` FOR EACH ROW BEGIN            
     IF NEW.ID=NEW.ID THEN
     SET NEW.OUT_TIME = SYSDATE();
     END IF;
     END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `VISITOR`
--

CREATE TABLE `VISITOR` (
  `NAME` varchar(40) DEFAULT NULL,
  `ID_NO` int(11) NOT NULL,
  `PHONE_NO` int(11) DEFAULT NULL,
  `ADDRESS` text,
  `PURPOSE` varchar(30) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VISITOR`
--

INSERT INTO `VISITOR` (`NAME`, `ID_NO`, `PHONE_NO`, `ADDRESS`, `PURPOSE`, `ID`) VALUES
('subh', 1234, 23456789, 'BANGHALORE', 'LELOOO', 12344),
('suman', 3456, 4567867, 'BANGALORE', 'FHGHG', 12344),
('SURAJ', 5679, 4565768, 'dfjkj,bb', 'gkjfd', 12344),
('anup', 9876, 98765432, 'SLV PG,KUNDALHALLI,BANGALORE', 'DELIVERY', 12341),
('AAAHH', 12323, 111, 'LKJLKJ', 'KJJK', 12344),
('swetha ', 12342, 45678976, 'bangalore', 'just', 12344),
('manish', 12345, 933040401, 'kundalhalli,BANGALORE', 'DELIVERY', 12341),
('venu srivastav', 18896, 809224131, 'kundalhalli,BANGALORE', 'DELIVERY', 12344),
('JAIDEEP', 45678, 5678909, 'BANGALORE-37', 'HOSTEL', 12344),
('GYGDYFG', 54454, 45676, 'HHFH', 'fhgjnh', 12344),
('aditya', 56897, 987654569, 'kundalhalli,BANGALORE', 'DELIVERY', 12341),
('Yash', 95913, 959136, 'banaglore', 'enq', 12344),
('suman', 876543, 987655422, 'BANGALORE', 'DELIVERY', 12341);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `FACULTY`
--
ALTER TABLE `FACULTY`
  ADD PRIMARY KEY (`FID_NO`);

--
-- Indexes for table `NON_TEACHING_STAFF`
--
ALTER TABLE `NON_TEACHING_STAFF`
  ADD PRIMARY KEY (`NID_NO`);

--
-- Indexes for table `OFFICE`
--
ALTER TABLE `OFFICE`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SECURITY`
--
ALTER TABLE `SECURITY`
  ADD PRIMARY KEY (`SID_NO`);

--
-- Indexes for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD PRIMARY KEY (`STID_NO`);

--
-- Indexes for table `VISITOR`
--
ALTER TABLE `VISITOR`
  ADD PRIMARY KEY (`ID_NO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
