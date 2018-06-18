-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2018 at 12:51 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staff_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(200) NOT NULL,
  `rf_id` text NOT NULL,
  `date` text NOT NULL,
  `in_time` text NOT NULL,
  `out_time` text NOT NULL,
  `date_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `staff_id`, `rf_id`, `date`, `in_time`, `out_time`, `date_timestamp`, `status`) VALUES
(1, '5555', '55', '2018-05-23', '03:32:26 pm', '04:15:45 pm', '2018-05-23 10:45:45', 0),
(2, '9999', '99', '2018-05-25', '03:58:12 pm', '04:54:45 pm', '2018-05-25 11:24:45', 0),
(3, '5555', '55', '2018-05-25', '03:58:16 pm', '04:52:07 pm', '2018-05-25 11:22:07', 0),
(4, '3525', '000123', '2018-05-25', '03:58:20 pm', '', '2018-05-25 10:28:20', 0),
(5, '6666', '66', '2018-05-25', '04:54:50 pm', '', '2018-05-25 11:24:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `birthday`
--

CREATE TABLE `birthday` (
  `id` int(11) NOT NULL,
  `staff_id` text NOT NULL,
  `rf_id` text NOT NULL,
  `birth_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birthday`
--

INSERT INTO `birthday` (`id`, `staff_id`, `rf_id`, `birth_date`) VALUES
(1, '5555', '55', '28-06-2018');

-- --------------------------------------------------------

--
-- Table structure for table `leave_perm`
--

CREATE TABLE `leave_perm` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `rf_id` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `from_date` text NOT NULL,
  `to_date` text NOT NULL,
  `date` text NOT NULL,
  `type_of_reason` text NOT NULL,
  `reason` text NOT NULL,
  `status` int(11) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_perm`
--

INSERT INTO `leave_perm` (`id`, `staff_id`, `rf_id`, `firstname`, `lastname`, `from_date`, `to_date`, `date`, `type_of_reason`, `reason`, `status`, `action`) VALUES
(23, 5555, '55', 'harika', 'hari', '2018-05-25', '2018-05-26', '2018-05-24', '3', 'chitti\r\n', 1, 'completed'),
(24, 5555, '55', 'harika', 'hari', '2018-05-17', '2018-05-20', '2018-05-24', '1', 'gghh', 1, 'completed'),
(25, 5555, '55', 'harika', 'hari', '2018-06-01', '2018-06-01', '2018-05-24', '1', 'hhhh', 1, 'completed'),
(26, 5555, '55', 'harika', 'hari', '2018-05-14', '2018-05-17', '2018-05-25', '', 'fgdf', 1, 'completed'),
(27, 5555, '55', 'harika', 'hari', '2018-05-24', '2018-05-26', '2018-05-25', '4', 'vffg', 1, '-'),
(28, 9999, '99', 'mouni', 'estd97', '2018-05-22', '2018-05-30', '2018-05-25', 'Long leave', 'going to kasi', 1, '-');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `staff_id` text NOT NULL,
  `rf_id` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `profile` text NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` text NOT NULL,
  `college` text NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_id`, `rf_id`, `firstname`, `lastname`, `profile`, `phone`, `email`, `college`, `address`, `status`) VALUES
(9, '3525', '000123', 'admin', 'tester', '9.jpg', 9581135256, 'tester@gmail.com', 'ACET', 'Kakinada', 1),
(12, '5555', '55', 'harika', 'hari', '', 7531548965, 'hr@gmail.com', 'acet', 'kkd', 1),
(13, '9999', '99', 'mouni', 'estd97', '', 9705920366, 'mo@gmail.com', 'ACET', 'Dwarapudi', 1),
(14, '6666', '66', 'user', 'user', '', 9876543212, 'user@gmail.com', 'acet', 'rjy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `staff_id` text NOT NULL,
  `rf_id` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `usertype` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `staff_id`, `rf_id`, `username`, `password`, `usertype`, `status`) VALUES
(9, '3525', '000123', 'tester', '1234', 'admin', 1),
(39, '15P31A0467', '0004957848', '15P31A0467', '15P31A0467', 'employee', 1),
(47, '5555', '55', '5555', '5555', 'employee', 1),
(48, '9999', '99', '9999', '9999', 'employee', 1),
(49, '6666', '66', '6666', '6666', 'employee', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birthday`
--
ALTER TABLE `birthday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_perm`
--
ALTER TABLE `leave_perm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
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
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `birthday`
--
ALTER TABLE `birthday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leave_perm`
--
ALTER TABLE `leave_perm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
