-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql210.byetcluster.com
-- Generation Time: Dec 05, 2020 at 07:52 AM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_26796582_placement`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(255) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `pwd` varchar(25) CHARACTER SET latin1 COLLATE latin1_danish_ci NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `uname`, `pwd`, `fname`, `lname`, `email`, `phone`) VALUES
(6, 'JayminMakwana', 'jamu@2033', 'Jaymin', 'Makwana', 'makwanajyamin2033@gmail.com', '9081594389');

-- --------------------------------------------------------

--
-- Table structure for table `applied`
--

CREATE TABLE `applied` (
  `id` int(100) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Unknown',
  `chances` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applied`
--

INSERT INTO `applied` (`id`, `name`, `company`, `status`, `chances`) VALUES
(1, 'Mohith', 'Infosys', 'Attended', NULL),
(2, 'Mohith', 'TCS', 'Selected', NULL),
(3, 'Girish', 'Mobinius', 'Unknown', NULL),
(4, 'Girish', 'Infosys', 'Selected', NULL),
(5, 'Naveen', 'Invensis Technologies Private Limited', 'Unknown', NULL),
(6, 'Vinay ', 'Transact Bpo Services', 'Unknown', NULL),
(7, 'Vinay ', 'Qbix Intergrated Services', 'Unknown', NULL),
(9, 'Bharath', 'Invensis Technologies Private Limited', 'Unknown', NULL),
(12, 'Girish', 'Mobinius', 'Unknown', NULL),
(13, 'Girish', 'Cognizant Technology Solutions', 'Unknown', NULL),
(14, 'jaymin', 'Tatvasoft', 'Unknown', NULL),
(15, 'jaymin', 'Tatvasoft', 'Unknown', NULL),
(16, 'jaymin', 'Wipro', 'Selected', NULL),
(17, 'mahendar', 'Cognizant Technology Solutions', 'Unknown', NULL),
(18, 'mahendar', 'Infosys', 'Unknown', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(100) NOT NULL,
  `name` varchar(130) NOT NULL,
  `type` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  `number` varchar(11) NOT NULL,
  `website` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Active',
  `minperc` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `type`, `address`, `number`, `website`, `status`, `minperc`) VALUES
(1, 'Infosys', 'IT', ' 27th Main, Old Madiwala, Jay Bheema Nagar, 1st Stage, BTM Layout 1, Bengaluru, Karnataka 560068', '9897876564', 'https://www.infosys.com/', 'Active', '70'),
(2, 'TCS', 'IT', 'Mumbai, Maharashtra', '8967879890', 'https://www.tcs.com/', 'Inactive', '70'),
(6, 'Wipro', 'IT', ' Block C, Sarjapur Main Rd, Doddakannelli, Bengaluru, Karnataka 560035', '9078767654', 'https://www.wipro.com/', 'Active', '75%'),
(8, 'Cognizant Technology Solutions', 'IT', 'BLOCK D1, Manayata Tech Park, Thanisandra, Bengaluru, Karnataka 560045', '-', 'https://www.cognizant.com', 'Active', '70'),
(14, 'Tatvasoft', 'IT', 'ahmedabad', '9876541231', 'www.tatvasoft.com', 'Active', '75%');

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

CREATE TABLE `feed` (
  `id` int(255) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `message` text,
  `date` date DEFAULT NULL,
  `time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feed`
--

INSERT INTO `feed` (`id`, `user`, `message`, `date`, `time`) VALUES
(11, 'JayminMakwana', 'hello..everyone..\r\n', '2020-09-23', '03:36:40'),
(10, 'JayminMakwana', 'hello..everyone..\r\n', '2020-09-23', '03:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `studentlogin`
--

CREATE TABLE `studentlogin` (
  `id` int(255) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `pwd` varchar(25) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `secque` varchar(100) NOT NULL,
  `secans` varchar(100) NOT NULL,
  `course` varchar(100) DEFAULT NULL,
  `percentage` varchar(10) DEFAULT NULL,
  `yop` varchar(10) DEFAULT 'curdate()',
  `sslc` varchar(100) DEFAULT NULL,
  `puc` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentlogin`
--

INSERT INTO `studentlogin` (`id`, `uname`, `pwd`, `fname`, `lname`, `email`, `phone`, `secque`, `secans`, `course`, `percentage`, `yop`, `sslc`, `puc`) VALUES
(1, 'naveen', '12345', 'Naveen', 'RS', 'naveenrs@gmail.com', '9868909876', 'Which is Favourite Food?', 'Gobi Manchurian', 'BCOM', '70', '2019', NULL, NULL),
(2, 'girishgv21', '12345', 'Girish', 'G V', 'girishgv21@gmail.com', '9742492316', 'Which is your Favourite Mobile Company?', 'Motorola', 'BCA', '78', '2019', '92', '72'),
(7, 'mohith', '12345', 'Mohith', 'SB', 'mohith@gmail.com', '9876789865', 'Which is your First Phone?', 'Samsung', 'BCA', '82', '2019', NULL, NULL),
(9, 'vinay', '123456', 'Vinay ', 'Kumar', 'vinay@gmail.com', '9089876789', 'Which is your First Phone?', 'Nokia', 'BBA', '76', '2019', '81', '73'),
(10, 'bharath', '123456', 'Bharath', 'N', 'bharath@gmail.com', '9632629993', 'Which is your Favourite Mobile Company?', 'OnePlus', 'BCOM', '82', '2019', '59', '82'),
(12, 'jamu1570', 'jaymin2033@', 'jaymin', 'makwana', 'makwanajaymin2033@gmail.com', '9081594389', '', '', 'BBA', '80', '2019', '80', '80'),
(13, 'mahendra', 'Mp#99999', 'mahendar', 'parmar', 'mlp@gmail.com', '1234567841', 'Which is your First Phone?', 'mi', 'BCA', '70', '2019', '70', '70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `applied`
--
ALTER TABLE `applied`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentlogin`
--
ALTER TABLE `studentlogin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uname` (`uname`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `applied`
--
ALTER TABLE `applied`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feed`
--
ALTER TABLE `feed`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `studentlogin`
--
ALTER TABLE `studentlogin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
