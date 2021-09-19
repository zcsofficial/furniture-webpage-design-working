-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2021 at 07:12 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniturezone`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `CART_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SESSION_ID` varchar(70) DEFAULT NULL,
  `TOKEN` varchar(80) DEFAULT NULL,
  `STATUS` char(10) DEFAULT NULL,
  `FIRST_NAME` varchar(30) DEFAULT NULL,
  `MIDDLE_NAME` varchar(35) DEFAULT NULL,
  `LAST_NAME` varchar(40) DEFAULT NULL,
  `MOBILE` int(11) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `LINE1` varchar(80) DEFAULT NULL,
  `LINE2` varchar(80) DEFAULT NULL,
  `CITY` varchar(80) DEFAULT NULL,
  `PROVINCE` varchar(60) DEFAULT NULL,
  `COUNTRY` varchar(50) DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT NULL,
  `UPDATED_AT` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart_item_details`
--

CREATE TABLE `cart_item_details` (
  `cart_id` int(5) NOT NULL,
  `product_name_1` varchar(25) NOT NULL,
  `product_price_1` varchar(10) NOT NULL,
  `product_name_2` varchar(25) NOT NULL,
  `product_price_2` varchar(10) NOT NULL,
  `product_name_3` varchar(25) NOT NULL,
  `product_price_3` varchar(10) NOT NULL,
  `date_of_order` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_item_details`
--

INSERT INTO `cart_item_details` (`cart_id`, `product_name_1`, `product_price_1`, `product_name_2`, `product_price_2`, `product_name_3`, `product_price_3`, `date_of_order`) VALUES
(903, 'wooden couch', '61787', 'wooden table', '61787', 'wooden desk', '61787', '2021-06-30'),
(988, 'wooden couch', '61787', 'wooden desk', '61787', 'wooden couch', '61787', '2021-06-30'),
(760, 'wooden couch', '61787', 'wooden couch', '61787', 'wooden desk', '61787', '2021-06-30'),
(118, 'wooden couch', '61787', 'wooden desk', '61787', 'wooden cupboard', '61787', '2021-06-30'),
(623, 'wooden couch', '61787', 'wooden table', '61787', 'wooden desk', '61787', '2021-06-30'),
(156, 'wooden couch', '61787', 'wooden table', '61787', 'wooden cupboard', '61787', '2021-06-30'),
(142, 'wooden couch', '61787', 'wooden table', '61787', 'wooden cupboard', '61787', '2021-06-30'),
(352, 'wooden couch', '61787', 'wooden table', '61787', 'wooden desk', '61787', '2021-06-30'),
(990, 'wooden couch', '61787', 'wooden table', '61787', 'wooden cupboard', '61787', '2021-06-30'),
(455, 'wooden couch', '61787', 'wooden table', '61787', 'wooden cupboard', '61787', '2021-06-30'),
(547, 'wooden couch', '61787', 'wooden couch', '61787', 'wooden couch', '61787', '2021-06-30'),
(487, 'wooden couch', '61787', 'wooden couch', '61787', 'wooden table', '61787', '2021-06-30'),
(983, '', '', '', '', '', '', '2021-06-30'),
(854, 'wooden couch', '61787', 'wooden table', '61787', 'wooden desk', '61787', '2021-06-30'),
(460, 'wooden couch', '61787', 'wooden table', '61787', 'wooden desk', '61787', '2021-06-30'),
(364, 'wooden couch', '61787', 'wooden couch', '61787', 'wooden table', '61787', '2021-06-30'),
(199, 'wooden couch', '61787', 'wooden table', '61787', 'wooden desk', '61787', '2021-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `customer_id` int(11) NOT NULL,
  `first_Name` varchar(25) NOT NULL,
  `last_Name` varchar(25) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password_value` char(8) NOT NULL,
  `registered_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`customer_id`, `first_Name`, `last_Name`, `mobile`, `email`, `password_value`, `registered_at`) VALUES
(1046, 'blue', 'woman', 8945612370, 'blue.woman@gmail.com', '7894561', '2021-06-28 05:05:44'),
(1089, 'john', 'willams', 9854612300, 'john.mathew@gmail.com', '7896541', '2021-06-28 04:56:27'),
(1126, 'lavanya', 'seetharaman', 9854127781, 'laya21@gmail.com', '8523697', '2021-06-28 03:13:31'),
(1165, 'ganesha', 'shiva', 9865321204, 'sonofshiva@gmail.com', '8524136', '2021-06-28 05:07:33'),
(1196, 'adsasd', 'sdfsdf', 9854612300, 'welcome23@gmail.com', '852147', '2021-06-28 04:51:15'),
(1200, 'abishake', 'seetharaman', 9632587410, 'abishake@gmail.com', '1236774', '2021-06-28 04:28:11'),
(1412, 'John', 'Doe', 9632587410, 'john.doe@gmail.com', '741587', '2021-06-28 04:59:44'),
(1435, 'adsasd', 'sdfsdf', 9854612300, 'welcome234@gmail.com', '852147', '2021-06-28 04:51:54'),
(1446, 'yellow', 'sheng', 9874563210, 'shen.yellow@gmail.com', '45451', '2021-06-28 05:14:26'),
(1473, 'Sahil', 'Daiya', 8521479630, 'sahil99@gmail.com', '85214796', '2021-06-29 08:04:21'),
(1570, 'adsasd', 'sdfsdf', 9854612300, 'welcome@gmail.com', '852147', '2021-06-28 04:50:31'),
(1594, 'Timer', 'Value', 9874563210, 'timer.value@gmail.com', '1254783', '2021-06-28 14:17:58'),
(1621, 'ganesha', 'shiva', 9874563210, 'sonshivaandparu@gmail.com', '741258', '2021-06-28 05:12:23'),
(1643, 'qqweqwe', 'xzczx', 9854612300, 'goodie214@gmail.com', '852147', '2021-06-28 04:53:18'),
(1653, 'blue', 'man', 7896541234, 'blue.man@gmail.com', '8521463', '2021-06-28 05:04:35'),
(1655, 'qqweqwe', 'xzczx', 9854612300, 'goodie224@gmail.com', '852147', '2021-06-28 04:54:09'),
(1725, 'john', 'willams', 9854612300, 'john.mathew22@gmail.com', '7896541', '2021-06-28 04:57:09'),
(1734, 'adsasd', 'sdfsdf', 9854612300, 'blackwins.studio@gmail.com', '852147', '2021-06-28 04:48:41'),
(1761, 'sahil', '', 8521479630, 'sahil@gmail.com', '123456', '2021-06-29 07:59:33'),
(1786, 'Rohan', 'Jaswal', 9652314780, 'rohan22@gmail.com', 'rohan228', '2021-06-27 18:05:20'),
(1834, 'John', 'Woods', 0, 'woods.john@gmail.com', '741258', '2021-06-28 05:01:37'),
(1836, 'lavanya', 'seetharaman', 9876543210, 'laya20@gmail.com', '87654321', '2021-06-27 17:45:12'),
(1847, 'SomePeople', 'SomeBody', 9874563210, 'somebody@me.com', '852147', '2021-06-28 13:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(5) NOT NULL,
  `category_id` int(3) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_desc` varchar(500) NOT NULL,
  `product_discount_price` float NOT NULL,
  `product_price` float NOT NULL,
  `product_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `category_id`, `product_name`, `product_desc`, `product_discount_price`, `product_price`, `product_img`) VALUES
(2000, 301, 'wooden couch', 'Anchor your living space in a contemporary charm and unmatched comfort with Winster wooden sofa. Perfectly balancing style with storage, this design will lend your home a contemporary upgrade.', 134997, 61787, 'image1.jpg'),
(2001, 301, 'wooden couch', 'Anchor your living space in a contemporary charm and unmatched comfort with Winster wooden sofa. Perfectly balancing style with storage, this design will lend your home a contemporary upgrade.', 134997, 61787, 'image1.jpg'),
(2002, 301, 'wooden couch', 'Anchor your living space in a contemporary charm and unmatched comfort with Winster wooden sofa. Perfectly balancing style with storage, this design will lend your home a contemporary upgrade.', 134997, 61787, 'image1.jpg'),
(2003, 301, 'wooden couch', 'Anchor your living space in a contemporary charm and unmatched comfort with Winster wooden sofa. Perfectly balancing style with storage, this design will lend your home a contemporary upgrade.', 134997, 61787, 'image1.jpg'),
(2004, 301, 'wooden couch', 'Anchor your living space in a contemporary charm and unmatched comfort with Winster wooden sofa. Perfectly balancing style with storage, this design will lend your home a contemporary upgrade.', 134997, 61787, 'image1.jpg'),
(2005, 301, 'wooden couch', 'Anchor your living space in a contemporary charm and unmatched comfort with Winster wooden sofa. Perfectly balancing style with storage, this design will lend your home a contemporary upgrade.', 134997, 61787, 'image1.jpg'),
(2022, 302, 'wooden couch', 'Anchor your living space in a contemporary charm and unmatched comfort with Winster wooden sofa. Perfectly balancing style with storage, this design will lend your home a contemporary upgrade.', 134997, 61787, 'image1.jpg'),
(2000, 301, 'wooden couch', 'Anchor your living space in a contemporary charm and unmatched comfort with Winster wooden sofa. Perfectly balancing style with storage this design will lend your home a contemporary upgrade.', 134997, 61787, 'image1.jpg'),
(2002, 301, 'wooden table', 'Anchor your living space in a contemporary charm and unmatched comfort with Winster wooden sofa. Perfectly balancing style with storage this design will lend your home a contemporary upgrade.', 134997, 61787, 'image1.jpg'),
(2004, 301, 'wooden desk', 'Anchor your living space in a contemporary charm and unmatched comfort with Winster wooden sofa. Perfectly balancing style with storage this design will lend your home a contemporary upgrade.', 134997, 61787, 'image1.jpg'),
(2006, 301, 'wooden cupboard', 'Anchor your living space in a contemporary charm and unmatched comfort with Winster wooden sofa. Perfectly balancing style with storage this design will lend your home a contemporary upgrade.', 134997, 61787, 'image1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1892;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
