-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Samsung', 'Samsung Galaxy S6-edge', 152.00, './assets/products/1.png', '2020-04-28 11:08:57'), -- NOW()
(2, 'Redmi', 'Redmi Note 7', 122.00, './assets/products/2.png', '2021-03-20 11:08:57'),
(3, 'Redmi', 'Redmi Note 6', 122.00, './assets/products/3.png', '2020-07-27 11:08:57'),
(4, 'Redmi', 'Redmi Note 5', 122.00, './assets/products/4.png', '2021-03-23 11:08:57'),
(5, 'Redmi', 'Redmi Note 4', 122.00, './assets/products/5.png', '2021-03-18 11:08:57'),
(6, 'Redmi', 'Redmi Note 8', 122.00, './assets/products/6.png', '2021-03-08 11:08:57'),
(7, 'Redmi', 'Redmi Note 9', 122.00, './assets/products/8.png', '2021-03-22 11:08:57'),
(8, 'Redmi', 'Redmi Note', 122.00, './assets/products/10.png', '2020-03-26 11:08:57'),
(9, 'Samsung', 'Samsung Galaxy S6', 152.00, './assets/products/11.png', '2020-04-24 11:08:57'),
(10, 'Samsung', 'Samsung Galaxy S7', 152.00, './assets/products/12.png', '2020-03-17 11:08:57'),
(11, 'Apple', 'Apple iPhone 5', 152.00, './assets/products/13.png', '2020-06-21 11:08:57'),
(12, 'Apple', 'Apple iPhone 6', 152.00, './assets/products/14.png', '2021-03-20 11:08:57'),
(13, 'Apple', 'Apple iPhone 7', 152.00, './assets/products/15.png', '2020-08-28 11:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- data for table `user`
--

INSERT INTO `user` (`id`,`user_id`, `user_name`,`email`,`phone`, `password`, `date`) VALUES
(1,1111, 'test', 'test@gmail.com','+355699999999','test1234', '2021-04-20 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--


--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
