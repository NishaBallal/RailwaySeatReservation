-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2022 at 11:08 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railres`
--

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `uname` varchar(15) NOT NULL,
  `Tnumber` int(11) NOT NULL,
  `class` varchar(2) NOT NULL,
  `doj` date NOT NULL,
  `DOB` date NOT NULL,
  `fromstn` varchar(15) NOT NULL,
  `tostn` varchar(15) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Age` int(11) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `Number` int(6) DEFAULT NULL,
  `st1` varchar(10) DEFAULT NULL,
  `st1arri` varchar(10) DEFAULT NULL,
  `st2` varchar(10) DEFAULT NULL,
  `st2arri` varchar(10) DEFAULT NULL,
  `st3` varchar(10) DEFAULT NULL,
  `st3arri` varchar(10) DEFAULT NULL,
  `st4` varchar(10) DEFAULT NULL,
  `st4arri` varchar(10) DEFAULT NULL,
  `st5` varchar(10) DEFAULT NULL,
  `st5arri` varchar(10) DEFAULT NULL,
  `Ori` varchar(20) NOT NULL,
  `Oriarri` varchar(10) NOT NULL,
  `Dest` varchar(20) NOT NULL,
  `Desarri` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Mon` varchar(2) NOT NULL,
  `Tue` varchar(2) NOT NULL,
  `Wed` varchar(2) NOT NULL,
  `Thu` varchar(2) NOT NULL,
  `Fri` varchar(2) NOT NULL,
  `Sat` varchar(2) NOT NULL,
  `Sun` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`Number`, `st1`, `st1arri`, `st2`, `st2arri`, `st3`, `st3arri`, `st4`, `st4arri`, `st5`, `st5arri`, `Ori`, `Oriarri`, `Dest`, `Desarri`, `Name`, `Mon`, `Tue`, `Wed`, `Thu`, `Fri`, `Sat`, `Sun`) VALUES
(12009, 'VAPI', '00:15', 'VALSAD', '01:45', 'SURAT', '02:30', 'BARODA', '04:00', 'ANAND', '05:05', 'BCT', '22:15', 'ADI', '06:25', 'SHATABDI EXP', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'X'),
(12931, 'VAPI', '07:15', 'VALSAD', '08:45', 'SURAT', '09:30', 'BARODA', '11:30', 'ANAND', '12:45', 'BCT', '06:00', 'ADI', '14:20', 'ADI DOUBLE DECK', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(12932, 'VAPI', '19:15', 'VALSAD', '18:45', 'SURAT', '07:30', 'BARODA', '15:30', 'ANAND', '14:05', 'ADI', '13:00', 'BCT', '22:10', 'BCT DOUBLEDECKE', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(19011, 'VAPI', '06:26', 'VALSAD', '01:50', 'SURAT', '23:45', 'BARODA', '20:20', 'ANAND', '18:10', 'ADI', '16:25', 'BCT', '10:25', 'GUJARAT EXPRESS', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(22210, 'VAPI', '00:10', 'VALSAD', '23:50', 'SURAT', '22:25', 'BARODA', '20:05', 'ANAND', '18:20', 'NDLS', '16:15', 'BCT', '01:35', 'BCT DURONTO', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `train_status`
--

CREATE TABLE `train_status` (
  `Train_No` int(11) NOT NULL,
  `Train_Name` varchar(20) NOT NULL,
  `doj` date NOT NULL,
  `1A` int(11) NOT NULL,
  `2A` int(11) NOT NULL,
  `3A` int(11) NOT NULL,
  `AC` int(11) NOT NULL,
  `CC` int(11) NOT NULL,
  `SL` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train_status`
--

INSERT INTO `train_status` (`Train_No`, `Train_Name`, `doj`, `1A`, `2A`, `3A`, `AC`, `CC`, `SL`) VALUES
(12009, 'SHATABDI EXP', '2022-04-10', 5, 5, 5, 5, 5, 5),
(12009, 'SHATABDI EXP', '2022-04-11', 5, 5, 5, 5, 5, 5),
(12009, 'SHATABDI EXP', '2022-04-12', 5, 5, 5, 5, 5, 5),
(12009, 'SHATABDI EXP', '2022-04-13', 5, 5, 5, 5, 5, 5),
(12009, 'SHATABDI EXP', '2022-04-14', 5, 5, 5, 5, 5, 5),
(12009, 'SHATABDI EXP', '2022-04-15', 5, 5, 5, 5, 5, 5),
(12009, 'SHATABDI EXP', '2022-04-16', 5, 5, 5, 5, 5, 5),
(12009, 'SHATABDI EXP', '2022-04-17', 5, 5, 5, 5, 5, 5),
(12009, 'SHATABDI EXP', '2022-04-18', 5, 5, 5, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2022-04-10', 5, 5, 5, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2022-04-11', 5, 5, 5, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2022-04-12', 5, 5, 5, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2022-04-13', 5, 5, 5, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2022-04-14', 5, 5, 5, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2022-04-15', 5, 5, 5, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2022-04-16', 5, 5, 5, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2022-04-17', 5, 5, 5, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2022-04-18', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2022-04-10', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2022-04-11', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2022-04-12', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2022-04-13', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2022-04-14', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2022-04-15', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2022-04-16', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2022-04-17', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2022-04-18', 5, 5, 5, 5, 5, 5),
(12952, 'MUMBAI RAJDHANI', '2022-04-10', 5, 5, 5, 5, 5, 5),
(12952, 'MUMBAI RAJDHANI', '2022-04-11', 5, 5, 5, 5, 5, 5),
(12952, 'MUMBAI RAJDHANI', '2022-04-12', 5, 5, 5, 5, 5, 5),
(12952, 'MUMBAI RAJDHANI', '2022-04-13', 5, 5, 5, 5, 5, 5),
(12952, 'MUMBAI RAJDHANI', '2022-04-14', 5, 5, 5, 5, 5, 5),
(12952, 'MUMBAI RAJDHANI', '2022-04-15', 5, 5, 5, 5, 5, 5),
(12952, 'MUMBAI RAJDHANI', '2022-04-16', 5, 5, 5, 5, 5, 5),
(12952, 'MUMBAI RAJDHANI', '2022-04-17', 5, 5, 5, 5, 5, 5),
(12952, 'MUMBAI RAJDHANI', '2022-04-18', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2022-04-10', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2022-04-11', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2022-04-12', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2022-04-13', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2022-04-14', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2022-04-15', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2022-04-16', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2022-04-17', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2022-04-18', 5, 5, 5, 5, 5, 5),
(22210, 'BCT DURONTO', '2022-04-10', 5, 5, 5, 5, 5, 5),
(22210, 'BCT DURONTO', '2022-04-11', 5, 5, 5, 5, 5, 5),
(22210, 'BCT DURONTO', '2022-04-12', 5, 5, 5, 5, 5, 5),
(22210, 'BCT DURONTO', '2022-04-13', 5, 5, 5, 5, 5, 5),
(22210, 'BCT DURONTO', '2022-04-14', 5, 5, 5, 5, 5, 5),
(22210, 'BCT DURONTO', '2022-04-15', 5, 5, 5, 5, 5, 5),
(22210, 'BCT DURONTO', '2022-04-16', 5, 5, 5, 5, 5, 5),
(22210, 'BCT DURONTO', '2022-04-17', 5, 5, 5, 5, 5, 5),
(22210, 'BCT DURONTO', '2022-04-18', 5, 5, 5, 5, 5, 5),
(22220, 'BCT DURONTO', '2022-04-10', 5, 5, 5, 5, 5, 5),
(22220, 'BCT DURONTO', '2022-04-11', 5, 5, 5, 5, 5, 5),
(22220, 'BCT DURONTO', '2022-04-12', 5, 5, 5, 5, 5, 5),
(22220, 'BCT DURONTO', '2022-04-13', 5, 5, 5, 5, 5, 5),
(22220, 'BCT DURONTO', '2022-04-14', 5, 5, 5, 5, 5, 5),
(22220, 'BCT DURONTO', '2022-04-15', 5, 5, 5, 5, 5, 5),
(22220, 'BCT DURONTO', '2022-04-16', 5, 5, 5, 5, 5, 5),
(22220, 'BCT DURONTO', '2022-04-17', 5, 5, 5, 5, 5, 5),
(22220, 'BCT DURONTO', '2022-04-18', 5, 5, 5, 5, 5, 5),
(22222, 'BCT DURONTO', '2022-04-10', 5, 5, 5, 5, 5, 5),
(22222, 'BCT DURONTO', '2022-04-11', 5, 5, 5, 5, 5, 5),
(22222, 'BCT DURONTO', '2022-04-12', 5, 5, 5, 5, 5, 5),
(22222, 'BCT DURONTO', '2022-04-13', 5, 5, 5, 5, 5, 5),
(22222, 'BCT DURONTO', '2022-04-14', 5, 5, 5, 5, 5, 5),
(22222, 'BCT DURONTO', '2022-04-15', 5, 5, 5, 5, 5, 5),
(22222, 'BCT DURONTO', '2022-04-16', 5, 5, 5, 5, 5, 5),
(22222, 'BCT DURONTO', '2022-04-17', 5, 5, 5, 5, 5, 5),
(22222, 'BCT DURONTO', '2022-04-18', 5, 5, 5, 5, 5, 5),
(25222, 'BCT DURONTO', '2022-04-10', 5, 5, 5, 5, 5, 5),
(25222, 'BCT DURONTO', '2022-04-11', 5, 5, 5, 5, 5, 5),
(25222, 'BCT DURONTO', '2022-04-12', 5, 5, 5, 5, 5, 5),
(25222, 'BCT DURONTO', '2022-04-13', 5, 5, 5, 5, 5, 5),
(25222, 'BCT DURONTO', '2022-04-14', 5, 5, 5, 5, 5, 5),
(25222, 'BCT DURONTO', '2022-04-15', 5, 5, 5, 5, 5, 5),
(25222, 'BCT DURONTO', '2022-04-16', 5, 5, 5, 5, 5, 5),
(25222, 'BCT DURONTO', '2022-04-17', 5, 5, 5, 5, 5, 5),
(25222, 'BCT DURONTO', '2022-04-18', 5, 5, 5, 5, 5, 5),
(29333, 'KARNAVATI EXP', '2022-04-10', 5, 5, 5, 5, 5, 5),
(29333, 'KARNAVATI EXP', '2022-04-11', 5, 5, 5, 5, 5, 5),
(29333, 'KARNAVATI EXP', '2022-04-12', 5, 5, 5, 5, 5, 5),
(29333, 'KARNAVATI EXP', '2022-04-13', 5, 5, 5, 5, 5, 5),
(29333, 'KARNAVATI EXP', '2022-04-14', 5, 5, 5, 5, 5, 5),
(29333, 'KARNAVATI EXP', '2022-04-15', 5, 5, 5, 5, 5, 5),
(29333, 'KARNAVATI EXP', '2022-04-16', 5, 5, 5, 5, 5, 5),
(29333, 'KARNAVATI EXP', '2022-04-17', 5, 5, 5, 5, 5, 5),
(29333, 'KARNAVATI EXP', '2022-04-18', 5, 5, 5, 5, 5, 5),
(59442, 'AHMEDABAD PASS', '2022-04-10', 5, 5, 5, 5, 5, 5),
(59442, 'AHMEDABAD PASS', '2022-04-11', 5, 5, 5, 5, 5, 5),
(59442, 'AHMEDABAD PASS', '2022-04-12', 5, 5, 5, 5, 5, 5),
(59442, 'AHMEDABAD PASS', '2022-04-13', 5, 5, 5, 5, 5, 5),
(59442, 'AHMEDABAD PASS', '2022-04-14', 5, 5, 5, 5, 5, 5),
(59442, 'AHMEDABAD PASS', '2022-04-15', 5, 5, 5, 5, 5, 5),
(59442, 'AHMEDABAD PASS', '2022-04-16', 5, 5, 5, 5, 5, 5),
(59442, 'AHMEDABAD PASS', '2022-04-17', 5, 5, 5, 5, 5, 5),
(59442, 'AHMEDABAD PASS', '2022-04-18', 5, 5, 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `Number` int(6) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Origin` varchar(20) NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `Arrival` varchar(10) NOT NULL,
  `Departure` varchar(10) NOT NULL,
  `Mon` varchar(2) NOT NULL,
  `Tue` varchar(2) NOT NULL,
  `Wed` varchar(2) NOT NULL,
  `Thu` varchar(2) NOT NULL,
  `Fri` varchar(2) NOT NULL,
  `Sat` varchar(2) NOT NULL,
  `Sun` varchar(2) NOT NULL,
  `1A` int(11) NOT NULL,
  `2A` int(11) NOT NULL,
  `3A` int(11) NOT NULL,
  `SL` int(11) NOT NULL,
  `General` int(11) NOT NULL,
  `Ladies` int(11) NOT NULL,
  `Tatkal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`Number`, `Name`, `Origin`, `Destination`, `Arrival`, `Departure`, `Mon`, `Tue`, `Wed`, `Thu`, `Fri`, `Sat`, `Sun`, `1A`, `2A`, `3A`, `SL`, `General`, `Ladies`, `Tatkal`) VALUES
(12009, 'SHATABDI EXP', 'BCT', 'ADI', '22:15', '06:25', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 2500, 1000, 500, 250, 2, 1, 3),
(12931, 'ADI DOUBLE DECK', 'BCT', 'ADI', 'First st', '14:20', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 2500, 1000, 500, 250, 2, 1, 3),
(12932, 'BCT DOUBLEDECKE', 'ADI', 'BCT', '13:00', 'Last st', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 2500, 1000, 500, 250, 2, 1, 3),
(12952, 'MUMBAI RAJDHANI', 'NDLS', 'BCT', '08:25', 'last st', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 2500, 1000, 500, 250, 2, 1, 3),
(19011, 'GUJARAT EXPRESS', 'ADI', 'BCT', '16:25', '10:35', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 2500, 1000, 500, 250, 2, 1, 3),
(22210, 'BCT DURONTO', 'NDLS', 'BCT', '16:15', 'Last st', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 2500, 1000, 500, 250, 2, 1, 3),
(22220, 'BCT DURONTO', 'NDLS', 'BCT', '16:15', 'Last st', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 2500, 1000, 500, 250, 2, 1, 3),
(22222, 'BCT DURONTO', 'NDLS', 'BCT', '16:15', 'Last st', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 2500, 1000, 500, 250, 2, 1, 3),
(25222, 'BCT DURONTO', 'NDLS', 'BCT', '16:15', 'Last st', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 2500, 1000, 500, 250, 2, 1, 3),
(29333, 'KARNAVATI EXP', 'AHMD', 'BCT', '08:05', '21:10', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 2500, 1000, 500, 250, 2, 1, 3),
(59442, 'AHMEDABAD PASS', 'ADI', 'BCT', '04:35', '1:35', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 2500, 1000, 500, 250, 2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `marital` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `ques` varchar(100) NOT NULL,
  `ans` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`Number`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
