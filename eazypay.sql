-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2018 at 06:17 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eazypay`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `name`, `password`) VALUES
(1, 'admin', 'eazypay@2016');

-- --------------------------------------------------------

--
-- Table structure for table `cf`
--

CREATE TABLE `cf` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `cf_name` varchar(191) NOT NULL,
  `amount` varchar(191) NOT NULL,
  `cf_contact` varchar(191) NOT NULL,
  `cf_bank` varchar(191) NOT NULL,
  `cf_acc_no` varchar(191) NOT NULL,
  `cf_acc_name` varchar(191) NOT NULL,
  `cf_email` varchar(191) NOT NULL,
  `contact_name` varchar(191) NOT NULL,
  `account_code` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cf`
--

INSERT INTO `cf` (`id`, `school_id`, `cf_name`, `amount`, `cf_contact`, `cf_bank`, `cf_acc_no`, `cf_acc_name`, `cf_email`, `contact_name`, `account_code`) VALUES
(12, 9, 'College of health', '80000', '08028118962', 'Diamond Bank', '0908976593', 'COH', 'john@gmail.com', 'John', ''),
(14, 8, 'Schoo of arts', '798500', '895749869', 'jfhgkjdh', '9854905', 'fhgjkgjkd', 'g@g.com', 'guhfdkkjd', '');

-- --------------------------------------------------------

--
-- Table structure for table `college_payment`
--

CREATE TABLE `college_payment` (
  `id` int(11) NOT NULL,
  `college_id` int(11) NOT NULL,
  `student_name` varchar(191) NOT NULL,
  `matric_no` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college_payment`
--

INSERT INTO `college_payment` (`id`, `college_id`, `student_name`, `matric_no`, `email`, `payment_date`) VALUES
(1, 12, 'John Michael', '20160204102', 'john@gmail.com', '2018-11-30 04:36pm'),
(9, 13, 'Samuel Aduragbemi Busayo', '20160204006', 'jamezblack19@gmail.com', '2018-11-30 05:40pm');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `dept_name` varchar(191) NOT NULL,
  `amount` varchar(191) NOT NULL,
  `dept_contact` varchar(191) NOT NULL,
  `dept_bank` varchar(191) NOT NULL,
  `dept_acc_no` varchar(191) NOT NULL,
  `dept_acc_name` varchar(191) NOT NULL,
  `contact_email` varchar(191) NOT NULL,
  `contact_name` varchar(191) NOT NULL,
  `account_code` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`id`, `school_id`, `dept_name`, `amount`, `dept_contact`, `dept_bank`, `dept_acc_no`, `dept_acc_name`, `contact_email`, `contact_name`, `account_code`) VALUES
(12, 13, 'Industrial Design', '30000', '07036728192', 'Fidelity Bank', '0989765323', 'INDESIGN', 'felix@gmail.com', 'Felix Both', ''),
(15, 3, 'Agric Economics', '80000', '07065784936', 'Sterling bank', '0588756890', 'AgricEco', 'john@gmail.com', 'koll', '');

-- --------------------------------------------------------

--
-- Table structure for table `dept_payment`
--

CREATE TABLE `dept_payment` (
  `id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `student_name` varchar(191) NOT NULL,
  `matric_no` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_payment`
--

INSERT INTO `dept_payment` (`id`, `dept_id`, `student_name`, `matric_no`, `email`, `payment_date`) VALUES
(34, 15, 'Samuel Aduragbemi Busayo', '20160204006', 'seun@gmail.com', '2018-11-30 05:43pm'),
(35, 15, 'Ajibade Ubaydat', '207867534', 'aj@gmail.com', '2018-11-30 05:43pm');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `school_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `school_name`) VALUES
(1, 'TASUED'),
(2, 'UNILORIN'),
(3, 'FUNAAB'),
(4, 'UNILAG'),
(5, 'UI'),
(6, 'MAPOLY'),
(7, 'FCEABK'),
(8, 'FCEAKOKA'),
(9, 'FEDPOLYILARO'),
(10, 'TASCE'),
(11, 'College of Health Tech. Ilese'),
(12, 'YABATECH'),
(13, 'FUTA'),
(14, 'KWASU'),
(15, 'DS ADEGBENRO POLY'),
(16, 'oau'),
(17, 'IBADAN POLY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cf`
--
ALTER TABLE `cf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college_payment`
--
ALTER TABLE `college_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept_payment`
--
ALTER TABLE `dept_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cf`
--
ALTER TABLE `cf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `college_payment`
--
ALTER TABLE `college_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `dept_payment`
--
ALTER TABLE `dept_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
