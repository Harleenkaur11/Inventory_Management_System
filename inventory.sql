-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2022 at 03:52 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_active` int(11) NOT NULL,
  `brand_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_active`, `brand_status`) VALUES
(1, 'Apple', 1, 1),
(2, 'Sun Pharma', 1, 1),
(3, 'Patanjali', 1, 1),
(4, 'Parle', 1, 1),
(5, 'Dettol', 1, 1),
(6, 'Vega', 1, 1),
(7, 'Nivea', 1, 1),
(8, 'Reebok', 1, 1),
(9, 'Raymond', 1, 1),
(10, 'Havells', 1, 1),
(11, 'Samsung', 1, 1),
(13, 'Nike', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_active` int(3) DEFAULT NULL,
  `category_status` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_active`, `category_status`) VALUES
(1, 'Electronics', 1, 1),
(2, 'Food & Medicine', 1, 1),
(3, 'General Items', 1, 1),
(4, 'Household Requisites', 1, 1),
(5, 'Toiletries', 1, 1),
(6, 'Watches & Stationary', 1, 1),
(7, 'Misc.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_contact` varchar(255) NOT NULL,
  `product_id` int(3) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `noOfProducts` int(3) DEFAULT NULL,
  `sub_total` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `paid` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL,
  `payment_type` varchar(11) NOT NULL,
  `payment_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `client_name`, `client_contact`, `product_id`, `product_name`, `noOfProducts`, `sub_total`, `vat`, `discount`, `total_amount`, `paid`, `due`, `payment_type`, `payment_status`) VALUES
(22, '2022-02-05', 'Nidhish Dubey', '1234', 25, 'iPhone 13 Pro Max', 1, '100000', '13%', '0', '113000', '113000', '0', 'card', 'completed'),
(23, '2022-02-05', 'Harleen Kaur', '2345', 24, 'Shirt', 2, '2000', '13%', '0', '2260', '2260', '0', 'upi', 'completed'),
(24, '2022-02-05', 'Dhruv Bhati', '4567', 20, 'Samsung Galaxy S21 Ultra', 1, '100000', '13%', '0', '113000', '90000', '0', 'cash', 'completed'),
(25, '2022-02-05', 'Aman Yadav', '5678', 22, 'Marie Gold', 4, '40', '13%', '0.4', '44.748', '45', '0', 'cash', 'completed'),
(26, '2022-02-05', 'Naina Sharma', '7894', 20, 'Samsung Galaxy S21 Ultra', 1, '100000', '13%', '0', '113000', '113000', '0', 'ebanking', 'completed'),
(28, '2022-02-06', 'Nidhish', '1234', 27, 'Shoes', 1, '1500', '13%', '75', '1610.25', '1000', '0', 'cash', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `brand_id`, `category_id`, `quantity`, `rate`, `active`, `status`) VALUES
(20, 'Samsung Galaxy S21 Ultra', 11, 1, '3', '100000', 1, 1),
(21, 'Paracetamol', 2, 2, '150', '11', 1, 1),
(22, 'Marie Gold', 4, 2, '96', '10', 1, 1),
(23, 'Dettol Handwash', 5, 4, '5', '60', 1, 1),
(24, 'Shirt', 9, 3, '23', '1000', 1, 1),
(25, 'iPhone 13 Pro Max', 1, 1, '3', '100000', 1, 1),
(27, 'Shoes', 13, 7, '9', '1500', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
