-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2021 at 08:47 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'admin123', '2017-01-24 16:21:18', '18-05-2021 11:05:59 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Erasers', 'Add Erasers', '2021-06-03 06:16:54', NULL),
(2, 'Filing and storage', 'Add Filing and storage', '2021-06-03 06:17:43', NULL),
(3, 'Ink and toner', 'Add Ink and toner', '2021-06-03 06:17:57', NULL),
(4, 'Drawing instruments', 'Add Drawing instruments', '2021-06-03 06:18:11', NULL),
(5, 'Desktop instruments', 'Add Desktop instruments', '2021-06-03 06:18:33', NULL),
(6, 'Business Stationery', 'Add Business Stationery', '2021-06-03 06:18:44', NULL),
(7, 'Mailing and shipping supplies', 'Add Mailing and shipping supplies', '2021-06-03 06:19:05', NULL),
(8, 'Paper and pad', 'Add Paper and pad', '2021-06-03 06:19:21', NULL),
(9, 'Writing instruments', 'Add Writing instruments', '2021-06-03 06:25:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 2, '1', 1, '2021-06-03 05:30:23', 'COD', 'Delivered'),
(2, 2, '4', 1, '2021-06-03 05:30:23', 'COD', 'Delivered'),
(3, 2, '4', 1, '2021-06-03 05:55:34', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'in Process', 'Admin', '2021-06-03 05:37:38'),
(2, 2, 'in Process', 'Admin', '2021-06-03 05:38:02'),
(3, 1, 'Delivered', 'Admin', '2021-06-03 05:39:48'),
(4, 2, 'Delivered', 'Admin', '2021-06-03 05:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(5, 8, 19, 'Classmate Book', 'ITC', 20, 25, '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">Find&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Classmate</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;notebooks &amp; stationeries delivering near you in wholesale price at&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Classmate</span><br>', 'classmate1.jpg', 'classmate2.jpg', 'classmate3.jpg', 5, 'In Stock', '2021-06-03 06:45:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Camlin', '2021-06-03 06:36:24', NULL),
(2, 2, 'File folder', '2021-06-03 06:36:48', NULL),
(3, 2, 'Hanging file folder', '2021-06-03 06:36:58', NULL),
(4, 2, 'Two-pocket portfolios', '2021-06-03 06:37:07', NULL),
(5, 3, 'Inkjet cartridge', '2021-06-03 06:37:39', NULL),
(6, 3, 'Laser printer toner', '2021-06-03 06:37:50', NULL),
(7, 3, 'Photocopier toner', '2021-06-03 06:37:59', NULL),
(8, 4, 'brushes', '2021-06-03 06:38:24', NULL),
(9, 4, 'colour pencils', '2021-06-03 06:38:36', NULL),
(10, 4, 'crayons', '2021-06-03 06:38:45', NULL),
(11, 4, 'Watercolor ', '2021-06-03 06:38:53', NULL),
(12, 5, 'stapler and staples', '2021-06-03 06:39:14', NULL),
(13, 5, 'tapes and tape dispensers', '2021-06-03 06:39:29', NULL),
(14, 5, 'hole punch', '2021-06-03 06:39:43', NULL),
(15, 6, 'letterhead', '2021-06-03 06:40:02', NULL),
(16, 6, 'invoices', '2021-06-03 06:40:11', NULL),
(17, 6, 'receipts', '2021-06-03 06:40:19', NULL),
(18, 7, 'Envelope', '2021-06-03 06:40:41', NULL),
(19, 8, 'Notebooks', '2021-06-03 06:40:52', NULL),
(20, 8, 'wirebound notebook', '2021-06-03 06:41:01', NULL),
(21, 8, 'writing pads', '2021-06-03 06:41:11', NULL),
(22, 8, 'college ruled paper', '2021-06-03 06:41:21', NULL),
(23, 8, 'wide-ruled paper', '2021-06-03 06:41:30', NULL),
(24, 8, 'Office paper', '2021-06-03 06:41:42', NULL),
(25, 8, 'inkjet printer paper', '2021-06-03 06:42:00', NULL),
(26, 8, ' laser printer paper', '2021-06-03 06:42:04', NULL),
(27, 8, 'photocopy paper', '2021-06-03 06:42:15', NULL),
(28, 9, ' ballpoint pen', '2021-06-03 06:42:52', NULL),
(29, 9, 'Fountain pen', '2021-06-03 06:43:09', NULL),
(30, 9, 'highlighter pen', '2021-06-03 06:43:21', NULL),
(31, 9, 'pencil', '2021-06-03 06:43:31', NULL),
(32, 9, ' rollerball pen', '2021-06-03 06:43:40', NULL),
(33, 9, ' porous point pen', '2021-06-03 06:43:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-23 14:06:43', '23-05-2021 07:36:55 PM', 1),
(2, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-23 14:40:39', NULL, 1),
(3, 'sumit@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-03 05:28:39', '03-06-2021 11:03:03 AM', 1),
(4, 'sumit@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-03 05:38:42', NULL, 1),
(5, 'sumit@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-03 05:55:26', '03-06-2021 11:33:29 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Amit Patil', 'amit@gmail.com', 8877767678, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-23 14:06:11', NULL),
(2, 'Sumit Patil', 'sumit@gmail.com', 8877767678, '123', 'Kedar complex near MR highschool gadhinglaj', 'Maharashtra', 'Gadhinglaj', 416502, 'Kedar complex near MR highschool gadhinglaj', 'Maharashtra', 'Gadhinglaj', 416502, '2021-06-03 05:28:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
