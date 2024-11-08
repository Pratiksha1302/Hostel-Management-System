-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 09:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'pratikshagore08@gmail.com', '1234', '2016-04-04 20:31:45', '2024-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2016-04-11 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2016-04-11 19:32:46'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2016-04-11 19:33:23'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2016-04-11 19:34:18'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2016-04-11 19:34:40'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2016-04-11 19:34:59'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2016-04-11 19:35:19'),
(10, 'BSC12', 'BSC', 'BSC', '2024-05-23 15:05:44'),
(11, '07', 'MsB', 'BSC', '2024-05-23 19:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `otp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `email`, `otp`) VALUES
(2, 'shubhamgore2197@gmail.com', '59692'),
(3, 'pratikshagore08@gmail.com', '71254');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(8, 112, 3, 4000, 0, '2016-06-27', 5, 'Bachelor  of Science', 102355, 'rahul', 'kumar', 'Singh', 'male', 6786786786, 'rahul@gmail.com', 789632587, 'demo', 'demo', 1234567890, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, '2016-06-26 16:31:08', ''),
(10, 201, 2, 6000, 1, '2024-04-21', 5, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'Sharda', 'Mother', 9834124836, 'nigdi', 'mumbai', 'Madhya Pradesh', 411066, 'nigdi', 'mumbai', 'Madhya Pradesh', 411066, '2024-04-23 16:15:52', NULL),
(11, 132, 5, 2000, 1, '2024-04-23', 10, 'Master of Computer Application', 122, 'Shubham', 'Angad', 'Gore', 'male', 983493004, 'pratikshagore09@gmail.com', 33, '33', 'Bestfriend', 67364626717, 'ee', 'Kothrud', 'Lakshadweep (UT)', 411044, 'ee', 'Kothrud', 'Lakshadweep (UT)', 411044, '2024-04-23 17:16:00', NULL),
(12, 132, 5, 2000, 1, '2024-04-23', 10, 'Master of Computer Application', 122, 'Shubham', 'Angad', 'Gore', 'male', 983493004, 'pratikshagore09@gmail.com', 33, '33', 'Bestfriend', 67364626717, 'ee', 'Kothrud', 'Lakshadweep (UT)', 411044, 'ee', 'Kothrud', 'Lakshadweep (UT)', 411044, '2024-04-23 17:16:00', NULL),
(13, 112, 3, 4000, 0, '2024-04-24', 0, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Bestfriend', 9604683992, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, '2024-04-23 18:37:17', NULL),
(14, 112, 3, 4000, 0, '2024-04-24', 0, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Bestfriend', 9604683992, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, '2024-04-23 18:37:17', NULL),
(15, 112, 3, 4000, 0, '2024-04-24', 0, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Bestfriend', 9604683992, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, '2024-04-23 18:40:57', NULL),
(16, 112, 3, 4000, 0, '2024-04-24', 0, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Bestfriend', 9604683992, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, '2024-04-23 18:40:57', NULL),
(17, 200, 2, 6000, 0, '2024-04-24', 5, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9604683992, 'vidhya', 'Bestfriend', 9604683992, 'bde', 'pune', 'Himachal Pradesh', 411066, 'bde', 'pune', 'Himachal Pradesh', 411066, '2024-04-23 18:41:55', NULL),
(18, 200, 2, 6000, 0, '2024-04-24', 5, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9604683992, 'vidhya', 'Bestfriend', 9604683992, 'bde', 'pune', 'Himachal Pradesh', 411066, 'bde', 'pune', 'Himachal Pradesh', 411066, '2024-04-23 18:41:55', NULL),
(19, 201, 2, 6000, 0, '2024-04-24', 5, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'vidhya', 'Mother', 67364626717, 's', 'Bhosari', 'Haryana', 33, 's', 'Bhosari', 'Haryana', 33, '2024-04-23 18:46:23', NULL),
(20, 201, 2, 6000, 0, '2024-04-24', 5, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'vidhya', 'Mother', 67364626717, 's', 'Bhosari', 'Haryana', 33, 's', 'Bhosari', 'Haryana', 33, '2024-04-23 18:46:23', NULL),
(21, 201, 2, 6000, 0, '2024-04-24', 5, 'Master of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9604683992, 'Sharda', 'Bestfriend', 9834124836, 'z', 'Pune', 'Jammu and Kashmir', 0, 'z', 'Pune', 'Jammu and Kashmir', 0, '2024-04-23 18:47:58', NULL),
(22, 201, 2, 6000, 0, '2024-04-24', 5, 'Master of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9604683992, 'Sharda', 'Bestfriend', 9834124836, 'z', 'Pune', 'Jammu and Kashmir', 0, 'z', 'Pune', 'Jammu and Kashmir', 0, '2024-04-23 18:47:58', NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:03:40', NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:03:40', NULL),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:04:33', NULL),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:04:33', NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:04:38', NULL),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:04:38', NULL),
(29, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-04-23 19:14:35', NULL),
(30, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-04-23 19:14:35', NULL),
(31, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-04-23 19:21:07', NULL),
(32, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-04-23 19:21:07', NULL),
(33, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-04-23 19:22:27', NULL),
(34, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-04-23 19:22:27', NULL),
(35, 112, 3, 4000, 0, '2024-04-24', 8, 'Bachelor Of commerce ', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 33, 'un', 'Mother', 9834124836, 'd', 'Pune', 'Jharkhand', 0, 'd', 'Pune', 'Jharkhand', 0, '2024-04-23 19:23:22', NULL),
(36, 112, 3, 4000, 0, '2024-04-24', 8, 'Bachelor Of commerce ', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 33, 'un', 'Mother', 9834124836, 'd', 'Pune', 'Jharkhand', 0, 'd', 'Pune', 'Jharkhand', 0, '2024-04-23 19:23:22', NULL),
(37, 112, 3, 4000, 0, '2024-04-24', 8, 'Bachelor Of commerce ', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 33, 'un', 'Mother', 9834124836, 'd', 'Pune', 'Jharkhand', 0, 'd', 'Pune', 'Jharkhand', 0, '2024-04-23 19:30:37', NULL),
(38, 112, 3, 4000, 0, '2024-04-24', 8, 'Bachelor Of commerce ', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 33, 'un', 'Mother', 9834124836, 'd', 'Pune', 'Jharkhand', 0, 'd', 'Pune', 'Jharkhand', 0, '2024-04-23 19:30:37', NULL),
(39, 100, 5, 8000, 0, '2024-04-24', 6, 'Bachelor  of Technology', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'Sharda', 'Bestfriend', 9604683992, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, '2024-04-23 19:31:50', NULL),
(40, 100, 5, 8000, 0, '2024-04-24', 6, 'Bachelor  of Technology', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'Sharda', 'Bestfriend', 9604683992, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, '2024-04-23 19:31:50', NULL),
(41, 100, 5, 8000, 0, '2024-04-24', 6, 'Bachelor  of Technology', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'Sharda', 'Bestfriend', 9604683992, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, '2024-04-23 19:37:04', NULL),
(42, 100, 5, 8000, 0, '2024-04-24', 6, 'Bachelor  of Technology', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'Sharda', 'Bestfriend', 9604683992, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, '2024-04-23 19:37:04', NULL),
(43, 112, 3, 4000, 0, '2024-04-24', 4, 'Bachelor Of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, '33', 'Mother', 9834124836, '3', 'Pune', 'Jammu and Kashmir', 411066, '3', 'Pune', 'Jammu and Kashmir', 411066, '2024-04-23 19:37:58', NULL),
(44, 112, 3, 4000, 0, '2024-04-24', 4, 'Bachelor Of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, '33', 'Mother', 9834124836, '3', 'Pune', 'Jammu and Kashmir', 411066, '3', 'Pune', 'Jammu and Kashmir', 411066, '2024-04-23 19:37:58', NULL),
(45, 112, 3, 4000, 0, '2024-04-24', 4, 'Bachelor Of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, '33', 'Mother', 9834124836, '3', 'Pune', 'Jammu and Kashmir', 411066, '3', 'Pune', 'Jammu and Kashmir', 411066, '2024-04-23 19:39:05', NULL),
(46, 112, 3, 4000, 0, '2024-04-24', 4, 'Bachelor Of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, '33', 'Mother', 9834124836, '3', 'Pune', 'Jammu and Kashmir', 411066, '3', 'Pune', 'Jammu and Kashmir', 411066, '2024-04-23 19:39:05', NULL),
(47, 201, 2, 6000, 1, '2024-04-24', 9, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Mother', 44, 'eee', 'Bhosari', 'Jharkhand', 411066, 'eee', 'Bhosari', 'Jharkhand', 411066, '2024-04-24 18:12:15', NULL),
(48, 201, 2, 6000, 1, '2024-04-24', 9, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Mother', 44, 'eee', 'Bhosari', 'Jharkhand', 411066, 'eee', 'Bhosari', 'Jharkhand', 411066, '2024-04-24 18:12:15', NULL),
(49, 201, 2, 6000, 1, '2024-04-24', 9, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Mother', 44, 'eee', 'Bhosari', 'Jharkhand', 411066, 'eee', 'Bhosari', 'Jharkhand', 411066, '2024-04-24 18:13:56', NULL),
(50, 201, 2, 6000, 1, '2024-04-24', 9, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Mother', 44, 'eee', 'Bhosari', 'Jharkhand', 411066, 'eee', 'Bhosari', 'Jharkhand', 411066, '2024-04-24 18:13:56', NULL),
(51, 112, 3, 4000, 1, '2024-04-12', 6, 'Bachelor Of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Mother', 67364626717, 'c', 'Kothrud', 'Gujarat', 411044, 'c', 'Kothrud', 'Gujarat', 411044, '2024-04-25 14:02:17', NULL),
(52, 112, 3, 4000, 1, '2024-04-12', 6, 'Bachelor Of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Mother', 67364626717, 'c', 'Kothrud', 'Gujarat', 411044, 'c', 'Kothrud', 'Gujarat', 411044, '2024-04-25 14:02:17', NULL),
(53, 201, 2, 6000, 0, '2024-05-22', 5, 'Master of Computer Application', 111, 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', 9834124836, '33', 'Mother', 9604683992, 'e', 'Kothrud', 'Karnataka', 411066, 'e', 'Kothrud', 'Karnataka', 411066, '2024-05-22 14:13:22', NULL),
(54, 201, 2, 6000, 0, '2024-05-22', 5, 'Master of Computer Application', 111, 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', 9834124836, '33', 'Mother', 9604683992, 'e', 'Kothrud', 'Karnataka', 411066, 'e', 'Kothrud', 'Karnataka', 411066, '2024-05-22 14:15:10', NULL),
(55, 201, 2, 6000, 0, '2024-05-22', 5, 'Master of Computer Application', 111, 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', 9834124836, '33', 'Mother', 9604683992, 'e', 'Kothrud', 'Karnataka', 411066, 'e', 'Kothrud', 'Karnataka', 411066, '2024-05-22 14:15:56', NULL),
(56, 201, 2, 6000, 0, '2024-05-22', 5, 'Master of Computer Application', 111, 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', 9834124836, '33', 'Mother', 9604683992, 'e', 'Kothrud', 'Karnataka', 411066, 'e', 'Kothrud', 'Karnataka', 411066, '2024-05-22 14:16:26', NULL),
(57, 201, 2, 6000, 0, '2024-05-22', 5, 'Master of Computer Application', 111, 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', 9834124836, '33', 'Mother', 9604683992, 'e', 'Kothrud', 'Karnataka', 411066, 'e', 'Kothrud', 'Karnataka', 411066, '2024-05-22 14:16:44', NULL),
(58, 201, 2, 6000, 0, '2024-05-22', 5, 'Master of Computer Application', 111, 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', 9834124836, '33', 'Mother', 9604683992, 'e', 'Kothrud', 'Karnataka', 411066, 'e', 'Kothrud', 'Karnataka', 411066, '2024-05-22 14:18:53', NULL),
(59, 200, 2, 6000, 1, '0000-00-00', 0, 'Bachelor  of Science', 111, 'Shubham', 'Ramakant', 'q', 'female', 9340221859, 'shubhamgore2190@gmail.com', 9387474372, 'vidhya', 'Mother', 44, 's', 'chikhali', 'Himachal Pradesh', 411044, 's', 'chikhali', 'Himachal Pradesh', 411044, '2024-05-22 21:03:22', NULL),
(60, 100, 5, 8000, 1, '2024-05-23', 0, 'Bachelor  of Science', 111, 'Shubham', 'Ramakant', 'q', 'female', 9340221859, 'shubhamgore2190@gmail.com', 9387474372, 'Sharda', 'Bestfriend', 67364626717, 'pune', 'chikhali', 'Himachal Pradesh', 33, 'pune', 'chikhali', 'Himachal Pradesh', 33, '2024-05-22 21:04:34', NULL),
(61, 331, 5, 6700, 0, '2024-05-23', 8, 'Master of Business Administration', 2, '3', '33', 'Bhosale', 'others', 9340221859, 'shubhamgore2197@gmail.com', 9604683992, 'Sharda', 'Mother', 44, 'j', 'Pune', 'Maharashtra', 0, 'j', 'Pune', 'Maharashtra', 0, '2024-05-22 21:42:27', NULL),
(62, 200, 2, 6000, 1, '2024-05-23', 7, 'Master of Business Administration', 2, 'Pratiksha', 'Akash', 'Shendge', 'female', 9834124836, 'pratikshagorea90@gmail.com', 9387474372, '33', 'Bestfriend', 9604683992, 'pu', 'chikhali', 'Goa', 411066, 'ok', 'chikhali', 'Haryana', 411066, '2024-05-23 10:38:08', NULL),
(63, 200, 2, 6000, 1, '2024-05-23', 7, 'Master of Business Administration', 2, 'Pratiksha', 'Akash', 'Shendge', 'female', 9834124836, 'pratikshagorea90@gmail.com', 9387474372, '33', 'Bestfriend', 9604683992, 'pu', 'chikhali', 'Goa', 411066, 'ok', 'chikhali', 'Haryana', 411066, '2024-05-23 10:38:08', NULL),
(64, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-05-23 10:44:28', NULL),
(65, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-05-23 10:44:28', NULL),
(68, 678, 2, 800, 1, '2024-05-23', 6, 'Bachelor  of Science', 3, 'Pratiksha', 'Angad', '3', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Bestfriend', 9834124836, 'h', 'chikhali', 'Gujarat', 411066, 'h', 'chikhali', 'Gujarat', 411066, '2024-05-23 15:08:55', NULL),
(69, 555, 3, 500, 1, '2024-05-23', 7, 'Master of Business Administration', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493003, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Mother', 9604683992, 'nn', 'Pune', 'Goa', 411066, 'nn', 'Pune', 'Goa', 411066, '2024-05-23 15:22:19', NULL),
(70, 100, 5, 8000, 1, '2024-05-24', 0, 'Bachelor Of commerce ', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 0, 'w', 'e', 0, 'e', 'e', 'Jharkhand', 0, 'e', 'e', 'Jharkhand', 0, '2024-05-23 19:07:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 5, 100, 8000, '2016-04-11 22:45:43'),
(2, 2, 201, 6000, '2016-04-12 01:30:47'),
(3, 2, 200, 6000, '2016-04-12 01:30:58'),
(4, 3, 112, 4000, '2016-04-12 01:31:07'),
(5, 5, 132, 2000, '2016-04-12 01:31:15'),
(6, 5, 331, 6700, '2024-05-22 21:36:38'),
(7, 3, 455, 500, '2024-05-22 21:39:08'),
(8, 2, 302, 800, '2024-05-22 21:49:37'),
(9, 3, 555, 500, '2024-05-23 15:02:05'),
(10, 2, 678, 800, '2024-05-23 15:04:50'),
(11, 1, 444, 800, '2024-05-23 19:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `tb_upload`
--

CREATE TABLE `tb_upload` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_upload`
--

INSERT INTO `tb_upload` (`id`, `name`, `image`) VALUES
(6, 'prati', '664f93b229b3d.jpeg'),
(7, 'harsha', '664deb7603990.jpeg'),
(8, 'pratiksa', '664dff30b4e8b.png'),
(9, 'Anandi', '664e03819fdea.jpeg'),
(10, 'akshada', '664e082f2f474.jpeg'),
(11, 'pratiksha2', '664e0a1d20f98.jpeg'),
(12, 'prat', '664e0aa024810.jpeg'),
(13, 'pratik', '664e0caf7d0c0.jpg'),
(14, 'pratik', '664e0cdda0aca.jpg'),
(15, 'rita', '664e0cecbf0ab.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2016-06-22 06:16:42'),
(2, 10, 'test@gmail.com', '', '', '', '2016-06-24 11:20:28'),
(4, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-24 11:22:47'),
(5, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-26 15:37:40'),
(6, 20, 'ajay@gmail.com', 0x3a3a31, '', '', '2016-06-26 16:40:57'),
(7, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 05:02:51'),
(8, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 05:49:42'),
(9, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 07:17:32'),
(10, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 08:08:59'),
(11, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-04-23 16:07:24'),
(12, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-04-23 16:14:37'),
(13, 23, 'pratikshagore09@gmail.com', 0x3a3a31, '', '', '2024-04-23 16:29:40'),
(14, 23, 'pratikshagore09@gmail.com', 0x3a3a31, '', '', '2024-04-23 16:30:52'),
(15, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-04-23 18:35:12'),
(16, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-04-24 18:11:08'),
(17, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-04-25 10:46:54'),
(18, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-04-25 13:46:36'),
(19, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-04-25 18:05:27'),
(20, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-18 11:20:08'),
(21, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-20 17:05:51'),
(22, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-20 17:11:09'),
(23, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-20 18:30:29'),
(24, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-21 13:04:44'),
(25, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-21 15:35:34'),
(26, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-21 17:20:51'),
(27, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-21 18:32:13'),
(28, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-21 18:35:00'),
(29, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-22 09:32:52'),
(30, 24, 'shubhamgore2197@gmail.com', 0x3a3a31, '', '', '2024-05-22 10:00:26'),
(31, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-22 10:20:14'),
(32, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-22 10:41:44'),
(33, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-22 10:42:39'),
(34, 25, 'pratikshaangadgore@gmail.com', 0x3a3a31, '', '', '2024-05-22 10:44:08'),
(35, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-22 14:39:49'),
(36, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-22 16:52:37'),
(37, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-22 19:35:13'),
(38, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-22 20:10:26'),
(39, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-22 20:27:05'),
(40, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-22 20:43:38'),
(41, 26, 'shubhamgore2190@gmail.com', 0x3a3a31, '', '', '2024-05-22 21:02:29'),
(42, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 08:52:12'),
(43, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 08:56:23'),
(44, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 09:10:08'),
(45, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 09:24:13'),
(46, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 09:38:19'),
(47, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 09:50:01'),
(48, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 10:09:46'),
(49, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 10:17:36'),
(50, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 10:27:49'),
(51, 30, 'pratikshagorea90@gmail.com', 0x3a3a31, '', '', '2024-05-23 10:35:51'),
(52, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 14:26:01'),
(53, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 15:10:40'),
(54, 22, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 15:25:46'),
(55, 22, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 15:27:09'),
(56, 22, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 15:28:22'),
(57, 22, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 15:28:43'),
(58, 22, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 15:38:48'),
(59, 22, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 15:57:07'),
(60, 22, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 16:08:26'),
(61, 22, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 19:03:37'),
(62, 22, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 19:03:37'),
(63, 22, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 19:08:25'),
(64, 25, 'pratikshaangadgore@gmail.com', 0x3a3a31, '', '', '2024-05-23 19:12:03'),
(65, 25, 'pratikshaangadgore@gmail.com', 0x3a3a31, '', '', '2024-05-23 19:12:06'),
(66, 25, 'pratikshaangadgore@gmail.com', 0x3a3a31, '', '', '2024-05-23 19:12:07'),
(67, 36, 'pranali12@gmail.com', 0x3a3a31, '', '', '2024-05-23 19:20:33'),
(68, 22, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 19:25:45'),
(69, 22, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-23 19:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(10, '108061211', 'Test', 'test', 'kumar', 'male', 1234567890, 'test@gmail.com', 'Test@123', '2016-06-22 04:21:33', '10-06-2019 12:48:13', NULL),
(19, '102355', 'rahul', 'kumar', 'Singh', 'male', 6786786786, 'rahul@gmail.com', '6786786786', '2016-06-26 16:33:36', '', ''),
(20, '586952', 'Ajay', '', 'kumar', 'male', 8596185625, 'ajay@gmail.com', '8596185625', '2016-06-26 16:40:07', '', ''),
(21, '101', 'Pratiksha', 'Angad', 'Gore', 'female', 983493003, 'pratikshagore08@gmail.com', '123', '2024-04-23 16:06:49', '23-05-2024 08:46:02', '23-05-2024 08:47:57'),
(22, '101', 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', '1234', '2024-04-23 16:06:49', '24-05-2024 12:34:29', NULL),
(23, '122', 'Shubham', 'Angad', 'Gore', 'male', 983493004, 'pratikshagore09@gmail.com', '1234', '2024-04-23 16:29:06', NULL, NULL),
(24, '1', 'Shubham', 'Angad', 'Gore', 'male', 983493004, 'shubhamgore2197@gmail.com', '1234', '2024-05-22 10:00:08', NULL, NULL),
(25, '111', 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', '1234', '2024-05-22 10:43:58', NULL, NULL),
(26, '111', 'Shubham', 'Ramakant', 'q', 'female', 9340221859, 'shubhamgore2190@gmail.com', '1234', '2024-05-22 21:02:08', NULL, NULL),
(27, '2', '3', '33', 'Bhosale', 'others', 9340221859, 'shubhamgore2197@gmail.com', '9340221859', '2024-05-22 21:42:27', NULL, NULL),
(28, '12', 'Pratidnya', 'Akash', 'Shendge', 'female', 983493003, 'pratikshagore08@gmail.com', '1234', '2024-05-23 10:27:37', NULL, NULL),
(29, '12', 'Pratidnya', 'Akash', 'Shendge', 'female', 983493003, 'pratikshagore08@gmail.com', '1234', '2024-05-23 10:27:37', NULL, NULL),
(30, '2', 'Pratiksha', 'Akash', 'Shendge', 'female', 9834124836, 'pratikshagorea90@gmail.com', '1234', '2024-05-23 10:35:41', NULL, NULL),
(31, '2', 'Pratiksha', 'Akash', 'Shendge', 'female', 9834124836, 'pratikshagorea90@gmail.com', '1234', '2024-05-23 10:35:41', NULL, NULL),
(32, '3', 'Pratiksha', '3', '33', 'others', 0, 'shubhamgore2197@gmail.com', 'rrre', '2024-05-23 14:49:27', NULL, NULL),
(33, '3', 'Pratiksha', 'Angad', '3', 'female', 983493004, 'pratikshagore08@gmail.com', '983493004', '2024-05-23 15:08:55', NULL, NULL),
(34, '1', 'Priyanka', 'Nitin', 'Mane', 'female', 7834920379, 'pratikshaangadgore@gmail.com', '1234', '2024-05-23 19:11:12', NULL, NULL),
(35, '1', 'Priyanka', 'Nitin', 'Mane', 'female', 7834920379, 'pratikshaangadgore@gmail.com', '1234', '2024-05-23 19:11:12', NULL, NULL),
(36, '4', 'Pranali', 'Ramesh ', 'Nitnavare', 'female', 9090903402, 'pranali12@gmail.com', '1234', '2024-05-23 19:20:20', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_upload`
--
ALTER TABLE `tb_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_upload`
--
ALTER TABLE `tb_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
