-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2018 at 09:45 PM
-- Server version: 10.1.28-MariaDB
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
-- Database: `slb`
--
CREATE DATABASE IF NOT EXISTS `slb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `slb`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uID` int(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `trn` int(9) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city/town` varchar(100) NOT NULL,
  `parish` varchar(100) NOT NULL,
  `progress` varchar(1) NOT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `pay_start` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `user`:
--

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uID`, `fname`, `lname`, `uname`, `trn`, `street`, `city/town`, `parish`, `progress`, `amount_due`, `pay_start`) VALUES
(100000, 'Deron ', 'Nicholson', 'deronic', 100000000, 'Fairview Park', 'Spanish Town', 'St. Catherine', 'E', '150000.00', '2018-04-25'),
(100001, 'Loni', 'Mitchell', 'mitchellloni', 145465280, 'Sunny Street', 'August Town', 'Kingston', 'C', '0.00', '2018-04-12'),
(100002, 'Shelece', 'Hudson', 'hudsonshelece', 123456789, 'Bamboo Avenue', 'Rollins Town', 'St. Ann', 'E', '125000.00', '2019-09-11'),
(100003, 'Sherice', 'Ross', 'rosssherice', 246123987, 'Rock Hill', 'Moore Town', 'Trelawny', 'D', '90000.00', '2017-02-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100004;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
