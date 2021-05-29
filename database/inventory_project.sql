-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 07:29 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive_products`
--

CREATE TABLE `archive_products` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bought` int(255) NOT NULL,
  `sold` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_products`
--

INSERT INTO `archive_products` (`id`, `name`, `bought`, `sold`) VALUES
(3, 'Bulads', 500, 50),
(7, 'Gluttatione', 300, 16);

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'new',
  `email` varchar(100) DEFAULT NULL,
  `current_orders` varchar(200) DEFAULT NULL,
  `shipping_address` varchar(300) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers_info`
--

INSERT INTO `customers_info` (`id`, `name`, `type`, `email`, `current_orders`, `shipping_address`, `avatar`) VALUES
(1, 'Nova', 'regular', 'nova@gmail.com', '5 items', 'Tangail', 'Customers/nova.png'),
(2, 'Tumpa', 'new', 'tumpa@gmail.com', '3 items', 'Narayanganj', 'Customers/tumpa.png'),
(3, 'Kona', 'new', 'kona@gmail.com', '10 items', 'Barisal', 'Customers/kona.png'),
(4, 'Christine Rubio', 'Regular', 'christine@gmail.com', '12 items', 'Nasipit Talamban', 'Customers/pro3.png'),
(5, 'Justine Ambrad', 'New', 'justine@gmail.com', '3 items', 'Talamban', 'Customers/capture.png'),
(6, 'Rubylyn Hernani', 'New', 'rubylyn@gmail.com', '4 items', 'Talamban', 'Customers/cute.png'),
(7, 'Jurick Baybayanon', 'New', 'jurick@gmail.com', '5 items', 'Talamaban', 'Customers/cutest.png'),
(8, 'Melchor Casipong\r\n', 'New', 'melchor@gmail.com', '7 items', 'Talamban', 'Customers/isogkakol.png'),
(9, 'Ericka Gwapa', 'New', 'ericka@gmail.com', '10 items', 'Medellin', 'Customers/ericka.png');

-- --------------------------------------------------------

--
-- Table structure for table `deactivate`
--

CREATE TABLE `deactivate` (
  `id` int(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deactivate`
--

INSERT INTO `deactivate` (`id`, `username`, `password`) VALUES
(14, 'Dada', 'gwapo123');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bought` int(11) NOT NULL DEFAULT 0,
  `sold` int(11) NOT NULL DEFAULT 0,
  `image` varchar(300) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `bought`, `sold`, `image`, `created_at`, `updated_at`) VALUES
(14, 'Shampoo', 100, 38, 'Uploads/shampoo-removebg-preview.png', '2021-03-27 23:13:25', '2021-03-27 23:13:25'),
(19, 'Honey', 50, 12, 'uploads/honey', '2021-03-30 13:33:28', '2021-04-09 15:33:28'),
(20, 'Moisturizer', 100, 34, 'Uploads/cream-removebg-preview.png', '2021-03-30 13:34:01', '2021-03-30 13:34:01'),
(22, 'Hand Wash', 500, 122, 'Uploads/hand-removebg-preview.png', '2021-03-30 13:34:45', '2021-03-30 13:34:45'),
(23, 'Milk Powder', 40, 9, 'Uploads/milk-removebg-preview.png', '2021-03-30 13:35:07', '2021-03-30 13:35:07'),
(24, 'Soap Bar', 700, 204, 'Uploads/soap-removebg-preview.png', '2021-03-30 13:38:01', '2021-03-30 13:38:01'),
(28, 'Tooth Paste', 130, 35, 'Uploads/toothpaste-removebg-preview.png', '2021-03-30 15:16:45', '2021-03-30 15:16:45'),
(30, 'Sunscreen', 56, 11, 'Uploads/sun-removebg-preview.png', '2021-03-31 01:32:14', '2021-03-31 01:32:14'),
(31, 'Green Tea', 130, 50, 'Uploads/green-removebg-preview.png', '2021-03-31 01:43:42', '2021-04-08 11:43:42'),
(32, 'Glucose', 234, 43, 'Uploads/glucose-removebg-preview.png', '2021-03-31 01:45:21', '2021-03-31 01:45:21'),
(33, 'Body Lotion', 58, 11, 'Uploads/body-removebg-preview.png', '2021-04-04 23:08:38', '2021-04-04 23:08:38'),
(36, 'Tooth Brush', 100, 50, '', '2021-05-23 10:29:42', '2021-05-23 10:29:42'),
(37, 'Alcohol', 500, 20, '', NULL, '2021-05-23 20:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(11, 'Daryll', 'gwapo123'),
(13, 'angelica', 'angelica'),
(19, 'Angel', 'angel');

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(100) DEFAULT NULL,
  `last_login_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`id`, `name`, `u_name`, `email`, `password`, `is_active`, `is_admin`, `avatar`, `last_login_time`, `created_at`) VALUES
(20, 'Angelica', 'angelica_guapa', 'angelica@gmail.com', 'a0c0f2e61894407cd906b2a0d4f8b257', 1, 0, 'Users/2021-04-14.jpg', '2021-05-29 04:59:33', '2021-05-13 22:13:02'),
(21, 'Daryll', 'dada165', 'daryll@gmail.com', 'gwapodaryll', 1, 0, 'Users/dscf2617.jpg', '2021-05-28 06:02:02', '2021-05-14 14:11:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_products`
--
ALTER TABLE `archive_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deactivate`
--
ALTER TABLE `deactivate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive_products`
--
ALTER TABLE `archive_products`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers_info`
--
ALTER TABLE `customers_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `deactivate`
--
ALTER TABLE `deactivate`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
