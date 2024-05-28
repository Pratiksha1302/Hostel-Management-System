-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 10:09 PM
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
(1, 'admin', 'anuj.lpu1@gmail.com', 'Test@1234', '2016-04-04 20:31:45', '2016-04-17');

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
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2016-04-11 19:35:19');

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
(1, 'vishalphpyt@gmail.com', ''),
(2, 'shubhamgore2197@gmail.com', '59692'),
(3, 'pratikshagore08@gmail.com', '60464');

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
  `updationDate` varchar(500) DEFAULT NULL,
  `profile_image` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`, `profile_image`) VALUES
(6, 100, 5, 8000, 0, '2016-04-22', 5, 'Bachelor  of Technology', 10806121, 'Anuj', '', 'kumar', 'male', 8285703354, 'anuj.lpu1@gmail.com', 0, 'XYZ', 'Mother', 8285703354, 'New Delhi India', 'Aligarh', 'Uttar Pradesh', 202001, 'New Delhi India', 'Delhi', 'Delhi (NCT)', 202001, '2016-04-16 08:24:09', '', NULL),
(7, 100, 5, 8000, 1, '2016-06-17', 4, 'Bachelor of Engineering', 108061211, 'Test', 'test', 'kumar', 'male', 8467067344, 'test@gmail.com', 123456789, 'test', 'test', 1236547890, 'New Delhi India', 'Aligarh', 'Uttar Pradesh', 202001, 'New Delhi India', 'Delhi', 'Delhi (NCT)', 202001, '2016-06-23 11:54:35', '', NULL),
(8, 112, 3, 4000, 0, '2016-06-27', 5, 'Bachelor  of Science', 102355, 'rahul', 'kumar', 'Singh', 'male', 6786786786, 'rahul@gmail.com', 789632587, 'demo', 'demo', 1234567890, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, '2016-06-26 16:31:08', '', NULL),
(9, 132, 5, 2000, 1, '2016-06-28', 6, 'Bachelor of Engineering', 586952, 'Ajay', '', 'kumar', 'male', 8596185625, 'ajay@gmail.com', 8285703354, 'demo', 'demo', 8285703354, 'New Delhi India', 'Aligarh', 'Uttar Pradesh', 202001, 'New Delhi India', 'Delhi', 'Delhi (NCT)', 202001, '2016-06-26 16:40:07', '', NULL),
(10, 201, 2, 6000, 1, '2024-04-21', 5, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'Sharda', 'Mother', 9834124836, 'nigdi', 'mumbai', 'Madhya Pradesh', 411066, 'nigdi', 'mumbai', 'Madhya Pradesh', 411066, '2024-04-23 16:15:52', NULL, NULL),
(11, 132, 5, 2000, 1, '2024-04-23', 10, 'Master of Computer Application', 122, 'Shubham', 'Angad', 'Gore', 'male', 983493004, 'pratikshagore09@gmail.com', 33, '33', 'Bestfriend', 67364626717, 'ee', 'Kothrud', 'Lakshadweep (UT)', 411044, 'ee', 'Kothrud', 'Lakshadweep (UT)', 411044, '2024-04-23 17:16:00', NULL, NULL),
(12, 132, 5, 2000, 1, '2024-04-23', 10, 'Master of Computer Application', 122, 'Shubham', 'Angad', 'Gore', 'male', 983493004, 'pratikshagore09@gmail.com', 33, '33', 'Bestfriend', 67364626717, 'ee', 'Kothrud', 'Lakshadweep (UT)', 411044, 'ee', 'Kothrud', 'Lakshadweep (UT)', 411044, '2024-04-23 17:16:00', NULL, NULL),
(13, 112, 3, 4000, 0, '2024-04-24', 0, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Bestfriend', 9604683992, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, '2024-04-23 18:37:17', NULL, NULL),
(14, 112, 3, 4000, 0, '2024-04-24', 0, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Bestfriend', 9604683992, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, '2024-04-23 18:37:17', NULL, NULL),
(15, 112, 3, 4000, 0, '2024-04-24', 0, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Bestfriend', 9604683992, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, '2024-04-23 18:40:57', NULL, NULL),
(16, 112, 3, 4000, 0, '2024-04-24', 0, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Bestfriend', 9604683992, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, 'bhd', 'chikhali', 'Arunachal Pradesh', 411066, '2024-04-23 18:40:57', NULL, NULL),
(17, 200, 2, 6000, 0, '2024-04-24', 5, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9604683992, 'vidhya', 'Bestfriend', 9604683992, 'bde', 'pune', 'Himachal Pradesh', 411066, 'bde', 'pune', 'Himachal Pradesh', 411066, '2024-04-23 18:41:55', NULL, NULL),
(18, 200, 2, 6000, 0, '2024-04-24', 5, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9604683992, 'vidhya', 'Bestfriend', 9604683992, 'bde', 'pune', 'Himachal Pradesh', 411066, 'bde', 'pune', 'Himachal Pradesh', 411066, '2024-04-23 18:41:55', NULL, NULL),
(19, 201, 2, 6000, 0, '2024-04-24', 5, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'vidhya', 'Mother', 67364626717, 's', 'Bhosari', 'Haryana', 33, 's', 'Bhosari', 'Haryana', 33, '2024-04-23 18:46:23', NULL, NULL),
(20, 201, 2, 6000, 0, '2024-04-24', 5, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'vidhya', 'Mother', 67364626717, 's', 'Bhosari', 'Haryana', 33, 's', 'Bhosari', 'Haryana', 33, '2024-04-23 18:46:23', NULL, NULL),
(21, 201, 2, 6000, 0, '2024-04-24', 5, 'Master of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9604683992, 'Sharda', 'Bestfriend', 9834124836, 'z', 'Pune', 'Jammu and Kashmir', 0, 'z', 'Pune', 'Jammu and Kashmir', 0, '2024-04-23 18:47:58', NULL, NULL),
(22, 201, 2, 6000, 0, '2024-04-24', 5, 'Master of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9604683992, 'Sharda', 'Bestfriend', 9834124836, 'z', 'Pune', 'Jammu and Kashmir', 0, 'z', 'Pune', 'Jammu and Kashmir', 0, '2024-04-23 18:47:58', NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:03:40', NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:03:40', NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:04:33', NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:04:33', NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:04:38', NULL, NULL),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:04:38', NULL, NULL),
(29, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-04-23 19:14:35', NULL, NULL),
(30, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-04-23 19:14:35', NULL, NULL),
(31, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-04-23 19:21:07', NULL, NULL),
(32, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-04-23 19:21:07', NULL, NULL),
(33, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-04-23 19:22:27', NULL, NULL),
(34, 0, 0, 0, 0, '0000-00-00', 0, '', 0, '', '', '', '', 0, '', 0, '', '', 0, '', '', '', 0, '', '', '', 0, '2024-04-23 19:22:27', NULL, NULL),
(35, 112, 3, 4000, 0, '2024-04-24', 8, 'Bachelor Of commerce ', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 33, 'un', 'Mother', 9834124836, 'd', 'Pune', 'Jharkhand', 0, 'd', 'Pune', 'Jharkhand', 0, '2024-04-23 19:23:22', NULL, NULL),
(36, 112, 3, 4000, 0, '2024-04-24', 8, 'Bachelor Of commerce ', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 33, 'un', 'Mother', 9834124836, 'd', 'Pune', 'Jharkhand', 0, 'd', 'Pune', 'Jharkhand', 0, '2024-04-23 19:23:22', NULL, NULL),
(37, 112, 3, 4000, 0, '2024-04-24', 8, 'Bachelor Of commerce ', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 33, 'un', 'Mother', 9834124836, 'd', 'Pune', 'Jharkhand', 0, 'd', 'Pune', 'Jharkhand', 0, '2024-04-23 19:30:37', NULL, NULL),
(38, 112, 3, 4000, 0, '2024-04-24', 8, 'Bachelor Of commerce ', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 33, 'un', 'Mother', 9834124836, 'd', 'Pune', 'Jharkhand', 0, 'd', 'Pune', 'Jharkhand', 0, '2024-04-23 19:30:37', NULL, NULL),
(39, 100, 5, 8000, 0, '2024-04-24', 6, 'Bachelor  of Technology', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'Sharda', 'Bestfriend', 9604683992, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, '2024-04-23 19:31:50', NULL, NULL),
(40, 100, 5, 8000, 0, '2024-04-24', 6, 'Bachelor  of Technology', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'Sharda', 'Bestfriend', 9604683992, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, '2024-04-23 19:31:50', NULL, NULL),
(41, 100, 5, 8000, 0, '2024-04-24', 6, 'Bachelor  of Technology', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'Sharda', 'Bestfriend', 9604683992, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, '2024-04-23 19:37:04', NULL, 'image/WIN_20220524_18_41_54_Pro.jpg'),
(42, 100, 5, 8000, 0, '2024-04-24', 6, 'Bachelor  of Technology', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, 'Sharda', 'Bestfriend', 9604683992, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, 'r', 'Kothrud', 'Chandigarh (UT)', 411044, '2024-04-23 19:37:04', NULL, 'image/WIN_20220524_18_41_54_Pro.jpg'),
(43, 112, 3, 4000, 0, '2024-04-24', 4, 'Bachelor Of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, '33', 'Mother', 9834124836, '3', 'Pune', 'Jammu and Kashmir', 411066, '3', 'Pune', 'Jammu and Kashmir', 411066, '2024-04-23 19:37:58', NULL, 'image/WhatsApp Image 2022-03-22 at 8.14.43 PM (4).jpeg'),
(44, 112, 3, 4000, 0, '2024-04-24', 4, 'Bachelor Of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, '33', 'Mother', 9834124836, '3', 'Pune', 'Jammu and Kashmir', 411066, '3', 'Pune', 'Jammu and Kashmir', 411066, '2024-04-23 19:37:58', NULL, 'image/WhatsApp Image 2022-03-22 at 8.14.43 PM (4).jpeg'),
(45, 112, 3, 4000, 0, '2024-04-24', 4, 'Bachelor Of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, '33', 'Mother', 9834124836, '3', 'Pune', 'Jammu and Kashmir', 411066, '3', 'Pune', 'Jammu and Kashmir', 411066, '2024-04-23 19:39:05', NULL, 'image/WhatsApp Image 2022-03-22 at 8.14.43 PM (4).jpeg'),
(46, 112, 3, 4000, 0, '2024-04-24', 4, 'Bachelor Of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9387474372, '33', 'Mother', 9834124836, '3', 'Pune', 'Jammu and Kashmir', 411066, '3', 'Pune', 'Jammu and Kashmir', 411066, '2024-04-23 19:39:05', NULL, 'image/WhatsApp Image 2022-03-22 at 8.14.43 PM (4).jpeg'),
(47, 201, 2, 6000, 1, '2024-04-24', 9, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Mother', 44, 'eee', 'Bhosari', 'Jharkhand', 411066, 'eee', 'Bhosari', 'Jharkhand', 411066, '2024-04-24 18:12:15', NULL, 'image/Security and Privacy- Chap 8.pdf'),
(48, 201, 2, 6000, 1, '2024-04-24', 9, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Mother', 44, 'eee', 'Bhosari', 'Jharkhand', 411066, 'eee', 'Bhosari', 'Jharkhand', 411066, '2024-04-24 18:12:15', NULL, 'image/Security and Privacy- Chap 8.pdf'),
(49, 201, 2, 6000, 1, '2024-04-24', 9, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Mother', 44, 'eee', 'Bhosari', 'Jharkhand', 411066, 'eee', 'Bhosari', 'Jharkhand', 411066, '2024-04-24 18:13:56', NULL, 'image/Security and Privacy- Chap 8.pdf'),
(50, 201, 2, 6000, 1, '2024-04-24', 9, 'Bachelor  of Science', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Mother', 44, 'eee', 'Bhosari', 'Jharkhand', 411066, 'eee', 'Bhosari', 'Jharkhand', 411066, '2024-04-24 18:13:56', NULL, 'image/Security and Privacy- Chap 8.pdf'),
(51, 112, 3, 4000, 1, '2024-04-12', 6, 'Bachelor Of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Mother', 67364626717, 'c', 'Kothrud', 'Gujarat', 411044, 'c', 'Kothrud', 'Gujarat', 411044, '2024-04-25 14:02:17', NULL, 'image/My Pic wall.jpeg'),
(52, 112, 3, 4000, 1, '2024-04-12', 6, 'Bachelor Of Computer Application', 101, 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', 9834124836, 'vidhya', 'Mother', 67364626717, 'c', 'Kothrud', 'Gujarat', 411044, 'c', 'Kothrud', 'Gujarat', 411044, '2024-04-25 14:02:17', NULL, 'image/My Pic wall.jpeg'),
(53, 201, 2, 6000, 0, '2024-05-22', 5, 'Master of Computer Application', 111, 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', 9834124836, '33', 'Mother', 9604683992, 'e', 'Kothrud', 'Karnataka', 411066, 'e', 'Kothrud', 'Karnataka', 411066, '2024-05-22 14:13:22', NULL, NULL),
(54, 201, 2, 6000, 0, '2024-05-22', 5, 'Master of Computer Application', 111, 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', 9834124836, '33', 'Mother', 9604683992, 'e', 'Kothrud', 'Karnataka', 411066, 'e', 'Kothrud', 'Karnataka', 411066, '2024-05-22 14:15:10', NULL, NULL),
(55, 201, 2, 6000, 0, '2024-05-22', 5, 'Master of Computer Application', 111, 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', 9834124836, '33', 'Mother', 9604683992, 'e', 'Kothrud', 'Karnataka', 411066, 'e', 'Kothrud', 'Karnataka', 411066, '2024-05-22 14:15:56', NULL, NULL),
(56, 201, 2, 6000, 0, '2024-05-22', 5, 'Master of Computer Application', 111, 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', 9834124836, '33', 'Mother', 9604683992, 'e', 'Kothrud', 'Karnataka', 411066, 'e', 'Kothrud', 'Karnataka', 411066, '2024-05-22 14:16:26', NULL, NULL),
(57, 201, 2, 6000, 0, '2024-05-22', 5, 'Master of Computer Application', 111, 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', 9834124836, '33', 'Mother', 9604683992, 'e', 'Kothrud', 'Karnataka', 411066, 'e', 'Kothrud', 'Karnataka', 411066, '2024-05-22 14:16:44', NULL, NULL),
(58, 201, 2, 6000, 0, '2024-05-22', 5, 'Master of Computer Application', 111, 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', 9834124836, '33', 'Mother', 9604683992, 'e', 'Kothrud', 'Karnataka', 411066, 'e', 'Kothrud', 'Karnataka', 411066, '2024-05-22 14:18:53', NULL, NULL);

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
(5, 5, 132, 2000, '2016-04-12 01:31:15');

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
-- Error reading structure for table hostel.tb_upload: #1030 - Got error 194 &quot;Tablespace is missing for a table&quot; from storage engine InnoDB
-- Error reading data for table hostel.tb_upload: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `hostel`.`tb_upload`' at line 1

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
(37, 21, 'pratikshagore08@gmail.com', 0x3a3a31, '', '', '2024-05-22 19:35:13');

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
(21, '101', 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', '1234', '2024-04-23 16:06:49', '22-05-2024 03:05:04', NULL),
(22, '101', 'Pratiksha', 'Angad', 'Gore', 'female', 983493004, 'pratikshagore08@gmail.com', '1234', '2024-04-23 16:06:49', NULL, NULL),
(23, '122', 'Shubham', 'Angad', 'Gore', 'male', 983493004, 'pratikshagore09@gmail.com', '1234', '2024-04-23 16:29:06', NULL, NULL),
(24, '1', 'Shubham', 'Angad', 'Gore', 'male', 983493004, 'shubhamgore2197@gmail.com', '1234', '2024-05-22 10:00:08', NULL, NULL),
(25, '111', 'Kanchan', 'Sadashiv', 'Poudwal', 'female', 7382093843, 'pratikshaangadgore@gmail.com', '1234', '2024-05-22 10:43:58', NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
