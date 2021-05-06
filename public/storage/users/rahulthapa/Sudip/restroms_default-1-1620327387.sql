-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 09:42 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restroms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `check_ins`
--

CREATE TABLE `check_ins` (
  `id` int(11) NOT NULL,
  `room_id` bigint(20) NOT NULL,
  `guest_id` bigint(20) NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `no_of_adults` int(11) NOT NULL,
  `no_of_childrens` int(11) NOT NULL,
  `id_type` varchar(191) NOT NULL,
  `id_no` varchar(191) NOT NULL,
  `gross_amount` varchar(191) NOT NULL,
  `discount_amount` varchar(191) NOT NULL,
  `net_amount` varchar(191) NOT NULL,
  `note` text DEFAULT NULL,
  `check_in_date_time` varchar(191) NOT NULL,
  `check_out_date_time` varchar(191) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `pan_vat_no` varchar(100) NOT NULL,
  `service_charge_value` varchar(255) DEFAULT NULL,
  `vat_charge_value` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL,
  `fonepay_merchant_code` varchar(191) DEFAULT NULL,
  `fonepay_secret_key` varchar(191) DEFAULT NULL,
  `vat_status` tinyint(1) NOT NULL,
  `fiscal_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `pan_vat_no`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`, `fonepay_merchant_code`, `fonepay_secret_key`, `vat_status`, `fiscal_year`) VALUES
(1, 'RestroMS', '000000000', '', '', 'Butwal-03, Golpark', '9800000000', 'Nepal', '                                       ', 'NPR', NULL, NULL, 0, '77/78');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `gender` tinyint(10) NOT NULL,
  `status` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `day_register`
--

CREATE TABLE `day_register` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `date` varchar(100) NOT NULL,
  `opening_balance` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fonepay`
--

CREATE TABLE `fonepay` (
  `id` bigint(20) NOT NULL,
  `merchant_code` varchar(191) NOT NULL,
  `secret_key` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Super Administrator', 'a:60:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createStore\";i:9;s:11:\"updateStore\";i:10;s:9:\"viewStore\";i:11;s:11:\"deleteStore\";i:12;s:11:\"createTable\";i:13;s:11:\"updateTable\";i:14;s:9:\"viewTable\";i:15;s:11:\"deleteTable\";i:16;s:14:\"createCategory\";i:17;s:14:\"updateCategory\";i:18;s:12:\"viewCategory\";i:19;s:14:\"deleteCategory\";i:20;s:18:\"createRoomCategory\";i:21;s:18:\"updateRoomCategory\";i:22;s:16:\"viewRoomCategory\";i:23;s:18:\"deleteRoomCategory\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:10:\"createRoom\";i:29;s:10:\"updateRoom\";i:30;s:8:\"viewRoom\";i:31;s:10:\"deleteRoom\";i:32;s:17:\"createOnlineOrder\";i:33;s:17:\"updateOnlineOrder\";i:34;s:15:\"viewOnlineOrder\";i:35;s:17:\"deleteOnlineOrder\";i:36;s:11:\"createOrder\";i:37;s:11:\"updateOrder\";i:38;s:9:\"viewOrder\";i:39;s:11:\"deleteOrder\";i:40;s:18:\"createSpecialOffer\";i:41;s:18:\"updateSpecialOffer\";i:42;s:16:\"viewSpecialOffer\";i:43;s:18:\"deleteSpecialOffer\";i:44;s:10:\"viewReport\";i:45;s:13:\"updateCompany\";i:46;s:11:\"viewCompany\";i:47;s:11:\"viewProfile\";i:48;s:11:\"viewSetting\";i:49;s:13:\"updatePrinter\";i:50;s:11:\"viewPrinter\";i:51;s:13:\"createMessage\";i:52;s:13:\"createFonepay\";i:53;s:13:\"updateFonepay\";i:54;s:11:\"viewFonepay\";i:55;s:13:\"deleteFonepay\";i:56;s:18:\"createNotification\";i:57;s:18:\"updateNotification\";i:58;s:16:\"viewNotification\";i:59;s:18:\"deleteNotification\";}'),
(2, 'Admin', 'a:31:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:11:\"createGroup\";i:4;s:11:\"updateGroup\";i:5;s:9:\"viewGroup\";i:6;s:11:\"createStore\";i:7;s:11:\"updateStore\";i:8;s:9:\"viewStore\";i:9;s:11:\"createTable\";i:10;s:11:\"updateTable\";i:11;s:9:\"viewTable\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:13:\"createProduct\";i:16;s:13:\"updateProduct\";i:17;s:11:\"viewProduct\";i:18;s:11:\"createOrder\";i:19;s:11:\"updateOrder\";i:20;s:9:\"viewOrder\";i:21;s:10:\"viewReport\";i:22;s:13:\"updateCompany\";i:23;s:11:\"viewCompany\";i:24;s:11:\"viewProfile\";i:25;s:11:\"viewSetting\";i:26;s:13:\"updatePrinter\";i:27;s:11:\"viewPrinter\";i:28;s:13:\"createFonepay\";i:29;s:13:\"updateFonepay\";i:30;s:11:\"viewFonepay\";}'),
(3, 'Cashier', 'a:4:{i:0;s:11:\"createOrder\";i:1;s:11:\"updateOrder\";i:2;s:9:\"viewOrder\";i:3;s:11:\"viewProfile\";}');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `mobile_no` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_deliveries`
--

CREATE TABLE `home_deliveries` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge_amount` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hd_staff_id` bigint(20) DEFAULT NULL,
  `hd_no` bigint(20) NOT NULL,
  `paid_status` int(11) NOT NULL DEFAULT 2,
  `payment_method` varchar(100) NOT NULL DEFAULT 'Cash',
  `store_id` int(11) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `is_printed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `home_delivery_items`
--

CREATE TABLE `home_delivery_items` (
  `id` int(11) NOT NULL,
  `home_delivery_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `plus_qty` int(10) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `product_store_id` int(100) NOT NULL,
  `is_new` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `operation` varchar(100) NOT NULL,
  `operation_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `online_orders`
--

CREATE TABLE `online_orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `order_no` varchar(191) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hd_staff_id` bigint(20) DEFAULT NULL,
  `paid_status` int(11) NOT NULL,
  `payment_method` varchar(100) NOT NULL DEFAULT 'Cash',
  `store_id` int(11) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `is_printed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `online_order_items`
--

CREATE TABLE `online_order_items` (
  `id` int(11) NOT NULL,
  `online_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `plus_quantity` int(10) NOT NULL,
  `rate` varchar(181) NOT NULL,
  `amount` varchar(181) NOT NULL,
  `product_store_id` int(11) NOT NULL,
  `is_new` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge_amount` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL DEFAULT 2,
  `payment_method` varchar(100) NOT NULL DEFAULT 'Cash',
  `store_id` int(11) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `is_printed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `plus_qty` int(10) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `product_store_id` int(100) NOT NULL,
  `is_new` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` text NOT NULL,
  `store_id` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `active` int(11) NOT NULL,
  `rank` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_category_id` int(11) NOT NULL,
  `name_no` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `floor` varchar(191) NOT NULL,
  `no_of_bed` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT 1,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `room_category`
--

CREATE TABLE `room_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `room_orders`
--

CREATE TABLE `room_orders` (
  `id` int(11) NOT NULL,
  `check_in_id` bigint(20) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` bigint(20) NOT NULL,
  `paid_status` int(11) NOT NULL DEFAULT 2,
  `payment_method` varchar(100) NOT NULL DEFAULT 'Cash',
  `store_id` int(11) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `is_printed` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `room_order_items`
--

CREATE TABLE `room_order_items` (
  `id` int(11) NOT NULL,
  `room_order_id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `plus_quantity` int(10) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `product_store_id` int(100) NOT NULL,
  `is_new` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `room_reservations`
--

CREATE TABLE `room_reservations` (
  `id` bigint(20) NOT NULL,
  `room_reservation_no` varchar(191) DEFAULT NULL,
  `room_id` bigint(20) NOT NULL,
  `guest_id` bigint(20) DEFAULT NULL,
  `price` varchar(191) NOT NULL,
  `check_in_date_time` timestamp NULL DEFAULT NULL,
  `check_out_date_time` timestamp NULL DEFAULT NULL,
  `no_of_days` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shift_changes`
--

CREATE TABLE `shift_changes` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `shift_date` varchar(191) NOT NULL,
  `session_start_time` varchar(191) NOT NULL,
  `session_end_time` varchar(191) NOT NULL,
  `working_hour` varchar(191) NOT NULL,
  `total_paid_bills` int(11) NOT NULL,
  `total_unpaid_bills` int(11) NOT NULL,
  `shift_amount` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `specialoffer`
--

CREATE TABLE `specialoffer` (
  `id` int(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `discount_percent` int(100) NOT NULL,
  `active` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `printer_ip` varchar(300) NOT NULL,
  `printer_port` int(100) NOT NULL,
  `printer_name` varchar(100) NOT NULL,
  `printer_status` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`, `printer_ip`, `printer_port`, `printer_name`, `printer_status`) VALUES
(1, 'Counter', 1, '192.168.1.10', 9100, 'Counter Printer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `available` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `take_aways`
--

CREATE TABLE `take_aways` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge_amount` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tw_no` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL DEFAULT 2,
  `store_id` int(11) NOT NULL,
  `payment_method` varchar(100) NOT NULL DEFAULT 'Cash',
  `remark` varchar(250) NOT NULL,
  `is_printed` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `take_away_items`
--

CREATE TABLE `take_away_items` (
  `id` int(11) NOT NULL,
  `take_away_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `plus_qty` int(10) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `product_store_id` int(100) NOT NULL,
  `is_new` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`, `store_id`) VALUES
(1, 'superadministrator', '$2b$10$arLFc0tNBECD4qZ5FMsqTeRvinM7r/ICWTstbGGqnD9qT12K2I4XK', 'super@administrator.com', 'Super', 'Administrator', '9816491822', 1, 1),
(2, 'adminmyself', '$2y$10$aQDPV0HnsuhWKNWNzljEZO1kJe6f1dEwPH988GXHz4Xx3cE7YNBHy', 'admin@myself.com', 'Admin', 'Myself', '9812345678', 1, 1),
(3, 'cashiermyself', '$2y$10$K5us/5VRxvj6Ywwap/IrHOCF7q2Of3FDdYT.Fi1L4x40FxHoz2WYa', 'cashier@myself.com', 'Cashier', 'Myself', '9876543210', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_ins`
--
ALTER TABLE `check_ins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `day_register`
--
ALTER TABLE `day_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fonepay`
--
ALTER TABLE `fonepay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_deliveries`
--
ALTER TABLE `home_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_delivery_items`
--
ALTER TABLE `home_delivery_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_orders`
--
ALTER TABLE `online_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_order_items`
--
ALTER TABLE `online_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_category`
--
ALTER TABLE `room_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_orders`
--
ALTER TABLE `room_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_order_items`
--
ALTER TABLE `room_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_reservations`
--
ALTER TABLE `room_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift_changes`
--
ALTER TABLE `shift_changes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialoffer`
--
ALTER TABLE `specialoffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `take_aways`
--
ALTER TABLE `take_aways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `take_away_items`
--
ALTER TABLE `take_away_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `check_ins`
--
ALTER TABLE `check_ins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `day_register`
--
ALTER TABLE `day_register`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fonepay`
--
ALTER TABLE `fonepay`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_deliveries`
--
ALTER TABLE `home_deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_delivery_items`
--
ALTER TABLE `home_delivery_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_orders`
--
ALTER TABLE `online_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_order_items`
--
ALTER TABLE `online_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_category`
--
ALTER TABLE `room_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_orders`
--
ALTER TABLE `room_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_order_items`
--
ALTER TABLE `room_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_reservations`
--
ALTER TABLE `room_reservations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shift_changes`
--
ALTER TABLE `shift_changes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialoffer`
--
ALTER TABLE `specialoffer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `take_aways`
--
ALTER TABLE `take_aways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `take_away_items`
--
ALTER TABLE `take_away_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
