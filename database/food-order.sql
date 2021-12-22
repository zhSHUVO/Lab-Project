-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 01:04 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(19, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(20, 'Zayed Hassan', 'zayed', '827ccb0eea8a706c4c34a16891f84e7b'),
(21, 'Redoy Rajoan', 'redoy', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(8, 'Burger', 'Food_Category_916.jpg', 'Yes', 'Yes'),
(9, 'Pizza', 'Food_Category_739.jpg', 'Yes', 'Yes'),
(10, 'Hotdog', 'Food_Category_666.jpg', 'Yes', 'Yes'),
(11, 'Chow Mein', 'Food_Category_721.jpg', 'Yes', 'Yes'),
(12, 'Biriyani', 'Food_Category_651.jpg', 'Yes', 'Yes'),
(13, 'Kacchi', 'Food_Category_163.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(23, 'American Burger', 'Burger With American Recipe, Extra Cheese & Spice. ', '499.00', 'Food_Name_482.jpg', 8, 'Yes', 'Yes'),
(24, 'Italian Burger', 'Burger With Italian Recipe, Extra Cheese & Spice.', '399.00', 'Food_Name_597.jpg', 8, 'Yes', 'Yes'),
(25, 'Spanish Burger', 'Burger With Spanish Recipe, Extra Cheese & Spice.', '450.00', 'Food_Name_992.jpg', 8, 'Yes', 'Yes'),
(26, 'Colombian Burger', 'Burger With Colombian Recipe, Extra Cheese & Spice.', '350.00', 'Food_Name_643.jpg', 8, 'Yes', 'Yes'),
(27, 'Turkish Burger', 'Burger With Turkish Recipe, Extra Cheese & Spice.', '450.00', 'Food_Name_270.jpg', 8, 'Yes', 'Yes'),
(28, 'Mexican Burger', 'Burger With Mexican Recipe, Extra Cheese & Spice.', '460.00', 'Food_Name_644.jpg', 8, 'Yes', 'Yes'),
(29, 'American Pizza', 'Pizza With American Recipe, Extra Cheese & Spice.', '500.00', 'Food_Name_342.jpg', 9, 'Yes', 'Yes'),
(30, 'Italian Pizza', 'Pizza With Italian Recipe, Extra Cheese & Spice.', '700.00', 'Food_Name_44.jpg', 9, 'Yes', 'Yes'),
(31, 'Spanish Pizza', 'Pizza With Spanish Recipe, Extra Cheese & Spice.', '450.00', 'Food_Name_628.jpg', 9, 'Yes', 'Yes'),
(32, 'Mexican Pizza', 'Pizza With Mexican Recipe, Extra Cheese & Spice.', '550.00', 'Food_Name_981.jpg', 9, 'Yes', 'Yes'),
(33, 'Colombian Pizza', 'Pizza With Colombian Recipe, Extra Cheese & Spice.', '500.00', 'Food_Name_107.jpg', 9, 'Yes', 'Yes'),
(34, 'Turkish Pizza', 'Pizza With Turkish Recipe, Extra Cheese & Spice.', '700.00', 'Food_Name_742.jpg', 9, 'Yes', 'Yes'),
(35, 'American Hotdog', 'Hotdog With American Recipe, Extra Cheese & Spice.', '300.00', 'Food_Name_563.jpg', 10, 'Yes', 'Yes'),
(36, 'Italian Hotdog', 'Hotdog With Italian Recipe, Extra Cheese & Spice.', '400.00', 'Food_Name_71.jpg', 10, 'Yes', 'Yes'),
(37, 'Spanish Hotdog', 'Hotdog With Spanish Recipe, Extra Cheese & Spice.', '350.00', 'Food_Name_716.jpg', 10, 'Yes', 'Yes'),
(38, 'Colombian Hotdog', 'Hotdog With Colombian Recipe, Extra Cheese & Spice.', '300.00', 'Food_Name_354.jpg', 10, 'Yes', 'Yes'),
(39, 'Turkish Burger', 'Hotdog With Turkish Recipe, Extra Cheese & Spice.', '400.00', 'Food_Name_557.jpg', 10, 'Yes', 'Yes'),
(40, 'Mexican Hotdog', 'Hotdog With Mexican Recipe, Extra Cheese & Spice.', '400.00', 'Food_Name_737.jpg', 10, 'Yes', 'Yes'),
(41, 'American Chow Mein ', 'Chow Mein  With American Recipe, Extra Spice & Masala.', '399.00', 'Food_Name_327.jpg', 11, 'Yes', 'Yes'),
(42, 'Italian Chow Mein', 'Chow Mein With Italian Recipe, Extra Spice & Masala.', '499.00', 'Food_Name_213.jpg', 11, 'No', 'No'),
(43, 'Chinese Chow Mein ', 'Chow Mein With Chines Recipe, Extra Spice & Masala.', '599.00', 'Food_Name_892.jpg', 11, 'Yes', 'Yes'),
(44, 'Haji Biriyani', 'Original Puran Dhaka Haji Biriyani', '250.00', 'Food_Name_953.jpg', 12, 'Yes', 'Yes'),
(45, 'Kamal Biriyani', 'Original Kamal Biriyani', '250.00', 'Food_Name_704.jpg', 12, 'Yes', 'Yes'),
(46, 'Bobar Biriyani', 'Original Bobar Biriyani', '300.00', 'Food_Name_255.jpg', 12, 'Yes', 'Yes'),
(47, 'Sultans Dine Kacchi', 'Original Sultan Dine Kacchi', '499.00', 'Food_Name_458.jpg', 13, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(9, 'Haji Biriyani', '250.00', 1, '250.00', '2021-12-22 01:01:18', 'Ordered', 'Zayed Hassan', '01812537182763', 'echo@gmail.com', 'Daffodil Khagan'),
(10, 'Mexican Burger', '460.00', 2, '920.00', '2021-12-22 01:04:11', 'On Delivery', 'Rajoan', '0197326819283', 'john@gamil.com', 'DHAKA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
