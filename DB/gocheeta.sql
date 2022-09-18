-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 09:15 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gocheeta`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE IF NOT EXISTS `booking_details` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_mobile` varchar(45) DEFAULT NULL,
  `pick_location` varchar(45) DEFAULT NULL,
  `drop_location` varchar(45) DEFAULT NULL,
  `area_branch` varchar(45) DEFAULT NULL,
  `distance` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `v_type` varchar(45) DEFAULT NULL,
  `driver_mobile` int(11) DEFAULT NULL,
  `option` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `driver_mobile_idx` (`driver_mobile`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`order_id`, `order_mobile`, `pick_location`, `drop_location`, `area_branch`, `distance`, `price`, `time`, `v_type`, `driver_mobile`, `option`) VALUES
(1, '08978575', 'gampha', 'divulapitiya', 'gampha', '5km', '500.000', '7.45', 'van', 77879635, 'No Active'),
(2, '0778965432', 'Galle', 'Galle', 'Galle', '6km', '700.00', '8.45', 'car', 788512452, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `branch_id` varchar(20) NOT NULL,
  `b_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `rate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `rate_id_idx` (`rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `name`, `email`, `mobile`, `password`) VALUES
(4, 'uiduf8i', 'nirashamaliki@gmail.com', 8478, '454ijik'),
(5, 'UIII', 'nirashamaliki1999@gmail.com', 8478988, '454ijikIOJIO'),
(6, 'Maliki', 'nirashamaliki@gmail.com', 8478988, '454ijik'),
(7, 'UIII', 'nirashamaliki1999@gmail.com', 8478988, '454ijik'),
(8, 'uhuhuyg', 'gyhgbyhg', 5665, 'ygbyh'),
(9, 'G', 'JJJJJHUI', 876, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `driver_mobile` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `d_password` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `time_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`driver_mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_mobile`, `name`, `email`, `d_password`, `branch`, `time_type`) VALUES
(77879635, 'amila', 'amila@gmail.com', '1234', 'Galle', 'Full time');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `order_id_idx` (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `subject`, `description`, `order_id`) VALUES
(1, 'Feedback for service', 'Very good service', 1);

-- --------------------------------------------------------

--
-- Table structure for table `price_rate`
--

CREATE TABLE IF NOT EXISTS `price_rate` (
  `rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `distance` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `price_rate`
--

INSERT INTO `price_rate` (`rate_id`, `distance`, `price`) VALUES
(1, '1km', 'Rs.20.00'),
(2, '1km', 'Rs.30.00'),
(3, '1km', 'Rs.50.00'),
(4, '1km', 'Rs.100.00'),
(5, '1km', 'Rs.120.00');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_no` varchar(20) NOT NULL,
  `Branch` varchar(45) DEFAULT NULL,
  `vehical_Type` varchar(45) DEFAULT NULL,
  `vehicle_model` varchar(45) DEFAULT NULL,
  `driver_mobile` int(11) DEFAULT NULL,
  PRIMARY KEY (`vehicle_no`),
  KEY `Category_name_idx` (`vehical_Type`),
  KEY `driver_mobile_idx` (`driver_mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `rate_id` FOREIGN KEY (`rate_id`) REFERENCES `price_rate` (`rate_id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `booking_details` (`order_id`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `driver_mobile` FOREIGN KEY (`driver_mobile`) REFERENCES `driver` (`driver_mobile`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
