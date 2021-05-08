-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 12:03 PM
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
-- Database: `daddyskitchen`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Espresso Based Drink', 'espresso-based-drink', NULL, '2020-10-22 06:33:42', '2020-10-22 06:33:42'),
(2, 'Coffee Alternative', 'coffee-alternative', NULL, '2020-10-22 06:33:42', '2020-10-22 06:33:42'),
(3, 'Iced Beverages', 'iced-beverages', NULL, '2020-10-22 06:33:42', '2020-10-22 06:33:42'),
(4, 'Frappuccino', 'frappuccino', NULL, '2020-10-22 06:33:42', '2020-10-22 06:33:42'),
(5, 'Shakes & Smoothies', 'shakes-smoothies', NULL, '2020-10-22 06:33:42', '2020-10-22 06:33:42'),
(6, 'Refreshners', 'refreshners', NULL, '2020-10-22 06:33:42', '2020-10-22 06:33:42'),
(7, 'Soups', 'soups', NULL, '2020-10-22 06:33:43', '2020-10-22 06:33:43'),
(8, 'Cold drink', 'cold-drink', NULL, '2020-10-22 06:33:43', '2020-10-22 06:33:43'),
(9, 'Breakfast', 'breakfast', NULL, '2020-10-22 06:33:43', '2020-10-22 06:33:43'),
(10, 'Fried Chicken', 'fried-chicken', NULL, '2020-10-22 06:33:43', '2020-10-22 06:33:43'),
(11, 'Chilly', 'chilly', NULL, '2020-10-22 06:33:43', '2020-10-22 06:33:43'),
(12, 'Daddy\'s Special', 'daddy-s-special', NULL, '2020-10-22 06:33:43', '2020-10-22 06:33:43'),
(13, 'veg apetizer', 'veg-apetizer', NULL, '2020-10-22 06:33:43', '2020-10-22 06:33:43'),
(14, 'Burgers', 'burgers', NULL, '2020-10-22 06:33:43', '2020-10-22 06:33:43'),
(15, 'Sandwich', 'sandwich', NULL, '2020-10-22 06:33:43', '2020-10-22 06:33:43'),
(16, 'Pizza', 'pizza', NULL, '2020-10-22 06:33:43', '2020-10-22 06:33:43'),
(17, 'Pasta', 'pasta', NULL, '2020-10-22 06:33:43', '2020-10-22 06:33:43'),
(18, 'Sizzler', 'sizzler', NULL, '2020-10-22 06:33:43', '2020-10-22 06:33:43'),
(19, 'Momos', 'momos', NULL, '2020-10-22 06:33:43', '2020-10-22 06:33:43'),
(20, 'Noodles', 'noodles', NULL, '2020-10-22 06:33:44', '2020-10-22 06:33:44'),
(21, 'Thukpa', 'thukpa', NULL, '2020-10-22 06:33:44', '2020-10-22 06:33:44'),
(22, 'Chopsey', 'chopsey', NULL, '2020-10-22 06:33:44', '2020-10-22 06:33:44'),
(23, 'Fried rice', 'fried-rice', NULL, '2020-10-22 06:33:44', '2020-10-22 06:33:44'),
(24, 'Gravy', 'gravy', NULL, '2020-10-22 06:33:44', '2020-10-22 06:33:44'),
(25, 'Sea food', 'sea-food', NULL, '2020-10-22 06:33:44', '2020-10-22 06:33:44'),
(26, 'Dum briyani', 'dum-briyani', NULL, '2020-10-22 06:33:44', '2020-10-22 06:33:44'),
(27, 'Icecream', 'icecream', NULL, '2020-10-22 06:33:44', '2020-10-22 06:33:44'),
(28, 'Bakery', 'bakery', NULL, '2020-10-22 06:33:44', '2020-10-22 06:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_no` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_third_party` tinyint(4) NOT NULL DEFAULT 0,
  `facebook` tinyint(4) NOT NULL DEFAULT 0,
  `instagram` tinyint(4) NOT NULL DEFAULT 0,
  `twitter` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `username`, `email`, `email_verified_at`, `mobile_no`, `address`, `gender`, `password`, `profile_image`, `cover_image`, `promo_code`, `otp`, `display_name`, `reward_point`, `is_third_party`, `facebook`, `instagram`, `twitter`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rahul', 'Thapa', 'rahulthapa', NULL, NULL, '9816491822', NULL, NULL, '$2y$10$noukZyV4vh4dUnxEbvVACevZtiXXYZnwFDLxTlz3JVe7MuqpT1RS2', NULL, NULL, NULL, 421621, 'Rahul Thapa', '0', 0, 0, 0, 0, 1, NULL, '2020-09-08 13:13:41', '2020-11-22 14:26:00'),
(23, 'Rahul Thapa', 'Magar', 'rahulthapamagar', 'apahtluhar@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$HjYpRiG9BquLFLDUDTPGiOyt5.31wnxVdo2nRezJsD6g/bTIzZ2.W', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=763648151036643&height=50&width=50&ext=1602569858&hash=AeTizrcV_oaxSstB', NULL, NULL, NULL, 'Rahul Thapa Magar', '0', 1, 0, 0, 0, 0, NULL, '2020-09-13 06:17:40', '2020-09-13 06:17:40'),
(24, 'Rahul', 'Thapa', 'rahulmagar', 'rahulthapaofficial@gmail.com', NULL, '9843986469', NULL, NULL, '$2y$10$.rEX5odjHNmpe1bGuiccoerZsD1U5G9N7i7tc6ggfqTgzu43qtk6q', NULL, NULL, NULL, 738474, 'Rahul Thapa', '0', 0, 0, 0, 0, 1, NULL, '2020-09-13 06:18:35', '2020-09-14 09:40:16'),
(48, 'Surojan', 'Malla', 'surojanmalla', NULL, NULL, '9843551153', NULL, NULL, '$2y$10$8Wy1fAacjvqNuYOV7vx3xeneEI0MQbXIX4I.Dor1B5X5rauIwMHMG', NULL, NULL, NULL, 330775, 'Surojan Malla', '0', 0, 0, 0, 0, 1, NULL, '2020-09-13 11:50:38', '2020-09-13 11:51:22'),
(49, 'krishna', 'adhikari', 'krishnaadhikari-dk49', NULL, NULL, '9857057855', NULL, NULL, '$2y$10$ZxFBhn0B53bjtrHIvRtE3uCnGPNbknsgU2EglmLqVK7oOqG7y.9E.', NULL, NULL, NULL, 508239, 'krishna adhikari', '0', 0, 0, 0, 0, 1, NULL, '2020-09-14 13:28:48', '2020-09-14 13:29:49'),
(50, 'sarita', 'pathak', 'saritapathak-dk50', NULL, NULL, '9842919768', NULL, NULL, '$2y$10$oztY4HM0CchT/CkyYF.UQeeZf7fVDkxcDl.fETQNuaiktnT/PFozm', NULL, NULL, NULL, 215263, 'sarita pathak', '0', 0, 0, 0, 0, 1, NULL, '2020-10-02 17:05:14', '2020-10-02 17:05:50'),
(51, 'rahul', 'bharma', 'rahulbharma-dk51', NULL, NULL, '9805454000', NULL, NULL, '$2y$10$fU.dj111uIkMYXGxZFTAKOlV2OoxchC2UH9zSX3EFUyOo7MyAImii', NULL, NULL, NULL, 691881, 'rahul bharma', '0', 0, 0, 0, 0, 1, NULL, '2020-10-03 13:27:29', '2020-10-03 13:28:32'),
(53, 'iamReet', '😂', 'amreetsharma-dk53', 'iamreet12@gmail.com', NULL, '9847530317', NULL, NULL, '$2y$10$.ltwduSnfBFB0QKyhMN3..SpNKT6Xa252U4wEu9LXa/QItQWYJLVC', NULL, NULL, NULL, 948679, 'iamReet 😂', '0', 0, 0, 0, 0, 1, NULL, '2020-10-15 07:39:33', '2020-11-12 09:16:49'),
(54, 'daddys', 'kitchen', 'daddyskitchen-dk54', NULL, NULL, '9802672008', NULL, NULL, '$2y$10$oKRMFiRp05IlTZoBce4KhO3ysPGeqkdqqetd2e9rcXNq5LMK4gwAa', NULL, NULL, NULL, 754984, 'daddys kitchen', '0', 0, 0, 0, 0, 1, NULL, '2020-10-15 07:51:25', '2020-10-15 07:52:48'),
(55, 'sarita', 'Kunwar', 'saritakunwar-dk55', NULL, NULL, '9824407007', NULL, NULL, '$2y$10$yf8XiuVycpCkrMB7WSxe6etxCRE9N.bxnVAqDjzUBUh/N/r72QClm', NULL, NULL, NULL, 311968, 'sarita Kunwar', '0', 0, 0, 0, 0, 1, NULL, '2020-10-15 07:53:03', '2020-10-15 07:53:38'),
(56, 'Pratham', 'Prajuli', 'prathamprajuli-dk56', NULL, NULL, '9857056262', NULL, NULL, '$2y$10$mH1GN.KI.tgAgwrymL7eW.09j1MAU1aGeO6pkF3tlr9GHE7Zq3zgi', NULL, NULL, NULL, 343099, 'Pratham Prajuli', '0', 0, 0, 0, 0, 0, NULL, '2020-10-16 14:11:38', '2020-10-16 14:11:38'),
(57, 'devraj', 'pokhrel', 'devrajpokhrel-dk57', NULL, NULL, '9801060310', NULL, NULL, '$2y$10$OP6byU9xxK7pRW6rs3d5YuMXOJtBvyMUGPY1c5KO3.hM.AIhpH27O', NULL, NULL, NULL, 212419, 'devraj pokhrel', '0', 0, 0, 0, 0, 1, NULL, '2020-10-17 10:49:13', '2020-10-17 10:49:36'),
(58, 'Sishir', 'Gaire', 'sushilgaire', 'sushil@gmail.com', NULL, '9800000000', NULL, NULL, '$2y$10$zZB4D7LTnef07/oQ3PVB5eXxdhjJ5CUXtaNWrEe.0gzf/aJbMfk3q', NULL, NULL, NULL, 964792, 'Sishir Gaire', '0', 0, 0, 0, 0, 1, NULL, '2020-10-17 15:47:22', '2020-11-28 04:01:19'),
(59, 'Rohit', 'Bhandari', 'rohitbhandari-dk59', NULL, NULL, '9845226636', NULL, NULL, '$2y$10$uuqcyPAWzv/po2PiTf/UtupfftIkmw5/BZAUvJCeHdaMIOJAw2Qn.', NULL, NULL, NULL, 631861, 'Rohit Bhandari', '0', 0, 0, 0, 0, 1, NULL, '2020-10-21 07:57:07', '2020-10-21 07:57:25'),
(60, 'Sabu', 'Pokhrel', 'sabupokhrel-dk60', NULL, NULL, NULL, NULL, NULL, '$2y$10$bC3f4RapZnx2cQB5NAZAjO9rZERwa4BLTV5tyB4pTb9VzuWzmgSmm', 'https://scontent.fktm1-2.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&_nc_sid=12b3be&_nc_ohc=Y0gdFb4wzSYAX_JKfLx&_nc_oc=AQnszJzs2m_2LNH4UY53baitFcP01ZOmfGK9ik2NAgTQGSjCCtOi2X4Y9J6yj2hdES0&_nc_ht=scontent.fktm1-2.fna&_nc_tp=27&oh=308f2a7783ec04458815be79d0f2156b&oe=5FB4A2B8', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-10-21 15:58:11', '2020-10-21 15:58:11'),
(61, 'Sabu', 'Pokhrel', 'sabupokhrel-dk61', NULL, NULL, NULL, NULL, NULL, '$2y$10$iyRNLdNaAklGpPLvDh0vf.i.MnYedcikGORrgO7D93IysbiwYvU/.', 'https://scontent.fktm1-2.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&_nc_sid=12b3be&_nc_ohc=Y0gdFb4wzSYAX_JKfLx&_nc_oc=AQnszJzs2m_2LNH4UY53baitFcP01ZOmfGK9ik2NAgTQGSjCCtOi2X4Y9J6yj2hdES0&_nc_ht=scontent.fktm1-2.fna&_nc_tp=27&oh=308f2a7783ec04458815be79d0f2156b&oe=5FB4A2B8', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-10-21 16:05:45', '2020-10-21 16:05:45'),
(62, 'Sushil', 'Gaire', 'sushilgaire-dk62', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$14a3MpAFQsB/R2tO4EBUge2WsPcf.gPAvtVOBXNPcG6Adlcl9lJfm', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1505210079665090&height=50&width=50&ext=1605965692&hash=AeQgRex_KvevbUYb4n8', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-10-22 13:34:56', '2020-10-22 13:34:56'),
(63, 'Rahul', 'Thapa', 'rahulthapa-dk63', 'rahulthapa043@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$XL/OD/WJgSX5vNO33KIwTu8ix0wediFtH7CNx2/X3Ulr3ArEXHaSe', 'https://lh3.googleusercontent.com/a-/AOh14Gi-0zAugIm4o1ApsqsUcFLwY1w8CR84_NgLFWeiRA=s96-c', NULL, NULL, NULL, 'Rahul Thapa', '0', 1, 0, 0, 0, 0, NULL, '2020-10-24 07:38:38', '2020-10-24 07:38:38'),
(64, 'Pharid', 'Ali', 'pharidali-dk64', NULL, NULL, '9868606202', NULL, NULL, '$2y$10$/XvjyxXBIyQ0icK6m/cKW.FzXgq7KiTFziFp2rq.bSXRSdBHI5MPq', NULL, NULL, NULL, 275564, 'Pharid Ali', '0', 0, 0, 0, 0, 1, NULL, '2020-10-27 22:38:59', '2020-10-27 22:39:16'),
(65, 'Sabu', 'Pokhrel', 'sabupokhrel-dk65', NULL, NULL, NULL, NULL, NULL, '$2y$10$/EFEHRTK7l4g8njOSaTY.Owcw0uQQil6rQ/WkzXn8yyi/RU7XfCyW', 'https://scontent.fbwa3-1.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=2&_nc_sid=12b3be&_nc_ohc=ZEui8MAu8YMAX8m5794&_nc_oc=AQkhLDN4SMa5cw5zOHD0mqWju5g6VVBWUZ5Apt9NxAf-ZQOnBSwFI9ly3A-BTdERr6o&_nc_ht=scontent.fbwa3-1.fna&tp=27&oh=dc417643d447f06ef39c26c240fc1bdc&oe=5FC08038', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-10-30 14:51:49', '2020-10-30 14:51:49'),
(76, 'Sushil', 'Gaire', 'sushilgaire-dk76', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$Gv9tn7a.AWDW9BubimIVs.K.dTMHFuJgpsek1NriY.tdXnptETB76', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1505210079665090&height=50&width=50&ext=1606662670&hash=AeRMRPw3Tbvj76zv_sw', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-10-30 15:11:12', '2020-10-30 15:11:12'),
(77, 'Sabu', 'Pokhrel', 'sabupokhrel-dk77', NULL, NULL, NULL, NULL, NULL, '$2y$10$aNBrDRUc9ZSgMgDzBoRQjeO/e7uss1vjn.kHXsvagOmcy.ct20Oby', 'https://scontent.fbwa3-1.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=2&_nc_sid=12b3be&_nc_ohc=ZEui8MAu8YMAX8m5794&_nc_oc=AQkhLDN4SMa5cw5zOHD0mqWju5g6VVBWUZ5Apt9NxAf-ZQOnBSwFI9ly3A-BTdERr6o&_nc_ht=scontent.fbwa3-1.fna&tp=27&oh=dc417643d447f06ef39c26c240fc1bdc&oe=5FC08038', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-10-30 15:12:31', '2020-10-30 15:12:31'),
(78, 'Sushil', 'Gaire', 'sushilgaire-dk78', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$eOsBH2MiVLKXL.SRxtOyn.1pLB94WBG2UPiPdxVOEQ9b7Fa1DViea', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1505210079665090&height=50&width=50&ext=1606787463&hash=AeTnpj6Fe1jn2wLTF_Q', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-01 01:51:14', '2020-11-01 01:51:14'),
(79, 'Manorath', 'Aryal', 'manoratharyal-dk79', NULL, NULL, '9857039296', NULL, NULL, '$2y$10$tNnO2WeRdVwSnkv6U3eAH.PAQETS2ygo57mtSDyDQTw3V3tqKkmXC', NULL, NULL, NULL, 210930, 'Manorath Aryal', '0', 0, 0, 0, 0, 1, NULL, '2020-11-01 12:04:25', '2020-11-01 12:05:32'),
(80, 'Krishna', 'Bashyal', 'krishnabashyal-dk80', NULL, NULL, '9847015775', NULL, NULL, '$2y$10$K/VeaSgJyzGO.eR3xQzY4eU8KNUX2Zcv.EX9XrdQd4UScYDAXt9lO', NULL, NULL, NULL, 197548, 'Krishna Bashyal', '0', 0, 0, 0, 0, 1, NULL, '2020-11-01 14:38:54', '2020-11-01 14:39:24'),
(81, 'pratiksha', 'papu', 'pratikshapapu-dk81', NULL, NULL, '9843432022', NULL, NULL, '$2y$10$UwfxHn67LauuEPY/fHGIiuOZbShZ6OII90OVaWsQmGFCLOoozmdP.', NULL, NULL, NULL, 438543, 'pratiksha papu', '0', 0, 0, 0, 0, 1, NULL, '2020-11-01 18:06:39', '2020-11-01 18:07:22'),
(82, 'Pramod', 'Bashyal', 'pramodbashyal-dk82', NULL, NULL, '9840606414', NULL, NULL, '$2y$10$ngjSYFBRY9xFqmWJGzPFo.mJezqsMkCW1r2GW89jWf9mjlaoNnzF.', NULL, NULL, NULL, 406456, 'Pramod Bashyal', '0', 0, 0, 0, 0, 1, NULL, '2020-11-02 07:56:58', '2020-11-02 07:57:31'),
(83, 'manoj', 'KC', 'manojkc-dk83', NULL, NULL, '9804424446', NULL, NULL, '$2y$10$vhIOSGq3ChK1wsA0oncJEelaU7U3rqt9Y4saD7Dgpr7PZ2ZldGgu.', NULL, NULL, NULL, 974075, 'manoj KC', '0', 0, 0, 0, 0, 1, NULL, '2020-11-02 12:25:17', '2020-11-02 12:26:27'),
(84, 'safal', 'shrestha', 'safalshrestha-dk84', NULL, NULL, '9813459818', NULL, NULL, '$2y$10$wLyWlK1m8xKkep8dMBql1e2pg7CauHanHEkaaukjvnYGahTKJM9py', NULL, NULL, NULL, 321715, 'safal shrestha', '0', 0, 0, 0, 0, 1, NULL, '2020-11-02 12:25:29', '2020-11-02 12:26:28'),
(85, 'shridhar', 'neupane', 'shridharneupane-dk85', NULL, NULL, '9805433290', NULL, NULL, '$2y$10$sqbF1Fb3sTdo3C6La5iI5.DHNHStjJtUbzsUxyGo0kc/txuu/AS56', NULL, NULL, NULL, 595182, 'shridhar neupane', '0', 0, 0, 0, 0, 1, NULL, '2020-11-02 14:34:12', '2020-11-02 14:34:25'),
(86, 'Dwight', 'Schrute', 'dwightschrute-dk86', 'geogatedproject74@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$GJ1tP6PLTtNyYnFJqoZoSODSupLlSjGE3LSCsPcT/dgkWCTOlAk/2', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=122043031209639597&height=50&width=50&ext=1606922152&hash=AeSDLVKKKXCIvUifgPE', NULL, NULL, NULL, 'Dwight Schrute', '0', 1, 0, 0, 0, 0, NULL, '2020-11-02 15:15:52', '2020-11-02 15:15:53'),
(87, 'aslam', 'khan', 'aslamkhan-dk87', NULL, NULL, '9867923786', NULL, NULL, '$2y$10$ZJzyi3G2nzmyJGpYrFxQ2eyrxrnh0/fFpq9ZwUi3EVWbSH/AuOjDi', NULL, NULL, NULL, 524805, 'aslam khan', '0', 0, 0, 0, 0, 1, NULL, '2020-11-02 15:35:24', '2020-11-02 15:36:29'),
(88, 'Stephanie', 'Peterson', 'stephaniepeterson-dk88', 'igmzenkvwk_1603267511@tfbnw.net', NULL, NULL, NULL, NULL, '$2y$10$tt0kQno73hFqCc0k0O9KVeZKLorkIaW4j/ZzblPAHRsjq50Q7Oz5e', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1001612955526&height=50&width=50&ext=1606924137&hash=AeRXORoBoYWO8tb_xS8', NULL, NULL, NULL, 'Stephanie Peterson', '0', 1, 0, 0, 0, 0, NULL, '2020-11-02 15:48:58', '2020-11-02 15:48:58'),
(89, 'puskar', 'karki', 'puskarkarki-dk89', NULL, NULL, '9863292652', NULL, NULL, '$2y$10$GIqw2qqXqM1HjEjovHBOvugVoJuHZqi4clLi4tP0pXaFPvXLshUs2', NULL, NULL, NULL, 287055, 'puskar karki', '0', 0, 0, 0, 0, 0, NULL, '2020-11-03 02:56:11', '2020-11-03 02:56:11'),
(90, 'sandeep', 'pandey', 'sandeeppandey-dk90', NULL, NULL, '9857078406', NULL, NULL, '$2y$10$qiN65ErVOrrzksSAIbF8IuRU.vVyODRvugyA16g7IXWd5LMhAwtp2', NULL, NULL, NULL, 226879, 'sandeep pandey', '0', 0, 0, 0, 0, 0, NULL, '2020-11-03 03:17:39', '2020-11-03 03:17:39'),
(91, 'suraj', 'bajracharya', 'surajbajracharya-dk91', NULL, NULL, '9807533200', NULL, NULL, '$2y$10$9rtPmv4tRp0.wIwvkmDfcu2V.KwOsZe08wdAC2mXaURiQNA1vpQaK', NULL, NULL, NULL, 722178, 'suraj bajracharya', '0', 0, 0, 0, 0, 1, NULL, '2020-11-03 03:58:38', '2020-11-03 03:59:27'),
(92, 'soni', 'keshari', 'sonikeshari-dk92', NULL, NULL, '9847245741', NULL, NULL, '$2y$10$Mh0tmlOEHTaQVS7GvZZTG.gq42qsSsUQQq78.N7.SwoAdhawMZ.a.', NULL, NULL, NULL, 349269, 'soni keshari', '0', 0, 0, 0, 0, 1, NULL, '2020-11-03 04:19:54', '2020-11-03 04:20:28'),
(93, 'Trishan', 'Shrestha', 'trishanshrestha-dk93', NULL, NULL, '9813489800', NULL, NULL, '$2y$10$61KwoS8v9gAytI7h4j49hOgZrC0NgNaa22nEKI5bS8KsjqCCnkJy2', NULL, NULL, NULL, 969787, 'Trishan Shrestha', '0', 0, 0, 0, 0, 1, NULL, '2020-11-03 05:05:57', '2020-11-03 05:06:25'),
(94, 'Binod', 'Shrestha', 'binodshrestha-dk94', NULL, NULL, '9867187838', NULL, NULL, '$2y$10$LS5bopMS4i.e2SWy6/DgVexffSnezWaaSLj3C1jzQxJTaLFBodZnu', NULL, NULL, NULL, 598104, 'Binod Shrestha', '0', 0, 0, 0, 0, 0, NULL, '2020-11-03 06:46:26', '2020-11-03 06:46:26'),
(95, 'safal', 'Shrestha', 'safalshrestha-dk95', NULL, NULL, '9867859899', NULL, NULL, '$2y$10$CBp2N07mq2VoWbOnP8qOQeJAWJreE7PooeY6YANwrB1i/DRBSSP4i', NULL, NULL, NULL, 511716, 'safal Shrestha', '0', 0, 0, 0, 0, 1, NULL, '2020-11-03 06:58:01', '2020-11-03 06:58:22'),
(96, 'Abish', 'Shrestha', 'abishshrestha-dk96', NULL, NULL, '9811558491', NULL, NULL, '$2y$10$T8o18PvAXrkHdaBxRN9Sqee3Deqydo0B/019gK/LOIfgwtsi2fKoO', NULL, NULL, NULL, 973083, 'Abish Shrestha', '0', 0, 0, 0, 0, 1, NULL, '2020-11-03 07:01:52', '2020-11-03 07:02:21'),
(97, 'Sabu', 'Pokhrel', 'sabupokhrel-dk97', NULL, NULL, NULL, NULL, NULL, '$2y$10$Z6lw6ScA3u1rTImNiUBZ7ujzdv3OSAy9C57Fw7BLv08QG38InH1.K', 'https://scontent.fktm1-1.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=2&_nc_sid=12b3be&_nc_ohc=5gXlCHqDx7oAX8V41WV&_nc_oc=AQmcYMYHZeA2KxklfB5zw7u9byt123E3LtiisHoALfgx8RdCdoQculcw3Kefb77fFLM&_nc_ht=scontent.fktm1-1.fna&tp=27&oh=5fbdaca28fea0319e6365fd65b435eaa&oe=5FC86938', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-11-03 09:55:40', '2020-11-03 09:55:40'),
(98, 'Sabu', 'Pokhrel', 'sabupokhrel-dk98', NULL, NULL, NULL, NULL, NULL, '$2y$10$snCu6qiZkeoSElaMmWm6dektQFiUKnuUfNRKIvtO9.86BB3dx316u', 'https://scontent.fktm1-1.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=2&_nc_sid=12b3be&_nc_ohc=5gXlCHqDx7oAX8V41WV&_nc_oc=AQmcYMYHZeA2KxklfB5zw7u9byt123E3LtiisHoALfgx8RdCdoQculcw3Kefb77fFLM&_nc_ht=scontent.fktm1-1.fna&tp=27&oh=5fbdaca28fea0319e6365fd65b435eaa&oe=5FC86938', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-11-03 09:55:41', '2020-11-03 09:55:41'),
(99, 'Sabu', 'Pokhrel', 'sabupokhrel-dk99', NULL, NULL, NULL, NULL, NULL, '$2y$10$ApfPg1grL79xKIFQJVUQ.useG0Apvg5zPo6EWv/Np9Jo9rqfu4Bsu', 'https://scontent.fktm1-1.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=2&_nc_sid=12b3be&_nc_ohc=5gXlCHqDx7oAX8V41WV&_nc_oc=AQmcYMYHZeA2KxklfB5zw7u9byt123E3LtiisHoALfgx8RdCdoQculcw3Kefb77fFLM&_nc_ht=scontent.fktm1-1.fna&tp=27&oh=5fbdaca28fea0319e6365fd65b435eaa&oe=5FC86938', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-11-03 09:59:05', '2020-11-03 09:59:05'),
(100, 'Sushil', 'Gaire', 'sushilgaire-dk100', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$4I30bAMP7XPFzRXDfrSosOKbNTyKNlxPsZYdvWrZNHMYrPmvRuFt2', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1505210079665090&height=50&width=50&ext=1606989732&hash=AeSLzizqc9XrvsAhQnM', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-03 10:02:13', '2020-11-03 10:02:14'),
(101, 'yogendra', 'shrestha', 'yogendrashrestha-dk101', NULL, NULL, '9857020924', NULL, NULL, '$2y$10$JsmfHu7EAofO3KjAKdpHouXM9lExGNrJcKFsZrIxxFKqJUlPM4I1K', NULL, NULL, NULL, 229905, 'yogendra shrestha', '0', 0, 0, 0, 0, 0, NULL, '2020-11-03 10:15:29', '2020-11-03 10:15:29'),
(102, 'yogendra', 'shrestha', 'yogendrashrestha-dk102', NULL, NULL, '9801720924', NULL, NULL, '$2y$10$xSH9M3FVCrpJ/Y8jwirbCOcSV5m7A069Skeq9DI2OJVVriOgp3qEq', NULL, NULL, NULL, 125554, 'yogendra shrestha', '0', 0, 0, 0, 0, 1, NULL, '2020-11-03 10:17:12', '2020-11-03 10:17:29'),
(103, 'sunil', 'malla', 'sunilmalla-dk103', NULL, NULL, '9824466168', NULL, NULL, '$2y$10$ttOSxZ0zBulvStuk4kWEfeXPe1nos6EELmZec6LI1gfVDYNTyO7NO', NULL, NULL, NULL, 496111, 'sunil malla', '0', 0, 0, 0, 0, 0, NULL, '2020-11-03 12:07:18', '2020-11-03 12:07:18'),
(104, 'divyata', 'acharya', 'divyataacharya-dk104', NULL, NULL, '9842361194', NULL, NULL, '$2y$10$Cgb.5D/aYKRSByAWeWYMfODdK8jXh37v8pYcjX/8EVjx7ruzUfjFC', NULL, NULL, NULL, 596055, 'divyata acharya', '0', 0, 0, 0, 0, 1, NULL, '2020-11-03 12:09:40', '2020-11-03 12:10:30'),
(105, 'Rabin', 'G C', 'rabingc-dk105', NULL, NULL, '9857048300', NULL, NULL, '$2y$10$D1uTEZReeMu8hbIWqTsEzOjh6NfIG0k.XdSkZR6js68KqFR7bYufS', NULL, NULL, NULL, 663692, 'Rabin G C', '0', 0, 0, 0, 0, 1, NULL, '2020-11-03 13:52:06', '2020-11-03 13:52:36'),
(106, 'Bidya', 'gc', 'bidyagc-dk106', NULL, NULL, '9844799115', NULL, NULL, '$2y$10$3QeBRlNM5Nszi7lfKsRrjumfh/SLRHWwX9PEMwRFWgMVzvRKf1Rb2', NULL, NULL, NULL, 566612, 'Bidya gc', '0', 0, 0, 0, 0, 0, NULL, '2020-11-04 06:20:24', '2020-11-04 06:20:24'),
(108, 'bidya', 'gc', 'bidyagc-dk108', NULL, NULL, '9811424755', NULL, NULL, '$2y$10$QZ2oZakTsIjXUptcuq2OZO9xKcPcjUdENBIofYvAXeOfuG1DgS52S', NULL, NULL, NULL, 438966, 'bidya gc', '0', 0, 0, 0, 0, 1, NULL, '2020-11-04 06:31:08', '2020-11-04 06:31:28'),
(109, 'Jharna shahi', 'thakuri', 'jharnashahithakuri-dk109', NULL, NULL, '9841145068', NULL, NULL, '$2y$10$Gf..6cqBw1CcmaELHChJ3edESsnyMRH87fo.MINBHW3hX3APRZsKa', NULL, NULL, NULL, 229695, 'Jharna shahi thakuri', '0', 0, 0, 0, 0, 1, NULL, '2020-11-05 05:22:15', '2020-11-05 05:22:34'),
(110, 'Nabin', 'Shrestha', 'nabinshrestha-dk110', NULL, NULL, '9851159104', NULL, NULL, '$2y$10$dzkksSsw1RqPuLN0M5bIq.Fwfyfujlx3fIZB5VvwhwJitJBglRlw6', NULL, NULL, NULL, 743068, 'Nabin Shrestha', '0', 0, 0, 0, 0, 1, NULL, '2020-11-05 05:31:44', '2020-11-05 05:32:35'),
(111, 'bikal', 'gharti', 'bikalgharti-dk111', NULL, NULL, '9847164663', NULL, NULL, '$2y$10$4DhQCxdxR.Bnd/kkjU/xsuHHC6Q6VXC0V0PnuxJX0LDCDDrhl5UAS', NULL, NULL, NULL, 417543, 'bikal gharti', '0', 0, 0, 0, 0, 1, NULL, '2020-11-05 09:01:01', '2020-11-05 09:01:48'),
(112, 'daddys', 'kitchen', 'daddyskitchen-dk112', NULL, NULL, '9002672008', NULL, NULL, '$2y$10$TqlKyt/3Ux75AbE4aRkPbuyqGPu6lfDo9bzd.3fYMECxBQJhZeVOO', NULL, NULL, NULL, 751176, 'daddys kitchen', '0', 0, 0, 0, 0, 0, NULL, '2020-11-05 11:55:57', '2020-11-05 11:55:58'),
(113, 'Kashish', 'Gurung', 'kashishgurung-dk113', NULL, NULL, '9812957067', NULL, NULL, '$2y$10$97gp6ztjYmj7wVqbAgnwyuGkyJAcOkO5uVJTbbKUWONsTdsfal5MK', NULL, NULL, NULL, 331302, 'Kashish Gurung', '0', 0, 0, 0, 0, 1, NULL, '2020-11-05 13:50:07', '2020-11-05 13:50:31'),
(114, 'Sneha', 'Darlami', 'snehadarlami-dk114', NULL, NULL, '9860316210', NULL, NULL, '$2y$10$n/t65yjR5qpxknBkUVwLPemUzl.nSWnR30W31amElcPL9rUVsWK.a', NULL, NULL, NULL, 787574, 'Sneha Darlami', '0', 0, 0, 0, 0, 1, NULL, '2020-11-06 04:22:51', '2020-11-06 04:23:18'),
(115, 'shristy', 'shrestha', 'shristyshrestha-dk115', NULL, NULL, '9867397677', NULL, NULL, '$2y$10$8/s.nJUqso8oGJXJTK1ho.oIHX94esT7cfxZSmMRT8JdIux8c2Jky', NULL, NULL, NULL, 816387, 'shristy shrestha', '0', 0, 0, 0, 0, 0, NULL, '2020-11-06 08:52:22', '2020-11-06 08:52:23'),
(117, 'Sushant', 'Bhandari', 'sushantbhandari-dk117', NULL, NULL, '9811548513', NULL, NULL, '$2y$10$kmZmrV73xUjpBMAQtAhpLOow5DRrbo5bt/RI08VoLr1w1kjYbAiyW', NULL, NULL, NULL, 248807, 'Sushant Bhandari', '0', 0, 0, 0, 0, 1, NULL, '2020-11-06 09:03:50', '2020-11-06 09:04:20'),
(118, 'aeo', 'productions', 'aeoproductions-dk118', NULL, NULL, '9827188775', NULL, NULL, '$2y$10$WKVTWnD.lEzNjKe6ITTWJeq/rtpCxJV/fVjkS2OVLpPQWSKiTmCcm', NULL, NULL, NULL, 288594, 'aeo productions', '0', 0, 0, 0, 0, 1, NULL, '2020-11-06 09:11:13', '2020-11-06 09:11:33'),
(119, 'Pramesh', 'Poudyal', 'prameshpoudyal-dk119', NULL, NULL, '9811444505', NULL, NULL, '$2y$10$jDTiSjSDCp0qpsQyRPBP1.RPCyh.vzSXz5dR.yWPac4jkrFfdaJ1W', NULL, NULL, NULL, 268417, 'Pramesh Poudyal', '0', 0, 0, 0, 0, 0, NULL, '2020-11-07 08:52:28', '2020-11-07 08:52:28'),
(120, 'Sushil', 'Gaire', 'sushilgaire-dk120', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$.7YjnqMPgHt/KajOyKV8EO2I351/wIYA7cj9iT6sY1oW1Tu1u9aku', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1505210079665090&height=50&width=50&ext=1607334878&hash=AeS8DkOnPCOR-GkLcO8', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-07 09:54:40', '2020-11-07 09:54:40'),
(121, 'Sabu', 'Pokhrel', 'sabupokhrel-dk121', NULL, NULL, NULL, NULL, NULL, '$2y$10$H7/.8e/V3v.6rsl7/Y5VR.NZjkyHLF4DBob2U6Y3Vwwk.svyWd/S.', 'https://scontent.fktm1-2.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=2&_nc_sid=12b3be&_nc_ohc=7Q9sJQGqoBAAX9nmuIa&_nc_oc=AQmZLEcrlWsY71WM4mbcrRXqCcbwXzTF27W4gzp61sycTBw_hx10rFW02mADJVSeZiU&_nc_ht=scontent.fktm1-2.fna&tp=27&oh=8ece1731f0d500c6e61259477bd7c4ca&oe=5FCC5DB8', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-11-07 09:57:17', '2020-11-07 09:57:17'),
(122, 'Sabu', 'Pokhrel', 'sabupokhrel-dk122', NULL, NULL, NULL, NULL, NULL, '$2y$10$b42aemQULTvreJ05gaU7CO5Y9xrUauxJoEQ1PiupNIWy18xelgQOW', 'https://scontent.fktm1-2.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=2&_nc_sid=12b3be&_nc_ohc=7Q9sJQGqoBAAX9nmuIa&_nc_oc=AQmZLEcrlWsY71WM4mbcrRXqCcbwXzTF27W4gzp61sycTBw_hx10rFW02mADJVSeZiU&_nc_ht=scontent.fktm1-2.fna&tp=27&oh=8ece1731f0d500c6e61259477bd7c4ca&oe=5FCC5DB8', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-11-07 10:49:47', '2020-11-07 10:49:47'),
(123, 'sid', 'kad', 'sidkad-dk123', NULL, NULL, '9867286880', NULL, NULL, '$2y$10$1s6vGnphi/IxE7szHU4knupXq2jmj5XcivfK08Y/bp6RUv8gwNMhC', NULL, NULL, NULL, 456735, 'sid kad', '0', 0, 0, 0, 0, 1, NULL, '2020-11-07 13:03:38', '2020-11-07 13:04:21'),
(124, 'अबिशकार', 'क्षेत्रि', 'अबिशकारक्षेत्रि-dk124', NULL, NULL, NULL, NULL, NULL, '$2y$10$d5A.aGjazRfpRL9Czft0C.3OXp4Mx1NrEmj1JGwRfuLY5jmlRin.q', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1263897280654298&height=50&width=50&ext=1607416319&hash=AeTs78W6MITA96FNleE', NULL, NULL, NULL, 'अबिशकार क्षेत्रि', '0', 1, 0, 0, 0, 0, NULL, '2020-11-08 08:32:01', '2020-11-08 08:32:01'),
(125, 'sylvie', 'Thapa', 'sylviethapa-dk125', NULL, NULL, '9867865611', NULL, NULL, '$2y$10$uorciGugDqsqAsIDXuPqyeFTd9qrRzLGH8m..v2QBx9TLb/QQUiDO', NULL, NULL, NULL, 151390, 'sylvie Thapa', '0', 0, 0, 0, 0, 1, NULL, '2020-11-08 11:53:13', '2020-11-08 11:53:32'),
(126, 'Bishal', 'Luitel', 'bishalluitel-dk126', NULL, NULL, '9865493568', NULL, NULL, '$2y$10$Q26ZSwEUSwyigmg72Hkgdu88Tmvh.7/P1r/0rr4mDgmEIELglpqQe', NULL, NULL, NULL, 850164, 'Bishal Luitel', '0', 0, 0, 0, 0, 1, NULL, '2020-11-08 12:38:33', '2020-11-08 12:39:33'),
(127, 'Rahul', 'koirala Chhetri', 'rahulkoiralachhetri-dk127', NULL, NULL, '9867749793', NULL, NULL, '$2y$10$7doHdzLVv6uFV960fLrV3uMBcdJDPXcGfz9/3kreikVbMoLKKwkdW', NULL, NULL, NULL, 666527, 'Rahul koirala Chhetri', '0', 0, 0, 0, 0, 1, NULL, '2020-11-11 11:28:59', '2020-11-11 11:29:26'),
(128, 'Sushil', 'Gaire', 'sushilgaire-dk128', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$XUkbOMInAzMdYjnSJbZXqOMjf.UOJmbscFwkwQY/vONGZQKstekte', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1505210079665090&height=50&width=50&ext=1607709539&hash=AeRhEkmXcXzcznhuzNY', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-11 17:59:01', '2020-11-11 17:59:01'),
(129, 'Sushil', 'Gaire', 'sushilgaire-dk129', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$U/xYDPIve/bdimIzXV32Du8jkA8Ocil4q4U3qoR1nXJhgJJc6bQXO', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1505210079665090&height=50&width=50&ext=1607742771&hash=AeRpYEkoCUpMDoL2dQk', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-12 03:12:54', '2020-11-12 03:12:54'),
(131, 'Achyut', 'Bhattarai', 'achyutbhattarai-dk131', 'achyutbhattarai192@gmail.com', NULL, '9857045094', NULL, NULL, '$2y$10$4uneclwicR4e.awqmoTY1.Yw3.64L1H.CWAGgY9cU2FJf7oLaIuye', NULL, NULL, NULL, 123837, 'Achyut Bhattarai', '0', 0, 0, 0, 0, 1, NULL, '2020-11-12 08:54:42', '2020-11-27 08:04:11'),
(132, 'Nishant', 'Gyawali', 'nishantgyawali-dk132', NULL, NULL, '9821499348', NULL, NULL, '$2y$10$iKi2ebyAkixT58FgAAIEY.jt7h2N49PBIkJT0EhxL4C5wQzfVWfnK', NULL, NULL, NULL, 811272, 'Nishant Gyawali', '0', 0, 0, 0, 0, 1, NULL, '2020-11-12 14:20:29', '2020-11-12 14:21:56'),
(133, 'Samajdar', 'Ali', 'samajdarali-dk133', NULL, NULL, '9844702792', NULL, NULL, '$2y$10$.SbMIxpoWYhmxkpgFPfw5eZomiBZT.SQ1C7iO5mT/DHIsHC4tAWIm', NULL, NULL, NULL, 428855, 'Samajdar Ali', '0', 0, 0, 0, 0, 1, NULL, '2020-11-12 15:55:27', '2020-11-12 15:58:52'),
(134, 'Sushil', 'Gaire', 'sushilgaire-dk134', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$GaILpeaCMvTbAUZZNhZXvOCAbgYwjqmYK6RXTB.E5PJsImuP5OYmi', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1505210079665090&height=50&width=50&ext=1607788965&hash=AeRKFb-pY5uK-ICFUeA', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-12 16:02:48', '2020-11-12 16:02:48'),
(135, 'Aakash', 'Bhandari', 'aakashbhandari-dk135', NULL, NULL, '9826475116', NULL, NULL, '$2y$10$vKZpxwmPC8JTvIcQwIZ8L.maVYJeC.N0YXB6Wv7Ob2XuJtQiLxjtq', NULL, NULL, NULL, 719914, 'Aakash Bhandari', '0', 0, 0, 0, 0, 1, NULL, '2020-11-13 05:52:44', '2020-11-13 05:53:39'),
(136, 'Maann', 'Thapa', 'maannthapa-dk136', NULL, NULL, '9869934729', NULL, NULL, '$2y$10$rPHQNQVHr.4ngITVhy2HBe48lHO6l0peju4juD68N9jET1DcJWUEi', NULL, NULL, NULL, 217248, 'Maann Thapa', '0', 0, 0, 0, 0, 1, NULL, '2020-11-13 06:42:54', '2020-11-13 06:43:32'),
(137, 'saleem', 'hussain', 'saleemhussain-dk137', NULL, NULL, '9807541177', NULL, NULL, '$2y$10$MhIl76txCpx709igcVnBduWVjG.i7lN/SMkfpAbw8T3bQQtctfM6S', NULL, NULL, NULL, 401887, 'saleem hussain', '0', 0, 0, 0, 0, 0, NULL, '2020-11-13 06:57:57', '2020-11-13 06:57:57'),
(140, 'Niwas', 'Kunwar', 'niwaskunwar-dk140', NULL, NULL, '9857044121', NULL, NULL, '$2y$10$OWUvJnWra3QIYq9PEHSmeOfxJe7n.xrxdWWwIcrDfUMV33MmJ6FzC', NULL, NULL, NULL, 234181, 'Niwas Kunwar', '0', 0, 0, 0, 0, 1, NULL, '2020-11-13 07:06:09', '2020-11-13 07:06:27'),
(141, 'prabesh', 'gc', 'prabeshgc-dk141', NULL, NULL, '9864447365', NULL, NULL, '$2y$10$RaiYoBY33FTdArYLfYU85OUySEaCXgFgahwLgLl.fa1sV/aY35ELS', NULL, NULL, NULL, 100575, 'prabesh gc', '0', 0, 0, 0, 0, 1, NULL, '2020-11-13 07:44:56', '2020-11-13 07:45:27'),
(142, 'bikram', 'gautam', 'bikramgautam-dk142', NULL, NULL, '9867023711', NULL, NULL, '$2y$10$pq1OhscWq9ZrkA.oFqPWeOzjtmipa1zEg/sgsBfBbLU6Iq.hcQAfC', NULL, NULL, NULL, 873625, 'bikram gautam', '0', 0, 0, 0, 0, 1, NULL, '2020-11-13 07:53:26', '2020-11-13 07:54:45'),
(144, 'amrita', 'bk', 'amritabk-dk144', NULL, NULL, '9805400714', NULL, NULL, '$2y$10$jHEXUHeMoTiVN.alIxKfPuCnVRKMVnlgWn62w0RWATcj9J3oXQOea', NULL, NULL, NULL, 893111, 'amrita bk', '0', 0, 0, 0, 0, 1, NULL, '2020-11-13 11:42:42', '2020-11-13 11:43:27'),
(145, 'Roshan', 'bhandari', 'roshanbhandari-dk145', NULL, NULL, '9886562756', NULL, NULL, '$2y$10$EZd8VOHaOxXAf5y3Rh71p.zZjkjAs5thO6MDRunOWK6BqZ3V2w.76', NULL, NULL, NULL, 942625, 'Roshan bhandari', '0', 0, 0, 0, 0, 1, NULL, '2020-11-13 11:50:56', '2020-11-13 11:51:46'),
(146, 'Ayush', 'khatri', 'ayushkhatri-dk146', NULL, NULL, '9869922453', NULL, NULL, '$2y$10$mzohHytEZtWRHzYKNj/cAuT83pGegghTyx1YE2FjZecDJfTa5XWLW', NULL, NULL, NULL, 878250, 'Ayush khatri', '0', 0, 0, 0, 0, 1, NULL, '2020-11-13 13:27:22', '2020-11-13 13:28:25'),
(147, 'Milan', 'Rana', 'milanrana-dk147', NULL, NULL, '9806973122', NULL, NULL, '$2y$10$A.7wqWnab1NlEZT9paHO/OX31UQJuU9krq9FfmaHeMWLGx/NTd60u', NULL, NULL, NULL, 644595, 'Milan Rana', '0', 0, 0, 0, 0, 0, NULL, '2020-11-13 13:59:40', '2020-11-13 13:59:40'),
(148, 'Milan', 'Rana', 'milanrana-dk148', NULL, NULL, '9840914039', NULL, NULL, '$2y$10$Zh44j9gWvE8UPPL/laigW.vJPYs4dIfagjIcn31vohKjzmZeHoWBa', NULL, NULL, NULL, 493909, 'Milan Rana', '0', 0, 0, 0, 0, 1, NULL, '2020-11-13 14:55:53', '2020-11-13 14:56:24'),
(149, 'sajid', 'ullah', 'sajidullah-dk149', NULL, NULL, '9860251706', NULL, NULL, '$2y$10$C4WnQgaA7d/JmLyJJcgKIeKcmYqegQkwpIoc2iDYWGVWCXpf5IuP6', NULL, NULL, NULL, 958645, 'sajid ullah', '0', 0, 0, 0, 0, 0, NULL, '2020-11-13 16:44:22', '2020-11-13 16:44:22'),
(150, 'Deshantar', 'Pokharel', 'deshantarpokharel-dk150', NULL, NULL, '9857022923', NULL, NULL, '$2y$10$mWlkiAMxJN9y3yyYrI27POp4WNjdACq0njjs637g7AtqlDpUcq5/e', NULL, NULL, NULL, 648280, 'Deshantar Pokharel', '0', 0, 0, 0, 0, 1, NULL, '2020-11-14 03:18:15', '2020-11-14 03:18:37'),
(151, 'Shristi', 'Shrestha', 'shristishrestha-dk151', NULL, NULL, '9847053004', NULL, NULL, '$2y$10$L3EZjAPYIdBqmD..ZXjjJ.PawZ6/a0TttJn1gyZkGXc3Y3Frb1.6.', NULL, NULL, NULL, 900410, 'Shristi Shrestha', '0', 0, 0, 0, 0, 1, NULL, '2020-11-15 03:50:09', '2020-11-15 03:50:31'),
(152, 'Prajwal', 'Gyawali', 'prajwalgyawali-dk152', NULL, NULL, '9867400976', NULL, NULL, '$2y$10$URH0LRp.a18K.iW3qPxKAOGA9xoTAX.UR9dxlI1F1LI20vTf0DnR.', NULL, NULL, NULL, 412060, 'Prajwal Gyawali', '0', 0, 0, 0, 0, 1, NULL, '2020-11-15 08:37:33', '2020-11-15 08:38:18'),
(153, 'balkrishna', 'aryal', 'balkrishnaaryal-dk153', NULL, NULL, '9814462308', NULL, NULL, '$2y$10$SKtA044MeiwPV/V0qeyvWe0L3g86u594B/0V8.JP/hNk8RpZa4qR6', NULL, NULL, NULL, 447483, 'balkrishna aryal', '0', 0, 0, 0, 0, 0, NULL, '2020-11-15 14:30:16', '2020-11-15 14:30:16'),
(155, 'mohammad', 'jabir', 'mohammadjabir-dk155', NULL, NULL, '9863393034', NULL, NULL, '$2y$10$uhRcrhH77bPUeBKFanrC2.Ex8YmFtTtcKXQ6M0gLT6GftTMVQU6nK', NULL, NULL, NULL, 596727, 'mohammad jabir', '0', 0, 0, 0, 0, 1, NULL, '2020-11-15 18:56:18', '2020-11-15 18:57:40'),
(156, 'khalil', 'miya', 'khalilmiya-dk156', NULL, NULL, '9857032409', NULL, NULL, '$2y$10$dKKBQlAiHBgkGmILS0kjCel2g5bG.I71ToupSkUw.yKzW2pxjQoeq', NULL, NULL, NULL, 990542, 'khalil miya', '0', 0, 0, 0, 0, 1, NULL, '2020-11-16 06:40:10', '2020-11-16 06:40:25'),
(159, 'manju', 'bhusal', 'manjubhusal-dk159', NULL, NULL, '9801079353', NULL, NULL, '$2y$10$qZMLyoP7efzQYLNsUveBVeuRxufcuQfRJui1iWLSaQLcD55s6Ef5a', NULL, NULL, NULL, 835130, 'manju bhusal', '0', 0, 0, 0, 0, 1, NULL, '2020-11-16 09:07:09', '2020-11-16 09:07:32'),
(160, 'Anish', 'Alam', 'anishalam-dk160', 'anishalam751@gmail.com', NULL, '9867856560', NULL, NULL, '$2y$10$eEb1S4iiJExq5L0XwWMyTOfxvPz3NGmKUYnLEuYgyVop.rgHzF20q', NULL, NULL, NULL, 732520, 'Anish Alam', '0', 0, 0, 0, 0, 1, NULL, '2020-11-16 13:47:33', '2020-11-16 14:11:15'),
(161, 'hdksxbb', 'bdmzkxkcienc', 'hdksxbbbdmzkxkcienc-dk161', NULL, NULL, '9812250522', NULL, NULL, '$2y$10$f1PsgpALv26EzL15Nr/dFOUyrOKkQ666M9eRZ.rmMLPaz4.6KKkiK', NULL, NULL, NULL, 582102, 'hdksxbb bdmzkxkcienc', '0', 0, 0, 0, 0, 1, NULL, '2020-11-16 14:32:44', '2020-11-16 14:33:17'),
(162, 'Ayush', 'Bhusal', 'ayushbhusal-dk162', 'bhusal.ayush1234@gmail.com', NULL, '9842926136', NULL, NULL, '$2y$10$C4T8kkXsTU.DhrSoFoZ9AugJF03Sd.87X1agwhwkMd0eusLl3evXm', NULL, NULL, NULL, 366268, 'Ayush Bhusal', '0', 0, 0, 0, 0, 1, NULL, '2020-11-17 08:39:16', '2020-11-21 10:37:51'),
(163, 'Ritesh', 'Gurung', 'riteshgurung-dk163', NULL, NULL, '9806694858', NULL, NULL, '$2y$10$voUaAvmCY4WVWOgHpUKegeKtM5xaM7/A/1ug4Nupma0oYN4eOuYKa', NULL, NULL, NULL, 472826, 'Ritesh Gurung', '0', 0, 0, 0, 0, 0, NULL, '2020-11-17 09:54:56', '2020-11-17 09:54:56'),
(164, 'Ritesh', 'Gurung', 'riteshgurung-dk164', NULL, NULL, '9826102278', NULL, NULL, '$2y$10$hzDRqOtJdWhQTLMMu8UBEeizFYPHi0meTZeue7VFxYs43awqpGbL6', NULL, NULL, NULL, 555714, 'Ritesh Gurung', '0', 0, 0, 0, 0, 1, NULL, '2020-11-17 09:55:04', '2020-11-17 09:55:23'),
(165, 'Roshan', 'Shah', 'roshanshah-dk165', NULL, NULL, '9867109668', NULL, NULL, '$2y$10$8fZLFEHyjm.iNAdO6qbRVOK59iySC42npHStcFwJSyAQLzovIgNAy', NULL, NULL, NULL, 896238, 'Roshan Shah', '0', 0, 0, 0, 0, 1, NULL, '2020-11-17 13:05:41', '2020-11-17 13:06:25'),
(166, 'alisha', 'banu', 'alishabanu-dk166', NULL, NULL, '9814454756', NULL, NULL, '$2y$10$JdCm/zcQc2PlAtL2FgImGO.ZrdG/t0ng1IrMjwlmzKdiEp5CH6at2', NULL, NULL, NULL, 610583, 'alisha banu', '0', 0, 0, 0, 0, 1, NULL, '2020-11-18 02:08:17', '2020-11-18 02:08:32'),
(167, 'Sushil', 'Gaire', 'sushilgaire-dk167', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$b6b1W9r66Ew4KGYWRWKoye5BlzQvu4ooSBfh6gz8eXbrcjGT8mlXS', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1505210079665090&height=50&width=50&ext=1608271835&hash=AeSxDuDud35_Qe316gA', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-18 06:10:41', '2020-11-18 06:10:42'),
(168, 'Sushil', 'Gaire', 'sushilgaire-dk168', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$HYEBPt9X0yA2np4xrd4JdO2H5w5E/HJ8Juom3RIjF9SR90cLkrMRi', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1505210079665090&height=50&width=50&ext=1608271854&hash=AeQOyx-G2OUtBSUTXPA', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-18 06:10:55', '2020-11-18 06:10:56'),
(169, 'seema', 'xetri', 'seemaxetri-dk169', NULL, NULL, '9866577858', NULL, NULL, '$2y$10$OcAwCuFIaOIhAK4UQrLxaOv.aZl.ZIwdGv8CvcUiXwPBnblIoSYGu', NULL, NULL, NULL, 951816, 'seema xetri', '0', 0, 0, 0, 0, 1, NULL, '2020-11-18 07:30:57', '2020-11-18 07:31:45'),
(171, 'shiva', 'pandey', 'shivapandey-dk171', NULL, NULL, '9819153836', NULL, NULL, '$2y$10$gCVZUD00TV6FXhDN9XgcB.mkvsxEyjoX.pAhnf2MHXjYnJj8vdW5i', NULL, NULL, NULL, 962677, 'shiva pandey', '0', 0, 0, 0, 0, 1, NULL, '2020-11-18 11:09:01', '2020-11-18 11:09:35'),
(172, 'amit', 'paudel', 'amitpaudel-dk172', NULL, NULL, '9867187641', NULL, NULL, '$2y$10$F3.0dxVed2uWpNTNulRob.dOaRpzT9RF58u3QvAYq8L1q/xddChBO', NULL, NULL, NULL, 704428, 'amit paudel', '0', 0, 0, 0, 0, 1, NULL, '2020-11-18 15:24:29', '2020-11-18 15:26:56'),
(173, 'subash', 'mgr', 'subashmgr-dk173', NULL, NULL, '9807453150', NULL, NULL, '$2y$10$SKwnVCeGtru4gE7L0CxvnuxVLTubkMqEpePUUXU6yT6jdcNmNrzZG', NULL, NULL, NULL, 256572, 'subash mgr', '0', 0, 0, 0, 0, 1, NULL, '2020-11-18 17:29:22', '2020-11-18 17:30:17'),
(174, 'Pragati', 'giri', 'pragatigiri-dk174', NULL, NULL, '9867856205', NULL, NULL, '$2y$10$e34KaVmA6u1.leCGuV8/o.voTM/UPhO6yvP.uXhyB/OA/23Ms.7xy', NULL, NULL, NULL, 340108, 'Pragati giri', '0', 0, 0, 0, 0, 1, NULL, '2020-11-19 08:23:46', '2020-11-19 08:24:29'),
(176, 'Sujan', 'Reshmi', 'sujanreshmi-dk176', NULL, NULL, '9866622940', NULL, NULL, '$2y$10$6KCKl56QP4xcvQEhxkBlEuSptqDQYkDEa4/aASwaRZuDr9NY.3Cba', NULL, NULL, NULL, 469056, 'Sujan Reshmi', '0', 0, 0, 0, 0, 1, NULL, '2020-11-19 11:10:42', '2020-11-19 11:11:23'),
(177, 'Rahul Thapa', 'Magar', 'rahulthapamagar-dk177', 'apahtluhar@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$eubc34wAUfESEGtOpFE2BunrEzjVFBSAEIjmeL.y1usXrMMvg6BU.', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=763648151036643&height=50&width=50&ext=1608390677&hash=AeRbdod74YgwTWD4PtY', NULL, NULL, NULL, 'Rahul Thapa Magar', '0', 1, 0, 0, 0, 0, NULL, '2020-11-19 15:11:18', '2020-11-19 15:11:18'),
(178, 'Sushil', 'Gaire', 'sushilgaire-dk178', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$mPsLgwBnvKKX/.CpsLRvZOeYQ6EF7Xuocd5/10mQVEvbB1AhkLVxa', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1608394980&hash=AeSN4RjSS6y16k8GXZ8', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-19 16:23:07', '2020-11-19 16:23:07'),
(179, 'Sabu', 'Pokhrel', 'sabupokhrel-dk179', NULL, NULL, NULL, NULL, NULL, '$2y$10$71Qdm0B.IU/PdXtXz2lQCO0Cn9f6h/EbXItDqm94RKVJ6LKwJ9L2i', 'https://scontent.fktm1-1.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=2&_nc_sid=12b3be&_nc_ohc=0u_J8-4MokwAX-UeWOh&_nc_oc=AQnNmae5pQgw_r9SxOwmv2FtdlkN1rwxYXWTYDCjYa52iHp3u-H7CavSMKprNaL4-ro&_nc_ht=scontent.fktm1-1.fna&tp=27&oh=52aeeef97f5b0de8c58d52ecb6c4bb59&oe=5FDC2FB8', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-11-19 16:26:25', '2020-11-19 16:26:25'),
(180, 'Ashok', 'Pokhrel', 'ashokpokhrel-dk180', NULL, NULL, '9867228777', NULL, NULL, '$2y$10$Fxo02oF4AZ2/OQsyK4bfyeI4VcGlwefuAftTyuqma/S/mQJNU5QKK', NULL, NULL, NULL, 575564, 'Ashok Pokhrel', '0', 0, 0, 0, 0, 0, NULL, '2020-11-19 19:27:31', '2020-11-19 19:27:31'),
(181, 'rajiv', 'aryal', 'rajivaryal-dk181', NULL, NULL, '9807495202', NULL, NULL, '$2y$10$e3U6JlupXe53GJt0xoknvOQHUI0QWLyGAONf5hU7ePAHaJEIgvVCy', NULL, NULL, NULL, 732788, 'rajiv aryal', '0', 0, 0, 0, 0, 0, NULL, '2020-11-20 07:48:37', '2020-11-20 07:48:37'),
(182, 'Shradha', 'Tiwari', 'shradhatiwari-dk182', NULL, NULL, '9867430668', NULL, NULL, '$2y$10$.l01aNcwlIvVrBeI/rRoQuzs4Qo0soDJ3IjMSdH.24ciP.5v4td8W', NULL, NULL, NULL, 421855, 'Shradha Tiwari', '0', 0, 0, 0, 0, 1, NULL, '2020-11-20 09:39:40', '2020-11-20 09:40:21'),
(183, 'Smile', 'Gaire', 'smilegaire-dk183', 'shishirgsth@gmail.com', NULL, '9867244650', NULL, NULL, '$2y$10$hvZAFmL0KV8Jq5ZmJ7td5O6hwFItmz6Pd55ghqdNiaNkAy9pGsqBy', NULL, NULL, NULL, 349223, 'Smile Gaire', '0', 0, 0, 0, 0, 1, NULL, '2020-11-20 13:05:05', '2020-11-21 05:39:04'),
(184, 'kirtan', 'Thapa', 'kirtanthapa-dk184', NULL, NULL, '9867670875', NULL, NULL, '$2y$10$gGY4TcqxYJoyTqj768ZjqefE1Cf9OVDBZoAVs32ySIqPJY/.IWlFm', NULL, NULL, NULL, 643734, 'kirtan Thapa', '0', 0, 0, 0, 0, 1, NULL, '2020-11-21 03:36:55', '2020-11-21 03:37:26'),
(185, 'ashutosh', 'pradhan', 'ashutoshpradhan-dk185', NULL, NULL, '9867598877', NULL, NULL, '$2y$10$4NtHg9VVqUIZ838bu0UIfuZujbu3/88hop9O4CaAddkp6PptRJ3ey', NULL, NULL, NULL, 220153, 'ashutosh pradhan', '0', 0, 0, 0, 0, 1, NULL, '2020-11-21 05:08:05', '2020-11-21 05:08:27'),
(186, 'sajan', 'thapa', 'sajanthapa-dk186', NULL, NULL, '9805879899', NULL, NULL, '$2y$10$E/YGmFafbcn5zKxzhNXtFeidUC/YYwMVTd2Xbuch/iQGsCS24PWSu', NULL, NULL, NULL, 790958, 'sajan thapa', '0', 0, 0, 0, 0, 1, NULL, '2020-11-21 09:28:20', '2020-11-21 09:29:19'),
(187, 'aarav', 'atreya', 'aaravatreya-dk187', NULL, NULL, '9862565131', NULL, NULL, '$2y$10$Z8Z4kFyClqX.0m2/IVchkedDAP80RTO1K7sraZ0lvERsWBMmVYkkO', NULL, NULL, NULL, 934331, 'aarav atreya', '0', 0, 0, 0, 0, 0, NULL, '2020-11-22 09:41:27', '2020-11-22 09:41:27'),
(188, 'Sabu', 'Pokhrel', 'sabupokhrel-dk188', NULL, NULL, NULL, NULL, NULL, '$2y$10$yJ98YyHLrh0XGROQc6wfouIAc2rx3BMhqZZ9puu5xkEYiQAAN3zo6', 'https://scontent.fktm1-1.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=2&_nc_sid=12b3be&_nc_ohc=b3omSwFZwXwAX8YwVYH&_nc_oc=AQlZnXoeDsouuAlENV0rOLAeFjBVY7QEYqHVCoaLwL3ZcUsKL-dFHeJuNMDdAQC14zw&_nc_ht=scontent.fktm1-1.fna&tp=27&oh=0ad642fb10e85236a24281c3d3d0fbd9&oe=5FE02438', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-11-22 13:55:45', '2020-11-22 13:55:46'),
(189, 'Asmit', 'Neupane', 'asmitneupane-dk189', NULL, NULL, '9821569846', NULL, NULL, '$2y$10$P0MPwXXQThQORM7OmtyEoeqEa3SSRrYeqGbnhivwoPfOVzgazBsW6', NULL, NULL, NULL, 634063, 'Asmit Neupane', '0', 0, 0, 0, 0, 1, NULL, '2020-11-22 14:01:09', '2020-11-22 14:01:34'),
(190, 'Akash Man', 'Shakya', 'akashmanshakya-dk190', NULL, NULL, '9814432810', NULL, NULL, '$2y$10$EWL4jyJwV0I6BHTYXpA93uNoixq43X0au486EO2CbZBfzy/O1W1vG', NULL, NULL, NULL, 225050, 'Akash Man Shakya', '0', 0, 0, 0, 0, 1, NULL, '2020-11-23 07:17:15', '2020-11-23 07:17:32'),
(192, 'aditya man', 'shakya', 'adityamanshakya-dk192', NULL, NULL, '9869672072', NULL, NULL, '$2y$10$jPGHBSJt5zTBt8mAzT40QOTmGFXANrkIk1dL.uDNw4upcdxf03kZG', NULL, NULL, NULL, 321347, 'aditya man shakya', '0', 0, 0, 0, 0, 1, NULL, '2020-11-23 08:22:10', '2020-11-23 08:22:36'),
(193, 'bishal', 'Pandey', 'bishalpandey-dk193', NULL, NULL, '9825494974', NULL, NULL, '$2y$10$N3mdeMQPYKbUEJGUcZsZbu2O2o0KiFCTvcXtOeQbTtsjGOMpI2Yi.', NULL, NULL, NULL, 607134, 'bishal Pandey', '0', 0, 0, 0, 0, 1, NULL, '2020-11-23 10:00:17', '2020-11-23 10:01:24'),
(194, 'Rehan', 'Ali', 'rehanali-dk194', NULL, NULL, '9811991028', NULL, NULL, '$2y$10$5rv9KlFmna5yd.Cwf3VPueTViturz1BtocMJKzBSKrQVEdxPe7IxS', NULL, NULL, NULL, 899841, 'Rehan Ali', '0', 0, 0, 0, 0, 1, NULL, '2020-11-23 10:21:11', '2020-11-23 10:21:35'),
(195, 'Sushil', 'Gaire', 'sushilgaire-dk195', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$dVUWexiwrTZMvdduKYVV0uR18dA1dPDlQdtNNewJ4anMDB0ozybLm', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1608819865&hash=AeRZTtg4HsXJs0gtitY', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-24 14:24:34', '2020-11-24 14:24:34'),
(196, 'Sushil', 'Gaire', 'sushilgaire-dk196', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$k0mLuCah/B6t1p9lr0e7kO/QJFe4nFElTUm7riZyJRAhYjIQSEOaC', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1608820465&hash=AeREZY1SezatPq7MYm0', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-24 14:34:27', '2020-11-24 14:34:27'),
(197, 'Sushil', 'Gaire', 'sushilgaire-dk197', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$CGYXAh/uJBSg0s.UYVBPVuHT6GW2numMIfGJovrfgTTpclT6ZtNKO', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1608823024&hash=AeQYznIbHzZnhaGEvAU', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-24 15:17:17', '2020-11-24 15:17:17'),
(198, 'Sushil', 'Gaire', 'sushilgaire-dk198', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$JmLON6CCLFNk/Z4hgxe3oOwS0kaQ9g6VgyHm0sGEVknMjx5UoCf3u', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1608823561&hash=AeRJxLt7xenw-8RlDvg', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-24 15:26:03', '2020-11-24 15:26:03'),
(199, 'Sushil', 'Gaire', 'sushilgaire-dk199', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$uCPUDT7kPh6MWYLgBGIpk.vrG.sPLdI.gL3p4ZFCQNloxieX1jaL.', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1608824188&hash=AeQa-QH1boDvrR70sbg', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-24 15:36:30', '2020-11-24 15:36:30'),
(200, 'Sushil', 'Gaire', 'sushilgaire-dk200', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$HvvxVDaLrbbhtxHYTW4x3./6SctS4kjVUQ7WIDNYq.U1aSollbPWm', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1608824285&hash=AeQYVovnPHGZBiln2Vs', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-24 15:38:07', '2020-11-24 15:38:07'),
(201, 'Sushil', 'Gaire', 'sushilgaire-dk201', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$zmFeVslw08ZVwisrQy3ebOJMFbW2bTDBLtrzp9YHLQY8uCTBJahtK', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1608824380&hash=AeTFdpPqveJvjRZJlAM', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-24 15:39:42', '2020-11-24 15:39:42'),
(202, 'Sushil', 'Gaire', 'sushilgaire-dk202', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$bhkDnvtfJfzHgJ8zEAPgbegITls2duCrXMYOJ1KBWnAzZkKbxPiH2', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1608824790&hash=AeSbjWkO5ivOiWSW50I', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-24 15:46:32', '2020-11-24 15:46:32'),
(203, 'Sushil', 'Gaire', 'sushilgaire-dk203', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$dZmmIqymwLixurC0b9i6KORyoxtxhNnguJ58sxgUOeFfAoGOVtip.', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1608825279&hash=AeSKNFkF_2G5G3_UL_U', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-24 15:54:41', '2020-11-24 15:54:41'),
(204, 'Sushil', 'Gaire', 'sushilgaire-dk204', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$.LVRKcl/KPniAEwSuJ0O4uLXOLjsd5PeDL.XIi2yORWijvyoLQChO', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1608825344&hash=AeTeWNOvvPeueWI6yzo', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-24 15:55:46', '2020-11-24 15:55:46'),
(205, 'Kalyan', 'shrestha', 'kalyanshrestha-dk205', NULL, NULL, '9847475983', NULL, NULL, '$2y$10$ehjzzerDaALho8Vfo7iYGO20B5Hwb38n7r4oG/D91oVkcs1VDksvi', NULL, NULL, NULL, 320698, 'Kalyan shrestha', '0', 0, 0, 0, 0, 1, NULL, '2020-11-25 12:54:52', '2020-11-25 12:55:21'),
(206, 'bikash', 'pandey', 'bikashpandey-dk206', NULL, NULL, '9846725994', NULL, NULL, '$2y$10$ELgh8mEk.CZ4QkwDMaZiAeHJs1//0OpCnwlhASldIIvxkhXAv0M1q', NULL, NULL, NULL, 125680, 'bikash pandey', '0', 0, 0, 0, 0, 1, NULL, '2020-11-26 06:07:47', '2020-11-26 06:08:39'),
(207, 'Anish', 'Keshari', 'anishkeshari-dk207', NULL, NULL, '9817521186', NULL, NULL, '$2y$10$k.RlNxNQE7Wch6kB8Fvv1eENhov9yIi5s/7VFFf/hDIAxiAE5ODTK', NULL, NULL, NULL, 445364, 'Anish Keshari', '0', 0, 0, 0, 0, 0, NULL, '2020-11-26 08:27:30', '2020-11-26 08:27:30'),
(208, 'Anish', 'Keshari', 'anishkeshari-dk208', NULL, NULL, '9817521183', NULL, NULL, '$2y$10$nrItNTQ22u.oRlmxZAMvCuq7uIMw62593IdpaxzsygtJOo76QS5I2', NULL, NULL, NULL, 300744, 'Anish Keshari', '0', 0, 0, 0, 0, 0, NULL, '2020-11-26 08:27:38', '2020-11-26 08:27:38'),
(209, 'John', 'Doe', 'johndoe-dk209', NULL, NULL, '6502530000', NULL, NULL, '$2y$10$4dFsVFnmLngd40RTwXZo4eVMqFGjBsgHtg2zwXp/AWW0XuPLkZcH6', NULL, NULL, NULL, 985544, 'John Doe', '0', 0, 0, 0, 0, 0, NULL, '2020-11-26 10:23:39', '2020-11-26 10:23:39'),
(210, 'Sanjay', 'Gc', 'sanjaygc-dk210', NULL, NULL, '9817584493', NULL, NULL, '$2y$10$FsUKHS56D/ZpCMpCFzEHcewLRU/vJIfbyrNZot8XOyra1At16IDFy', NULL, NULL, NULL, 541480, 'Sanjay Gc', '0', 0, 0, 0, 0, 0, NULL, '2020-11-26 11:34:37', '2020-11-26 11:34:38'),
(211, 'pratiksha', 'shrestha', 'pratikshsshrestha-dk211', 'pikachu58848@gmail.com', NULL, '9819470630', NULL, NULL, '$2y$10$W5knkjIhhu/IVS3nSy9GAewRT2zfIoZJJqi9z7oXEIqJFlAQwIjs2', NULL, NULL, NULL, 323719, 'pratiksha shrestha', '0', 0, 0, 0, 0, 1, NULL, '2020-11-26 11:35:10', '2020-11-30 09:30:22'),
(212, 'gdxigc', 'hd,jcz', 'gdxigchd,jcz-dk212', NULL, NULL, '9154191471', NULL, NULL, '$2y$10$caJqWRQ.38Ee1DSr8I8Gverf9RYUt4dFgM6u73XbmaxqUMPbtpGm2', NULL, NULL, NULL, 825041, 'gdxigc hd,jcz', '0', 0, 0, 0, 0, 0, NULL, '2020-11-26 13:50:38', '2020-11-26 13:50:38'),
(213, 'Sushil', 'Gaire', 'sushilgaire-dk213', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$wVCN0tlfGww6JleyaVduQO8ok2uxMFrvAzCLGOFLqKf5uRgj1TSrK', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1608991335&hash=AeTgDnnbAnhrq0z90j0', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-26 14:02:18', '2020-11-26 14:02:18'),
(214, 'Sushil', 'Gaire', 'sushilgaire-dk214', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$yWVM5sgeocqJmdBE1hfNKOY82FCyCjffBJ/s61WDcjSZ.Kw4CHi9C', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1608993025&hash=AeRwFWLvhAJgQ_vK0Xs', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-26 14:30:27', '2020-11-26 14:30:27'),
(215, 'Sushil', 'Gaire', 'sushilgaire-dk215', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$0CLfBqlkt7QOjTR5NcrpkeXv1ze2VZsFT2hrlQGvJoQHCm2ubVld.', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609050892&hash=AeR3aUP8evxqO0PRhy8', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-27 06:34:56', '2020-11-27 06:34:56'),
(216, 'Rohit', 'Bhandari', 'rohitbhandari-dk216', NULL, NULL, NULL, NULL, NULL, '$2y$10$oVveyPP0iiC/17SJ0qvNZO8KyMCYH9XysNoFlTTBSVwGv4NdvT5Ze', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=130693528835105&height=50&width=50&ext=1609051182&hash=AeTGmpL17ysjCHwPWqY', NULL, NULL, NULL, 'Rohit Bhandari', '0', 1, 0, 0, 0, 0, NULL, '2020-11-27 06:39:44', '2020-11-27 06:39:44'),
(217, 'susmita', 'saru', 'susmitasaru-dk217', NULL, NULL, '9819454884', NULL, NULL, '$2y$10$82mtrRbrp5HW4WTT2unxHu4ANwv96aQyAj1yeTFM3aaO3s.v7TWai', NULL, NULL, NULL, 738654, 'susmita saru', '0', 0, 0, 0, 0, 1, NULL, '2020-11-27 06:51:28', '2020-11-27 06:52:22'),
(218, 'Sushil', 'Gaire', 'sushilgaire-dk218', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$cwEXY6T1hymDzYRkDsFPLOkqRRaTlx5UILnwRx07X59Q1U9BXNXvq', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609054218&hash=AeQn0msIl4byFvfPpl0', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-27 07:30:30', '2020-11-27 07:30:31'),
(219, 'Arsid', 'shah', 'arsidshah-dk219', NULL, NULL, '9840190596', NULL, NULL, '$2y$10$lpBK9Jp5SqOcE13bKXzVHOquJHodRgxcUy6EkTd6LDhF4JXgr2kxa', NULL, NULL, NULL, 406835, 'Arsid shah', '0', 0, 0, 0, 0, 1, NULL, '2020-11-27 08:09:26', '2020-11-27 08:10:24'),
(220, 'Prajwal', 'Basyal', 'prajwalbasyal-dk220', NULL, NULL, '9806948140', NULL, NULL, '$2y$10$A35eQbhMIU/.boN26qBnz.8FHvu.552Ct6SHbo0WFQTwBLUk0c17.', NULL, NULL, NULL, 620735, 'Prajwal Basyal', '0', 0, 0, 0, 0, 1, NULL, '2020-11-27 08:36:15', '2020-11-27 08:36:32'),
(221, 'Sabu', 'Pokhrel', 'sabupokhrel-dk221', NULL, NULL, NULL, NULL, NULL, '$2y$10$7BU2UH6LvgHKdj6vZmPs5ufn6Ysbx4BTP8xO2vf07a0Fj2UQ1OWJm', 'https://scontent.fktm1-1.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=2&_nc_sid=12b3be&_nc_ohc=Ll-Y5vqho2QAX9e90qd&_nc_oc=AQlPRPgMi2mDMkmjFTfRqNMCIY4uqlciZrLffiWPmFjTQoJ0O-C90rSMS5bKPJEdtFo&_nc_ht=scontent.fktm1-1.fna&tp=27&oh=276903a34ccf973f986b0277ec345bcb&oe=5FE80D38', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-11-27 13:17:57', '2020-11-27 13:17:58');
INSERT INTO `customers` (`id`, `first_name`, `last_name`, `username`, `email`, `email_verified_at`, `mobile_no`, `address`, `gender`, `password`, `profile_image`, `cover_image`, `promo_code`, `otp`, `display_name`, `reward_point`, `is_third_party`, `facebook`, `instagram`, `twitter`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(222, 'Sabu', 'Pokhrel', 'sabupokhrel-dk222', NULL, NULL, NULL, NULL, NULL, '$2y$10$YuLuH3s7ic8jZP61AVGI9uFbvPYsnHGfxlfQD/.lx0WkoUe4C754.', 'https://scontent.fktm1-1.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=2&_nc_sid=12b3be&_nc_ohc=Ll-Y5vqho2QAX93W3O5&_nc_oc=AQlbaXnOjrxJJ5KrogtCMC4BlIADFTBFw_NrLRjKcipeqPvB_ONxEEypay3UNM4GfkY&_nc_ht=scontent.fktm1-1.fna&tp=27&oh=def89df9addd3a097f0d4ce41a3555a4&oe=5FE80D38', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-11-27 13:24:58', '2020-11-27 13:24:59'),
(223, 'Aditi', 'Shrestha', 'aditishrestha-dk223', NULL, NULL, '9851227166', NULL, NULL, '$2y$10$WDE0ix0Qz42zmv768KNNAejI4lox8PtUMx05KF7.fhhc78hZlcUS6', NULL, NULL, NULL, 753338, 'Aditi Shrestha', '0', 0, 0, 0, 0, 0, NULL, '2020-11-27 14:19:38', '2020-11-27 14:19:38'),
(224, 'Sushil', 'Gaire', 'sushilgaire-dk224', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$570pap60EN30VxaQh1TZzeq6UHc3Sp0PW/gUkvjCqLf3zkFIhLXqS', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609086975&hash=AeQGbEl9mF3qvMMypAo', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-27 16:36:17', '2020-11-27 16:36:17'),
(225, 'Sushil', 'Gaire', 'sushilgaire-dk225', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$3lM/nl4z8aV0PTrW507iweWd.sxVallSQReERTKqatIx7FLHQlNdq', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609087137&hash=AeTrnaMQIGBHb2sWd6Y', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-27 16:38:58', '2020-11-27 16:38:58'),
(226, 'Sushil', 'Gaire', 'sushilgaire-dk226', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$Jmif7munNdT91yIFfu93Dekzmcmyjuw2zycLzozYbxp9O1HN6yPNq', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609121661&hash=AeROR0Ek7cTT2IEPs50', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-28 02:14:41', '2020-11-28 02:14:41'),
(227, 'Sushil', 'Gaire', 'sushilgaire-dk227', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$3kVNAg6MZdTa7o.17TQO9.PN3XXy1mzIo0dhYqxkeHO.AfLGAevq6', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609121739&hash=AeTo6Mvi-ie2S_oiBUo', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-28 02:15:40', '2020-11-28 02:15:40'),
(228, 'Sushil', 'Gaire', 'sushilgaire-dk228', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$DgKNV2JtwQudM3mx9/orqubSFoHz6xI6dL4eDMNHlJiNZvLYW/PB.', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609123080&hash=AeRlf3KoW42pLvMwcK4', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-28 02:38:02', '2020-11-28 02:38:02'),
(229, 'nitesh', 'bk', 'niteshbk-dk229', NULL, NULL, '9819410728', NULL, NULL, '$2y$10$ieSIqX96Z25CXKVb7TrxE.tUaQh9pwgSk9/Ou4I57dlt18i1zQWUC', NULL, NULL, NULL, 224780, 'nitesh bk', '0', 0, 0, 0, 0, 1, NULL, '2020-11-28 07:33:16', '2020-11-28 07:33:36'),
(230, 'Deshantar', 'Pokharel', 'deshantarpokharel-dk230', NULL, NULL, '9817407583', NULL, NULL, '$2y$10$p9bUTV4iGK9hyW0Jox.KtOOYdz4oTno9MvKcPMapwrPF1XUwly4Oi', NULL, NULL, NULL, 397945, 'Deshantar Pokharel', '0', 0, 0, 0, 0, 1, NULL, '2020-11-28 11:40:49', '2020-11-28 11:41:16'),
(231, 'Sushil', 'Gaire', 'sushilgaire-dk231', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$ZSgIZJWpseHRGlogpMkidu0u4v42QOr06PhstXHCS.PSddYzQ4aXa', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609164119&hash=AeQy4UtXjqlD8z-A_uo', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-28 14:02:02', '2020-11-28 14:02:02'),
(232, 'Sushil', 'Gaire', 'sushilgaire-dk232', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$GzpiJVfhM93FhWRaeg7uN.KAC5R6sZrP7Rm742UMtrL5O1JkY31ea', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609168757&hash=AeS8p2TFYeNsGZ3XyAQ', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-28 15:19:21', '2020-11-28 15:19:21'),
(233, 'sushil', 'gaire', 'sushilgaire-dk233', NULL, NULL, '9840677080', NULL, NULL, '$2y$10$qUWKrvDmjN7Q4wvmJiY9XuimwjU4aRnz.VJ./1PjXzNXYK4SfpgAW', NULL, NULL, NULL, 853894, 'sushil gaire', '0', 0, 0, 0, 0, 1, NULL, '2020-11-29 01:58:49', '2020-11-29 02:07:48'),
(234, 'alysa', 'shrestha', 'alysashrestha-dk234', NULL, NULL, '9827430017', NULL, NULL, '$2y$10$GN23gJ2tVBIR8vLz3cn5MOZhm79wJtd1YlIVdw8sArMR6LE6PdI6S', NULL, NULL, NULL, 564292, 'alysa shrestha', '0', 0, 0, 0, 0, 1, NULL, '2020-11-29 03:55:46', '2020-11-29 03:56:23'),
(235, 'mercy', 'regmi', 'mercyregmi-dk235', NULL, NULL, '9804400015', NULL, NULL, '$2y$10$Jx4r5YvWggMaqx9SxOHJVeOTWuMAXCMwrOaHDJ9U63C.9Yz2c3Dzy', NULL, NULL, NULL, 795562, 'mercy regmi', '0', 0, 0, 0, 0, 1, NULL, '2020-11-29 11:26:42', '2020-11-29 11:27:19'),
(236, 'Sabu', 'Pokhrel', 'sabupokhrel-dk236', NULL, NULL, NULL, NULL, NULL, '$2y$10$TQb3B0p5QOKcBuejAW3yHeBwe9ooW.EFqP0K9Oz7osNNmaA8YPVTu', 'https://scontent.fbwa3-1.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=2&_nc_sid=12b3be&_nc_ohc=Ll-Y5vqho2QAX9nx22Y&_nc_oc=AQnjyinlTHjOwl6iErm9bIBWJyZv0Lmo4m-BBJbTUFRAUHEBYdZSSqIsHDbGvkwe6V0&_nc_ht=scontent.fbwa3-1.fna&tp=27&oh=236365798a7886e95b762d92ae131f48&oe=5FE80D38', NULL, NULL, NULL, 'Sabu Pokhrel', '0', 1, 0, 0, 0, 0, NULL, '2020-11-29 12:39:11', '2020-11-29 12:39:11'),
(237, 'Ganesh', 'Gaire', 'ganeshgaire-dk237', NULL, NULL, '9866133280', NULL, NULL, '$2y$10$8B8Pj76bLNEnJ5jxLFthnumA0g9jvfCwRozbw3DNQ00uKw1.g0zii', NULL, NULL, NULL, 548877, 'Ganesh Gaire', '0', 0, 0, 0, 0, 1, NULL, '2020-11-29 13:47:32', '2020-11-29 13:48:25'),
(238, 'Anjali', 'Rana', 'anjalirana-dk238', NULL, NULL, '9821548082', NULL, NULL, '$2y$10$mZKXktgHF6whUhwqcfzt.uruPYOg3TfB34/7f3sfUXavQfMk91mTO', NULL, NULL, NULL, 624032, 'Anjali Rana', '0', 0, 0, 0, 0, 1, NULL, '2020-11-29 14:11:45', '2020-11-29 14:12:26'),
(239, 'Sushil', 'Gaire', 'sushilgaire-dk239', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$XcKpNssoJjZZvSe0B73YcO7o.gnR3Zwco3uclQ/i7D8C1RxbBpvB.', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609251785&hash=AeRwXwn1NqyipEfql9g', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-29 14:23:08', '2020-11-29 14:23:08'),
(240, 'Sushil', 'Gaire', 'sushilgaire-dk240', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$6wh.3.7jRjBcdXdJ9BbevuZM3K.g7.y0PPXc2jMK8zpmpjosYcfUq', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609253321&hash=AeR3BqV53I9M7-nQBUs', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-29 14:48:43', '2020-11-29 14:48:43'),
(241, 'Sushil', 'Gaire', 'sushilgaire-dk241', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$ZxIfkuQmeCk2xoeVXMX0Kels0HmPaVISqoMZtKR1Xb/Nidi/vCaOe', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609256394&hash=AeSFgdMSP0DQmRx5f48', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-29 15:39:56', '2020-11-29 15:39:56'),
(242, 'Sushil', 'Gaire', 'sushilgaire-dk242', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$Vd05BdYv19I5tk91rpge3uENGPetQj8bY5Qls3/pEvQXeHggbbw5S', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609256626&hash=AeSjKEEyoj-6L0yfW4g', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-29 15:43:47', '2020-11-29 15:43:47'),
(243, 'Sushil', 'Gaire', 'sushilgaire-dk243', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$Po2yD/RL7/MJuE3rs4V4LOtBCvTwRfXCsyAzlGrxfYc3wBSUi8SQq', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609256986&hash=AeTuje64sPoxXUTQYik', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-29 15:49:50', '2020-11-29 15:49:50'),
(244, 'Sushil', 'Gaire', 'sushilgaire-dk244', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$GoOrC3r4p6Rayj3aWhEH5.Rx69ra9og4IB1VWAfRLKO3fSW6QhZGu', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609257322&hash=AeQ5jAatxXvr_VHno40', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-29 15:55:24', '2020-11-29 15:55:24'),
(245, 'Sushil', 'Gaire', 'sushilgaire-dk245', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$EM7yxPJ0AJIeY7UqNyRLJuvnsrIW9..MMCb8K.g.q3d3txhcBCP7O', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609258077&hash=AeRXvkrOgt5sItcBI3Y', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-29 16:07:59', '2020-11-29 16:07:59'),
(246, 'Rama', 'Shahi', 'ramashahi-dk246', NULL, NULL, '9844795849', NULL, NULL, '$2y$10$tHJMLyU0nddo/6j6CIZAjeLoIhKTyM8fEeYwceBrV2CnFYJZ/E/EC', NULL, NULL, NULL, 822244, 'Rama Shahi', '0', 0, 0, 0, 0, 1, NULL, '2020-11-29 20:05:49', '2020-11-29 20:06:46'),
(247, 'Ganesh', 'Gaire', 'ganeshgaire-dk247', 'ganeshgaire121@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$2eyRp2gOchB55Pb.AyLbTOO1NLtaqIdYqG4hwyYokJ3EKNM6FArJW', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=824219368411795&height=50&width=50&ext=1609334087&hash=AeTExYRgEUdhbaMAG8o', NULL, NULL, NULL, 'Ganesh Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-11-30 13:14:52', '2020-11-30 13:14:52'),
(248, 'Suraj', 'Khatri', 'surajkhatri-dk248', NULL, NULL, NULL, NULL, NULL, '$2y$10$LlneY5Ew9vwGT.NmsVjvX.4hjIENp.lvC6BIiBkKLzvY0jjviIqxm', 'https://scontent.fbwa1-1.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=2&_nc_sid=12b3be&_nc_ohc=pPz2fWywQCIAX8JjZi1&_nc_ht=scontent.fbwa1-1.fna&tp=27&oh=9aa8e3987602b7d15ddc781b1ce8b3c6&oe=5FEC01B8', NULL, NULL, NULL, 'Suraj Khatri', '0', 1, 0, 0, 0, 0, NULL, '2020-11-30 15:15:08', '2020-11-30 15:15:09'),
(249, 'ram', 'thapa', 'ramthapa-dk249', NULL, NULL, '9847015778', NULL, NULL, '$2y$10$SCwAkVcEHtF1WGvv8Hev6.WnW1vGeM8FsaDSw1FqiB2kiQfTGKcxK', NULL, NULL, NULL, 189199, 'ram thapa', '0', 0, 0, 0, 0, 0, NULL, '2020-11-30 16:55:46', '2020-11-30 16:57:01'),
(250, 'som', 'raj', 'somraj-dk250', NULL, NULL, '9867749768', NULL, NULL, '$2y$10$zpfosUSL5Pfoa3SwsKQswejXXum8Dwz6h8PLDme7TrXdFn9MwWqfe', NULL, NULL, NULL, 635976, 'som raj', '0', 0, 0, 0, 0, 0, NULL, '2020-11-30 17:41:30', '2020-11-30 18:03:52'),
(251, 'som', 'raj', 'somraj-dk251', NULL, NULL, '9804491923', NULL, NULL, '$2y$10$qfrC4SV2hiPQ8BqqN7iWgOhJr7lpaiE9OhQjacLTvG8KnPsgs4ukS', NULL, NULL, NULL, 190055, 'som raj', '0', 0, 0, 0, 0, 0, NULL, '2020-11-30 18:05:17', '2020-11-30 18:18:37'),
(252, 'som', 'raj', 'somraj-dk252', NULL, NULL, '9867769768', NULL, NULL, '$2y$10$MqC21AvP29wySc3FEb1MQuLDJwabSeCrBJzuJkNsbQsDkx.Nu8Kmm', NULL, NULL, NULL, 712650, 'som raj', '0', 0, 0, 0, 0, 0, NULL, '2020-11-30 18:22:42', '2020-11-30 18:23:53'),
(253, 'mukti', 'Bashyal', 'muktibashyal-dk253', NULL, NULL, '9811910637', NULL, NULL, '$2y$10$1GlnxEuRF6ZT91qg.kenqurVAemimkVa1TjUMv05jMLzBy1hlqTI2', NULL, NULL, NULL, 174196, 'mukti Bashyal', '0', 0, 0, 0, 0, 0, NULL, '2020-12-01 02:57:37', '2020-12-01 03:54:35'),
(254, 'Sushil', 'Poudel', 'sushilpoudel-dk254', NULL, NULL, '9847027968', NULL, NULL, '$2y$10$AK0VEsMwJdQVb288GOlzvOWDdzT7ZVLBPEMCspiu5e3FTnh6WV5c2', NULL, NULL, NULL, 452996, 'Sushil Poudel', '0', 0, 0, 0, 0, 0, NULL, '2020-12-01 07:40:53', '2020-12-01 07:41:42'),
(255, 'krishna', 'adhikari', 'krishnaadhikari-dk255', NULL, NULL, '9805452955', NULL, NULL, '$2y$10$IpRCOdSup0Uo2YfGE9R9oeszbsy7sMbUEz5HrBfGNk96Ro2Pabvya', NULL, NULL, NULL, 654764, 'krishna adhikari', '0', 0, 0, 0, 0, 1, NULL, '2020-12-01 11:03:19', '2020-12-01 11:04:54'),
(256, 'arpan', 'jung kshetri', 'arpanjungkshetri-dk256', NULL, NULL, '9842483526', NULL, NULL, '$2y$10$E2aNi01D/xeFFAaaXUJOKOuHMBLr3Mlr9zkJXUQ1Yz8JNOB6TIbym', NULL, NULL, NULL, 935256, 'arpan jung kshetri', '0', 0, 0, 0, 0, 0, NULL, '2020-12-02 06:33:15', '2020-12-02 06:33:17'),
(257, 'Sakshi', 'Joshi', 'sakshijoshi-dk257', NULL, NULL, NULL, NULL, NULL, '$2y$10$A6bzKUFmvtKXj4cpMmnYo.6iPVYH2m2vPLE8XFBqP3ebyJEJeGhxm', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1570482356472004&height=50&width=50&ext=1609491575&hash=AeQRVkWjib7iWoIdSsc', NULL, NULL, NULL, 'Sakshi Joshi', '0', 1, 0, 0, 0, 0, NULL, '2020-12-02 08:59:36', '2020-12-02 08:59:37'),
(258, 'jatin', 'kasaudhan', 'jatinkasaudhan-dk258', NULL, NULL, '9821574477', NULL, NULL, '$2y$10$DH/jQPZkoh2wUyNijPsjq.OxmluLj5SDkGfkVq4PHN4LICBbM5s22', NULL, NULL, NULL, 437891, 'jatin kasaudhan', '0', 0, 0, 0, 0, 0, NULL, '2020-12-02 11:23:16', '2020-12-02 11:23:16'),
(259, 'Sushil', 'Gaire', 'sushilgaire-dk259', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$ATnsO1an7Nk4ZBLJIR17YOY2D9U6OK8CYdXAyoLSbZHDy8.P.ZgZe', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609513201&hash=AeQ5SkjaodAS9cdjeQc', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-12-02 15:00:04', '2020-12-02 15:00:04'),
(260, 'Sushil', 'Gaire', 'sushilgaire-dk260', 'rememberme936@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$3qZcS1TDNcqSofh0oi.P1ulUsXN0tWB/W2RqYqzoSA8jxz7XE8VwW', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1575548162631281&height=50&width=50&ext=1609513480&hash=AeTyIlt1_IZr660mIP0', NULL, NULL, NULL, 'Sushil Gaire', '0', 1, 0, 0, 0, 0, NULL, '2020-12-02 15:04:43', '2020-12-02 15:04:43'),
(261, 'Sumitra', 'Sapkota', 'sumitrasapkota-dk261', NULL, NULL, '9847246051', NULL, NULL, '$2y$10$AelkLxh4om1lciDVKYFFD.mmY6zT1i55N9/i5XieAPpYWqIKLKEpW', NULL, NULL, NULL, 418793, 'Sumitra Sapkota', '0', 0, 0, 0, 0, 0, NULL, '2020-12-03 06:45:58', '2020-12-03 06:46:17'),
(262, 'Kushum', 'Bhandari', 'kushumbhandari-dk262', NULL, NULL, '9867101969', NULL, NULL, '$2y$10$vEVVobyLgUmZ/SDvvcr9Cexer21tx9bEibrDYptPYuw24bAkZm4Wi', NULL, NULL, NULL, 746190, 'Kushum Bhandari', '0', 0, 0, 0, 0, 0, NULL, '2020-12-03 07:29:54', '2020-12-03 07:30:52'),
(263, 'Aakriti', 'Kc', 'aakritikc-dk263', NULL, NULL, '9864450147', NULL, NULL, '$2y$10$4xR2hZB30HzLoLr/kuF2FOHj9y4RzhOdjslhSfAk188qY999ki69W', NULL, NULL, NULL, 919714, 'Aakriti Kc', '0', 0, 0, 0, 0, 0, NULL, '2020-12-04 07:45:43', '2020-12-04 07:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complete_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_instructions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrival_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_selected` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `customer_id`, `latitude`, `longitude`, `delivery_area`, `complete_address`, `contact_no`, `delivery_instructions`, `nickname`, `icon_name`, `arrival_time`, `is_selected`, `created_at`, `updated_at`) VALUES
(1, 1, '27.672576', '84.4201984', 'Bharatpur', 'Rampur Rd, Bharatpur 44207, Nepal', '9816491822', NULL, 'Other', 'location-pin', NULL, 0, '2020-09-12 09:15:20', '2020-10-30 01:48:11'),
(2, 2, '27.7129039', '83.4639826', 'Butwal', 'गोलपार्क 3, Butwal 32900, Nepal', '9805452955', NULL, 'Home', 'ui-home', NULL, 0, '2020-09-12 10:03:24', '2020-09-12 11:04:05'),
(3, 2, '27.6887584', '83.4635647', 'Butwal', 'Siddhartha Path, Butwal 32907, Nepal', '9857057855', 'delivery as soon as possible', 'Work', 'ui-office', NULL, 0, '2020-09-12 11:04:05', '2020-09-12 11:04:21'),
(4, 2, '27.68876', '83.4635927', 'Butwal', 'Siddhartha Path, Butwal 32907, Nepal', '9857057855', 'delivery as soon as possible', 'Other', 'location-pin', NULL, 0, '2020-09-12 11:04:21', '2020-09-12 11:04:35'),
(5, 2, '27.68876', '83.4635927', 'Butwal', 'Siddhartha Path, Butwal 32907, Nepal', '9857057855', 'delivery as soon as possible', 'Other', 'location-pin', NULL, 1, '2020-09-12 11:04:35', '2020-09-12 11:04:54'),
(6, 2, '27.68876', '83.4635927', 'Butwal', 'Siddhartha Path, Butwal 32907, Nepal', '9857057855', 'delivery as soon as possible', 'Other', 'location-pin', NULL, 0, '2020-09-12 11:04:37', '2020-09-12 11:04:54'),
(7, 1, '27.7129039', '83.4639826', 'Butwal', 'गोलपार्क 3, Butwal 32900, Nepal', '9805452955', 'butwal', 'Other', 'location-pin', NULL, 0, '2020-09-12 15:06:29', '2020-12-03 12:36:17'),
(8, 1, '27.7129039', '83.4639826', 'Butwal', 'गोलपार्क 3, Butwal 32900, Nepal', '9805452955', NULL, 'Other', 'location-pin', NULL, 0, '2020-09-12 15:58:23', '2020-10-22 06:49:03'),
(9, 1, '27.7129039', '83.4639826', 'Butwal', 'गोलपार्क 3, Butwal 32900, Nepal', '9805452955', NULL, 'Home', 'ui-home', NULL, 0, '2020-09-12 15:58:46', '2020-09-13 06:16:50'),
(10, 48, '27.684071293273', '83.462324262681', 'Butwal', 'Unnamed Road, Butwal 32907, Nepal', '9843551153', 'Change', 'Home', 'ui-home', NULL, 1, '2020-09-13 11:53:26', '2020-09-13 11:54:50'),
(11, 48, '27.684067967046', '83.462346423721', 'Butwal', 'Unnamed Road, Butwal 32907, Nepal', '9843551153', 'Eg', 'Other', 'location-pin', NULL, 0, '2020-09-13 11:54:35', '2020-09-13 11:54:50'),
(12, 49, '27.712902', '83.4639821', 'Butwal', 'गोलपार्क 3, Butwal 32900, Nepal', '9857057855', NULL, 'Home', 'ui-home', NULL, 0, '2020-09-14 13:31:37', '2020-12-03 12:36:27'),
(13, 24, '27.672576', '84.4201984', 'Bharatpur', 'Rampur Rd, Bharatpur 44207, Nepal', '9816491822', 'Charange Production Nepal', 'Work', 'ui-office', NULL, 1, '2020-09-16 14:59:21', '2020-09-16 14:59:21'),
(14, 3, '27.6895647', '83.4406003', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '8899985448', 'fghj', 'vdhjg', 'location-pin', NULL, 0, '2020-10-02 15:32:39', '2020-10-02 15:41:09'),
(15, 3, '27.6895621', '83.4405951', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'fhjgfyu', 'home', 'location-pin', NULL, 0, '2020-10-02 15:41:09', '2020-10-02 16:56:16'),
(16, 3, '27.6895632', '83.4405996', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9876541230', 'dggfd', 'dfjvg', 'location-pin', NULL, 0, '2020-10-02 16:56:16', '2020-10-02 16:59:55'),
(17, 3, '27.6895643', '83.4406002', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'thh', 'ghj', 'location-pin', NULL, 0, '2020-10-02 16:59:55', '2020-10-02 17:01:44'),
(18, 3, '27.6895643', '83.4406002', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'ghhh', 'ffggg', 'location-pin', NULL, 0, '2020-10-02 17:01:44', '2020-10-02 17:04:22'),
(19, 3, '27.6895632', '83.4405996', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'cbngff', 'home', 'location-pin', NULL, 0, '2020-10-02 17:04:22', '2020-10-03 03:10:16'),
(20, 50, '27.6895643', '83.4406002', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9842919768', 'sfhjh', 'home', 'location-pin', NULL, 1, '2020-10-02 17:06:48', '2020-10-02 17:06:48'),
(21, 49, '27.7127468', '83.4637828', 'Butwal', 'Butwal, 3 गोलपार्क 3', '9857057855', 'golpark', 'home', 'location-pin', NULL, 0, '2020-10-02 17:24:53', '2020-10-15 12:55:55'),
(22, 3, '27.6895454', '83.4405419', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'opposite', 'home', 'location-pin', NULL, 0, '2020-10-03 03:10:16', '2020-10-03 09:39:35'),
(23, 49, '27.7133792', '83.4642678', 'बुटवल', 'बुटवल, बुटवल Butwal-3', '9857057855', 'kaluka', 'work', 'location-pin', NULL, 0, '2020-10-03 08:56:24', '2020-10-03 14:36:58'),
(24, 3, '27.6895621', '83.4405951', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9854855985', 'opportunity', 'home', 'location-pin', NULL, 0, '2020-10-03 09:39:35', '2020-10-03 14:24:17'),
(25, 3, '27.6895641', '83.4406004', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'oposite', 'office', 'location-pin', NULL, 0, '2020-10-03 14:24:17', '2020-10-03 14:27:36'),
(26, 3, '27.6895641', '83.4406004', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'oposite', 'office', 'location-pin', NULL, 0, '2020-10-03 14:27:36', '2020-10-03 14:27:36'),
(27, 3, '27.6895641', '83.4406004', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'oposite', 'office', 'location-pin', NULL, 0, '2020-10-03 14:27:36', '2020-10-03 14:27:56'),
(28, 3, '27.6895641', '83.4406004', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'oposite', 'office', 'location-pin', NULL, 0, '2020-10-03 14:27:56', '2020-10-08 02:57:40'),
(29, 49, '27.7129019', '83.4639758', 'Butwal', 'गोलपार्क 3, Butwal 32900, Nepal', '9857057855', 'butwal', 'Other', 'location-pin', NULL, 0, '2020-10-03 14:37:22', '2020-10-04 15:35:50'),
(30, 49, '27.6841527', '83.4623656', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9857057855', 'work', 'work', 'location-pin', NULL, 0, '2020-10-04 15:35:50', '2020-10-07 11:00:23'),
(31, 1, '27.683945348391', '83.463076271747', 'बुटवल', 'Butwal-11, Kalikanagar', '9816491822', 'Opposite of Daddy\'s Kitchen Butwal', 'Other', 'location-pin', NULL, 0, '2020-10-04 15:53:40', '2020-10-21 15:15:33'),
(32, 49, '27.7127803', '83.463841', 'Butwal', 'Butwal, 3 गोलपार्क 3', '9857057855', 'it\'s my office', 'home', 'location-pin', NULL, 0, '2020-10-07 11:00:23', '2020-10-09 16:17:48'),
(33, 3, '27.6895632', '83.4405996', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'dghjh', 'office', 'location-pin', NULL, 0, '2020-10-08 02:57:40', '2020-10-09 15:00:24'),
(34, 3, '27.6901514', '83.4411772', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'rtjj', 'gggj', 'location-pin', NULL, 0, '2020-10-09 15:00:24', '2020-10-09 15:09:24'),
(35, 3, '27.689567', '83.4405977', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'dfgh', 'home', 'location-pin', NULL, 0, '2020-10-09 15:09:24', '2020-10-09 16:00:23'),
(36, 3, '27.6895675', '83.4405978', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'kalika', 'home', 'location-pin', NULL, 0, '2020-10-09 16:00:22', '2020-10-10 06:15:51'),
(37, 3, '27.689566', '83.440597', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'dgjk', 'office', 'location-pin', NULL, 0, '2020-10-10 06:15:50', '2020-10-10 07:43:57'),
(38, 3, '27.6895657', '83.4405965', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'ghj', 'office', 'location-pin', NULL, 0, '2020-10-10 07:43:57', '2020-10-10 12:58:48'),
(39, 3, '27.6895627', '83.4405894', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'jff', 'dhhhg', 'location-pin', NULL, 0, '2020-10-10 12:58:48', '2020-10-12 04:25:29'),
(40, 3, '27.6907733', '83.4648427', 'Butwal', 'Butwal, Milan Chowk Bus Stop Milan Chowk Bus Stop', '9840677080', 'h', 'office', 'location-pin', NULL, 0, '2020-10-12 04:25:29', '2020-10-12 15:08:23'),
(41, 3, '27.6895665', '83.4405978', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'gjh', 'office', 'location-pin', NULL, 0, '2020-10-12 15:08:23', '2020-10-12 16:52:36'),
(42, 3, '27.6895621', '83.4405969', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'gdfgj', 'office', 'location-pin', NULL, 0, '2020-10-12 16:52:36', '2020-10-12 17:27:57'),
(43, 3, '27.6895643', '83.4405948', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'ffghj', 'ghjk', 'location-pin', NULL, 0, '2020-10-12 17:27:57', '2020-10-12 17:38:16'),
(44, 3, '27.6895614', '83.4405947', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'yyjj', 'office', 'location-pin', NULL, 0, '2020-10-12 17:38:16', '2020-10-13 00:45:10'),
(45, 3, '27.689541', '83.4405539', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'gjj', 'office', 'location-pin', NULL, 0, '2020-10-13 00:45:10', '2020-10-13 00:46:47'),
(46, 3, '27.689541', '83.4405539', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'gjj', 'office', 'location-pin', NULL, 0, '2020-10-13 00:46:46', '2020-10-13 07:32:07'),
(47, 52, '27.6895598', '83.4405855', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'gjk', 'offfice', 'location-pin', NULL, 0, '2020-10-13 00:49:12', '2020-10-13 02:18:39'),
(48, 52, '27.6895661', '83.4405976', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'near santichok', 'office', 'location-pin', NULL, 0, '2020-10-13 02:18:39', '2020-10-17 15:08:21'),
(49, 3, '27.6907542', '83.4648143', 'Butwal', 'Butwal, Milan Chowk Bus Stop Milan Chowk Bus Stop', '9840677080', 'gdg', 'office', 'location-pin', NULL, 1, '2020-10-13 07:32:07', '2020-10-13 07:32:07'),
(50, 49, '27.7131233', '83.4648722', 'Butwal', 'Butwal, 3 गोलपार्क 3', '9857057855', 'near nct', 'office', 'location-pin', NULL, 0, '2020-10-15 12:55:55', '2020-10-22 07:12:57'),
(51, 52, '27.6895658', '83.4405974', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'oppo', 'home', 'location-pin', NULL, 0, '2020-10-17 15:08:21', '2020-10-17 15:30:03'),
(52, 52, '27.6895629', '83.4405904', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'njhh', 'office', 'location-pin', NULL, 1, '2020-10-17 15:30:03', '2020-10-17 15:30:03'),
(53, 58, '27.6895658', '83.4405974', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'fgg', 'vbh', 'location-pin', NULL, 0, '2020-10-17 15:49:44', '2020-10-20 23:15:32'),
(54, 58, '27.6896698', '83.4406093', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'near furniture', 'office', 'location-pin', NULL, 0, '2020-10-20 23:15:32', '2020-10-21 15:51:48'),
(55, 1, '27.6896707', '83.4406111', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9841234568', 'dghh', 'office', 'location-pin', NULL, 0, '2020-10-21 15:15:33', '2020-10-22 06:46:37'),
(56, 58, '27.6896734', '83.440616', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '5555555555', 'ghhh', 'office', 'location-pin', NULL, 0, '2020-10-21 15:51:48', '2020-10-21 15:57:30'),
(57, 58, '27.6896734', '83.4406159', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '8888888888', 'ghhu', 'office', 'location-pin', NULL, 0, '2020-10-21 15:57:30', '2020-10-22 02:20:05'),
(58, 60, '27.6896729', '83.440616', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9854542145', 'fghj', 'office', 'location-pin', NULL, 1, '2020-10-21 15:58:30', '2020-10-21 15:58:30'),
(59, 61, '27.6896575', '83.4405885', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'ggu', 'office', 'location-pin', NULL, 1, '2020-10-21 16:07:05', '2020-10-21 16:07:05'),
(60, 58, '27.6896728', '83.440616', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9854545454', 'ggu', 'office', 'location-pin', NULL, 0, '2020-10-22 02:20:05', '2020-10-22 02:37:52'),
(61, 58, '27.6896731', '83.440616', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9812345678', 'fgh', 'office', 'location-pin', NULL, 0, '2020-10-22 02:37:52', '2020-10-22 02:56:26'),
(62, 58, '27.6896726', '83.4406156', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'ghhj', 'office', 'location-pin', NULL, 0, '2020-10-22 02:56:26', '2020-10-29 13:39:05'),
(63, 49, '27.6841115', '83.4623374', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9805452955', 'At daddy\'s kitchen', 'other', 'location-pin', NULL, 0, '2020-10-22 07:12:56', '2020-11-05 12:08:26'),
(64, 64, '27.7022626', '83.4677415', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9868606202', 'Kalaki', 'Office', 'location-pin', NULL, 1, '2020-10-27 22:40:02', '2020-10-27 22:40:03'),
(65, 58, '27.6894187', '83.4401582', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'fghy', 'office', 'location-pin', NULL, 0, '2020-10-29 13:39:05', '2020-10-29 15:29:46'),
(66, 58, '27.6895325', '83.4405344', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'gj', 'office', 'location-pin', NULL, 1, '2020-10-29 15:29:46', '2020-10-29 15:29:46'),
(67, 1, '27.6895379', '83.44054', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'tghj', 'office', 'location-pin', NULL, 0, '2020-10-30 01:48:11', '2020-10-30 15:28:08'),
(68, 80, '27.712846', '83.4638284', 'Butwal', 'Butwal, 3 गोलपार्क 3', '9847015778', 'Pulchowk', 'Office', 'location-pin', NULL, 1, '2020-11-01 14:40:03', '2020-11-01 14:40:03'),
(69, 81, '27.6787038', '83.4599207', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9843432022', 'kailash path', 'home', 'location-pin', NULL, 1, '2020-11-01 18:08:36', '2020-11-01 18:08:36'),
(70, 84, '27.7277208', '85.3192373', 'Kathmandu', 'Kathmandu, Triveni Marg Triveni Marg', '9813459818', 'near dakshinkali mandir', '9813459818', 'location-pin', NULL, 1, '2020-11-02 12:27:01', '2020-11-02 12:27:01'),
(71, 83, '27.6840955', '83.4623129', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9804424446', 'daddys kitchen', 'office', 'location-pin', NULL, 1, '2020-11-02 12:27:24', '2020-11-02 12:27:24'),
(72, 87, '27.7050128', '83.4628524', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9867923786', 'butwal', 'home', 'location-pin', NULL, 1, '2020-11-02 15:37:02', '2020-11-02 15:37:02'),
(73, 105, '27.6841125', '83.4623969', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9857048300', 'kalikanager prempath', 'Home', 'ui-home', NULL, 1, '2020-11-03 13:53:40', '2020-11-03 13:53:40'),
(74, 111, '27.6598222', '83.4639441', 'Tilottama', 'Tilottama, Unnamed Road Unnamed Road', '9847164663', 'janakinagar', 'home', 'location-pin', NULL, 1, '2020-11-05 09:02:39', '2020-11-05 09:02:39'),
(75, 53, '27.6840897', '83.4623107', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9847530317', 'near shivalaya mandir', 'office', 'location-pin', NULL, 0, '2020-11-05 12:13:49', '2020-11-12 08:51:01'),
(76, 113, '27.6720806', '83.4572523', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9812957067', 'Devsiddha chock,trisul path', 'Home', 'ui-home', NULL, 0, '2020-11-05 13:57:50', '2020-11-05 14:34:43'),
(77, 113, '27.6720806', '83.4572523', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9812957067', 'Devsiddha chock,trisul path', 'Home', 'ui-home', NULL, 1, '2020-11-05 14:34:43', '2020-11-05 14:34:43'),
(78, 120, '27.6896702', '83.440616', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'fghh', 'fhjgfhy', 'location-pin', NULL, 1, '2020-11-07 09:55:04', '2020-11-07 09:55:04'),
(79, 121, '27.6896695', '83.4406156', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'fhhhh', 'office', 'location-pin', NULL, 1, '2020-11-07 09:57:52', '2020-11-07 09:57:52'),
(80, 130, '27.7128777', '83.4637343', 'Butwal', 'Butwal, 3 गोलपार्क 3', '9805452955', 'nct', 'home', 'location-pin', NULL, 1, '2020-11-12 03:20:51', '2020-11-12 03:20:51'),
(81, 53, '27.6840931', '83.4623244', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9847530317', 'near nea', 'home', 'location-pin', NULL, 1, '2020-11-12 08:51:01', '2020-11-12 08:51:01'),
(82, 136, '27.6881504', '83.4682629', 'Butwal', 'Butwal, Shukra Path Shukra Path', '9869934729', 'Lits college', 'office', 'location-pin', NULL, 1, '2020-11-13 06:45:25', '2020-11-13 06:45:26'),
(83, 93, '27.6906026', '83.4618709', 'Butwal', 'Butwal, ajip stha ajip stha', '9813489800', 'Mani path in front of Chicken station', 'home', 'location-pin', NULL, 0, '2020-11-13 13:25:55', '2020-11-27 13:32:11'),
(84, 146, '27.6727078', '83.4598093', 'Butwal', 'Butwal, Butwal Devinagar-11', '9869922453', 'Aqua lumbini', 'home', 'location-pin', NULL, 1, '2020-11-13 13:29:10', '2020-11-13 13:29:10'),
(85, 148, '27.6569986', '83.4781246', 'Tilottama', 'Tilottama, Rupandehi Tilottama-3', '9806973122', 'near cream hydro', 'home', 'location-pin', NULL, 1, '2020-11-13 14:59:01', '2020-11-13 14:59:01'),
(86, 151, '27.6738077', '83.4650587', 'Butwal', 'Butwal, Siddartha Raj Marg Siddartha Raj Marg', '9847053004', 'Butwal FM', 'kalikanagar, butwal 10', 'location-pin', NULL, 1, '2020-11-15 03:52:13', '2020-11-15 03:52:13'),
(87, 155, '27.7043602', '83.4632981', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9863393034', 'near SBIN BANK [GANAPATI PAN PASAL]', 'home', 'location-pin', NULL, 1, '2020-11-15 18:58:34', '2020-11-15 18:58:34'),
(88, 160, '27.7007551', '83.4634577', 'Butwal', 'Butwal, पुरानो बुटवल बस पार्क पुरानो बुटवल बस पार्क', '9867856560', 'sabji mandi gate', 'Home', 'ui-home', NULL, 1, '2020-11-16 13:49:53', '2020-11-16 13:49:55'),
(89, 162, '27.687893', '83.4635915', 'Butwal', 'Butwal, ICI Path ICI Path', '9842926136', 'Satya sahi Kala Kendra house', 'Home', 'ui-home', NULL, 1, '2020-11-17 08:40:20', '2020-11-17 08:40:20'),
(90, 165, '27.6866787', '83.4644602', 'Butwal', 'Butwal, Siddartha Rajmarg Siddartha Rajmarg', '9867109668', 'Satya Narayan path ,tinkune,Butwal', 'Home', 'ui-home', NULL, 0, '2020-11-17 13:07:51', '2020-11-17 13:08:50'),
(91, 165, '27.6866787', '83.4644602', 'Butwal', 'Butwal, Siddartha Rajmarg Siddartha Rajmarg', '9867109668', 'Satya Narayan path ,tinkune,Butwal', 'Home', 'ui-home', NULL, 1, '2020-11-17 13:08:50', '2020-11-17 13:08:50'),
(92, 166, '27.6894206', '83.4637089', 'Butwal', 'Butwal, Gauri Path Gauri Path', '9814454756', 'tinkune milanchowk', 'home', 'location-pin', NULL, 1, '2020-11-18 02:11:44', '2020-11-18 02:11:45'),
(93, 169, '27.7174513', '83.4645669', 'Butwal', 'Butwal, Siddhartha Rajmarg Siddhartha Rajmarg', '9866577858', 'famous Momo', 'home', 'location-pin', NULL, 0, '2020-11-18 07:35:46', '2020-11-18 07:35:48'),
(94, 169, '27.7174513', '83.4645669', 'Butwal', 'Butwal, Siddhartha Rajmarg Siddhartha Rajmarg', '9866577858', 'famous Momo', 'home', 'location-pin', NULL, 0, '2020-11-18 07:35:47', '2020-11-18 07:36:39'),
(95, 169, '27.7174513', '83.4645669', 'Butwal', 'Butwal, Siddhartha Rajmarg Siddhartha Rajmarg', '9866577858', 'famous Momo', 'home', 'location-pin', NULL, 1, '2020-11-18 07:36:38', '2020-11-18 07:36:40'),
(96, 142, '27.6843176', '83.4229934', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9844709501', 'nayagaun', 'office', 'location-pin', NULL, 1, '2020-11-19 07:17:25', '2020-11-19 07:17:26'),
(97, 174, '27.6855619', '83.4542797', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9867856205', 'near nabin school narayan path', 'home', 'location-pin', NULL, 1, '2020-11-19 08:26:09', '2020-11-19 08:26:09'),
(98, 176, '27.6925492', '83.4759131', 'Butwal', 'Butwal, 96 B.P Path 96', '9866622940', 'near Siddheshwari school', 'home', 'location-pin', NULL, 1, '2020-11-19 11:12:39', '2020-11-19 11:12:40'),
(99, 178, '27.6896709', '83.440616', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'butwal', 'office', 'location-pin', NULL, 1, '2020-11-19 16:24:14', '2020-11-19 16:24:14'),
(100, 179, '27.6896702', '83.440616', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'near santichiok', 'office', 'location-pin', NULL, 1, '2020-11-19 16:26:54', '2020-11-19 16:26:54'),
(101, 182, '27.6676612', '83.4659278', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9867430668', 'Near kusum cafe', 'Home', 'ui-home', NULL, 0, '2020-11-20 09:41:06', '2020-11-20 09:43:57'),
(102, 182, '27.6676612', '83.4659278', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9867430668', 'Near kusum cafe', 'Home', 'ui-home', NULL, 0, '2020-11-20 09:43:57', '2020-11-20 09:44:40'),
(103, 182, '27.6676612', '83.4659278', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9867430668', 'Near kusum cafe', 'Home', 'ui-home', NULL, 0, '2020-11-20 09:44:40', '2020-11-20 09:45:39'),
(104, 182, '27.6676612', '83.4659278', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9867430668', 'Near kusum cafe', 'Home', 'ui-home', NULL, 1, '2020-11-20 09:45:39', '2020-11-20 09:45:39'),
(105, 183, '27.6790997', '83.4584441', 'Butwal', 'Butwal, Pradhan Path Pradhan Path', '9867244650', 'bhuwa Singh marga devinagar', 'home', 'location-pin', NULL, 0, '2020-11-20 13:06:34', '2020-11-20 13:16:53'),
(106, 183, '27.6790997', '83.4584441', 'Butwal', 'Butwal, Pradhan Path Pradhan Path', '9867244650', 'bhuwa Singh marga devinagar', 'home', 'location-pin', NULL, 0, '2020-11-20 13:16:53', '2020-11-20 13:17:37'),
(107, 183, '27.6790997', '83.4584441', 'Butwal', 'Butwal, Pradhan Path Pradhan Path', '9867244650', 'bhuwa Singh marga devinagar', 'home', 'location-pin', NULL, 0, '2020-11-20 13:17:37', '2020-11-20 13:18:03'),
(108, 183, '27.6790997', '83.4584441', 'Butwal', 'Butwal, Pradhan Path Pradhan Path', '9867244650', 'bhuwa Singh marga devinagar', 'home', 'location-pin', NULL, 1, '2020-11-20 13:18:03', '2020-11-20 13:18:03'),
(109, 184, '27.7046661', '83.466379', 'Butwal', 'Butwal, Siddartha Rajmarg Siddartha Rajmarg', '9867670875', 'opposite to nabil bank', 'Thapa general store', 'location-pin', NULL, 1, '2020-11-21 03:41:19', '2020-11-21 03:41:19'),
(110, 185, '27.7036903', '83.4659399', 'Butwal', 'Butwal, 8 Ram Mandir Line 8', '9867598877', 'sangampath', 'home', 'location-pin', NULL, 1, '2020-11-21 05:09:40', '2020-11-21 05:09:40'),
(111, 186, '28.2211099', '83.9783394', 'Pokhara', 'Pokhara, Pokhara-Baglung Highway Pokhara-Baglung Hwy', '9805879899', 'gadatantra chowk', 'malepatan 5 Pokhara', 'location-pin', NULL, 0, '2020-11-21 09:30:03', '2020-11-21 09:31:26'),
(112, 186, '28.2211099', '83.9783394', 'Pokhara', 'Pokhara, Pokhara-Baglung Highway Pokhara-Baglung Hwy', '9805879899', 'gadatantra chowk', 'malepatan 5 Pokhara', 'location-pin', NULL, 1, '2020-11-21 09:31:25', '2020-11-21 09:31:26'),
(113, 188, '27.6896618', '83.4406001', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'ghkk', 'home', 'location-pin', NULL, 1, '2020-11-22 13:56:49', '2020-11-22 13:56:49'),
(114, 190, '27.6783384', '83.4615208', 'Butwal', 'Butwal, Mahadev Road Mahadev Rd', '9814432810', 'opposite to usha almunium and right to ranimahal liquors shop', 'home', 'location-pin', NULL, 1, '2020-11-23 07:19:06', '2020-11-23 07:19:06'),
(115, 194, '27.6891956', '83.4635207', 'Butwal', 'Butwal, Kandara Kandara', '9811991028', 'Milanchowk', 'Tinkune', 'location-pin', NULL, 0, '2020-11-23 10:22:59', '2020-11-23 10:24:45'),
(116, 194, '27.6891956', '83.4635207', 'Butwal', 'Butwal, Kandara Kandara', '9811991028', 'Milanchowk', 'Tinkune', 'location-pin', NULL, 1, '2020-11-23 10:24:45', '2020-11-23 10:24:45'),
(117, 195, '27.6896621', '83.4406127', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'hjjj', 'office', 'location-pin', NULL, 1, '2020-11-24 14:29:06', '2020-11-24 14:29:06'),
(118, 196, '27.6896708', '83.440616', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'gh', 'Office', 'location-pin', NULL, 1, '2020-11-24 14:37:19', '2020-11-24 14:37:19'),
(119, 204, '27.6896611', '83.4406195', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'fgh', 'office', 'location-pin', NULL, 1, '2020-11-24 15:57:47', '2020-11-24 15:57:47'),
(120, 205, '27.6841269', '83.4624023', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9847475983', 'kalikanagar', 'home', 'location-pin', NULL, 1, '2020-11-25 12:56:21', '2020-11-25 12:56:22'),
(121, 193, '27.6900484', '83.4628266', 'Butwal', 'Butwal, Gauri Path Gauri Path', '9825494974', 'milanhowk', 'dhokan', 'location-pin', NULL, 1, '2020-11-25 13:46:50', '2020-11-25 13:46:50'),
(122, 213, '27.6896698', '83.4406156', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'NEAR SANTI CHOK BELBAS', 'HOME', 'location-pin', NULL, 1, '2020-11-26 14:06:16', '2020-11-26 14:06:17'),
(123, 214, '27.68967', '83.440616', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'NEAR SANTICHOK', 'HOME', 'location-pin', NULL, 0, '2020-11-26 14:32:24', '2020-11-26 14:45:34'),
(124, 214, '27.68967', '83.440616', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'NEAR SANTICHOK', 'HOME', 'location-pin', NULL, 1, '2020-11-26 14:45:33', '2020-11-26 14:45:34'),
(125, 216, '27.6812897', '83.4621877', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9845226636', 'Daddys', 'office', 'location-pin', NULL, 1, '2020-11-27 06:40:24', '2020-11-27 06:40:24'),
(126, 217, '27.6841192', '83.4624138', 'Butwal', 'Butwal, Unnamed Road Unnamed Road', '9819454884', 'Daddys kitchen', 'office', 'location-pin', NULL, 1, '2020-11-27 06:53:11', '2020-11-27 06:53:12'),
(127, 218, '27.6907648', '83.4647974', 'Butwal', 'Butwal, Milan Chowk Bus Stop Milan Chowk Bus Stop', '9840677080', 'krish building third floor milanchok', 'office', 'location-pin', NULL, 1, '2020-11-27 07:32:02', '2020-11-27 07:32:02'),
(128, 219, '27.7041369', '83.4668558', 'Butwal', 'Butwal, 4 Laxmipath', '9840190596', 'opposite to sunrise bank ,ram mandirline', 'home', 'location-pin', NULL, 1, '2020-11-27 08:11:49', '2020-11-27 08:11:49'),
(129, 220, '27.6876996', '83.4347418', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9806948140', 'near shiwalaya mandir', 'home', 'location-pin', NULL, 1, '2020-11-27 08:37:21', '2020-11-27 08:37:21'),
(130, 222, '27.6896356', '83.4405958', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'near santichok', 'home', 'location-pin', NULL, 1, '2020-11-27 13:25:27', '2020-11-27 13:25:27'),
(131, 93, '27.6906418', '83.4619102', 'Butwal', 'Butwal, ajip stha ajip stha', '9813489800', 'mani path,in front of Chicken station road', 'home', 'location-pin', NULL, 0, '2020-11-27 13:32:11', '2020-11-27 13:44:45'),
(132, 93, '27.6905409', '83.4619371', 'Butwal', 'Butwal, ajip stha ajip stha', '9813489800', 'mani path,in front of chicken station', 'home', 'location-pin', NULL, 1, '2020-11-27 13:44:45', '2020-11-27 13:44:45'),
(133, 229, '27.6805635', '83.4660532', 'Butwal', 'Butwal, Butwal Unnamed Road', '9819417028', '3 galli down from kalika school (ie.4th galli)', 'home', 'location-pin', NULL, 0, '2020-11-28 07:36:46', '2020-11-28 07:37:28'),
(134, 229, '27.6805635', '83.4660532', 'Butwal', 'Butwal, Butwal Unnamed Road', '9819417028', '3 galli down from kalika school (ie.4th galli)', 'home', 'location-pin', NULL, 1, '2020-11-28 07:37:28', '2020-11-28 07:37:28'),
(135, 230, '27.679684', '85.3723208', 'Madhyapur Thimi', 'Madhyapur Thimi, Unnamed Road Unnamed Road', '9817407583', 'gatthaghar', 'home', 'location-pin', NULL, 1, '2020-11-28 11:44:05', '2020-11-28 11:44:06'),
(136, 232, '27.6896409', '83.4406155', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'near santi chok', 'home', 'location-pin', NULL, 1, '2020-11-28 15:20:01', '2020-11-28 15:20:01'),
(137, 233, '27.689641', '83.4406156', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'near santichok', 'office', 'location-pin', NULL, 1, '2020-11-29 02:08:18', '2020-11-29 02:08:18'),
(138, 235, '27.7139896', '83.4672881', 'Butwal', 'Butwal, Siddhartha Rajmarg Siddhartha Rajmarg', '9804400015', 'pragatisil path', 'home', 'location-pin', NULL, 1, '2020-11-29 11:28:26', '2020-11-29 11:28:26'),
(139, 238, '27.6908628', '83.4712627', 'Butwal', 'Butwal, Gorkha Copy Udyogh Gorkha Copy Udyogh', '9821548082', 'near canon school', 'home', 'location-pin', NULL, 1, '2020-11-29 14:13:12', '2020-11-29 14:13:12'),
(140, 255, '27.7128928', '83.463776', 'Butwal', 'Butwal, 3 गोलपार्क 3', '9805452955', 'NCT', 'Office', 'location-pin', NULL, 1, '2020-12-01 11:06:07', '2020-12-01 11:06:07'),
(141, 260, '27.6896376', '83.440617', 'Butwal', 'Butwal, East - West Highway E - W Hwy', '9840677080', 'santichok belbas', 'office', 'location-pin', NULL, 1, '2020-12-02 15:05:30', '2020-12-02 15:05:30'),
(142, 1, '28.199768794523', '83.983579013086', 'Pokhara', 'Pokhara Airport, Pokhara 33700, Nepal', '9816491822', 'Charange Production Nepal', 'Home', 'ui-home', NULL, 1, '2020-12-03 12:36:17', '2020-12-03 12:36:17'),
(143, 49, '27.7128936', '83.4637623', 'Butwal', 'Butwal, 3 गोलपार्क 3', '9805452955', 'test location', 'test', 'location-pin', NULL, 1, '2020-12-03 12:36:27', '2020-12-03 12:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2017_10_08_000001_create_oauth_access_token_providers_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2020_08_12_231024_create_permission_categories_table', 1),
(11, '2020_08_12_231122_create_permission_tables', 1),
(12, '2020_08_12_232524_create_user_passwords_table', 1),
(13, '2020_08_13_115338_create_customers_table', 1),
(14, '2020_08_15_152424_create_categories_table', 1),
(15, '2020_08_15_153042_create_products_table', 1),
(16, '2020_08_28_193455_create_reviews_table', 1),
(17, '2020_08_28_204006_create_delivery_addresses_table', 1),
(18, '2020_08_29_131104_create_orders_table', 1),
(19, '2020_08_29_131433_create_order_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('01324604e82d5faea8e5ee7aa7f575c8a1d966fe8cc75acd3a3a0165355640a9fba9ad05d54b6ad3', 3, 1, 'sushil gaire', '[]', 0, '2020-10-09 15:59:56', '2020-10-09 15:59:56', '2021-10-09 21:44:56'),
('01a4bd7162de63edddb1ea1d12656436a74109c94630b53050ec1909d0237b354f6c21cbfc334ada', 182, 1, 'Shradha Tiwari', '[]', 0, '2020-11-20 09:46:13', '2020-11-20 09:46:13', '2021-11-20 15:31:13'),
('023703d97abafbcc063fab565006b0cb71f7c0d88c8d07e97d23328510b810e13f8f262f45af7ae2', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 11:20:27', '2020-11-07 11:20:27', '2021-11-07 17:05:27'),
('02c5f8475a440d493ccee317ce2bcdd0061749d713f7ef00cb1cb6912722b3c40f79de276b4df3dd', 237, 1, 'Ganesh Gaire', '[]', 0, '2020-11-29 13:48:52', '2020-11-29 13:48:52', '2021-11-29 19:33:52'),
('0320c66ab975a4c618567756fb7a2b68011825c31767c83ab992d93a6e18566d04c38dc4b3672356', 117, 1, 'Sushant Bhandari', '[]', 0, '2020-11-06 09:04:25', '2020-11-06 09:04:25', '2021-11-06 14:49:25'),
('042a1b71da89d5cb212ee610f79aec67c8e30da2337b3ae175a90ba0f6a1d73f75c20e689510627f', 125, 1, 'sylvie Thapa', '[]', 0, '2020-11-08 11:53:33', '2020-11-08 11:53:33', '2021-11-08 17:38:33'),
('043698c73f1a43977313963e2aaebbebae57693e4c2b53909e50fe10ebedf5a9793bb5bc072abc88', 190, 1, 'Akash Man Shakya', '[]', 0, '2020-11-23 07:17:38', '2020-11-23 07:17:38', '2021-11-23 13:02:38'),
('0456b48a7c61ef3b649bf777c0765937b7abbe15b8d3e871ffb8fff4d0bad37cb2a0fc912d5ecb34', 221, 1, 'Sabu Pokhrel', '[]', 0, '2020-11-27 13:17:59', '2020-11-27 13:17:59', '2021-11-27 19:02:59'),
('049ef6e388eae365c0e166d04dfb1cedd9a5e3b9646b526d4e8b9bb61fc6d7cff6179cbe8fe7db19', 140, 1, 'Niwas Kunwar', '[]', 0, '2020-11-13 07:06:27', '2020-11-13 07:06:27', '2021-11-13 12:51:27'),
('04d7f896ae7e39676987660f4ef2cea9b7c665c3ffed43f2de7401b24edd9c1af1c5dd39101c2908', 160, 1, 'Anish Alam', '[]', 0, '2020-11-16 13:48:45', '2020-11-16 13:48:45', '2021-11-16 19:33:45'),
('050b0f377dea2ec4ca83b677f71b1eb0c40f7afaafd954bc18755f30285890bdef5a0bc580b0082c', 159, 1, 'manju bhusal', '[]', 0, '2020-11-16 09:07:33', '2020-11-16 09:07:33', '2021-11-16 14:52:33'),
('06b6cf4d10fe5fcef5e730c1483d33229bd0b8374bfdaa603846c94a4353bc89efcb5f4b6476d45a', 3, 1, 'sushil gaire', '[]', 0, '2020-10-02 16:55:46', '2020-10-02 16:55:46', '2021-10-02 22:40:46'),
('07c0f12c2ae4cff7fb9eddc9201e7d32d9cca386da461f6168f9f82eca03ba13e1799469dcfa783f', 49, 1, 'krishna adhikari', '[]', 0, '2020-11-05 12:08:13', '2020-11-05 12:08:13', '2021-11-05 17:53:13'),
('07c25ca021d8949b5b2ee0d50fe631e745d0208c67d762f76ce887966a752c450325d5354bb6ab5e', 129, 1, 'Sushil Gaire', '[]', 0, '2020-11-12 03:12:54', '2020-11-12 03:12:54', '2021-11-12 08:57:54'),
('07eda4e525bfc826153cb6389dbc6b2da9be618e43367c347b1190bba181eb62665b0d5b596fc852', 58, 1, 'sushil gaire', '[]', 0, '2020-10-29 15:29:14', '2020-10-29 15:29:14', '2021-10-29 21:14:14'),
('07ef048c5a34112be365b08f81b4d2cb6efb8efce511b2e82826e56179a028175ad3a50dc58b4b4a', 58, 1, 'Sishir Gaire', '[]', 0, '2020-11-11 17:53:30', '2020-11-11 17:53:30', '2021-11-11 23:38:30'),
('08036d371cce61db0ecd7a5708e0c25e71c9af9a32845cab41e6d6953de3685871e9cb5c08e829d3', 166, 1, 'alisha banu', '[]', 0, '2020-11-18 02:09:34', '2020-11-18 02:09:34', '2021-11-18 07:54:34'),
('08c69047caf9a97456b3301d6fdda4048ea2c22553acec3f119205910c085b97caea9a8386d3ce97', 127, 1, 'Rahul koirala Chhetri', '[]', 0, '2020-11-11 11:29:26', '2020-11-11 11:29:26', '2021-11-11 17:14:26'),
('0921e8d350b6c289f835a270b8fd4372336696cc88c1d97969ab96ad9cd3a97cab239f0e4627083b', 59, 1, 'Rohit Bhandari', '[]', 0, '2020-10-21 07:57:49', '2020-10-21 07:57:49', '2021-10-21 13:42:49'),
('0b37283730611d1fc974af3bef99d4658d445c39b0a59c96a186c90df378fba88d3b6c91d956bbd1', 49, 1, 'krishna adhikari', '[]', 0, '2020-11-12 03:27:29', '2020-11-12 03:27:29', '2021-11-12 09:12:29'),
('0d53a6ac2c289d4595a5bb024c6ef5df7a0e2b5a31241e2393ed7bbaa3185a3669dc2f500f008607', 49, 1, 'krishna adhikari', '[]', 0, '2020-11-27 06:46:05', '2020-11-27 06:46:05', '2021-11-27 12:31:05'),
('0d7dd427eea3bb4a1789a9ca493aa72a4e4f9d5f022289b4366a46bfa9b9bcff2534edcfe8464c95', 3, 1, 'sushil gaire', '[]', 0, '2020-10-08 02:50:08', '2020-10-08 02:50:08', '2021-10-08 08:35:08'),
('0d85e0f62d10fb38b1402efbee7cfb8f8e840a69092da88ec352bae2a0149db39d336506ef0de09b', 58, 1, 'Sishir Gaire', '[]', 0, '2020-11-11 14:40:35', '2020-11-11 14:40:35', '2021-11-11 20:25:35'),
('0e09f4b8a69a06065be67a633a2dc1c55ddc2699cd51f29e5955f986e1f838235c3e6b28689bcbb9', 229, 1, 'nitesh bk', '[]', 0, '2020-11-28 07:33:42', '2020-11-28 07:33:42', '2021-11-28 13:18:42'),
('0f004c07420a6c4eaac36c00deacac0c68500b07f18423b1c7c4e09d77d68d19b717dcb4883f46c8', 231, 1, 'Sushil Gaire', '[]', 0, '2020-11-28 14:02:02', '2020-11-28 14:02:02', '2021-11-28 19:47:02'),
('0f4c66d911ddcf12f690236d6c0e83cd60fd8eee49f83b962a88c49976b4c5c40e74ed53291223f3', 23, 1, 'Rahul Thapa Magar', '[]', 0, '2020-10-24 07:30:54', '2020-10-24 07:30:54', '2021-10-24 13:15:54'),
('1034ee61a205cc50ad32becf6a25b38bb3ede7a3b6c1b298388251473a9b2ae934ed17fcd84f9a17', 3, 1, 'sushil gaire', '[]', 0, '2020-10-03 13:56:51', '2020-10-03 13:56:51', '2021-10-03 19:41:51'),
('105aed030eead9cb06d992eb30f2485a37f0d03cacb97622e097c5b1d81f7ecf5a3cd163ad1ac685', 53, 1, 'amreet sharka', '[]', 0, '2020-11-05 12:13:15', '2020-11-05 12:13:15', '2021-11-05 17:58:15'),
('107a7ec4fb51c0244b680d543a24ed93bf7b936c8aae63c7b4fd4e4e46e9d6012c4fb2945610019e', 174, 1, 'Pragati giri', '[]', 0, '2020-11-19 09:18:29', '2020-11-19 09:18:29', '2021-11-19 15:03:29'),
('113f23f390621f01f52ab90f9c9ef94638a426075b1f1e999c3e506fdbdacd428a313e60e11bbfc9', 179, 1, 'Sabu Pokhrel', '[]', 0, '2020-11-19 16:26:25', '2020-11-19 16:26:25', '2021-11-19 22:11:25'),
('11c0c7a86915a83cc60326fa151b4b310ec49dbef3191485e36c86c3497b17455646df01d8b34ad0', 162, 1, 'Ayush Bhusal', '[]', 0, '2020-11-21 09:33:45', '2020-11-21 09:33:45', '2021-11-21 15:18:45'),
('11e097e45c75f574f6aa38e4e2f96c0162d34a11a827eda80259f7af6213c9e0db5afae16f2d006a', 217, 1, 'susmita saru', '[]', 0, '2020-11-27 06:52:23', '2020-11-27 06:52:23', '2021-11-27 12:37:23'),
('138d5caf1ea53b0ff0f4c481993b565009fa9699019133db8cbcfa34d093d037d63d133bd43b481a', 224, 1, 'Sushil Gaire', '[]', 0, '2020-11-27 16:36:17', '2020-11-27 16:36:17', '2021-11-27 22:21:17'),
('140c12c14eac3c8f0f9f1f03f8b3483fb87d1db95f7e546c80343d7a616282841244c9b410d22119', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 11:01:27', '2020-11-07 11:01:27', '2021-11-07 16:46:27'),
('15ffde76de780662c0721ea486b2e976275535eb27cb01496723e629f8141028b318059115d37420', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-04 15:35:05', '2020-10-04 15:35:05', '2021-10-04 21:20:05'),
('162b4694160fbd28efc438077f52f3e9c48342c166aacc81567d2b204b1a731b84f1c00348e534bb', 118, 1, 'aeo productions', '[]', 0, '2020-11-07 02:56:31', '2020-11-07 02:56:31', '2021-11-07 08:41:31'),
('166d84f24d083023e9cc13f5d42b6a1867ecef8e5e80a13566f3b5d5386741660f962eedb6630ef7', 3, 1, 'sushil gaire', '[]', 0, '2020-10-03 13:55:25', '2020-10-03 13:55:25', '2021-10-03 19:40:25'),
('182a5f89b9e7beac45aaa8cf0b7682dbe4966f5c9f8af061f94eb486f053cc5d8ccceb68cc780790', 219, 1, 'Arsid shah', '[]', 0, '2020-11-27 08:10:25', '2020-11-27 08:10:25', '2021-11-27 13:55:25'),
('1843b89044e159e8586dba74fbc28b95a60fe6a8db13e9b29e68a8f84efd325fba01dfaff507bdec', 169, 1, 'seema xetri', '[]', 0, '2020-11-18 07:31:49', '2020-11-18 07:31:49', '2021-11-18 13:16:49'),
('18c30bfb1600986cc0373ffbf76eb4a1b7339bad7e52f98b505894bf570772c1aa868537f9fb3197', 214, 1, 'Sushil Gaire', '[]', 0, '2020-11-26 14:30:27', '2020-11-26 14:30:27', '2021-11-26 20:15:27'),
('196bf637d6a0c21df71abba9c9671debce43b0551b5cc26d470e71ee32a95dfb9592372575acf232', 176, 1, 'Sujan Reshmi', '[]', 0, '2020-11-19 11:11:24', '2020-11-19 11:11:24', '2021-11-19 16:56:24'),
('19f017dd31a87275a2c98c0abad607bbc440adf8c99cdea99cd092c745b05344fb2b3252a7cfc2cc', 53, 1, 'amreet sharka', '[]', 0, '2020-11-05 12:04:10', '2020-11-05 12:04:10', '2021-11-05 17:49:10'),
('1af8c6af5c980ed998a5eabb3fa924657a68ba41552b4c4b45b82e0477c5b8e3e5f90c4de8612367', 58, 1, 'sushil gaire', '[]', 0, '2020-10-22 02:19:22', '2020-10-22 02:19:22', '2021-10-22 08:04:22'),
('1b04f90cefba07d2ceb74ff9dc67144d89d72e11908ad8fc3ca472efb91ee966d9cb7f5720426cec', 131, 1, 'Achyut Bhattarai', '[]', 0, '2020-11-12 08:55:22', '2020-11-12 08:55:22', '2021-11-12 14:40:22'),
('1b22bdf46e4486ad62ebbb4c63d80408e017c57c13b5c84bfb6c9b47ed79db46f9e90a4e5c616fba', 255, 1, 'krishna adhikari', '[]', 0, '2020-12-01 11:26:49', '2020-12-01 11:26:49', '2021-12-01 17:11:49'),
('1b6304a2cb41584d91e78a1568271453adffdf3813b7500cd7f79f5dfda3497561eba004efcd5c2b', 238, 1, 'Anjali Rana', '[]', 0, '2020-11-29 14:12:43', '2020-11-29 14:12:43', '2021-11-29 19:57:43'),
('1ba0f24a9b08cbbbbb49f1d83ab09d3f574955e4d2b384d8cf3c75784c83fb1c91a661fae6fbebab', 60, 1, 'Sabu Pokhrel', '[]', 0, '2020-10-21 15:58:11', '2020-10-21 15:58:11', '2021-10-21 21:43:11'),
('1c66f07fdbdc8eb50a2cd01e4b48901e215799c68635e887e99e66bc18bc5d30c0cf8fded014c2e6', 58, 1, 'sushil gaire', '[]', 0, '2020-10-22 02:37:29', '2020-10-22 02:37:29', '2021-10-22 08:22:29'),
('1c7f7580acca3f488f8e59d2af4ee800cc7961f65b6d12a298e2848f4dcf524a2eefa444089c0f2c', 182, 1, 'Shradha Tiwari', '[]', 0, '2020-11-20 09:40:22', '2020-11-20 09:40:22', '2021-11-20 15:25:22'),
('1d1ac64fee065dcac2e75dcc7dc74958a2b2e20693785dbd36e0e04677119e97712712c5758e1fb9', 53, 1, 'amreet sharka', '[]', 0, '2020-10-20 07:02:02', '2020-10-20 07:02:02', '2021-10-20 12:47:02'),
('1ea27846a386579513614003897dc5e80a22283699c0093a4dec1f226dad3bc5433adf3a6771f0d2', 233, 1, 'sushil gaire', '[]', 0, '2020-11-29 02:07:49', '2020-11-29 02:07:49', '2021-11-29 07:52:49'),
('1f3f9e64dacf526ba56622d345692fae36e3fce16dd1aaab25e1ad08fbfd6f5ca54d2fe8a8cc961b', 99, 1, 'Sabu Pokhrel', '[]', 0, '2020-11-03 09:59:05', '2020-11-03 09:59:05', '2021-11-03 15:44:05'),
('2178fbdabbc5ff23c94ebcad667f1316e89030071f3dedd1d1e1d1493dd3bc81d8de583748cbc2f1', 226, 1, 'Sushil Gaire', '[]', 0, '2020-11-28 02:14:41', '2020-11-28 02:14:41', '2021-11-28 07:59:41'),
('21e8fb3edc0d13b6d94d9e207944217dc846e0c531ddae190b8fd7b62abb874c22bd0ce78e4976ed', 132, 1, 'Nishant Gyawali', '[]', 0, '2020-11-12 14:21:56', '2020-11-12 14:21:56', '2021-11-12 20:06:56'),
('222c9f4f87ee9cef777996c4089cada6b376844da57402f9f0c9af541329b4e729d71dbba81954c2', 49, 1, 'krishna adhikari', '[]', 0, '2020-11-27 06:16:57', '2020-11-27 06:16:57', '2021-11-27 12:01:57'),
('226884deace93ab4b5991fa4c5794a404024ffcb6598200497287619dc84d6202f613486b01f8e6e', 166, 1, 'alisha banu', '[]', 0, '2020-11-18 02:08:32', '2020-11-18 02:08:32', '2021-11-18 07:53:32'),
('2333fd7d467b1fd5920bfd5b3f757cee73b679f5894bd61c078fbde1a8860a83f3073e81e5330c1c', 62, 1, 'Sushil Gaire', '[]', 0, '2020-10-22 13:34:57', '2020-10-22 13:34:57', '2021-10-22 19:19:57'),
('2664fc3be5c3c9b6b67c8b747c7a82a20e75877e2b2b10e1d08302ffc5ffe2ec1ec904f86e2022ce', 220, 1, 'Prajwal Basyal', '[]', 0, '2020-11-27 08:36:33', '2020-11-27 08:36:33', '2021-11-27 14:21:33'),
('26f6d9caa39428c5090130ae554d19982ea51e5304607bdffc52ecb26f9d9f5599944252aca63d8b', 168, 1, 'Sushil Gaire', '[]', 0, '2020-11-18 06:10:57', '2020-11-18 06:10:57', '2021-11-18 11:55:57'),
('28b91e3c1789cfd3894507959d1d3166f6a5c7540d4955a5d27bc3ba6ee237db231fb2b3e49a924d', 83, 1, 'manoj KC', '[]', 0, '2020-11-02 12:26:28', '2020-11-02 12:26:28', '2021-11-02 18:11:28'),
('29f7cd6aeb6a15db937d2fba9aebcbe0aaab6914d25c81f758d263ffc964086c863356a62ba886eb', 238, 1, 'Anjali Rana', '[]', 0, '2020-11-29 14:12:26', '2020-11-29 14:12:26', '2021-11-29 19:57:26'),
('2b6b94b666eb3186601e1c05df2ace005772b03d6004cc7897a7a250402beb56d18fe0a61abbc815', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-22 07:12:18', '2020-10-22 07:12:18', '2021-10-22 12:57:18'),
('2b6e6f4f5fc32f1d5f3318c74478f2a4f9ad2091b7ce2a3fac095d4241954d242e4304de653efc83', 49, 1, 'krishna adhikari', '[]', 0, '2020-11-12 03:28:28', '2020-11-12 03:28:28', '2021-11-12 09:13:28'),
('2c13caeda37f1a0391533eba5b1861ead2ba76c0d455a7e8e104bf612805d1bcb9c79040fc136903', 3, 1, 'sushil gaire', '[]', 0, '2020-10-03 13:56:06', '2020-10-03 13:56:06', '2021-10-03 19:41:06'),
('2c60aecca69d0f5096c48a5bb873c5efd47dc2fbd5c6cb0517dc0bec36e3a2b9bf58a5200ede001a', 169, 1, 'seema xetri', '[]', 0, '2020-11-18 07:35:03', '2020-11-18 07:35:03', '2021-11-18 13:20:03'),
('2d2989dace24c7e276dadde31aa0be4dd362fe2c53808e0860a9839956543bc8094e38d2bd3b31c7', 2, 1, 'Krishna Adhikari', '[]', 0, '2020-09-12 11:02:55', '2020-09-12 11:02:55', '2021-09-12 16:47:55'),
('2e6717bb5717ab24b65c91bac5773e99620ad3250e9a7554dde4c483bb39419bc9f824610d6a4bf4', 49, 1, 'krishna adhikari', '[]', 0, '2020-11-27 06:42:16', '2020-11-27 06:42:16', '2021-11-27 12:27:16'),
('2eb0cad90beb002d255b39ea025fb2ab868a8ccb04d244d646933040c215533cb323fc65a86cb1c4', 195, 1, 'Sushil Gaire', '[]', 0, '2020-11-24 14:24:35', '2020-11-24 14:24:35', '2021-11-24 20:09:35'),
('31a91066e910f2edd2296169a3162e18206737b77b5f31ebc483419d32b636acf0d6386a0ab758e2', 161, 1, 'hdksxbb bdmzkxkcienc', '[]', 0, '2020-11-16 14:33:17', '2020-11-16 14:33:17', '2021-11-16 20:18:17'),
('32c2d07bd1662d8753030a790970fb4f92f23958579e22f66bb9ff3e5c9c5ae71f624fcc34608bc9', 81, 1, 'pratiksha papu', '[]', 0, '2020-11-01 18:08:00', '2020-11-01 18:08:00', '2021-11-01 23:53:00'),
('3379661bd918be0b4f04a59f8ec8e71b4af778d59ed55360ff2ea9b56486bf4ec8049a63bf19cdd2', 215, 1, 'Sushil Gaire', '[]', 0, '2020-11-27 06:34:56', '2020-11-27 06:34:56', '2021-11-27 12:19:56'),
('34044f48a4dba00c1c92875ef0f79eab743553a532a88eea93b5cc3997277e0cfeac77af929da600', 260, 1, 'Sushil Gaire', '[]', 0, '2020-12-02 15:04:43', '2020-12-02 15:04:43', '2021-12-02 20:49:43'),
('37ae4b84fd502a8bd1491c30d3fa825d6fbc85b58194c5065cdf7e9c66b422b085bc95e4564532e9', 240, 1, 'Sushil Gaire', '[]', 0, '2020-11-29 14:48:43', '2020-11-29 14:48:43', '2021-11-29 20:33:43'),
('37e1fc40cc10dbbac44b7f12cccccad7d4c24011cfee2859dbc1dca51400fae87760c095fe064331', 230, 1, 'Deshantar Pokharel', '[]', 0, '2020-11-28 11:41:17', '2020-11-28 11:41:17', '2021-11-28 17:26:17'),
('3913ee9b78530ed90d85646c64c4c20c84ccfd4dfafca3f2006100ebde39424436a8a998f9d07ae5', 53, 1, 'amreet sharka', '[]', 0, '2020-10-15 07:40:30', '2020-10-15 07:40:30', '2021-10-15 13:25:30'),
('3a3af8295cfe2c94463dc570ec534b0f0add8d3b2c33d968932773ff3039d29ff0847deacdd5f559', 49, 1, 'krishna adhikari', '[]', 0, '2020-11-27 06:46:00', '2020-11-27 06:46:00', '2021-11-27 12:31:00'),
('3adf1d4b9ff6da7d15a75a41ca4d0fbc1fd7ff10dd1c2c163dfee162c827e5dd0a3196e04c4873e8', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-05 16:04:42', '2020-10-05 16:04:42', '2021-10-05 21:49:42'),
('3b4c960f7ae036352a96cc37783bb7b8eafb1212772011547c3d80934338603129fef7ebbbb0a404', 95, 1, 'safal Shrestha', '[]', 0, '2020-11-03 06:58:27', '2020-11-03 06:58:27', '2021-11-03 12:43:27'),
('3c4bdd002bd0af08f75cbbe8cacdf30d0c8c4c733b4dd2b26104da864058d2056e5ab62616e14eb3', 178, 1, 'Sushil Gaire', '[]', 0, '2020-11-19 16:23:07', '2020-11-19 16:23:07', '2021-11-19 22:08:07'),
('3cfe3eab20c5bd2a974272c5dd266574922806ea18904746a908602c144e90dfbe754e2ffb14e651', 257, 1, 'Sakshi Joshi', '[]', 0, '2020-12-02 08:59:38', '2020-12-02 08:59:38', '2021-12-02 14:44:38'),
('3d02f7481da22353072a39eeb3c63d18732d1e6544012e3017c3abf7d5c2f18c066a300e1fc27a51', 58, 1, 'Sishir Gaire', '[]', 0, '2020-11-28 02:41:45', '2020-11-28 02:41:45', '2021-11-28 08:26:45'),
('3d665e61bf019db75d0824f39843b79042bb208c6c42fd6d28f2488a23579d58177a35ac578672c0', 144, 1, 'amrita bk', '[]', 0, '2020-11-13 11:44:03', '2020-11-13 11:44:03', '2021-11-13 17:29:03'),
('3dc68cbc55ceb3d710277cc1ebf4c4be534f4a85316774c2bcb67c9ed47027845ad30e53aef6ebd8', 186, 1, 'sajan thapa', '[]', 0, '2020-11-21 09:29:20', '2020-11-21 09:29:20', '2021-11-21 15:14:20'),
('3e39496f3f0757d277c171bffe1622a2b851136dfeb12e7f94f0d6b93573da79e8179d8e9243e22e', 156, 1, 'khalil miya', '[]', 0, '2020-11-16 06:40:29', '2020-11-16 06:40:29', '2021-11-16 12:25:29'),
('3e868722a21e54a0e61d97970c8f951d6e8479e21cdb0df34eac24e81cf6e1bea0d6b26631263a8b', 59, 1, 'Rohit Bhandari', '[]', 0, '2020-10-21 07:57:49', '2020-10-21 07:57:49', '2021-10-21 13:42:49'),
('3ecca56e3135b40730860c4df36a13e479535f0b45b945eb51c4c3c1cf649e53644a0640a730032a', 102, 1, 'yogendra shrestha', '[]', 0, '2020-11-03 10:17:29', '2020-11-03 10:17:29', '2021-11-03 16:02:29'),
('3f5f62df0437c7e7a3f9843c2ad19985bd71de13b0aee79118c9f4047724054736447e9808695453', 3, 1, 'sushil gaire', '[]', 0, '2020-10-12 15:06:26', '2020-10-12 15:06:26', '2021-10-12 20:51:26'),
('3fa5f4187dac8586b26ae399250b95319af9b486465db789abe00be82d55b2115f1fe23559c592eb', 87, 1, 'aslam khan', '[]', 0, '2020-11-02 15:36:29', '2020-11-02 15:36:29', '2021-11-02 21:21:29'),
('40d4d6b9a91a5bd26f18269a4eaff3b335c927311c4c12fbf8e76ba01468be80d53e12926836c2b4', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 10:51:25', '2020-11-07 10:51:25', '2021-11-07 16:36:25'),
('415a86722ada34058552aee660b2fa044dc3bf286eef80d97838e821b0a2448b6003984960c00f8f', 79, 1, 'Manorath Aryal', '[]', 0, '2020-11-01 12:05:35', '2020-11-01 12:05:35', '2021-11-01 17:50:35'),
('4278a4905db5cfc3a908356b185f4bd59009e06cfde15eeaa08d87b7f5a73b8c52079fa2cb775762', 3, 1, 'sushil gaire', '[]', 0, '2020-10-03 14:19:14', '2020-10-03 14:19:14', '2021-10-03 20:04:14'),
('43c40cf86f83f6b731a0a2739532141dc4fe21f27a413c11d3f48b8078cb4ad1f541c8825e0eb08b', 229, 1, 'nitesh bk', '[]', 0, '2020-11-28 07:33:40', '2020-11-28 07:33:40', '2021-11-28 13:18:40'),
('44048d5c0909adf2c52844e8cbc9030a0a2e89d2e651201c56bcea313e5936f89fa7ae3695baeefd', 255, 1, 'krishna adhikari', '[]', 0, '2020-12-01 11:49:35', '2020-12-01 11:49:35', '2021-12-01 17:34:35'),
('440a55f6e92b3fab87de9e223e168902f4cb9ebe194d6a9c0ce4b322085eebcf62b993f4676c494c', 167, 1, 'Sushil Gaire', '[]', 0, '2020-11-18 06:10:48', '2020-11-18 06:10:48', '2021-11-18 11:55:48'),
('4462d19dd2459c2c927c43260b67a07ef421aebf5ecde9ea925bb37a2ebc883209bed5d873c00923', 246, 1, 'Rama Shahi', '[]', 0, '2020-11-29 20:06:46', '2020-11-29 20:06:46', '2021-11-30 01:51:46'),
('446b8069686aa158b7bcdcf85d8174604af39dbaddf9c10aefc8d76e2dc5763bce866e3215f418d9', 219, 1, 'Arsid shah', '[]', 0, '2020-11-27 08:10:25', '2020-11-27 08:10:25', '2021-11-27 13:55:25'),
('449b7ac60a8b703c10daa4d6424b8a38b889bedb5b2446fc73f5c1949538af1f0a97f200813e6004', 228, 1, 'Sushil Gaire', '[]', 0, '2020-11-28 02:38:02', '2020-11-28 02:38:02', '2021-11-28 08:23:02'),
('45ca7dd10d2337aaff7a072954ca9de482e4da4c6e1ea1f08afeb02f7a43d0ea760e7f07e363c7a2', 92, 1, 'soni keshari', '[]', 0, '2020-11-03 04:20:28', '2020-11-03 04:20:28', '2021-11-03 10:05:28'),
('46de516068a6108f243a73d4749f6160e88384abd3f5f5db11470c4a186a72dd80205595e093f43f', 213, 1, 'Sushil Gaire', '[]', 0, '2020-11-26 14:02:18', '2020-11-26 14:02:18', '2021-11-26 19:47:18'),
('472652ba2159a1b6d8c375d45895275586060802f4bb04248348ab0d029804e87a91d762552bbfb0', 3, 1, 'sushil gaire', '[]', 0, '2020-10-03 14:23:44', '2020-10-03 14:23:44', '2021-10-03 20:08:44'),
('473611a3f4bbe0c60d11de4f9e712381c8c8b1b2694c706f1f07a9b7b30ea5236b1e8eb7f1f50b85', 52, 1, 'Sushil Gaire', '[]', 0, '2020-10-17 14:51:41', '2020-10-17 14:51:41', '2021-10-17 20:36:41'),
('493c38733586bd9f633ea5a033d5552a5323bb7b32f28b13c5be0c77377e53be06e37ff31059eb93', 3, 1, 'sushil gaire', '[]', 0, '2020-10-12 17:00:54', '2020-10-12 17:00:54', '2021-10-12 22:45:54'),
('4a71d7e139011c613d7897b723ab4b37d72cf3af8ce3d559aa3335f1ffdf4c06ab0fb38fb960c04e', 148, 1, 'Milan Rana', '[]', 0, '2020-11-13 14:56:24', '2020-11-13 14:56:24', '2021-11-13 20:41:24'),
('4aa80d2a366208ed07ef4bf208e916742e1475dee1031df9058e547ee9945a325f59f19ca22c355a', 162, 1, 'Ayush Bhusal', '[]', 0, '2020-11-17 08:39:35', '2020-11-17 08:39:35', '2021-11-17 14:24:35'),
('4ba9149a92b8d55b4e7a2f7883b461bf5aac1b22b411c2543ed9547948b64873ce7575929df1f434', 236, 1, 'Sabu Pokhrel', '[]', 0, '2020-11-29 12:39:11', '2020-11-29 12:39:11', '2021-11-29 18:24:11'),
('4be786e57fbaa09febfa48de15bdc35d3338813e497cadc00676e26666aada533a6ef5f95f20c683', 121, 1, 'Sabu Pokhrel', '[]', 0, '2020-11-07 09:57:17', '2020-11-07 09:57:17', '2021-11-07 15:42:17'),
('4bf0641883a915e7e7f49150778678afe0b9f2f127a1d765adfa8ba421db53c0e17fc8e385ef32b3', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-13 14:42:37', '2020-10-13 14:42:37', '2021-10-13 20:27:37'),
('4c0a40832edd7cce1fd18a40a463dda5de76b0eb2bd54933d1ab8d168a142553321ad158a964785e', 52, 1, 'Sushil Gaire', '[]', 0, '2020-10-17 15:29:28', '2020-10-17 15:29:28', '2021-10-17 21:14:28'),
('4c38843271a6479858035a9203e08470eac8738120e7e486e6177d1000c5ab217e133fb287ed6c8b', 117, 1, 'Sushant Bhandari', '[]', 0, '2020-11-06 09:04:25', '2020-11-06 09:04:25', '2021-11-06 14:49:25'),
('4d0eb133f6951f10847e62e26188b32b0bdb32d195ec64803381be94289d14d54d964c7fdd9d71a6', 150, 1, 'Deshantar Pokharel', '[]', 0, '2020-11-14 03:18:41', '2020-11-14 03:18:41', '2021-11-14 09:03:41'),
('4d900b90e90e86233cab8d542a0fb6856baa978784f918a33c9452ab056f4c02ba65aa28cf2b22b8', 146, 1, 'Ayush khatri', '[]', 0, '2020-11-13 13:28:25', '2020-11-13 13:28:25', '2021-11-13 19:13:25'),
('4e27d07aeaffc9f943d08c23856d1362af51be3a0d3d5f331ece53897ea4e1d11dd48ae88abc861d', 58, 1, 'Sishir Gaire', '[]', 0, '2020-11-11 14:37:55', '2020-11-11 14:37:55', '2021-11-11 20:22:55'),
('4ed92dc3f4d2c865b6e349c393d2a3362698eaf2c278e65934a33e2e10e6d96f9cf79171b8711b4d', 235, 1, 'mercy regmi', '[]', 0, '2020-11-29 11:27:20', '2020-11-29 11:27:20', '2021-11-29 17:12:20'),
('4fdd7ee8ff288af786979e57e52cade352f7f0939dcccadcd9525c4d1b45843d2ab20eb7cdb07e96', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 10:47:48', '2020-11-07 10:47:48', '2021-11-07 16:32:48'),
('5156ab627ab400bb2819483c6cfdb25ed14ee68ca66ffeeb62fa40f2aa2579bf14f013ebf8f5a7b6', 49, 1, 'krishna adhikari', '[]', 0, '2020-11-01 15:35:45', '2020-11-01 15:35:45', '2021-11-01 21:20:45'),
('523e4d5a599e9d56604054e6ee799874d414a3c0737c77a3ba6d9402bd653fd971b6ee84bbf83a62', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-10 05:04:43', '2020-10-10 05:04:43', '2021-10-10 10:49:43'),
('52691fdce0d599e2f5de4d91f472ff22e2b91edf494f10affaaa0eea3053f56006c7cdbfac12f6f0', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-31 10:45:03', '2020-10-31 10:45:03', '2021-10-31 16:30:03'),
('5291f13db6e72084e92d4666a34496bd3a193309b2ca1d091acfb722dd533c5b34b9589b65e71d4c', 244, 1, 'Sushil Gaire', '[]', 0, '2020-11-29 15:55:24', '2020-11-29 15:55:24', '2021-11-29 21:40:24'),
('54270188c759ff27f353f4e53a60cf3d9f40764924ff59e6b88f30b78862807d041c207ee150e985', 235, 1, 'mercy regmi', '[]', 0, '2020-11-29 11:27:36', '2020-11-29 11:27:36', '2021-11-29 17:12:36'),
('55655ffc6f264a5a46aa9e2b40e5eef38374ddda51352bd242d7daf3365c85537af4c37fb237d421', 105, 1, 'Rabin G C', '[]', 0, '2020-11-03 13:52:37', '2020-11-03 13:52:37', '2021-11-03 19:37:37'),
('56ec70415edaf41c39b6d67cbe70a3f6473ae278429961188ab7c63cfe3f80d9f024a58a4c9b56db', 3, 1, 'sushil gaire', '[]', 0, '2020-10-03 14:10:58', '2020-10-03 14:10:58', '2021-10-03 19:55:58'),
('579c31306daebd74cda7432e5e0dec4435709ff81a46d2ff523a8338b0ed8c069cd9fcb5f7e14331', 64, 1, 'Pharid Ali', '[]', 0, '2020-11-12 17:44:17', '2020-11-12 17:44:17', '2021-11-12 23:29:17'),
('585ee08f392ba3190309c5752fa20b5976396f507b5c900ffad9b0e41a191e03ea45e278bf9aabc6', 169, 1, 'seema xetri', '[]', 0, '2020-11-18 07:31:49', '2020-11-18 07:31:49', '2021-11-18 13:16:49'),
('58e719394a554ec47170b2de3240f8721adc6ef76f6866a5502a21979143f1475f5f1af11c119abb', 63, 1, 'Rahul Thapa', '[]', 0, '2020-10-24 07:38:39', '2020-10-24 07:38:39', '2021-10-24 13:23:39'),
('590171bc8852818582cd2be218af874b38d8af1a87fb90672c09e0d4e3485d5289bb2c32ff1a195a', 193, 1, 'bishal Pandey', '[]', 0, '2020-11-23 10:01:25', '2020-11-23 10:01:25', '2021-11-23 15:46:25'),
('59674033f8f38c1c62d6e23261b11a97ff3252ccca4f0fd1bda4c70d05a2c057023ab2e7de63996b', 185, 1, 'ashutosh pradhan', '[]', 0, '2020-11-21 05:12:27', '2020-11-21 05:12:27', '2021-11-21 10:57:27'),
('597060fce13a5f39421dca74dd598dbf9e7ed5877892909dd5256d4e763c87a9f0c2b93fe711119d', 62, 1, 'Sushil Gaire', '[]', 0, '2020-10-29 14:50:22', '2020-10-29 14:50:22', '2021-10-29 20:35:22'),
('5b76d997f2074315f3fc8fa274cb8168a6345be41c7beb999d4f6496d6090996383ce5f11f47700b', 2, 1, 'Krishna Adhikari', '[]', 0, '2020-09-12 10:02:07', '2020-09-12 10:02:07', '2021-09-12 15:47:07'),
('5babbf61409033b26f88001a4ba2e108c8f441d41316822b6b948e8db42f1730218ffceb2edeafb4', 182, 1, 'Shradha Tiwari', '[]', 0, '2020-11-20 09:40:22', '2020-11-20 09:40:22', '2021-11-20 15:25:22'),
('5bcfdb9484a6c4c93ec423092ae9bafad777b3cce99ecce76fdfc7c6f323d9dd5c635977c391ac5b', 190, 1, 'Akash Man Shakya', '[]', 0, '2020-11-23 07:17:39', '2020-11-23 07:17:39', '2021-11-23 13:02:39'),
('5c6a9846e3423ba090190056ea9812e5c303cbcf4b0deb30721b59efa4fb8c56dde6922b15479372', 194, 1, 'Rehan Ali', '[]', 0, '2020-11-23 10:21:35', '2020-11-23 10:21:35', '2021-11-23 16:06:35'),
('5ddf1c98a82557e0f1fc9ae2657a754fb35aac624f0276a6c65c04b30559560351c1f9b812288bb7', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 11:44:23', '2020-11-07 11:44:23', '2021-11-07 17:29:23'),
('5e3683074cd47842751370fd9a0379494f6037a8bb898bfeb24bf837c5b380fae372582002bde7f8', 233, 1, 'sushil gaire', '[]', 0, '2020-11-29 14:49:30', '2020-11-29 14:49:30', '2021-11-29 20:34:30'),
('5f88b36356707b6b0f8228b07cc95a62ff49ea9dfbb2702f2d5caefabcc9a74e6a5eefcd4032ac7f', 3, 1, 'sushil gaire', '[]', 0, '2020-10-13 00:44:44', '2020-10-13 00:44:44', '2021-10-13 06:29:44'),
('5fa3a149caf68972e48e0c29e71c690a42abf5dc6fd9f8fad90ffd6fa4e1ce2ec509571732dc7e09', 3, 1, 'sushil gaire', '[]', 0, '2020-10-03 09:38:36', '2020-10-03 09:38:36', '2021-10-03 15:23:36'),
('609a10bb577946c902edab7062819bf2bc790f18d06578e3b9ff4f636edde728b8dda4682352ede6', 225, 1, 'Sushil Gaire', '[]', 0, '2020-11-27 16:38:58', '2020-11-27 16:38:58', '2021-11-27 22:23:58'),
('62fbcf1edc5fabfc1ba3d7f97a8a3a33c457a73d41be6ee064257352ba89a38a93940d3ed46777e2', 171, 1, 'shiva pandey', '[]', 0, '2020-11-18 11:10:20', '2020-11-18 11:10:20', '2021-11-18 16:55:20'),
('634799f1ee7cdd92e056dae6b32f5fdf237760839e580fb3d86c7b7147067f426bac632c3d34cd00', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 10:43:27', '2020-11-07 10:43:27', '2021-11-07 16:28:27'),
('639febada219c651a92b98fa3539e9c69165353b4c064e2c9bfce95b8f2e18bea9e397375a50cf64', 3, 1, 'sushil gaire', '[]', 0, '2020-10-02 15:33:28', '2020-10-02 15:33:28', '2021-10-02 21:18:28'),
('63ee4b9a208210b4c06c19d0578280b2ebca88af6e8659c1636edcd3cd819eabefef6df8dd96cbde', 95, 1, 'safal Shrestha', '[]', 0, '2020-11-03 06:58:25', '2020-11-03 06:58:25', '2021-11-03 12:43:25'),
('646346d91d672ddd83929bdea39ccd225934930b22846b614a207aeebad5c80cacba568f7210cdfc', 3, 1, 'sushil gaire', '[]', 0, '2020-10-10 06:11:07', '2020-10-10 06:11:07', '2021-10-10 11:56:07'),
('65f73bdc6352878e1a7c8e30cbac82e6f7c8ad6e058e8121e473b9e1231435a4bd5770635ecd1a8d', 174, 1, 'Pragati giri', '[]', 0, '2020-11-19 08:24:30', '2020-11-19 08:24:30', '2021-11-19 14:09:30'),
('665d39bc6e5c6001609059f32c38da3d51fe15fc861d612e56a18ae494079001a129b3aba4f66525', 111, 1, 'bikal gharti', '[]', 0, '2020-11-05 09:01:51', '2020-11-05 09:01:51', '2021-11-05 14:46:51'),
('6a9444586fbbeb2c504f8a07d2cde66ac36889f0d670478ca0048f2a0c4e0f0f49a87e8fce9f4243', 3, 1, 'sushil gaire', '[]', 0, '2020-10-02 15:29:52', '2020-10-02 15:29:52', '2021-10-02 21:14:52'),
('6beb36aab70373c1d0b68db7bbdb41bd678914cf9934a7d2554bc859e35ca9852a5a1cd63f6e97a7', 174, 1, 'Pragati giri', '[]', 0, '2020-11-19 08:24:33', '2020-11-19 08:24:33', '2021-11-19 14:09:33'),
('6c20ddf8943a8aacefd5e937b95ceadfe2f094b239f9dfa2fd5e17e8b1aaca1215a504ce6779619d', 85, 1, 'shridhar neupane', '[]', 0, '2020-11-02 14:34:25', '2020-11-02 14:34:25', '2021-11-02 20:19:25'),
('6c370d2e6bb6f720eefa0eb7798bd495808c8fade16ebe47295adab9e2b0b0a68322569fef410b06', 255, 1, 'krishna adhikari', '[]', 0, '2020-12-01 11:04:55', '2020-12-01 11:04:55', '2021-12-01 16:49:55'),
('6c71b7fdb1a3e3cc1eeedf250b25b14ebffae665d9e5172e91c98f47b94f73ef12dfd7eec8fedae3', 49, 1, 'krishna adhikari', '[]', 0, '2020-11-27 06:46:42', '2020-11-27 06:46:42', '2021-11-27 12:31:42'),
('6ca0088d6a43e836791ab98dd388b7d918dbe73abf54236f50bde84ce410e889a358423cae7d4d60', 3, 1, 'sushil gaire', '[]', 0, '2020-10-03 13:46:39', '2020-10-03 13:46:39', '2021-10-03 19:31:39'),
('6d837c431829d9ec6a62eddb602825305e96e3600c0350973357d30ac881cf8f508dd86deb689bed', 3, 1, 'sushil gaire', '[]', 0, '2020-10-02 16:59:27', '2020-10-02 16:59:27', '2021-10-02 22:44:27'),
('6e282585c1654358114dde1960228f80426b39249daec6c9dc92e9081cfbf2b6794dbcd60694d9ed', 3, 1, 'sushil gaire', '[]', 0, '2020-10-12 16:52:07', '2020-10-12 16:52:07', '2021-10-12 22:37:07'),
('6ea7d971e1b6c64e49ed8d9a044522675a6bd9af3b51c9e16fd79e003ee55413a3e484bbefba82d3', 3, 1, 'sushil gaire', '[]', 0, '2020-10-03 13:52:50', '2020-10-03 13:52:50', '2021-10-03 19:37:50'),
('6fdffa774cbf3aefbbaaf3afa3de35e8366dd59a04aeabf9a57edc17ce6107ca76746ae1465ae00b', 82, 1, 'Pramod Bashyal', '[]', 0, '2020-11-02 08:01:39', '2020-11-02 08:01:39', '2021-11-02 13:46:39'),
('73834682991c0c66a0fc4dd8650a0694df00d47087e00fb90d3b45f0fec39b0b10c8344f9e79e81f', 232, 1, 'Sushil Gaire', '[]', 0, '2020-11-28 15:19:21', '2020-11-28 15:19:21', '2021-11-28 21:04:21'),
('749e81d00b5d464565fb186d32a8028de6eca101e5ab11f1ecf044fd718b46bee46aebcd4d01897c', 62, 1, 'Sushil Gaire', '[]', 0, '2020-10-23 03:03:30', '2020-10-23 03:03:30', '2021-10-23 08:48:30'),
('7561e43989168f249dc89f1b5c8f348982462e3c6919aaa794be9e4d72c079d156bb73d9f2ebcdf6', 243, 1, 'Sushil Gaire', '[]', 0, '2020-11-29 15:49:50', '2020-11-29 15:49:50', '2021-11-29 21:34:50'),
('767156c28aa37af32f6a74ff538488bfd9c7e64ab826943896d7413a06c9e2f697be9256d8b8f0c6', 155, 1, 'mohammad jabir', '[]', 0, '2020-11-15 18:57:40', '2020-11-15 18:57:40', '2021-11-16 00:42:40'),
('76967147e73a29179f895d88e722a2b4e5f60d58f38efb38720cc13fc5e5ea4fa3e85473114f224c', 136, 1, 'Maann Thapa', '[]', 0, '2020-11-13 06:44:09', '2020-11-13 06:44:09', '2021-11-13 12:29:09'),
('76aeb2202df2cd0a85e8d343af7843b0212438cafd9316c4501a40b34988aea76d83a092e669d600', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 10:42:48', '2020-11-07 10:42:48', '2021-11-07 16:27:48'),
('76ce457e5b0f76846e51f7e9c8b7e5f613efcd1de77386644de3ba1635073be160328525c437d660', 142, 1, 'bikram gautam', '[]', 0, '2020-11-13 07:54:45', '2020-11-13 07:54:45', '2021-11-13 13:39:45'),
('76cfbc0a78cf3409dc8384dc35d9ffe97da4902b19307f75158670a4da3b033b7046531c9610bf3f', 95, 1, 'safal Shrestha', '[]', 0, '2020-11-03 06:58:25', '2020-11-03 06:58:25', '2021-11-03 12:43:25'),
('790fcbc8a7f72e10ded03993e22882926951f1002bd8f8051e854990cdcbfe561ad02fcd04fcb708', 100, 1, 'Sushil Gaire', '[]', 0, '2020-11-03 10:02:14', '2020-11-03 10:02:14', '2021-11-03 15:47:14'),
('79ca8f1edd577fb9c203f03604ff38fe4bebb638911f83179129070f05a0b7c646a0c95a127450f6', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-05 07:21:25', '2020-10-05 07:21:25', '2021-10-05 13:06:25'),
('7c771a06e32907a90d168b48771a684e6e5fc64251a693d2095d82fb0582c3b2fac5902ecea974b5', 105, 1, 'Rabin G C', '[]', 0, '2020-11-03 13:52:36', '2020-11-03 13:52:36', '2021-11-03 19:37:36'),
('7c932f30f44bc126e4d7513dd3df864a0f1b790e07779051027fe6a45ad030b1c5302ec7a9533568', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 10:57:45', '2020-11-07 10:57:45', '2021-11-07 16:42:45'),
('7c9c7c206a7267b4adabf0dc8352a9d4064bb6e9d8a4867e3da251a53d0799530434672b2c91b830', 134, 1, 'Sushil Gaire', '[]', 0, '2020-11-12 16:02:48', '2020-11-12 16:02:48', '2021-11-12 21:47:48'),
('7cc2982b5eaae7e4571c07d6b4fa1cd73ee9582ec9bf2831c334fdedca5adba864184477fcddfb5d', 133, 1, 'Samajdar Ali', '[]', 0, '2020-11-12 16:02:12', '2020-11-12 16:02:12', '2021-11-12 21:47:12'),
('7d4be409fb4b2419fa565ca053217d6eb1a56a1d01f773596132b1f976e61c435464a8b26076b75f', 135, 1, 'Aakash Bhandari', '[]', 0, '2020-11-13 05:53:42', '2020-11-13 05:53:42', '2021-11-13 11:38:42'),
('7e69de9a600a07f460e4b55f9ee656be52d645277d67dbbd177dffa7f3b5e472b69c297cdb9b6134', 58, 1, 'Sishir Gaire', '[]', 0, '2020-11-12 16:00:54', '2020-11-12 16:00:54', '2021-11-12 21:45:54'),
('7f420bf88833f8ab45199660afba32b6ddafcd2aeeecd50777defd6b104ffcd619507cd1929238c8', 58, 1, 'Sishir Gaire', '[]', 0, '2020-11-11 14:42:06', '2020-11-11 14:42:06', '2021-11-11 20:27:06'),
('7f8d419cd7b81153aa233ee75d2c144f83799003b91623da054edf16076e83329f8494f23a1abd58', 108, 1, 'bidya gc', '[]', 0, '2020-11-04 06:31:29', '2020-11-04 06:31:29', '2021-11-04 12:16:29'),
('812b738bd4e1fa61b2472e91ad98f38c9394ac5b576525f0651c20c0b58bdaf4bb1e7ec53ecdbe96', 173, 1, 'subash mgr', '[]', 0, '2020-11-18 17:30:17', '2020-11-18 17:30:17', '2021-11-18 23:15:17'),
('81c7b7a89ce81e929f48938dd5bb2ae1a6e71af43b50d3a499d2807fa5ae9fe2bfc1a2509aa1d93b', 206, 1, 'bikash pandey', '[]', 0, '2020-11-26 06:09:05', '2020-11-26 06:09:05', '2021-11-26 11:54:05'),
('81edaba7c4d94e7ec8aad5a6f1ca3a0afda15fb6634b3fd98ac33dbe3ad5ad5d2c715bf5a5245cce', 150, 1, 'Deshantar Pokharel', '[]', 0, '2020-11-14 03:26:17', '2020-11-14 03:26:17', '2021-11-14 09:11:17'),
('8281536f9ec328e74bbe6560c06249ffb1f53b8df7f39fdf781502a0a3610e1a65d1296e82b4e03b', 77, 1, 'Sabu Pokhrel', '[]', 0, '2020-10-30 15:12:31', '2020-10-30 15:12:31', '2021-10-30 20:57:31'),
('839bb7d5abf78c846f708eef3af51437cd84f17a486395f9aa4781b212c4d649c3b708dd5a8ac945', 58, 1, 'sushil gaire', '[]', 0, '2020-10-29 13:38:04', '2020-10-29 13:38:04', '2021-10-29 19:23:04'),
('84627a9aa07b208153af1ab8300c2fdfdf691ae9ee93d5f195d1683c47d6ac294418cd6e1cd4083b', 165, 1, 'Roshan Shah', '[]', 0, '2020-11-17 13:06:26', '2020-11-17 13:06:26', '2021-11-17 18:51:26'),
('8470eb021f7626e88987f974a7190a01badb866650dc7fb610ad57233d37d46bf5b4d26f5a9e0be8', 227, 1, 'Sushil Gaire', '[]', 0, '2020-11-28 02:15:40', '2020-11-28 02:15:40', '2021-11-28 08:00:40'),
('849cd3466c49f98079e74b0ac2a89f1da32f33c3b00a8506ca3bc9bbfe74c66e67f54c21a4b85037', 234, 1, 'alysa shrestha', '[]', 0, '2020-11-29 03:57:17', '2020-11-29 03:57:17', '2021-11-29 09:42:17'),
('8602244a6e4adb526ea83d239ebe617b42329bdca66455174cd6b9305c16180a24a5ad9987098ca7', 49, 1, 'krishna adhikari', '[]', 0, '2020-12-03 12:24:13', '2020-12-03 12:24:13', '2021-12-03 18:09:13'),
('89b571f83d704a90da461d116e4ecf368a363f3787173586dabfcd5f4dfc70578b5dc50f330930a6', 48, 1, 'Surojan Malla', '[]', 0, '2020-09-13 11:51:22', '2020-09-13 11:51:22', '2021-09-13 17:36:22'),
('8a1c5eb70b26eab1fdb3f86436075e44a887aa6730a60292fdefb371864fb6414315ff0a0d80d83c', 3, 1, 'sushil gaire', '[]', 0, '2020-10-08 02:57:19', '2020-10-08 02:57:19', '2021-10-08 08:42:19'),
('8d0c90837069feb8c8618cb020843eb1b5b107dc4fd67bcdb248c977092a8b0497599e151603cff0', 203, 1, 'Sushil Gaire', '[]', 0, '2020-11-24 15:54:41', '2020-11-24 15:54:41', '2021-11-24 21:39:41'),
('8d2e42fef576d20ddfff2aef6d3c29644a4a808e2c7f4dbf46596e8dd9c7e369cf54f664d5dd6680', 111, 1, 'bikal gharti', '[]', 0, '2020-11-05 09:02:22', '2020-11-05 09:02:22', '2021-11-05 14:47:22'),
('8dd4edf067f19214f8a55c3efc0b410c8d415fe3e2b14f3bd4e392f052890a3f99a70a1493aa8912', 248, 1, 'Suraj Khatri', '[]', 0, '2020-11-30 15:15:09', '2020-11-30 15:15:09', '2021-11-30 21:00:09'),
('8ec3e78e62d81a4b2bc21df2bbc71c6c394c9d58fc5743296ad8dfa74425391e1a48413253dcb18c', 229, 1, 'nitesh bk', '[]', 0, '2020-11-28 07:34:36', '2020-11-28 07:34:36', '2021-11-28 13:19:36'),
('90ee754608268d54a76bbbbfebd95eae11a9bb4164d216f21bc330400c635584f0030eed6daa9dfc', 255, 1, 'krishna adhikari', '[]', 0, '2020-12-01 11:05:06', '2020-12-01 11:05:06', '2021-12-01 16:50:06'),
('92703d1a17ac9af525c1042bf6cbbbad1e67240c1c9860007ba3d9a14218b455a08de473f4b44e26', 189, 1, 'Asmit Neupane', '[]', 0, '2020-11-22 14:01:35', '2020-11-22 14:01:35', '2021-11-22 19:46:35'),
('93399a803bbcea6883dbfe0ed0e506f488c19c2045474bc9718294ca5c3baafe70bd8be561cd72d5', 206, 1, 'bikash pandey', '[]', 0, '2020-11-26 06:08:46', '2020-11-26 06:08:46', '2021-11-26 11:53:46'),
('936fff1920b6745131353461ab1aea7344ba19d635961e208f65018fd6bf013698bf87b5f7d062d5', 190, 1, 'Akash Man Shakya', '[]', 0, '2020-11-23 07:17:34', '2020-11-23 07:17:34', '2021-11-23 13:02:34'),
('9381f37059d118721d082c5ea70378623f0ce0f40dee9d4c2ad0464eef1945a5819b039b939b9ca9', 62, 1, 'Sushil Gaire', '[]', 0, '2020-10-30 14:41:37', '2020-10-30 14:41:37', '2021-10-30 20:26:37'),
('94be0e137ee34243edca37a2807afc2fa1cca2e07cd4766e421bec039e6c564fcfaf4c78b795ac96', 23, 1, 'Rahul Thapa Magar', '[]', 0, '2020-10-24 07:39:30', '2020-10-24 07:39:30', '2021-10-24 13:24:30'),
('94c2792ddec2cf77be1b0e6df77105019da184ebadb5c7c123953d583b2ee802a17928ddbaf3f7cf', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 10:58:05', '2020-11-07 10:58:05', '2021-11-07 16:43:05'),
('956f392a94af79c88e5a3acae7f7d7d0013c45e0f3947d9fdda214d5e766222d8ca5cd1905ef5635', 65, 1, 'Sabu Pokhrel', '[]', 0, '2020-10-30 14:51:49', '2020-10-30 14:51:49', '2021-10-30 20:36:49'),
('95e9b0822f1d0421eead0146eb5e99e5cc7f3f7d59d372304c2e41c2756de988f740119fd8f32d72', 62, 1, 'Sushil Gaire', '[]', 0, '2020-10-22 15:46:29', '2020-10-22 15:46:29', '2021-10-22 21:31:29'),
('961d58ee12a0ed1ead96133177b2db6a694c7ac679f84d891240aa08585c785e9ec150d59ea023ce', 3, 1, 'sushil gaire', '[]', 0, '2020-10-02 15:53:34', '2020-10-02 15:53:34', '2021-10-02 21:38:34'),
('97103bc1d1204ef082a88ffc6f57c85b2080b031730a3ad60f5a129c91863014d492402b57c719df', 204, 1, 'Sushil Gaire', '[]', 0, '2020-11-24 15:55:46', '2020-11-24 15:55:46', '2021-11-24 21:40:46'),
('9800de5662d7e7d4bdbecd14397723d1cbf5c9166386ac4b0a6a9eed69ec78bba99b3c983b33846d', 59, 1, 'Rohit Bhandari', '[]', 0, '2020-10-21 07:57:49', '2020-10-21 07:57:49', '2021-10-21 13:42:49'),
('9882ceaf0bb036f1e6d9a11137eaa459cfc2a71a4a43c27e8844baa07a933973cd5f14f991e60f7c', 57, 1, 'devraj pokhrel', '[]', 0, '2020-10-17 10:49:40', '2020-10-17 10:49:40', '2021-10-17 16:34:40'),
('9a3e7b14c4653b4ff7e0b0505630516381bc7a2399ae56caa1bf880e563460b4c2b8fe18b10ca8be', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-07 10:54:33', '2020-10-07 10:54:33', '2021-10-07 16:39:33'),
('9a6aec6bf3b84701f044aa8f4e81fb9ad3e2c5104c3fb67459803fba6c914d18be030ac400199fd1', 151, 1, 'Shristi Shrestha', '[]', 0, '2020-11-15 03:50:32', '2020-11-15 03:50:32', '2021-11-15 09:35:32'),
('9a831d70c4f66c79f58574aa1787e88df64d2dd386311a598bb389d9810492cfc3d596eaa8ce0224', 190, 1, 'Akash Man Shakya', '[]', 0, '2020-11-23 07:17:39', '2020-11-23 07:17:39', '2021-11-23 13:02:39'),
('9a881948217531c18642ddd5c5d877a8b50c2f71a72fa6109b6a02b3639dbb62fb7de51984e56126', 171, 1, 'shiva pandey', '[]', 0, '2020-11-18 11:09:36', '2020-11-18 11:09:36', '2021-11-18 16:54:36'),
('9b5aff08edd4e1c6c7e259740c95a2ef50b642801886f743e89be18e31339491cf33ef687d7b12dd', 88, 1, 'Stephanie Peterson', '[]', 0, '2020-11-02 15:48:58', '2020-11-02 15:48:58', '2021-11-02 21:33:58'),
('9f13ad6a92d7e5d3238dbbe417b0d01ff5c0b40111c130cb168f670d9719b7087e01eb72eea58760', 52, 1, 'Sushil Gaire', '[]', 0, '2020-10-13 00:48:53', '2020-10-13 00:48:53', '2021-10-13 06:33:53'),
('9f9d2c2e044935d74a935fa20b1e45a634c1e66461a75168d3b1ad5d1f63df908c0bf047276b1321', 95, 1, 'safal Shrestha', '[]', 0, '2020-11-03 06:58:28', '2020-11-03 06:58:28', '2021-11-03 12:43:28'),
('a2be00e39d8e94fcdb3b2826108e41576caea5c3f54f666235b9c34ff03171d7c4d71e5ca69835da', 92, 1, 'soni keshari', '[]', 0, '2020-11-03 04:21:01', '2020-11-03 04:21:01', '2021-11-03 10:06:01'),
('a30cda22af08248756bf276f8bf2d341e15e54dbc129e1038733c0d7ee9f510207c25b85798716d1', 91, 1, 'suraj bajracharya', '[]', 0, '2020-11-03 03:59:28', '2020-11-03 03:59:28', '2021-11-03 09:44:28'),
('a370e7beac86cbdcca8fe704af184489c3f1aea7c7783359f07f20655727870911eb9a81eb31774e', 49, 1, 'krishna adhikari', '[]', 0, '2020-12-01 10:58:47', '2020-12-01 10:58:47', '2021-12-01 16:43:47'),
('a447428df967784867722c4af1a20ba5c834e0f35f5d415d9842a63044b222e3e3ddc36dd1051cec', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 09:53:35', '2020-11-07 09:53:35', '2021-11-07 15:38:35'),
('a46156a989dcdf8f44b028e8243bd814874e28955be8a214ed8db8dd015a85ef27090faa9370e208', 97, 1, 'Sabu Pokhrel', '[]', 0, '2020-11-03 09:55:42', '2020-11-03 09:55:42', '2021-11-03 15:40:42'),
('a483372929fd244db9fc351c059d0dc9b6e6175642c512a77b0cc7de49fc47a56b130db7d33e3051', 237, 1, 'Ganesh Gaire', '[]', 0, '2020-11-29 13:48:25', '2020-11-29 13:48:25', '2021-11-29 19:33:25'),
('a4920a067a8c201d6a8b8be25539cf7b8f8a7f6c2acb437b50e89ff05551b88e39e91fe4a7b793db', 3, 1, 'sushil gaire', '[]', 0, '2020-10-08 02:45:03', '2020-10-08 02:45:03', '2021-10-08 08:30:03'),
('a4a1fe56685aa87676c868f916662e81f67c83cc28d67e0eeb0cdf8d437e09513c7d830e4126918d', 192, 1, 'aditya man shakya', '[]', 0, '2020-11-23 08:22:37', '2020-11-23 08:22:37', '2021-11-23 14:07:37'),
('a4bab64dce3be08cce11e598f26124a9aa4834a8ef2d8a699d0e6555104541096d30b0f7bdc52afb', 184, 1, 'kirtan Thapa', '[]', 0, '2020-11-21 03:37:27', '2020-11-21 03:37:27', '2021-11-21 09:22:27'),
('a5c1807650df43bfb91306b23fcdeab5b35411cfcfd861a5cacff8e9b4293de68d742de38c30a6fc', 197, 1, 'Sushil Gaire', '[]', 0, '2020-11-24 15:17:17', '2020-11-24 15:17:17', '2021-11-24 21:02:17'),
('a620c94bf59fe273486f7f20984f61442ba3330083765f601fda9a1d8b0e6be65e5aba65fab36f69', 136, 1, 'Maann Thapa', '[]', 0, '2020-11-13 06:43:33', '2020-11-13 06:43:33', '2021-11-13 12:28:33'),
('a62265aedcc2809e0b6db2fbd6b44e37e4b885da2f06488a60cef253eccb3422bdea457481e7920b', 133, 1, 'Samajdar Ali', '[]', 0, '2020-11-12 15:58:52', '2020-11-12 15:58:52', '2021-11-12 21:43:52'),
('a7131f85f66647c1e308b31e72841f2658c44683d771b03bdd0e676767c14c1fc92f41d6a6a8476b', 58, 1, 'Sishir Gaire', '[]', 0, '2020-11-28 02:20:53', '2020-11-28 02:20:53', '2021-11-28 08:05:53'),
('aa654eccce066898f424ba96654500e2a96efe2175336177782d713689e82b9ed1d3792f4f28a873', 120, 1, 'Sushil Gaire', '[]', 0, '2020-11-07 09:54:41', '2020-11-07 09:54:41', '2021-11-07 15:39:41'),
('aad1c3b825cd524aaa310a428b39a4e14d6b6be783b5979de8e90b2ec9e6b538606c901ee3312ddd', 172, 1, 'amit paudel', '[]', 0, '2020-11-18 15:26:56', '2020-11-18 15:26:56', '2021-11-18 21:11:56'),
('aaf45e64dbb22dbad6e62b85e218c43dae2f072b4e06edd8575e1d1ecad32fb795ee88a80c681f82', 58, 1, 'sushil gaire', '[]', 0, '2020-10-17 15:48:44', '2020-10-17 15:48:44', '2021-10-17 21:33:44'),
('ab5f069e757e332e46200e22158326c1f9f769edaa96b6c0f4a3264c588278658a3ceaaa76ced5b6', 58, 1, 'sushil gaire', '[]', 0, '2020-10-21 15:51:23', '2020-10-21 15:51:23', '2021-10-21 21:36:23'),
('ab834b5f9dedfc68dfc0bd43247228ce386a72a72c3c95a3c3d8d63097b1266e3c9b540b06e8ec10', 118, 1, 'aeo productions', '[]', 0, '2020-11-06 09:11:33', '2020-11-06 09:11:33', '2021-11-06 14:56:33'),
('acd6b83f74f9fe19712d26998323caceca1aa5665e665c017de6257153ce30223142074316c94fda', 130, 1, 'krishnaadhikari adhikari', '[]', 0, '2020-11-29 15:31:30', '2020-11-29 15:31:30', '2021-11-29 21:16:30'),
('ade70ba42adea0458003b0f48d793bd69a285e2de7dad7b839661ea28d66e3fe3774e7216eba03e2', 3, 1, 'sushil gaire', '[]', 0, '2020-10-01 16:39:53', '2020-10-01 16:39:53', '2021-10-01 22:24:53'),
('b0c9b35e93f5b2cdbdc36f05827d8089bb4af693d8b32f2fc0ff6faaf1af9b073b9ff58b9944a039', 152, 1, 'Prajwal Gyawali', '[]', 0, '2020-11-15 08:38:20', '2020-11-15 08:38:20', '2021-11-15 14:23:20'),
('b1ce06d9a58611f4c9c0ebcee9a181dfbe854b575be96b5eee54c370bbf11b2ad9070bc1f70ae1a0', 84, 1, 'safal shrestha', '[]', 0, '2020-11-02 12:26:29', '2020-11-02 12:26:29', '2021-11-02 18:11:29'),
('b2ac3f3e5dab8df64609459d785514ceaca880d3d365192ba2978b02ca197f58ae556cdc6e90503e', 58, 1, 'sushil gaire', '[]', 0, '2020-10-22 02:56:10', '2020-10-22 02:56:10', '2021-10-22 08:41:10'),
('b4137b24049a496be793df73a9d256cbe5896c414f24ec35e844f90f189c4b4d072712a98e81c5e4', 54, 1, 'daddys kitchen', '[]', 0, '2020-10-15 07:52:48', '2020-10-15 07:52:48', '2021-10-15 13:37:48'),
('b5b4fd59fdd8ee902c8fad7b6086ae0a7445a016543c05ce42d7dc987b8aa31a221cc54f9511c021', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-22 06:56:07', '2020-10-22 06:56:07', '2021-10-22 12:41:07'),
('b5bac1de5f56a9027c1254d84da27496ac8791c83ec57db3b92ea2dd6c1a4af34fae90897615247b', 78, 1, 'Sushil Gaire', '[]', 0, '2020-11-01 01:51:15', '2020-11-01 01:51:15', '2021-11-01 07:36:15'),
('b7124a26a8652b51715ce2ced0555ea720f729e0c75446af37e9a396c6a5c1cc17844a6460a43b3d', 145, 1, 'Roshan bhandari', '[]', 0, '2020-11-13 11:51:46', '2020-11-13 11:51:46', '2021-11-13 17:36:46'),
('b738a5f9b15d25c41b983b2e3fc02a92a833cd2d3c14d5e57173bfc0c7f6664c0baed51259a3ba4d', 23, 1, 'Rahul Thapa Magar', '[]', 0, '2020-10-24 07:30:34', '2020-10-24 07:30:34', '2021-10-24 13:15:34'),
('b81fec6501a38a13a54ffd50cfa9e115fc16b0a68bd2c6a0592cdbc011ff8505569a70a86d5eef81', 174, 1, 'Pragati giri', '[]', 0, '2020-11-19 09:19:59', '2020-11-19 09:19:59', '2021-11-19 15:04:59'),
('b844dd3c96d27a0ec316ca35b61054c00c79ed1815a6c5f80266988e155b6fcb82447f070625ea2e', 201, 1, 'Sushil Gaire', '[]', 0, '2020-11-24 15:39:42', '2020-11-24 15:39:42', '2021-11-24 21:24:42'),
('b85205924f0d5f851844d2b1e274bc5faf9b23b4841dcf86185e795d8888364c6a0a35eac8472439', 58, 1, 'sushil gaire', '[]', 0, '2020-10-21 15:56:53', '2020-10-21 15:56:53', '2021-10-21 21:41:53'),
('b8ca388db5685e97bf610164e8636c93b911abf3d66876003b33ba39122f4f3a7253bfc129e49ae4', 218, 1, 'Sushil Gaire', '[]', 0, '2020-11-27 07:30:37', '2020-11-27 07:30:37', '2021-11-27 13:15:37'),
('b8dbec7b00a14a464e00fb96f5f1a5e30574548614346cbab499af03acc1dd575051872e4be89eac', 49, 1, 'krishna adhikari', '[]', 0, '2020-11-04 07:07:25', '2020-11-04 07:07:25', '2021-11-04 12:52:25'),
('b8eaed753665033e925cf5cbb22388725ea3634293cf1a961e38076dbec71f32d191e98ea7f25d44', 114, 1, 'Sneha Darlami', '[]', 0, '2020-11-06 04:23:18', '2020-11-06 04:23:18', '2021-11-06 10:08:18'),
('b919ad20b70e9782d32e6b0fe323a882485a5d70df46c72eafb8dadafaa41b1f9e65599bb303dcd6', 222, 1, 'Sabu Pokhrel', '[]', 0, '2020-11-27 13:24:59', '2020-11-27 13:24:59', '2021-11-27 19:09:59'),
('b91d75252c40db7d85dd00c894a3813e488c704ab844b9eda5d0e41446d5b051e56b516a048ac833', 185, 1, 'ashutosh pradhan', '[]', 0, '2020-11-21 05:08:29', '2020-11-21 05:08:29', '2021-11-21 10:53:29'),
('b923307d4adfed586a3f48c5bbb9cf725df82c7afd6cefc5286528d185268e962aad311e607b4a61', 49, 1, 'krishna adhikari', '[]', 0, '2020-11-04 07:10:50', '2020-11-04 07:10:50', '2021-11-04 12:55:50'),
('bb724e7e77e1e93a7414c7cd36752e8c9f54c5d1763ea467630fd0067eae81d6e6881d53202815bb', 239, 1, 'Sushil Gaire', '[]', 0, '2020-11-29 14:23:08', '2020-11-29 14:23:08', '2021-11-29 20:08:08'),
('bca0141f74cd6b6047fe81f1400c2a959bd19d98421d7ca13ea62e4354e8f8bbce504872fe94ef56', 132, 1, 'Nishant Gyawali', '[]', 0, '2020-11-12 14:21:56', '2020-11-12 14:21:56', '2021-11-12 20:06:56'),
('bd029cfe8e5a4b7ea4551b0369b41fe9e6c5f4fb2fb0065479092fc319468dd50d6dcd11d5fd5b01', 81, 1, 'pratiksha papu', '[]', 0, '2020-11-01 18:07:22', '2020-11-01 18:07:22', '2021-11-01 23:52:22'),
('bd06b728ba3dbba035167c3eccce0ab13f22395b0ae1d3790705264f13ccad8ef6ac2eabdbe563f9', 57, 1, 'devraj pokhrel', '[]', 0, '2020-10-17 10:49:40', '2020-10-17 10:49:40', '2021-10-17 16:34:40'),
('bdbf5806a5833c0dd58a339dfb5b93ef3c904b66dd8a59ad652b9c7e5e2c03daf52b3ccbd329c70c', 205, 1, 'Kalyan shrestha', '[]', 0, '2020-11-25 12:55:22', '2020-11-25 12:55:22', '2021-11-25 18:40:22'),
('be3385e2873374c8c74ccc6e95c48b2fe9759a0864b3a87e9034c502b2009cba963a7d8fba3c9923', 164, 1, 'Ritesh Gurung', '[]', 0, '2020-11-17 09:55:25', '2020-11-17 09:55:25', '2021-11-17 15:40:25'),
('be56f714acd8ec079080b54fa891217213fa13776109d81c4e316c7e9365ee423a000adca5f69bec', 50, 1, 'sarita pathak', '[]', 0, '2020-10-02 17:05:50', '2020-10-02 17:05:50', '2021-10-02 22:50:50'),
('be8800ccc804b9d97f2344db323748f4479155ca3f25504b87e07890f8284b0f382f3087a38a4ec9', 3, 1, 'sushil gaire', '[]', 0, '2020-10-03 03:09:46', '2020-10-03 03:09:46', '2021-10-03 08:54:46'),
('bed390d91b1ceec8ff299aa48b7657f890abec7d838f7003f9066b1e904099ffc2f280d31d080aa0', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-05 14:21:31', '2020-10-05 14:21:31', '2021-10-05 20:06:31'),
('bf06389e28d0ecc6ccc30c75d787b1c66a333d99080cf798c8e9b110ab4246fc2834eb4b4e26f0d8', 247, 1, 'Ganesh Gaire', '[]', 0, '2020-11-30 13:14:55', '2020-11-30 13:14:55', '2021-11-30 18:59:55'),
('bf275c4ae3050e7d962621ac04bbaab9f13ac913309793de02ad4784f437e9a60a3244d9ba930f10', 53, 1, 'amreet sharka', '[]', 0, '2020-10-20 07:02:00', '2020-10-20 07:02:00', '2021-10-20 12:47:00'),
('bf349546147793e2158eee40e5a2e4445feb2cf52bfdd9d4c19495e96ceac90bef729fda392ff216', 57, 1, 'devraj pokhrel', '[]', 0, '2020-10-17 10:50:33', '2020-10-17 10:50:33', '2021-10-17 16:35:33'),
('bf4106de47ef53c4d56960dbc87afa3a886027d8af88ead026ea637bbd8fc9eab01f99070935224c', 3, 1, 'sushil gaire', '[]', 0, '2020-10-03 14:15:58', '2020-10-03 14:15:58', '2021-10-03 20:00:58'),
('bf7f8de0e826de1b76796be5f9b07806fd89d75ca34fd38a6db4972ba3e56094ce4d062903404362', 82, 1, 'Pramod Bashyal', '[]', 0, '2020-11-02 07:57:33', '2020-11-02 07:57:33', '2021-11-02 13:42:33'),
('bf9970c3ef35c872dd334fe6c21d581fe518e9498632d6eb6fe4e79f3506bae37b4b658662656ba3', 166, 1, 'alisha banu', '[]', 0, '2020-11-18 02:11:20', '2020-11-18 02:11:20', '2021-11-18 07:56:20'),
('c033afe2d03ac53beeaf69a13b694d3ce89ff58358475cf7c999290b5743380a4f984114064634c8', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 10:41:06', '2020-11-07 10:41:06', '2021-11-07 16:26:06'),
('c1afc0bbf5059f933995e0d228f877555a9c7828bca00b7a67eafb63c803e6737463fae53781b240', 199, 1, 'Sushil Gaire', '[]', 0, '2020-11-24 15:36:30', '2020-11-24 15:36:30', '2021-11-24 21:21:30'),
('c1f0044fc32fa507747d0ad64296e27ca15d9db0c61ce6a2e6401fc5e91e510b293cacd88facf4f7', 3, 1, 'sushil gaire', '[]', 0, '2020-10-10 12:58:23', '2020-10-10 12:58:23', '2021-10-10 18:43:23'),
('c372a3b1f331aef4d51d75248e18842c6a7b6430db5fac359733a65a1611d533cbcd8ee410b4f8a5', 206, 1, 'bikash pandey', '[]', 0, '2020-11-26 06:08:46', '2020-11-26 06:08:46', '2021-11-26 11:53:46'),
('c3a04d977d6b668174fa4c39a1c873937ddc419732e4474caa3a150b79202f33dd9dd63f7dabf3fe', 3, 1, 'sushil gaire', '[]', 0, '2020-10-02 17:03:48', '2020-10-02 17:03:48', '2021-10-02 22:48:48'),
('c46d14b086a4112dab1f41cdc3b2edc431348122384370fbff357852cd883b513f7db679030614c5', 55, 1, 'sarita Kunwar', '[]', 0, '2020-10-15 07:53:38', '2020-10-15 07:53:38', '2021-10-15 13:38:38'),
('c486616c6eaf9885c143505f8c6cf400e9607d9d2a1d0e3573317f388e4ec0ed950ff8503a6b3523', 110, 1, 'Nabin Shrestha', '[]', 0, '2020-11-05 05:32:35', '2020-11-05 05:32:35', '2021-11-05 11:17:35'),
('c539c23daf6ac537de334bdce4fb5644714778ea507544d4cb1c5292d3b65cbc897e1e232307bcda', 206, 1, 'bikash pandey', '[]', 0, '2020-11-26 06:08:46', '2020-11-26 06:08:46', '2021-11-26 11:53:46'),
('c57a794fe9780e7dc8aa2d15e38d7a6551b35d39fc75fe4a457f818fbe73a9d30e9ebe6e1776eab7', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-22 16:20:21', '2020-10-22 16:20:21', '2021-10-22 22:05:21');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('c71b9d1b39a8ab39b386f56cb743bdc692836d2cf3e5ee4ff2f0243888c71db48555d63c1bb5a7ca', 3, 1, 'sushil gaire', '[]', 0, '2020-10-12 04:24:28', '2020-10-12 04:24:28', '2021-10-12 10:09:28'),
('c7271228aabea9bcc4fd8d8c1a8fe6ea9ccf0e1dadbd589e4774092287807d69a0d0592ffc003daa', 211, 1, 'pratikshs shrestha', '[]', 0, '2020-11-26 11:35:27', '2020-11-26 11:35:27', '2021-11-26 17:20:27'),
('c7d219abc7db0b0fc7bdfceb05af8794a7f35c843755845b3f38b7c4bb5361e0a241c754a9753250', 142, 1, 'bikram gautam', '[]', 0, '2020-11-13 07:54:45', '2020-11-13 07:54:45', '2021-11-13 13:39:45'),
('c7e3e9a7cc89840181bea00a2b90f7d501a63dbe17fa08fbc47ce85e081b5ae02a6bb0775803e229', 152, 1, 'Prajwal Gyawali', '[]', 0, '2020-11-15 08:38:43', '2020-11-15 08:38:43', '2021-11-15 14:23:43'),
('c83c99351943dcc9cf74ce29065dcbf8aaf9ef40d7e1b60081c7090ccc1ca7bbe20501a6ce8cc788', 76, 1, 'Sushil Gaire', '[]', 0, '2020-10-30 15:11:12', '2020-10-30 15:11:12', '2021-10-30 20:56:12'),
('c86743e5b5b0e4d6544530a2d35a384452ba4951d73f34de4341d3fb2cd257b276d787e1995c006a', 140, 1, 'Niwas Kunwar', '[]', 0, '2020-11-13 07:06:29', '2020-11-13 07:06:29', '2021-11-13 12:51:29'),
('c896bfc0c6321c94e41aa830de48d0a180b44f9312f55ff58e7fdccfe76b367481234715acebdc07', 182, 1, 'Shradha Tiwari', '[]', 0, '2020-11-20 09:51:35', '2020-11-20 09:51:35', '2021-11-20 15:36:35'),
('c9697ec450bb45d4f7d119ed796f5325454358c705f02d00c62ec4e81b2150db0dc434ea1f8a4ddf', 104, 1, 'divyata acharya', '[]', 0, '2020-11-03 12:10:30', '2020-11-03 12:10:30', '2021-11-03 17:55:30'),
('ca6eb25e4ceca003dad2545ae03eca3747a2bb6cfefd1dfcf37234de7950d264b7795bee118a65f2', 3, 1, 'sushil gaire', '[]', 0, '2020-10-13 05:12:51', '2020-10-13 05:12:51', '2021-10-13 10:57:51'),
('cbe53d35212500146a5045fcfcdb4253c687ee51bc8915c701403964421de070d9dd7929472d7b53', 3, 1, 'sushil gaire', '[]', 0, '2020-10-09 14:59:13', '2020-10-09 14:59:13', '2021-10-09 20:44:13'),
('cc1abbd1cf3493adc5cae60f0aa8174bcd2b5884e2d60b48cb856e92b23a3df5b9308dc11dfa66b7', 98, 1, 'Sabu Pokhrel', '[]', 0, '2020-11-03 09:55:42', '2020-11-03 09:55:42', '2021-11-03 15:40:42'),
('cd26a434d2471f2a316d8251021044e88d1904a393e76b5350d50535ea7010a2066a47bf3630d72e', 166, 1, 'alisha banu', '[]', 0, '2020-11-18 02:10:27', '2020-11-18 02:10:27', '2021-11-18 07:55:27'),
('cd575eaa1424672c76cd12490104cd4d9732a7f45835681221b5379adfc00c743043266c396247bb', 113, 1, 'Kashish Gurung', '[]', 0, '2020-11-05 13:50:31', '2020-11-05 13:50:31', '2021-11-05 19:35:31'),
('cdceff9986ca7a1ca61cd14c3749f8b8f9bb945ce4a05b50ce5eff8dc2c7605cb3fd6531610bfe42', 141, 1, 'prabesh gc', '[]', 0, '2020-11-13 07:45:28', '2020-11-13 07:45:28', '2021-11-13 13:30:28'),
('cea63a3311d055bcf8d9ffb5e11aa0619e13506f90e38e8e4cc71ed977fd319884ee679cbe034216', 58, 1, 'Sishir Gaire', '[]', 0, '2020-11-11 17:57:39', '2020-11-11 17:57:39', '2021-11-11 23:42:39'),
('cf178c1bff688345c151dfadf14d59f872af9e54a127fc4db41488498839956c5470a20685c1726a', 127, 1, 'Rahul koirala Chhetri', '[]', 0, '2020-11-11 11:30:17', '2020-11-11 11:30:17', '2021-11-11 17:15:17'),
('d0e3477c267dbcd0d01f3f217fd2a131dfeff1a40bd0057490579529aaf4e4f51cf4d222cfd8b95a', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-07 10:59:28', '2020-10-07 10:59:28', '2021-10-07 16:44:28'),
('d191982b90d21f1201e5a76aa111fc17b209301ad20c3358fff7c63a59c64a70f53fb50c35b16ed6', 124, 1, 'अबिशकार क्षेत्रि', '[]', 0, '2020-11-08 08:32:08', '2020-11-08 08:32:08', '2021-11-08 14:17:08'),
('d1ab1100938aa976ed8fcb8466dd8709ab85acbd01a52d20184596b09bdf4bcd1a6390ba328944e9', 3, 1, 'sushil gaire', '[]', 0, '2020-10-10 06:11:34', '2020-10-10 06:11:34', '2021-10-10 11:56:34'),
('d1c1c72dc72c1b34c2b453dc370e8010b0ba13b646b3f2d2de56631997d2136e878426b3f13539e2', 52, 1, 'Sushil Gaire', '[]', 0, '2020-10-13 02:18:09', '2020-10-13 02:18:09', '2021-10-13 08:03:09'),
('d2ca0b82b7159c25ecac781114ad19d01951829342e8fd84324bc9aa342f97620cf8b31a463d8efb', 79, 1, 'Manorath Aryal', '[]', 0, '2020-11-01 12:05:37', '2020-11-01 12:05:37', '2021-11-01 17:50:37'),
('d30348d70009417629f11884b86c47e2aa06afa678c8e4d126191b1f33825c2c0af238ca0a63d93a', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 10:58:54', '2020-11-07 10:58:54', '2021-11-07 16:43:54'),
('d378fefb0e90807c4a12fee54ad7a274cce9d3f24bd648f0b68b6e16381b9901033b98d5aa9a22ad', 80, 1, 'Krishna Bashyal', '[]', 0, '2020-11-01 14:39:24', '2020-11-01 14:39:24', '2021-11-01 20:24:24'),
('d38c7403956608789dc6532da28146bc7fb1904ca567ad99c23c3f92a9112efd7b0664e248ca61cd', 92, 1, 'soni keshari', '[]', 0, '2020-11-03 04:20:50', '2020-11-03 04:20:50', '2021-11-03 10:05:50'),
('d425a389ad0d47e5ffdc112165aaac74b2ffd4d1f68f4ffc018172560c55143d5ee40f770d78b5ee', 245, 1, 'Sushil Gaire', '[]', 0, '2020-11-29 16:07:59', '2020-11-29 16:07:59', '2021-11-29 21:52:59'),
('d451c820d6ae4f20e37bc51e090100f0596fdb50217e7e93ea0596028114c427c242b18188df60bf', 80, 1, 'Krishna Bashyal', '[]', 0, '2020-11-01 14:39:26', '2020-11-01 14:39:26', '2021-11-01 20:24:26'),
('d4739fa83cbd76fa37a4b7820623404e2c1658eaea39eb4dc603d32b8d98bab04c81f5191ea1a834', 150, 1, 'Deshantar Pokharel', '[]', 0, '2020-11-14 03:18:38', '2020-11-14 03:18:38', '2021-11-14 09:03:38'),
('d4741b679de2b01f9099891f28044fb0080326fdc85b71d8fa9a03bd21383472217cfdb7f36c997a', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 09:54:10', '2020-11-07 09:54:10', '2021-11-07 15:39:10'),
('d4eae144127b00ebfb4b3a18bbfa02a5ae2af34c4e02c671757c59f4977256ff1bc0ce4b09909496', 259, 1, 'Sushil Gaire', '[]', 0, '2020-12-02 15:00:04', '2020-12-02 15:00:04', '2021-12-02 20:45:04'),
('d5e092ab8c9777bede129d4f7425313a69218fd033b7c21fbaded48a0c621083c871a5a4a07fa61b', 3, 1, 'sushil gaire', '[]', 0, '2020-10-13 07:30:51', '2020-10-13 07:30:51', '2021-10-13 13:15:51'),
('d5e3dcb1ee120edb0020cc005665eaa2f991d5b1b0b916f3370476bfabf61f1631b9fdfb0af544ca', 132, 1, 'Nishant Gyawali', '[]', 0, '2020-11-12 14:24:14', '2020-11-12 14:24:14', '2021-11-12 20:09:14'),
('d6846e8fd143bfb55d293830436a8aecdf79fe1ea69ed6b10eef41543a5f84aa9feb23c003327d18', 96, 1, 'Abish Shrestha', '[]', 0, '2020-11-03 07:02:21', '2020-11-03 07:02:21', '2021-11-03 12:47:21'),
('d695e6d5b4dd0c57b1b39eb536d076069ff313b7a326ca9715fb200499211e756dbf1d50c76bdeaa', 24, 1, 'Rahul Magar', '[]', 0, '2020-09-13 06:23:02', '2020-09-13 06:23:02', '2021-09-13 12:08:02'),
('d6b896d17841aabb08598e9a0daf1cc60bb1c8ca3caf3d146255a995f82fb6954f8d449dad1d4930', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-03 13:49:36', '2020-10-03 13:49:36', '2021-10-03 19:34:36'),
('d6c219a5d83bd4895b29dde5584853d1049bf6ca6eadfac9d002ab1634acf73054f3471784d72b5a', 144, 1, 'amrita bk', '[]', 0, '2020-11-13 11:43:28', '2020-11-13 11:43:28', '2021-11-13 17:28:28'),
('d7ed0fd5bbf3c25f58625e7cb99f2d1b6710c1125d6f9f008bd77dc75ec9fd9e38e4cc06811f190d', 3, 1, 'sushil gaire', '[]', 0, '2020-10-02 15:04:59', '2020-10-02 15:04:59', '2021-10-02 20:49:59'),
('d7f4392db05e48b6550227994b1d048b8d37ce8c7a6c429c5222408314962dadc895b6234adce2b2', 183, 1, 'Smile Gaire', '[]', 0, '2020-11-20 13:05:41', '2020-11-20 13:05:41', '2021-11-20 18:50:41'),
('d89263bea765f704526d97d0d23d27df7112056f50dded33c870324029aa8a8e6b15432c2b2c2ce6', 55, 1, 'sarita Kunwar', '[]', 0, '2020-10-15 07:57:19', '2020-10-15 07:57:19', '2021-10-15 13:42:19'),
('d9203043eafbce3cb4bb2a0783c568f41231de4507001e7187160c79bec50899544e7b88122bcd7e', 3, 1, 'sushil gaire', '[]', 0, '2020-10-09 15:08:54', '2020-10-09 15:08:54', '2021-10-09 20:53:54'),
('d981c35b815499f6f6a70903972b6f135e757ae543448bc6aaf80799935d937a0c7eff1bf7f9e380', 205, 1, 'Kalyan shrestha', '[]', 0, '2020-11-25 12:55:53', '2020-11-25 12:55:53', '2021-11-25 18:40:53'),
('daa82811e497ed19df839abe757a0dd486081083760f4a3ee89f19a322c0e8db6a4c8dc13b2bb479', 130, 1, 'krishnaadhikari adhikari', '[]', 0, '2020-11-12 03:19:28', '2020-11-12 03:19:28', '2021-11-12 09:04:28'),
('dc8c9b7c3780df0de5d9e403f30abc017cddc82fa62939cf8e2e60c0d5d64857f0c5996deda283fa', 188, 1, 'Sabu Pokhrel', '[]', 0, '2020-11-22 13:55:46', '2020-11-22 13:55:46', '2021-11-22 19:40:46'),
('ddd90725ef821c56d2b9e2641f0844006703bed52306d7d0336dca85522d680628c0b7fc40fcbd59', 3, 1, 'sushil gaire', '[]', 0, '2020-10-12 17:27:34', '2020-10-12 17:27:34', '2021-10-12 23:12:34'),
('dddea4dccac6652206b06992c9f77c672a585c3ec70759343cb42839a971e92f94d742922d002c2a', 237, 1, 'Ganesh Gaire', '[]', 0, '2020-11-29 13:49:12', '2020-11-29 13:49:12', '2021-11-29 19:34:12'),
('de443a2156ccded366f302cd26848c2134b681dbc72b5f0936e98efa0da95d6aeea4c95cd487f038', 230, 1, 'Deshantar Pokharel', '[]', 0, '2020-11-28 11:42:41', '2020-11-28 11:42:41', '2021-11-28 17:27:41'),
('e0a7e187381423ed2623925decd58e02d17a23d8873709277edb32c29057be9e92ec434446938720', 58, 1, 'Sishir Gaire', '[]', 0, '2020-11-11 17:53:43', '2020-11-11 17:53:43', '2021-11-11 23:38:43'),
('e11e2678339f89a0ca2e5be1063d89d9e373343a0cea0d142cb7c2a472fdb48e4519abfa60bc8431', 58, 1, 'sushil gaire', '[]', 0, '2020-11-07 11:00:04', '2020-11-07 11:00:04', '2021-11-07 16:45:04'),
('e12027a1a9cb05389b71bf2e4aa211db026b591fd4ea951c193cecb251d94e14f9776a428b936320', 133, 1, 'Samajdar Ali', '[]', 0, '2020-11-12 15:59:53', '2020-11-12 15:59:53', '2021-11-12 21:44:53'),
('e14629d54d19b3e9e225298dcc9cf00e7a2e886caf483201e557acc337f48b2cddd928f12ee06910', 123, 1, 'sid kad', '[]', 0, '2020-11-07 13:04:21', '2020-11-07 13:04:21', '2021-11-07 18:49:21'),
('e15f89f9bb209d0f66c99165aa7f8d2e1a281092921cc543d472eb75465fb0be2127aca5e896dc3b', 64, 1, 'Pharid Ali', '[]', 0, '2020-10-27 22:39:17', '2020-10-27 22:39:17', '2021-10-28 04:24:17'),
('e1b0834a166071bb03b9e93c91581eecee711b863136b6f6f3bfbbdaa113f7abf346205530c08b22', 177, 1, 'Rahul Thapa Magar', '[]', 0, '2020-11-19 15:11:18', '2020-11-19 15:11:18', '2021-11-19 20:56:18'),
('e282afa5a6853f2dac3eba8efcdb3e4401e62b71147e184369f44247bf51794d4ce7af01038a3e0e', 61, 1, 'Sabu Pokhrel', '[]', 0, '2020-10-21 16:05:45', '2020-10-21 16:05:45', '2021-10-21 21:50:45'),
('e5968ce0228cf89deb331b072d1dde3fe4e057cce647f4964f25ffa72a377d6e9c5603e0f179a040', 246, 1, 'Rama Shahi', '[]', 0, '2020-11-29 20:07:46', '2020-11-29 20:07:46', '2021-11-30 01:52:46'),
('e6ae6b9b1b92345f3b4d375eb76be29c601c2cb9feebad85042cb2b243ae8e4fee6c8c048ff1cfa9', 242, 1, 'Sushil Gaire', '[]', 0, '2020-11-29 15:43:47', '2020-11-29 15:43:47', '2021-11-29 21:28:47'),
('e71718a6f772e73d66374404e0d3c8944bbef181ae001d3071113afc3c732e4219c2c07e1dbf06a7', 3, 1, 'sushil gaire', '[]', 0, '2020-10-17 14:29:57', '2020-10-17 14:29:57', '2021-10-17 20:14:57'),
('e7ba9ee31481ef34624ddb438efc398e83bb9d834a2cd914ece13ec0aa4634a95d08b7322a723e89', 122, 1, 'Sabu Pokhrel', '[]', 0, '2020-11-07 10:49:47', '2020-11-07 10:49:47', '2021-11-07 16:34:47'),
('e852fb8b46ba5e9c3bdce4b5bad854eba591b1f1f2e68764a04e7d5eaa78dc40cc2a1c744654bdb6', 126, 1, 'Bishal Luitel', '[]', 0, '2020-11-08 12:39:33', '2020-11-08 12:39:33', '2021-11-08 18:24:33'),
('e8781172cfdf5ba9809142168059144f61f806a7464242038b3492f194927ee3ef3f41a5ab89b1e2', 52, 1, 'Sushil Gaire', '[]', 0, '2020-10-17 14:31:47', '2020-10-17 14:31:47', '2021-10-17 20:16:47'),
('e8b549ce51b7d5fa5e2ef994764bd96c3178f4aeefc053ce1dc7a31e58f1312806c2fa3fbeae3e7e', 182, 1, 'Shradha Tiwari', '[]', 0, '2020-11-20 09:46:11', '2020-11-20 09:46:11', '2021-11-20 15:31:11'),
('e8ef2f1d0adeb1cb2b1cafed67ca5001662559871c70169a6c1317591137c3e0f877a91af4b40e84', 3, 1, 'sushil gaire', '[]', 0, '2020-10-09 16:40:47', '2020-10-09 16:40:47', '2021-10-09 22:25:47'),
('eb85c695e282ed7ac41918c760f2c8037d58e227c0c521953116e42fb4614a277b76b6a1795a3a7e', 93, 1, 'Trishan Shrestha', '[]', 0, '2020-11-03 05:06:28', '2020-11-03 05:06:28', '2021-11-03 10:51:28'),
('eb8ea9d8868a9e6573e9be5484d1d8dc372586ac2a87ea1883c876e4f6c67ea2c0301511e36c2491', 169, 1, 'seema xetri', '[]', 0, '2020-11-18 07:35:04', '2020-11-18 07:35:04', '2021-11-18 13:20:04'),
('ebaae56277f08ed52ea27a17d51a6701b109dd36b332cac065183b1f3943a192045faafe623be849', 200, 1, 'Sushil Gaire', '[]', 0, '2020-11-24 15:38:07', '2020-11-24 15:38:07', '2021-11-24 21:23:07'),
('ed35cb6a7562597a2dd608e5c8c4e1aa9de212809d0dad0f6f855fe3e75028f95fee7d850215f701', 3, 1, 'sushil gaire', '[]', 0, '2020-10-10 07:43:33', '2020-10-10 07:43:33', '2021-10-10 13:28:33'),
('ed3efed94672cadbc57a694e20bd15ea9039157cd1259b56c56c4bb913a09ea42aa090764042a22e', 86, 1, 'Dwight Schrute', '[]', 0, '2020-11-02 15:15:53', '2020-11-02 15:15:53', '2021-11-02 21:00:53'),
('eee0a69f54c4e144b191ed773284e0682097ae4bb5e8c03c631539317aa92769ed261372b58a6205', 150, 1, 'Deshantar Pokharel', '[]', 0, '2020-11-14 03:23:57', '2020-11-14 03:23:57', '2021-11-14 09:08:57'),
('efaca106fb2a1e5197bf564b9a0772f07ba520185ee97f939db70fa333aa7faca263eaf8accc0215', 58, 1, 'sushil gaire', '[]', 0, '2020-11-11 16:56:26', '2020-11-11 16:56:26', '2021-11-11 22:41:26'),
('f07b2ad3613e9a5f94f00a9709139aa19f9809046c480b3012a46c0ef25f53dd2666458aa4ae50c8', 189, 1, 'Asmit Neupane', '[]', 0, '2020-11-22 14:03:05', '2020-11-22 14:03:05', '2021-11-22 19:48:05'),
('f082c83e2a2d608957bf0bbbc2879204ef7cbb70ec9c33a4ab15da14cfd6349760e451e671341a50', 58, 1, 'Sishir Gaire', '[]', 0, '2020-11-22 10:32:35', '2020-11-22 10:32:35', '2021-11-22 16:17:35'),
('f10b2e8f06bd885a1c490cdef49da2844f70e027b756628834e8c5d1a013942108e21dda39cf60a1', 241, 1, 'Sushil Gaire', '[]', 0, '2020-11-29 15:39:56', '2020-11-29 15:39:56', '2021-11-29 21:24:56'),
('f1e3c6c27622a0d0ca1a68c7ce61b392e48cd011001224bc1044d6a4f26cb5dc2481095978ec0a91', 49, 1, 'krishna adhikari', '[]', 0, '2020-11-29 15:29:57', '2020-11-29 15:29:57', '2021-11-29 21:14:57'),
('f34294c0be5c58bc153f5c7700e3be3f98d2dac91dc2f7286e2e4d8e9dd91530705a44110e1104b3', 202, 1, 'Sushil Gaire', '[]', 0, '2020-11-24 15:46:32', '2020-11-24 15:46:32', '2021-11-24 21:31:32'),
('f3cf1038975737b867fc849ac5f4d3ebdd2c81ef7d8a608514c61426537ea9dd88955751160f7bd5', 3, 1, 'sushil gaire', '[]', 0, '2020-10-02 17:01:09', '2020-10-02 17:01:09', '2021-10-02 22:46:09'),
('f432046aa51d16dbd93d5b2efbcab3ad0e0881b05f3cc1de5cbb400de9b244bc1b976eb569c0dcf4', 196, 1, 'Sushil Gaire', '[]', 0, '2020-11-24 14:34:27', '2020-11-24 14:34:27', '2021-11-24 20:19:27'),
('f4866fb288dc2aac75e0a050cbf5d3f5cf04b97fe51826f53b4a35d9da6ff460ea407392a2d3828f', 206, 1, 'bikash pandey', '[]', 0, '2020-11-26 06:08:46', '2020-11-26 06:08:46', '2021-11-26 11:53:46'),
('f5af2eb7113d28dcc7df2bfaf6b36704f257517f2e2d5677bc74e7aca5f5fcf691c36070f105460e', 3, 1, 'sushil gaire', '[]', 0, '2020-10-02 15:54:57', '2020-10-02 15:54:57', '2021-10-02 21:39:57'),
('f69855d8f69d2f0f576388cb53da6d223395ee69fcdb0a837ef3531992e01103ed720f5af9f6b226', 216, 1, 'Rohit Bhandari', '[]', 0, '2020-11-27 06:39:45', '2020-11-27 06:39:45', '2021-11-27 12:24:45'),
('f6b43aeeb8f95d35c5335238ec24431f5aa9ae9e30bac86dafb55f6728964b6462f98c1f1ed0be46', 141, 1, 'prabesh gc', '[]', 0, '2020-11-13 07:45:27', '2020-11-13 07:45:27', '2021-11-13 13:30:27'),
('f7b1dec107c53d74f4a22d1fd550be0bb62e6f24e27cfa6101880001a094b9bc8eac6199bf748161', 198, 1, 'Sushil Gaire', '[]', 0, '2020-11-24 15:26:03', '2020-11-24 15:26:03', '2021-11-24 21:11:03'),
('f7d9841bc2b3ef622f01a2435afe6e81d731acfd58c60d6022073d975f220b2e13770d97ead00042', 109, 1, 'Jharna shahi thakuri', '[]', 0, '2020-11-05 05:22:37', '2020-11-05 05:22:37', '2021-11-05 11:07:37'),
('f80e3ef706ce71101502d2f4151e4771f3199b8ec021cfdedeca8ace81a95fdf9ae5990ff112a8ee', 49, 1, 'krishna adhikari', '[]', 0, '2020-11-12 03:10:22', '2020-11-12 03:10:22', '2021-11-12 08:55:22'),
('f80ef824b37221ea25e434a14180d61e0bcb54a81454052d6a1a943b3d4336d5a9ca535ef274f260', 135, 1, 'Aakash Bhandari', '[]', 0, '2020-11-13 05:53:44', '2020-11-13 05:53:44', '2021-11-13 11:38:44'),
('f83311702ae0dd6320b48162aad37649c213920fbdf78b4dd5375119c06bb7606fd562b7377924ab', 95, 1, 'safal Shrestha', '[]', 0, '2020-11-03 06:58:25', '2020-11-03 06:58:25', '2021-11-03 12:43:25'),
('f8e46ab783eb97d8dacf9c3e44d4a8f908b9062b7b9e13e4d9a7c4b126372f6113b9270d3d3547c5', 3, 1, 'sushil gaire', '[]', 0, '2020-10-02 15:56:32', '2020-10-02 15:56:32', '2021-10-02 21:41:32'),
('f98aaae340ca994d07ed1b2fbcaaab84ba8cf6de38317ac9be0a3d831798a74248dbaca8ab60869f', 190, 1, 'Akash Man Shakya', '[]', 0, '2020-11-23 07:17:34', '2020-11-23 07:17:34', '2021-11-23 13:02:34'),
('fc181fd2eed1415ce8800ef6833b893bca9f8ac0dcd7fd139090572bb5cf5b07fa42b1ea8f02edc6', 128, 1, 'Sushil Gaire', '[]', 0, '2020-11-11 17:59:01', '2020-11-11 17:59:01', '2021-11-11 23:44:01'),
('fce53afaeea975ab4a351a6b4b341f46e5414d787afb0605f18b04e6d3a208c0e94ec749a6bb5885', 234, 1, 'alysa shrestha', '[]', 0, '2020-11-29 03:56:23', '2020-11-29 03:56:23', '2021-11-29 09:41:23'),
('fdda37ea8f914ef16cc4a7aaf4e83497a62dbb6355e83f1b8a90af12214730d74272e157fb64670c', 49, 1, 'krishna adhikari', '[]', 0, '2020-10-22 16:21:00', '2020-10-22 16:21:00', '2021-10-22 22:06:00'),
('fe8e24f67383192e082845ff3981f770b5b22f6d629e63a1b40763c34aaf6305bdf90592a75def68', 58, 1, 'Sishir Gaire', '[]', 0, '2020-11-11 14:40:53', '2020-11-11 14:40:53', '2021-11-11 20:25:53'),
('ff084492f15757d80c3eb2413767fddd96ba3e2c634a960a3bc6e2baf8c224dfba641f587cc75721', 58, 1, 'sushil gaire', '[]', 0, '2020-10-20 23:14:20', '2020-10-20 23:14:20', '2021-10-21 04:59:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_token_providers`
--

CREATE TABLE `oauth_access_token_providers` (
  `oauth_access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_token_providers`
--

INSERT INTO `oauth_access_token_providers` (`oauth_access_token_id`, `provider`, `created_at`, `updated_at`) VALUES
('01324604e82d5faea8e5ee7aa7f575c8a1d966fe8cc75acd3a3a0165355640a9fba9ad05d54b6ad3', 'customers', '2020-10-09 15:59:56', '2020-10-09 15:59:56'),
('01a4bd7162de63edddb1ea1d12656436a74109c94630b53050ec1909d0237b354f6c21cbfc334ada', 'customers', '2020-11-20 09:46:13', '2020-11-20 09:46:13'),
('023703d97abafbcc063fab565006b0cb71f7c0d88c8d07e97d23328510b810e13f8f262f45af7ae2', 'customers', '2020-11-07 11:20:27', '2020-11-07 11:20:27'),
('02c5f8475a440d493ccee317ce2bcdd0061749d713f7ef00cb1cb6912722b3c40f79de276b4df3dd', 'customers', '2020-11-29 13:48:52', '2020-11-29 13:48:52'),
('0320c66ab975a4c618567756fb7a2b68011825c31767c83ab992d93a6e18566d04c38dc4b3672356', 'customers', '2020-11-06 09:04:25', '2020-11-06 09:04:25'),
('042a1b71da89d5cb212ee610f79aec67c8e30da2337b3ae175a90ba0f6a1d73f75c20e689510627f', 'customers', '2020-11-08 11:53:33', '2020-11-08 11:53:33'),
('043698c73f1a43977313963e2aaebbebae57693e4c2b53909e50fe10ebedf5a9793bb5bc072abc88', 'customers', '2020-11-23 07:17:38', '2020-11-23 07:17:38'),
('0456b48a7c61ef3b649bf777c0765937b7abbe15b8d3e871ffb8fff4d0bad37cb2a0fc912d5ecb34', 'customers', '2020-11-27 13:18:00', '2020-11-27 13:18:00'),
('049ef6e388eae365c0e166d04dfb1cedd9a5e3b9646b526d4e8b9bb61fc6d7cff6179cbe8fe7db19', 'customers', '2020-11-13 07:06:27', '2020-11-13 07:06:27'),
('04d7f896ae7e39676987660f4ef2cea9b7c665c3ffed43f2de7401b24edd9c1af1c5dd39101c2908', 'customers', '2020-11-16 13:48:45', '2020-11-16 13:48:45'),
('050b0f377dea2ec4ca83b677f71b1eb0c40f7afaafd954bc18755f30285890bdef5a0bc580b0082c', 'customers', '2020-11-16 09:07:33', '2020-11-16 09:07:33'),
('06b6cf4d10fe5fcef5e730c1483d33229bd0b8374bfdaa603846c94a4353bc89efcb5f4b6476d45a', 'customers', '2020-10-02 16:55:46', '2020-10-02 16:55:46'),
('07c0f12c2ae4cff7fb9eddc9201e7d32d9cca386da461f6168f9f82eca03ba13e1799469dcfa783f', 'customers', '2020-11-05 12:08:14', '2020-11-05 12:08:14'),
('07c25ca021d8949b5b2ee0d50fe631e745d0208c67d762f76ce887966a752c450325d5354bb6ab5e', 'customers', '2020-11-12 03:12:54', '2020-11-12 03:12:54'),
('07eda4e525bfc826153cb6389dbc6b2da9be618e43367c347b1190bba181eb62665b0d5b596fc852', 'customers', '2020-10-29 15:29:15', '2020-10-29 15:29:15'),
('07ef048c5a34112be365b08f81b4d2cb6efb8efce511b2e82826e56179a028175ad3a50dc58b4b4a', 'customers', '2020-11-11 17:53:30', '2020-11-11 17:53:30'),
('08036d371cce61db0ecd7a5708e0c25e71c9af9a32845cab41e6d6953de3685871e9cb5c08e829d3', 'customers', '2020-11-18 02:09:34', '2020-11-18 02:09:34'),
('08c69047caf9a97456b3301d6fdda4048ea2c22553acec3f119205910c085b97caea9a8386d3ce97', 'customers', '2020-11-11 11:29:27', '2020-11-11 11:29:27'),
('0921e8d350b6c289f835a270b8fd4372336696cc88c1d97969ab96ad9cd3a97cab239f0e4627083b', 'customers', '2020-10-21 07:57:51', '2020-10-21 07:57:51'),
('0b37283730611d1fc974af3bef99d4658d445c39b0a59c96a186c90df378fba88d3b6c91d956bbd1', 'customers', '2020-11-12 03:27:29', '2020-11-12 03:27:29'),
('0cfbaf020ceebeca7f9db00d55a0e0e9d00ce110d84936997da691a5107110a69f1eb177dc019faa', 'customers', '2020-12-02 09:48:39', '2020-12-02 09:48:39'),
('0d080e1799c71cc067c948d0bf98d3369c2c2df5cdadd3a99e9101821ef82348ab41d3b9311160b8', 'customers', '2020-10-30 01:46:02', '2020-10-30 01:46:02'),
('0d53a6ac2c289d4595a5bb024c6ef5df7a0e2b5a31241e2393ed7bbaa3185a3669dc2f500f008607', 'customers', '2020-11-27 06:46:05', '2020-11-27 06:46:05'),
('0d7dd427eea3bb4a1789a9ca493aa72a4e4f9d5f022289b4366a46bfa9b9bcff2534edcfe8464c95', 'customers', '2020-10-08 02:50:08', '2020-10-08 02:50:08'),
('0d85e0f62d10fb38b1402efbee7cfb8f8e840a69092da88ec352bae2a0149db39d336506ef0de09b', 'customers', '2020-11-11 14:40:35', '2020-11-11 14:40:35'),
('0e09f4b8a69a06065be67a633a2dc1c55ddc2699cd51f29e5955f986e1f838235c3e6b28689bcbb9', 'customers', '2020-11-28 07:33:42', '2020-11-28 07:33:42'),
('0f004c07420a6c4eaac36c00deacac0c68500b07f18423b1c7c4e09d77d68d19b717dcb4883f46c8', 'customers', '2020-11-28 14:02:02', '2020-11-28 14:02:02'),
('0f4c66d911ddcf12f690236d6c0e83cd60fd8eee49f83b962a88c49976b4c5c40e74ed53291223f3', 'customers', '2020-10-24 07:30:55', '2020-10-24 07:30:55'),
('0fcb2adcb152b3db7e1ce6969e8dc2f1e512b89ec6a01655c833010972ba6fc75ad0241bbb2deeb5', 'customers', '2020-10-22 08:15:22', '2020-10-22 08:15:22'),
('1034ee61a205cc50ad32becf6a25b38bb3ede7a3b6c1b298388251473a9b2ae934ed17fcd84f9a17', 'customers', '2020-10-03 13:56:51', '2020-10-03 13:56:51'),
('105aed030eead9cb06d992eb30f2485a37f0d03cacb97622e097c5b1d81f7ecf5a3cd163ad1ac685', 'customers', '2020-11-05 12:13:15', '2020-11-05 12:13:15'),
('107a7ec4fb51c0244b680d543a24ed93bf7b936c8aae63c7b4fd4e4e46e9d6012c4fb2945610019e', 'customers', '2020-11-19 09:18:29', '2020-11-19 09:18:29'),
('113f23f390621f01f52ab90f9c9ef94638a426075b1f1e999c3e506fdbdacd428a313e60e11bbfc9', 'customers', '2020-11-19 16:26:25', '2020-11-19 16:26:25'),
('11c0c7a86915a83cc60326fa151b4b310ec49dbef3191485e36c86c3497b17455646df01d8b34ad0', 'customers', '2020-11-21 09:33:45', '2020-11-21 09:33:45'),
('11e097e45c75f574f6aa38e4e2f96c0162d34a11a827eda80259f7af6213c9e0db5afae16f2d006a', 'customers', '2020-11-27 06:52:23', '2020-11-27 06:52:23'),
('138d5caf1ea53b0ff0f4c481993b565009fa9699019133db8cbcfa34d093d037d63d133bd43b481a', 'customers', '2020-11-27 16:36:17', '2020-11-27 16:36:17'),
('140c12c14eac3c8f0f9f1f03f8b3483fb87d1db95f7e546c80343d7a616282841244c9b410d22119', 'customers', '2020-11-07 11:01:28', '2020-11-07 11:01:28'),
('15ffde76de780662c0721ea486b2e976275535eb27cb01496723e629f8141028b318059115d37420', 'customers', '2020-10-04 15:35:05', '2020-10-04 15:35:05'),
('162b4694160fbd28efc438077f52f3e9c48342c166aacc81567d2b204b1a731b84f1c00348e534bb', 'customers', '2020-11-07 02:56:31', '2020-11-07 02:56:31'),
('166d84f24d083023e9cc13f5d42b6a1867ecef8e5e80a13566f3b5d5386741660f962eedb6630ef7', 'customers', '2020-10-03 13:55:25', '2020-10-03 13:55:25'),
('16f9daad156b0ff3595d86f98734e18753d5c5a50de753017a40effff5c92b2fdc3461019d353cda', 'customers', '2020-10-02 17:29:08', '2020-10-02 17:29:08'),
('179575e1b1ace51a5a5f171b3d65d7717b88911e6910cadb2a598a04bde2a626f12898f519961036', 'customers', '2020-11-22 14:35:50', '2020-11-22 14:35:50'),
('17e0f7f031cab8b0af82e84b18aad206a70273121224f0c89c27cdd85f3104eb8ef455c948a6edc6', 'customers', '2020-10-03 08:55:59', '2020-10-03 08:55:59'),
('182a5f89b9e7beac45aaa8cf0b7682dbe4966f5c9f8af061f94eb486f053cc5d8ccceb68cc780790', 'customers', '2020-11-27 08:10:25', '2020-11-27 08:10:25'),
('1843b89044e159e8586dba74fbc28b95a60fe6a8db13e9b29e68a8f84efd325fba01dfaff507bdec', 'customers', '2020-11-18 07:31:52', '2020-11-18 07:31:52'),
('18c30bfb1600986cc0373ffbf76eb4a1b7339bad7e52f98b505894bf570772c1aa868537f9fb3197', 'customers', '2020-11-26 14:30:27', '2020-11-26 14:30:27'),
('19085da095c3c69bbbdf2aabd0c4e0004d63ac81ce326038fdc89e8fb9769572d3bc0e2f8cb823b7', 'customers', '2020-11-22 14:43:24', '2020-11-22 14:43:24'),
('196bf637d6a0c21df71abba9c9671debce43b0551b5cc26d470e71ee32a95dfb9592372575acf232', 'customers', '2020-11-19 11:11:25', '2020-11-19 11:11:25'),
('19e7a7fd2abc6ee949a02415a785476279fa15aba7d589ec7864625b766cfe1c4da57dc61b1509dc', 'customers', '2020-09-13 07:12:49', '2020-09-13 07:12:49'),
('19f017dd31a87275a2c98c0abad607bbc440adf8c99cdea99cd092c745b05344fb2b3252a7cfc2cc', 'customers', '2020-11-05 12:04:11', '2020-11-05 12:04:11'),
('1a76fdaaff5cef487d0c5f38e3cecb0047f4f827933f013a6eb0a947024c4b2017ade1cdfe19b0b2', 'customers', '2020-10-30 15:15:47', '2020-10-30 15:15:47'),
('1af8c6af5c980ed998a5eabb3fa924657a68ba41552b4c4b45b82e0477c5b8e3e5f90c4de8612367', 'customers', '2020-10-22 02:19:23', '2020-10-22 02:19:23'),
('1b04f90cefba07d2ceb74ff9dc67144d89d72e11908ad8fc3ca472efb91ee966d9cb7f5720426cec', 'customers', '2020-11-12 08:55:23', '2020-11-12 08:55:23'),
('1b22bdf46e4486ad62ebbb4c63d80408e017c57c13b5c84bfb6c9b47ed79db46f9e90a4e5c616fba', 'customers', '2020-12-01 11:26:49', '2020-12-01 11:26:49'),
('1b6304a2cb41584d91e78a1568271453adffdf3813b7500cd7f79f5dfda3497561eba004efcd5c2b', 'customers', '2020-11-29 14:12:44', '2020-11-29 14:12:44'),
('1ba0f24a9b08cbbbbb49f1d83ab09d3f574955e4d2b384d8cf3c75784c83fb1c91a661fae6fbebab', 'customers', '2020-10-21 15:58:11', '2020-10-21 15:58:11'),
('1c66f07fdbdc8eb50a2cd01e4b48901e215799c68635e887e99e66bc18bc5d30c0cf8fded014c2e6', 'customers', '2020-10-22 02:37:29', '2020-10-22 02:37:29'),
('1c7f7580acca3f488f8e59d2af4ee800cc7961f65b6d12a298e2848f4dcf524a2eefa444089c0f2c', 'customers', '2020-11-20 09:40:22', '2020-11-20 09:40:22'),
('1d1ac64fee065dcac2e75dcc7dc74958a2b2e20693785dbd36e0e04677119e97712712c5758e1fb9', 'customers', '2020-10-20 07:02:02', '2020-10-20 07:02:02'),
('1e9d879b987fe4adb550239cddc68c747c78036aa53c70ebc049a6e28e5f4b0ac6094325700e1d12', 'customers', '2020-10-03 13:28:32', '2020-10-03 13:28:32'),
('1ea27846a386579513614003897dc5e80a22283699c0093a4dec1f226dad3bc5433adf3a6771f0d2', 'customers', '2020-11-29 02:07:49', '2020-11-29 02:07:49'),
('1f3f9e64dacf526ba56622d345692fae36e3fce16dd1aaab25e1ad08fbfd6f5ca54d2fe8a8cc961b', 'customers', '2020-11-03 09:59:05', '2020-11-03 09:59:05'),
('2178fbdabbc5ff23c94ebcad667f1316e89030071f3dedd1d1e1d1493dd3bc81d8de583748cbc2f1', 'customers', '2020-11-28 02:14:41', '2020-11-28 02:14:41'),
('21e8fb3edc0d13b6d94d9e207944217dc846e0c531ddae190b8fd7b62abb874c22bd0ce78e4976ed', 'customers', '2020-11-12 14:21:57', '2020-11-12 14:21:57'),
('222c9f4f87ee9cef777996c4089cada6b376844da57402f9f0c9af541329b4e729d71dbba81954c2', 'customers', '2020-11-27 06:16:58', '2020-11-27 06:16:58'),
('226884deace93ab4b5991fa4c5794a404024ffcb6598200497287619dc84d6202f613486b01f8e6e', 'customers', '2020-11-18 02:08:33', '2020-11-18 02:08:33'),
('2333fd7d467b1fd5920bfd5b3f757cee73b679f5894bd61c078fbde1a8860a83f3073e81e5330c1c', 'customers', '2020-10-22 13:34:57', '2020-10-22 13:34:57'),
('2664fc3be5c3c9b6b67c8b747c7a82a20e75877e2b2b10e1d08302ffc5ffe2ec1ec904f86e2022ce', 'customers', '2020-11-27 08:36:34', '2020-11-27 08:36:34'),
('26f6d9caa39428c5090130ae554d19982ea51e5304607bdffc52ecb26f9d9f5599944252aca63d8b', 'customers', '2020-11-18 06:10:57', '2020-11-18 06:10:57'),
('28b91e3c1789cfd3894507959d1d3166f6a5c7540d4955a5d27bc3ba6ee237db231fb2b3e49a924d', 'customers', '2020-11-02 12:26:28', '2020-11-02 12:26:28'),
('29f7cd6aeb6a15db937d2fba9aebcbe0aaab6914d25c81f758d263ffc964086c863356a62ba886eb', 'customers', '2020-11-29 14:12:26', '2020-11-29 14:12:26'),
('2b6b94b666eb3186601e1c05df2ace005772b03d6004cc7897a7a250402beb56d18fe0a61abbc815', 'customers', '2020-10-22 07:12:18', '2020-10-22 07:12:18'),
('2b6e6f4f5fc32f1d5f3318c74478f2a4f9ad2091b7ce2a3fac095d4241954d242e4304de653efc83', 'customers', '2020-11-12 03:28:28', '2020-11-12 03:28:28'),
('2c13caeda37f1a0391533eba5b1861ead2ba76c0d455a7e8e104bf612805d1bcb9c79040fc136903', 'customers', '2020-10-03 13:56:06', '2020-10-03 13:56:06'),
('2c60aecca69d0f5096c48a5bb873c5efd47dc2fbd5c6cb0517dc0bec36e3a2b9bf58a5200ede001a', 'customers', '2020-11-18 07:35:03', '2020-11-18 07:35:03'),
('2d2989dace24c7e276dadde31aa0be4dd362fe2c53808e0860a9839956543bc8094e38d2bd3b31c7', 'customers', '2020-09-12 11:02:55', '2020-09-12 11:02:55'),
('2e6717bb5717ab24b65c91bac5773e99620ad3250e9a7554dde4c483bb39419bc9f824610d6a4bf4', 'customers', '2020-11-27 06:42:16', '2020-11-27 06:42:16'),
('2eb0cad90beb002d255b39ea025fb2ab868a8ccb04d244d646933040c215533cb323fc65a86cb1c4', 'customers', '2020-11-24 14:24:35', '2020-11-24 14:24:35'),
('31a91066e910f2edd2296169a3162e18206737b77b5f31ebc483419d32b636acf0d6386a0ab758e2', 'customers', '2020-11-16 14:33:17', '2020-11-16 14:33:17'),
('321fe3f4e9c66d06eaa1d768edf2a46dac107c1001eb8a66c2fe42c57eb48b2d449c33dcfaf119a4', 'customers', '2020-10-03 07:58:58', '2020-10-03 07:58:58'),
('32c2d07bd1662d8753030a790970fb4f92f23958579e22f66bb9ff3e5c9c5ae71f624fcc34608bc9', 'customers', '2020-11-01 18:08:00', '2020-11-01 18:08:00'),
('3379661bd918be0b4f04a59f8ec8e71b4af778d59ed55360ff2ea9b56486bf4ec8049a63bf19cdd2', 'customers', '2020-11-27 06:34:56', '2020-11-27 06:34:56'),
('34044f48a4dba00c1c92875ef0f79eab743553a532a88eea93b5cc3997277e0cfeac77af929da600', 'customers', '2020-12-02 15:04:43', '2020-12-02 15:04:43'),
('37ae4b84fd502a8bd1491c30d3fa825d6fbc85b58194c5065cdf7e9c66b422b085bc95e4564532e9', 'customers', '2020-11-29 14:48:43', '2020-11-29 14:48:43'),
('37e1fc40cc10dbbac44b7f12cccccad7d4c24011cfee2859dbc1dca51400fae87760c095fe064331', 'customers', '2020-11-28 11:41:17', '2020-11-28 11:41:17'),
('3913ee9b78530ed90d85646c64c4c20c84ccfd4dfafca3f2006100ebde39424436a8a998f9d07ae5', 'customers', '2020-10-15 07:40:30', '2020-10-15 07:40:30'),
('3987c2a0c20f748cf43f47cb55402ab0c6e4559df4b7cad2624dcbf656cff1c6cdddae7b99c29825', 'customers', '2020-09-12 14:57:05', '2020-09-12 14:57:05'),
('3a3af8295cfe2c94463dc570ec534b0f0add8d3b2c33d968932773ff3039d29ff0847deacdd5f559', 'customers', '2020-11-27 06:46:00', '2020-11-27 06:46:00'),
('3adf1d4b9ff6da7d15a75a41ca4d0fbc1fd7ff10dd1c2c163dfee162c827e5dd0a3196e04c4873e8', 'customers', '2020-10-05 16:04:42', '2020-10-05 16:04:42'),
('3b4c960f7ae036352a96cc37783bb7b8eafb1212772011547c3d80934338603129fef7ebbbb0a404', 'customers', '2020-11-03 06:58:27', '2020-11-03 06:58:27'),
('3c4bdd002bd0af08f75cbbe8cacdf30d0c8c4c733b4dd2b26104da864058d2056e5ab62616e14eb3', 'customers', '2020-11-19 16:23:07', '2020-11-19 16:23:07'),
('3cfe3eab20c5bd2a974272c5dd266574922806ea18904746a908602c144e90dfbe754e2ffb14e651', 'customers', '2020-12-02 08:59:38', '2020-12-02 08:59:38'),
('3d02f7481da22353072a39eeb3c63d18732d1e6544012e3017c3abf7d5c2f18c066a300e1fc27a51', 'customers', '2020-11-28 02:41:45', '2020-11-28 02:41:45'),
('3d665e61bf019db75d0824f39843b79042bb208c6c42fd6d28f2488a23579d58177a35ac578672c0', 'customers', '2020-11-13 11:44:03', '2020-11-13 11:44:03'),
('3dc68cbc55ceb3d710277cc1ebf4c4be534f4a85316774c2bcb67c9ed47027845ad30e53aef6ebd8', 'customers', '2020-11-21 09:29:20', '2020-11-21 09:29:20'),
('3e39496f3f0757d277c171bffe1622a2b851136dfeb12e7f94f0d6b93573da79e8179d8e9243e22e', 'customers', '2020-11-16 06:40:29', '2020-11-16 06:40:29'),
('3e868722a21e54a0e61d97970c8f951d6e8479e21cdb0df34eac24e81cf6e1bea0d6b26631263a8b', 'customers', '2020-10-21 07:57:51', '2020-10-21 07:57:51'),
('3ecca56e3135b40730860c4df36a13e479535f0b45b945eb51c4c3c1cf649e53644a0640a730032a', 'customers', '2020-11-03 10:17:29', '2020-11-03 10:17:29'),
('3f5f62df0437c7e7a3f9843c2ad19985bd71de13b0aee79118c9f4047724054736447e9808695453', 'customers', '2020-10-12 15:06:26', '2020-10-12 15:06:26'),
('3fa5f4187dac8586b26ae399250b95319af9b486465db789abe00be82d55b2115f1fe23559c592eb', 'customers', '2020-11-02 15:36:29', '2020-11-02 15:36:29'),
('40d4d6b9a91a5bd26f18269a4eaff3b335c927311c4c12fbf8e76ba01468be80d53e12926836c2b4', 'customers', '2020-11-07 10:51:25', '2020-11-07 10:51:25'),
('415a86722ada34058552aee660b2fa044dc3bf286eef80d97838e821b0a2448b6003984960c00f8f', 'customers', '2020-11-01 12:05:36', '2020-11-01 12:05:36'),
('4278a4905db5cfc3a908356b185f4bd59009e06cfde15eeaa08d87b7f5a73b8c52079fa2cb775762', 'customers', '2020-10-03 14:19:14', '2020-10-03 14:19:14'),
('43c40cf86f83f6b731a0a2739532141dc4fe21f27a413c11d3f48b8078cb4ad1f541c8825e0eb08b', 'customers', '2020-11-28 07:33:40', '2020-11-28 07:33:40'),
('44048d5c0909adf2c52844e8cbc9030a0a2e89d2e651201c56bcea313e5936f89fa7ae3695baeefd', 'customers', '2020-12-01 11:49:35', '2020-12-01 11:49:35'),
('440a55f6e92b3fab87de9e223e168902f4cb9ebe194d6a9c0ce4b322085eebcf62b993f4676c494c', 'customers', '2020-11-18 06:10:48', '2020-11-18 06:10:48'),
('4462d19dd2459c2c927c43260b67a07ef421aebf5ecde9ea925bb37a2ebc883209bed5d873c00923', 'customers', '2020-11-29 20:06:46', '2020-11-29 20:06:46'),
('446b8069686aa158b7bcdcf85d8174604af39dbaddf9c10aefc8d76e2dc5763bce866e3215f418d9', 'customers', '2020-11-27 08:10:25', '2020-11-27 08:10:25'),
('449b7ac60a8b703c10daa4d6424b8a38b889bedb5b2446fc73f5c1949538af1f0a97f200813e6004', 'customers', '2020-11-28 02:38:02', '2020-11-28 02:38:02'),
('45ca7dd10d2337aaff7a072954ca9de482e4da4c6e1ea1f08afeb02f7a43d0ea760e7f07e363c7a2', 'customers', '2020-11-03 04:20:29', '2020-11-03 04:20:29'),
('45ccf8580fd676db21c3852a9fa3418617f5756c16640644da49e0e19735923fad35de1f09368597', 'customers', '2020-09-13 07:12:02', '2020-09-13 07:12:02'),
('46de516068a6108f243a73d4749f6160e88384abd3f5f5db11470c4a186a72dd80205595e093f43f', 'customers', '2020-11-26 14:02:18', '2020-11-26 14:02:18'),
('472652ba2159a1b6d8c375d45895275586060802f4bb04248348ab0d029804e87a91d762552bbfb0', 'customers', '2020-10-03 14:23:44', '2020-10-03 14:23:44'),
('473611a3f4bbe0c60d11de4f9e712381c8c8b1b2694c706f1f07a9b7b30ea5236b1e8eb7f1f50b85', 'customers', '2020-10-17 14:51:41', '2020-10-17 14:51:41'),
('493c38733586bd9f633ea5a033d5552a5323bb7b32f28b13c5be0c77377e53be06e37ff31059eb93', 'customers', '2020-10-12 17:00:54', '2020-10-12 17:00:54'),
('4a71d7e139011c613d7897b723ab4b37d72cf3af8ce3d559aa3335f1ffdf4c06ab0fb38fb960c04e', 'customers', '2020-11-13 14:56:24', '2020-11-13 14:56:24'),
('4aa80d2a366208ed07ef4bf208e916742e1475dee1031df9058e547ee9945a325f59f19ca22c355a', 'customers', '2020-11-17 08:39:35', '2020-11-17 08:39:35'),
('4ba9149a92b8d55b4e7a2f7883b461bf5aac1b22b411c2543ed9547948b64873ce7575929df1f434', 'customers', '2020-11-29 12:39:11', '2020-11-29 12:39:11'),
('4be786e57fbaa09febfa48de15bdc35d3338813e497cadc00676e26666aada533a6ef5f95f20c683', 'customers', '2020-11-07 09:57:17', '2020-11-07 09:57:17'),
('4bf0641883a915e7e7f49150778678afe0b9f2f127a1d765adfa8ba421db53c0e17fc8e385ef32b3', 'customers', '2020-10-13 14:42:37', '2020-10-13 14:42:37'),
('4c0a40832edd7cce1fd18a40a463dda5de76b0eb2bd54933d1ab8d168a142553321ad158a964785e', 'customers', '2020-10-17 15:29:28', '2020-10-17 15:29:28'),
('4c38843271a6479858035a9203e08470eac8738120e7e486e6177d1000c5ab217e133fb287ed6c8b', 'customers', '2020-11-06 09:04:25', '2020-11-06 09:04:25'),
('4d0eb133f6951f10847e62e26188b32b0bdb32d195ec64803381be94289d14d54d964c7fdd9d71a6', 'customers', '2020-11-14 03:18:41', '2020-11-14 03:18:41'),
('4d900b90e90e86233cab8d542a0fb6856baa978784f918a33c9452ab056f4c02ba65aa28cf2b22b8', 'customers', '2020-11-13 13:28:26', '2020-11-13 13:28:26'),
('4e27d07aeaffc9f943d08c23856d1362af51be3a0d3d5f331ece53897ea4e1d11dd48ae88abc861d', 'customers', '2020-11-11 14:37:55', '2020-11-11 14:37:55'),
('4e7036f94f47b5e6458f30d77615e3f646d12cfd6ad80f7999f3b80932acb40267aeb545d061294d', 'customers', '2020-11-22 14:45:02', '2020-11-22 14:45:02'),
('4ed92dc3f4d2c865b6e349c393d2a3362698eaf2c278e65934a33e2e10e6d96f9cf79171b8711b4d', 'customers', '2020-11-29 11:27:20', '2020-11-29 11:27:20'),
('4fdd7ee8ff288af786979e57e52cade352f7f0939dcccadcd9525c4d1b45843d2ab20eb7cdb07e96', 'customers', '2020-11-07 10:47:48', '2020-11-07 10:47:48'),
('5156ab627ab400bb2819483c6cfdb25ed14ee68ca66ffeeb62fa40f2aa2579bf14f013ebf8f5a7b6', 'customers', '2020-11-01 15:35:45', '2020-11-01 15:35:45'),
('523e4d5a599e9d56604054e6ee799874d414a3c0737c77a3ba6d9402bd653fd971b6ee84bbf83a62', 'customers', '2020-10-10 05:04:43', '2020-10-10 05:04:43'),
('52691fdce0d599e2f5de4d91f472ff22e2b91edf494f10affaaa0eea3053f56006c7cdbfac12f6f0', 'customers', '2020-10-31 10:45:04', '2020-10-31 10:45:04'),
('5291f13db6e72084e92d4666a34496bd3a193309b2ca1d091acfb722dd533c5b34b9589b65e71d4c', 'customers', '2020-11-29 15:55:24', '2020-11-29 15:55:24'),
('530b2cf025e40b5b247aa3b00eac77e56b2c7d43725eb082507e20c57e0be5be3087e8f857511cc9', 'customers', '2020-10-22 06:48:38', '2020-10-22 06:48:38'),
('54270188c759ff27f353f4e53a60cf3d9f40764924ff59e6b88f30b78862807d041c207ee150e985', 'customers', '2020-11-29 11:27:36', '2020-11-29 11:27:36'),
('55655ffc6f264a5a46aa9e2b40e5eef38374ddda51352bd242d7daf3365c85537af4c37fb237d421', 'customers', '2020-11-03 13:52:37', '2020-11-03 13:52:37'),
('56ec70415edaf41c39b6d67cbe70a3f6473ae278429961188ab7c63cfe3f80d9f024a58a4c9b56db', 'customers', '2020-10-03 14:10:58', '2020-10-03 14:10:58'),
('579c31306daebd74cda7432e5e0dec4435709ff81a46d2ff523a8338b0ed8c069cd9fcb5f7e14331', 'customers', '2020-11-12 17:44:17', '2020-11-12 17:44:17'),
('585ee08f392ba3190309c5752fa20b5976396f507b5c900ffad9b0e41a191e03ea45e278bf9aabc6', 'customers', '2020-11-18 07:31:52', '2020-11-18 07:31:52'),
('589cf2237811716e38abc47baf5f23a377e2a026f1a2f99368b0e4fa79df7e288c66289d88e36f0e', 'customers', '2020-10-15 08:46:36', '2020-10-15 08:46:36'),
('58e719394a554ec47170b2de3240f8721adc6ef76f6866a5502a21979143f1475f5f1af11c119abb', 'customers', '2020-10-24 07:38:39', '2020-10-24 07:38:39'),
('590171bc8852818582cd2be218af874b38d8af1a87fb90672c09e0d4e3485d5289bb2c32ff1a195a', 'customers', '2020-11-23 10:01:26', '2020-11-23 10:01:26'),
('593f908de972cf3198a33d300bcdb736340742b551708ef73e1f4df2ec5687d3030db7e0c9a2ee95', 'customers', '2020-09-13 06:58:30', '2020-09-13 06:58:30'),
('59674033f8f38c1c62d6e23261b11a97ff3252ccca4f0fd1bda4c70d05a2c057023ab2e7de63996b', 'customers', '2020-11-21 05:12:27', '2020-11-21 05:12:27'),
('597060fce13a5f39421dca74dd598dbf9e7ed5877892909dd5256d4e763c87a9f0c2b93fe711119d', 'customers', '2020-10-29 14:50:22', '2020-10-29 14:50:22'),
('5b76d997f2074315f3fc8fa274cb8168a6345be41c7beb999d4f6496d6090996383ce5f11f47700b', 'customers', '2020-09-12 10:02:07', '2020-09-12 10:02:07'),
('5babbf61409033b26f88001a4ba2e108c8f441d41316822b6b948e8db42f1730218ffceb2edeafb4', 'customers', '2020-11-20 09:40:22', '2020-11-20 09:40:22'),
('5bcfdb9484a6c4c93ec423092ae9bafad777b3cce99ecce76fdfc7c6f323d9dd5c635977c391ac5b', 'customers', '2020-11-23 07:17:39', '2020-11-23 07:17:39'),
('5c6a9846e3423ba090190056ea9812e5c303cbcf4b0deb30721b59efa4fb8c56dde6922b15479372', 'customers', '2020-11-23 10:21:35', '2020-11-23 10:21:35'),
('5ddf1c98a82557e0f1fc9ae2657a754fb35aac624f0276a6c65c04b30559560351c1f9b812288bb7', 'customers', '2020-11-07 11:44:23', '2020-11-07 11:44:23'),
('5e3683074cd47842751370fd9a0379494f6037a8bb898bfeb24bf837c5b380fae372582002bde7f8', 'customers', '2020-11-29 14:49:30', '2020-11-29 14:49:30'),
('5ef3bb37a739c5ce044d9c52ddf8b30cbd351845dc2a98610f4bcc6046f323dfff3d895196f8aab6', 'customers', '2020-10-21 15:21:12', '2020-10-21 15:21:12'),
('5f88b36356707b6b0f8228b07cc95a62ff49ea9dfbb2702f2d5caefabcc9a74e6a5eefcd4032ac7f', 'customers', '2020-10-13 00:44:44', '2020-10-13 00:44:44'),
('5fa3a149caf68972e48e0c29e71c690a42abf5dc6fd9f8fad90ffd6fa4e1ce2ec509571732dc7e09', 'customers', '2020-10-03 09:38:36', '2020-10-03 09:38:36'),
('6030221db230a8b39988f813ba89ecdb1ea15019b3b73b74d41fe303f7705eb97518e02154d57f26', 'customers', '2020-10-30 15:27:10', '2020-10-30 15:27:10'),
('609a10bb577946c902edab7062819bf2bc790f18d06578e3b9ff4f636edde728b8dda4682352ede6', 'customers', '2020-11-27 16:38:58', '2020-11-27 16:38:58'),
('62fbcf1edc5fabfc1ba3d7f97a8a3a33c457a73d41be6ee064257352ba89a38a93940d3ed46777e2', 'customers', '2020-11-18 11:10:20', '2020-11-18 11:10:20'),
('634799f1ee7cdd92e056dae6b32f5fdf237760839e580fb3d86c7b7147067f426bac632c3d34cd00', 'customers', '2020-11-07 10:43:27', '2020-11-07 10:43:27'),
('639febada219c651a92b98fa3539e9c69165353b4c064e2c9bfce95b8f2e18bea9e397375a50cf64', 'customers', '2020-10-02 15:33:28', '2020-10-02 15:33:28'),
('63ee4b9a208210b4c06c19d0578280b2ebca88af6e8659c1636edcd3cd819eabefef6df8dd96cbde', 'customers', '2020-11-03 06:58:26', '2020-11-03 06:58:26'),
('646346d91d672ddd83929bdea39ccd225934930b22846b614a207aeebad5c80cacba568f7210cdfc', 'customers', '2020-10-10 06:11:07', '2020-10-10 06:11:07'),
('65f73bdc6352878e1a7c8e30cbac82e6f7c8ad6e058e8121e473b9e1231435a4bd5770635ecd1a8d', 'customers', '2020-11-19 08:24:30', '2020-11-19 08:24:30'),
('665d39bc6e5c6001609059f32c38da3d51fe15fc861d612e56a18ae494079001a129b3aba4f66525', 'customers', '2020-11-05 09:01:51', '2020-11-05 09:01:51'),
('6a9444586fbbeb2c504f8a07d2cde66ac36889f0d670478ca0048f2a0c4e0f0f49a87e8fce9f4243', 'customers', '2020-10-02 15:29:52', '2020-10-02 15:29:52'),
('6beb36aab70373c1d0b68db7bbdb41bd678914cf9934a7d2554bc859e35ca9852a5a1cd63f6e97a7', 'customers', '2020-11-19 08:24:33', '2020-11-19 08:24:33'),
('6c20ddf8943a8aacefd5e937b95ceadfe2f094b239f9dfa2fd5e17e8b1aaca1215a504ce6779619d', 'customers', '2020-11-02 14:34:25', '2020-11-02 14:34:25'),
('6c370d2e6bb6f720eefa0eb7798bd495808c8fade16ebe47295adab9e2b0b0a68322569fef410b06', 'customers', '2020-12-01 11:04:56', '2020-12-01 11:04:56'),
('6c71b7fdb1a3e3cc1eeedf250b25b14ebffae665d9e5172e91c98f47b94f73ef12dfd7eec8fedae3', 'customers', '2020-11-27 06:46:42', '2020-11-27 06:46:42'),
('6ca0088d6a43e836791ab98dd388b7d918dbe73abf54236f50bde84ce410e889a358423cae7d4d60', 'customers', '2020-10-03 13:46:40', '2020-10-03 13:46:40'),
('6d837c431829d9ec6a62eddb602825305e96e3600c0350973357d30ac881cf8f508dd86deb689bed', 'customers', '2020-10-02 16:59:27', '2020-10-02 16:59:27'),
('6e282585c1654358114dde1960228f80426b39249daec6c9dc92e9081cfbf2b6794dbcd60694d9ed', 'customers', '2020-10-12 16:52:07', '2020-10-12 16:52:07'),
('6ea7d971e1b6c64e49ed8d9a044522675a6bd9af3b51c9e16fd79e003ee55413a3e484bbefba82d3', 'customers', '2020-10-03 13:52:50', '2020-10-03 13:52:50'),
('6fdffa774cbf3aefbbaaf3afa3de35e8366dd59a04aeabf9a57edc17ce6107ca76746ae1465ae00b', 'customers', '2020-11-02 08:01:39', '2020-11-02 08:01:39'),
('72fa1063ea73980e63f85ab4105cc642292f902b80439fe44704710c3d530e58d06ab2994ca7825b', 'customers', '2020-09-12 15:05:22', '2020-09-12 15:05:22'),
('73834682991c0c66a0fc4dd8650a0694df00d47087e00fb90d3b45f0fec39b0b10c8344f9e79e81f', 'customers', '2020-11-28 15:19:21', '2020-11-28 15:19:21'),
('749e81d00b5d464565fb186d32a8028de6eca101e5ab11f1ecf044fd718b46bee46aebcd4d01897c', 'customers', '2020-10-23 03:03:30', '2020-10-23 03:03:30'),
('74af8f2f82553db2c4eaf492d3057c8076e3ffef72663b101806b0da7abb9a10464c690d4227bc9d', 'customers', '2020-09-12 15:00:21', '2020-09-12 15:00:21'),
('7561e43989168f249dc89f1b5c8f348982462e3c6919aaa794be9e4d72c079d156bb73d9f2ebcdf6', 'customers', '2020-11-29 15:49:50', '2020-11-29 15:49:50'),
('767156c28aa37af32f6a74ff538488bfd9c7e64ab826943896d7413a06c9e2f697be9256d8b8f0c6', 'customers', '2020-11-15 18:57:40', '2020-11-15 18:57:40'),
('76967147e73a29179f895d88e722a2b4e5f60d58f38efb38720cc13fc5e5ea4fa3e85473114f224c', 'customers', '2020-11-13 06:44:09', '2020-11-13 06:44:09'),
('76aeb2202df2cd0a85e8d343af7843b0212438cafd9316c4501a40b34988aea76d83a092e669d600', 'customers', '2020-11-07 10:42:48', '2020-11-07 10:42:48'),
('76b02a38081bb81c74ad822770690789eb12dd597a86fd0192eeeee0dbb9e727af133dc57e0da2be', 'customers', '2020-10-02 17:27:14', '2020-10-02 17:27:14'),
('76ce457e5b0f76846e51f7e9c8b7e5f613efcd1de77386644de3ba1635073be160328525c437d660', 'customers', '2020-11-13 07:54:45', '2020-11-13 07:54:45'),
('76cfbc0a78cf3409dc8384dc35d9ffe97da4902b19307f75158670a4da3b033b7046531c9610bf3f', 'customers', '2020-11-03 06:58:26', '2020-11-03 06:58:26'),
('790fcbc8a7f72e10ded03993e22882926951f1002bd8f8051e854990cdcbfe561ad02fcd04fcb708', 'customers', '2020-11-03 10:02:14', '2020-11-03 10:02:14'),
('79ca8f1edd577fb9c203f03604ff38fe4bebb638911f83179129070f05a0b7c646a0c95a127450f6', 'customers', '2020-10-05 07:21:25', '2020-10-05 07:21:25'),
('7c771a06e32907a90d168b48771a684e6e5fc64251a693d2095d82fb0582c3b2fac5902ecea974b5', 'customers', '2020-11-03 13:52:36', '2020-11-03 13:52:36'),
('7c932f30f44bc126e4d7513dd3df864a0f1b790e07779051027fe6a45ad030b1c5302ec7a9533568', 'customers', '2020-11-07 10:57:45', '2020-11-07 10:57:45'),
('7c9c7c206a7267b4adabf0dc8352a9d4064bb6e9d8a4867e3da251a53d0799530434672b2c91b830', 'customers', '2020-11-12 16:02:48', '2020-11-12 16:02:48'),
('7cc2982b5eaae7e4571c07d6b4fa1cd73ee9582ec9bf2831c334fdedca5adba864184477fcddfb5d', 'customers', '2020-11-12 16:02:12', '2020-11-12 16:02:12'),
('7d4be409fb4b2419fa565ca053217d6eb1a56a1d01f773596132b1f976e61c435464a8b26076b75f', 'customers', '2020-11-13 05:53:42', '2020-11-13 05:53:42'),
('7e69de9a600a07f460e4b55f9ee656be52d645277d67dbbd177dffa7f3b5e472b69c297cdb9b6134', 'customers', '2020-11-12 16:00:55', '2020-11-12 16:00:55'),
('7f420bf88833f8ab45199660afba32b6ddafcd2aeeecd50777defd6b104ffcd619507cd1929238c8', 'customers', '2020-11-11 14:42:06', '2020-11-11 14:42:06'),
('7f8d419cd7b81153aa233ee75d2c144f83799003b91623da054edf16076e83329f8494f23a1abd58', 'customers', '2020-11-04 06:31:30', '2020-11-04 06:31:30'),
('812b738bd4e1fa61b2472e91ad98f38c9394ac5b576525f0651c20c0b58bdaf4bb1e7ec53ecdbe96', 'customers', '2020-11-18 17:30:17', '2020-11-18 17:30:17'),
('81c7b7a89ce81e929f48938dd5bb2ae1a6e71af43b50d3a499d2807fa5ae9fe2bfc1a2509aa1d93b', 'customers', '2020-11-26 06:09:06', '2020-11-26 06:09:06'),
('81edaba7c4d94e7ec8aad5a6f1ca3a0afda15fb6634b3fd98ac33dbe3ad5ad5d2c715bf5a5245cce', 'customers', '2020-11-14 03:26:17', '2020-11-14 03:26:17'),
('81f416c665d0e49fab0d4cfeaaf49ccdfcfb3f380993409a68b4d1dd5ec5e6b6d1661dc5a6b34c4b', 'customers', '2020-11-29 02:19:43', '2020-11-29 02:19:43'),
('8281536f9ec328e74bbe6560c06249ffb1f53b8df7f39fdf781502a0a3610e1a65d1296e82b4e03b', 'customers', '2020-10-30 15:12:31', '2020-10-30 15:12:31'),
('839bb7d5abf78c846f708eef3af51437cd84f17a486395f9aa4781b212c4d649c3b708dd5a8ac945', 'customers', '2020-10-29 13:38:05', '2020-10-29 13:38:05'),
('84627a9aa07b208153af1ab8300c2fdfdf691ae9ee93d5f195d1683c47d6ac294418cd6e1cd4083b', 'customers', '2020-11-17 13:06:26', '2020-11-17 13:06:26'),
('8470eb021f7626e88987f974a7190a01badb866650dc7fb610ad57233d37d46bf5b4d26f5a9e0be8', 'customers', '2020-11-28 02:15:40', '2020-11-28 02:15:40'),
('849cd3466c49f98079e74b0ac2a89f1da32f33c3b00a8506ca3bc9bbfe74c66e67f54c21a4b85037', 'customers', '2020-11-29 03:57:17', '2020-11-29 03:57:17'),
('8602244a6e4adb526ea83d239ebe617b42329bdca66455174cd6b9305c16180a24a5ad9987098ca7', 'customers', '2020-12-03 12:24:13', '2020-12-03 12:24:13'),
('89b571f83d704a90da461d116e4ecf368a363f3787173586dabfcd5f4dfc70578b5dc50f330930a6', 'customers', '2020-09-13 11:51:22', '2020-09-13 11:51:22'),
('8a1c5eb70b26eab1fdb3f86436075e44a887aa6730a60292fdefb371864fb6414315ff0a0d80d83c', 'customers', '2020-10-08 02:57:19', '2020-10-08 02:57:19'),
('8c20f309390b912b6d6eefd111cacee4494a47150a22712640736645e2424ac52cbdb306e7383147', 'customers', '2020-11-29 15:03:43', '2020-11-29 15:03:43'),
('8d0c90837069feb8c8618cb020843eb1b5b107dc4fd67bcdb248c977092a8b0497599e151603cff0', 'customers', '2020-11-24 15:54:41', '2020-11-24 15:54:41'),
('8d2e42fef576d20ddfff2aef6d3c29644a4a808e2c7f4dbf46596e8dd9c7e369cf54f664d5dd6680', 'customers', '2020-11-05 09:02:22', '2020-11-05 09:02:22'),
('8dd4edf067f19214f8a55c3efc0b410c8d415fe3e2b14f3bd4e392f052890a3f99a70a1493aa8912', 'customers', '2020-11-30 15:15:10', '2020-11-30 15:15:10'),
('8ddf814c7719e2ac2e70c46e975f691e151634e5eb86b0594e6f58fe44baeb10e830bc0dbdd90155', 'customers', '2020-09-13 10:40:39', '2020-09-13 10:40:39'),
('8ec3e78e62d81a4b2bc21df2bbc71c6c394c9d58fc5743296ad8dfa74425391e1a48413253dcb18c', 'customers', '2020-11-28 07:34:36', '2020-11-28 07:34:36'),
('8eefadb4e5bad5439224f3949f363fd315abf6c2012bcd2cbf1f567fd9819aa4c2fc24f9d9a39a96', 'customers', '2020-09-13 10:40:40', '2020-09-13 10:40:40'),
('90ee754608268d54a76bbbbfebd95eae11a9bb4164d216f21bc330400c635584f0030eed6daa9dfc', 'customers', '2020-12-01 11:05:06', '2020-12-01 11:05:06'),
('923ea6b18cc2487dbad090887a4b504e7f69a2b00fedf526a6c0819113a7a7b9b74a375b21076f92', 'customers', '2020-09-17 08:58:14', '2020-09-17 08:58:14'),
('92703d1a17ac9af525c1042bf6cbbbad1e67240c1c9860007ba3d9a14218b455a08de473f4b44e26', 'customers', '2020-11-22 14:01:35', '2020-11-22 14:01:35'),
('93399a803bbcea6883dbfe0ed0e506f488c19c2045474bc9718294ca5c3baafe70bd8be561cd72d5', 'customers', '2020-11-26 06:08:46', '2020-11-26 06:08:46'),
('934bb86ebb415bdc38c4c2bfbe7a8bcddf5c063699beb7e7c0f1ed5a9b8796def7b277b00458d5b6', 'customers', '2020-09-09 13:05:09', '2020-09-09 13:05:09'),
('936fff1920b6745131353461ab1aea7344ba19d635961e208f65018fd6bf013698bf87b5f7d062d5', 'customers', '2020-11-23 07:17:35', '2020-11-23 07:17:35'),
('9381f37059d118721d082c5ea70378623f0ce0f40dee9d4c2ad0464eef1945a5819b039b939b9ca9', 'customers', '2020-10-30 14:41:37', '2020-10-30 14:41:37'),
('94be0e137ee34243edca37a2807afc2fa1cca2e07cd4766e421bec039e6c564fcfaf4c78b795ac96', 'customers', '2020-10-24 07:39:31', '2020-10-24 07:39:31'),
('94c2792ddec2cf77be1b0e6df77105019da184ebadb5c7c123953d583b2ee802a17928ddbaf3f7cf', 'customers', '2020-11-07 10:58:05', '2020-11-07 10:58:05'),
('956f392a94af79c88e5a3acae7f7d7d0013c45e0f3947d9fdda214d5e766222d8ca5cd1905ef5635', 'customers', '2020-10-30 14:51:50', '2020-10-30 14:51:50'),
('95e9b0822f1d0421eead0146eb5e99e5cc7f3f7d59d372304c2e41c2756de988f740119fd8f32d72', 'customers', '2020-10-22 15:46:29', '2020-10-22 15:46:29'),
('961d58ee12a0ed1ead96133177b2db6a694c7ac679f84d891240aa08585c785e9ec150d59ea023ce', 'customers', '2020-10-02 15:53:34', '2020-10-02 15:53:34'),
('97103bc1d1204ef082a88ffc6f57c85b2080b031730a3ad60f5a129c91863014d492402b57c719df', 'customers', '2020-11-24 15:55:46', '2020-11-24 15:55:46'),
('9800de5662d7e7d4bdbecd14397723d1cbf5c9166386ac4b0a6a9eed69ec78bba99b3c983b33846d', 'customers', '2020-10-21 07:57:51', '2020-10-21 07:57:51'),
('9882ceaf0bb036f1e6d9a11137eaa459cfc2a71a4a43c27e8844baa07a933973cd5f14f991e60f7c', 'customers', '2020-10-17 10:49:41', '2020-10-17 10:49:41'),
('9a3e7b14c4653b4ff7e0b0505630516381bc7a2399ae56caa1bf880e563460b4c2b8fe18b10ca8be', 'customers', '2020-10-07 10:54:33', '2020-10-07 10:54:33'),
('9a6aec6bf3b84701f044aa8f4e81fb9ad3e2c5104c3fb67459803fba6c914d18be030ac400199fd1', 'customers', '2020-11-15 03:50:32', '2020-11-15 03:50:32'),
('9a831d70c4f66c79f58574aa1787e88df64d2dd386311a598bb389d9810492cfc3d596eaa8ce0224', 'customers', '2020-11-23 07:17:39', '2020-11-23 07:17:39'),
('9a881948217531c18642ddd5c5d877a8b50c2f71a72fa6109b6a02b3639dbb62fb7de51984e56126', 'customers', '2020-11-18 11:09:37', '2020-11-18 11:09:37'),
('9b5aff08edd4e1c6c7e259740c95a2ef50b642801886f743e89be18e31339491cf33ef687d7b12dd', 'customers', '2020-11-02 15:48:58', '2020-11-02 15:48:58'),
('9dfc6ee63bd84467a54772d2ed41c099e2c51bd50d6eb85de770f84287a7526ae71ace504576f8b2', 'customers', '2020-09-14 13:29:49', '2020-09-14 13:29:49'),
('9f13ad6a92d7e5d3238dbbe417b0d01ff5c0b40111c130cb168f670d9719b7087e01eb72eea58760', 'customers', '2020-10-13 00:48:53', '2020-10-13 00:48:53'),
('9f9d2c2e044935d74a935fa20b1e45a634c1e66461a75168d3b1ad5d1f63df908c0bf047276b1321', 'customers', '2020-11-03 06:58:28', '2020-11-03 06:58:28'),
('a018305e69e358e908c49996e41b0f1f4f612651bd181d6b496f50582ef39683b74cf3636edc8983', 'customers', '2020-09-14 14:34:36', '2020-09-14 14:34:36'),
('a0f68bea01d28ea814ff0ba8e6257d6575f94bc60c442914395bfdd2be25b5624579c4afebb798b6', 'customers', '2020-09-13 11:40:44', '2020-09-13 11:40:44'),
('a24c76d53c969d544451977d6e68b818528388dcb26e7f86e7d6aef2368f200a07e9a86120f060d6', 'customers', '2020-09-28 16:46:01', '2020-09-28 16:46:01'),
('a2be00e39d8e94fcdb3b2826108e41576caea5c3f54f666235b9c34ff03171d7c4d71e5ca69835da', 'customers', '2020-11-03 04:21:01', '2020-11-03 04:21:01'),
('a30cda22af08248756bf276f8bf2d341e15e54dbc129e1038733c0d7ee9f510207c25b85798716d1', 'customers', '2020-11-03 03:59:28', '2020-11-03 03:59:28'),
('a370e7beac86cbdcca8fe704af184489c3f1aea7c7783359f07f20655727870911eb9a81eb31774e', 'customers', '2020-12-01 10:58:47', '2020-12-01 10:58:47'),
('a447428df967784867722c4af1a20ba5c834e0f35f5d415d9842a63044b222e3e3ddc36dd1051cec', 'customers', '2020-11-07 09:53:35', '2020-11-07 09:53:35'),
('a46156a989dcdf8f44b028e8243bd814874e28955be8a214ed8db8dd015a85ef27090faa9370e208', 'customers', '2020-11-03 09:55:42', '2020-11-03 09:55:42'),
('a483372929fd244db9fc351c059d0dc9b6e6175642c512a77b0cc7de49fc47a56b130db7d33e3051', 'customers', '2020-11-29 13:48:25', '2020-11-29 13:48:25'),
('a4920a067a8c201d6a8b8be25539cf7b8f8a7f6c2acb437b50e89ff05551b88e39e91fe4a7b793db', 'customers', '2020-10-08 02:45:03', '2020-10-08 02:45:03'),
('a4a1fe56685aa87676c868f916662e81f67c83cc28d67e0eeb0cdf8d437e09513c7d830e4126918d', 'customers', '2020-11-23 08:22:38', '2020-11-23 08:22:38'),
('a4bab64dce3be08cce11e598f26124a9aa4834a8ef2d8a699d0e6555104541096d30b0f7bdc52afb', 'customers', '2020-11-21 03:37:27', '2020-11-21 03:37:27'),
('a5c1807650df43bfb91306b23fcdeab5b35411cfcfd861a5cacff8e9b4293de68d742de38c30a6fc', 'customers', '2020-11-24 15:17:17', '2020-11-24 15:17:17'),
('a5ecf39c0d54c499906143e39b1a68a2e258fbbac75ff6e5925fd50fe1d38dfabe4bd29856cc9db0', 'customers', '2020-11-23 11:59:30', '2020-11-23 11:59:30'),
('a620c94bf59fe273486f7f20984f61442ba3330083765f601fda9a1d8b0e6be65e5aba65fab36f69', 'customers', '2020-11-13 06:43:33', '2020-11-13 06:43:33'),
('a62265aedcc2809e0b6db2fbd6b44e37e4b885da2f06488a60cef253eccb3422bdea457481e7920b', 'customers', '2020-11-12 15:58:52', '2020-11-12 15:58:52'),
('a7131f85f66647c1e308b31e72841f2658c44683d771b03bdd0e676767c14c1fc92f41d6a6a8476b', 'customers', '2020-11-28 02:20:53', '2020-11-28 02:20:53'),
('aa654eccce066898f424ba96654500e2a96efe2175336177782d713689e82b9ed1d3792f4f28a873', 'customers', '2020-11-07 09:54:41', '2020-11-07 09:54:41'),
('aad1c3b825cd524aaa310a428b39a4e14d6b6be783b5979de8e90b2ec9e6b538606c901ee3312ddd', 'customers', '2020-11-18 15:26:56', '2020-11-18 15:26:56'),
('aaf45e64dbb22dbad6e62b85e218c43dae2f072b4e06edd8575e1d1ecad32fb795ee88a80c681f82', 'customers', '2020-10-17 15:48:44', '2020-10-17 15:48:44'),
('ab5f069e757e332e46200e22158326c1f9f769edaa96b6c0f4a3264c588278658a3ceaaa76ced5b6', 'customers', '2020-10-21 15:51:23', '2020-10-21 15:51:23'),
('ab834b5f9dedfc68dfc0bd43247228ce386a72a72c3c95a3c3d8d63097b1266e3c9b540b06e8ec10', 'customers', '2020-11-06 09:11:33', '2020-11-06 09:11:33'),
('acd6b83f74f9fe19712d26998323caceca1aa5665e665c017de6257153ce30223142074316c94fda', 'customers', '2020-11-29 15:31:30', '2020-11-29 15:31:30'),
('ade70ba42adea0458003b0f48d793bd69a285e2de7dad7b839661ea28d66e3fe3774e7216eba03e2', 'customers', '2020-10-01 16:39:53', '2020-10-01 16:39:53'),
('aff015c48f57d4b0454ee02fd1c9e6394e4f4bf638158f1ac05517ec399c97951ab137ee40757b6e', 'customers', '2020-11-22 14:36:29', '2020-11-22 14:36:29'),
('b0c9b35e93f5b2cdbdc36f05827d8089bb4af693d8b32f2fc0ff6faaf1af9b073b9ff58b9944a039', 'customers', '2020-11-15 08:38:20', '2020-11-15 08:38:20'),
('b1ce06d9a58611f4c9c0ebcee9a181dfbe854b575be96b5eee54c370bbf11b2ad9070bc1f70ae1a0', 'customers', '2020-11-02 12:26:29', '2020-11-02 12:26:29'),
('b2ac3f3e5dab8df64609459d785514ceaca880d3d365192ba2978b02ca197f58ae556cdc6e90503e', 'customers', '2020-10-22 02:56:10', '2020-10-22 02:56:10'),
('b40bbadc34809236273d521756de546161aea3ae05cf32d62c9720b400eabfb40e49f50120241291', 'customers', '2020-09-13 10:40:39', '2020-09-13 10:40:39'),
('b4137b24049a496be793df73a9d256cbe5896c414f24ec35e844f90f189c4b4d072712a98e81c5e4', 'customers', '2020-10-15 07:52:48', '2020-10-15 07:52:48'),
('b5b4fd59fdd8ee902c8fad7b6086ae0a7445a016543c05ce42d7dc987b8aa31a221cc54f9511c021', 'customers', '2020-10-22 06:56:07', '2020-10-22 06:56:07'),
('b5bac1de5f56a9027c1254d84da27496ac8791c83ec57db3b92ea2dd6c1a4af34fae90897615247b', 'customers', '2020-11-01 01:51:15', '2020-11-01 01:51:15'),
('b7124a26a8652b51715ce2ced0555ea720f729e0c75446af37e9a396c6a5c1cc17844a6460a43b3d', 'customers', '2020-11-13 11:51:46', '2020-11-13 11:51:46'),
('b738a5f9b15d25c41b983b2e3fc02a92a833cd2d3c14d5e57173bfc0c7f6664c0baed51259a3ba4d', 'customers', '2020-10-24 07:30:34', '2020-10-24 07:30:34'),
('b7a7413364143a24cd13077cc2bbc2e61386b18b39668595857927b7c87a03ae34501d14de5d34a3', 'customers', '2020-09-17 08:58:14', '2020-09-17 08:58:14'),
('b81fec6501a38a13a54ffd50cfa9e115fc16b0a68bd2c6a0592cdbc011ff8505569a70a86d5eef81', 'customers', '2020-11-19 09:19:59', '2020-11-19 09:19:59'),
('b844dd3c96d27a0ec316ca35b61054c00c79ed1815a6c5f80266988e155b6fcb82447f070625ea2e', 'customers', '2020-11-24 15:39:42', '2020-11-24 15:39:42'),
('b85205924f0d5f851844d2b1e274bc5faf9b23b4841dcf86185e795d8888364c6a0a35eac8472439', 'customers', '2020-10-21 15:56:53', '2020-10-21 15:56:53'),
('b857c76fb6ea77db5ecc974406ef175405253a3c925bae507483bb28df84013144dbdc639565e546', 'customers', '2020-10-15 08:53:48', '2020-10-15 08:53:48'),
('b8ca388db5685e97bf610164e8636c93b911abf3d66876003b33ba39122f4f3a7253bfc129e49ae4', 'customers', '2020-11-27 07:30:38', '2020-11-27 07:30:38'),
('b8dbec7b00a14a464e00fb96f5f1a5e30574548614346cbab499af03acc1dd575051872e4be89eac', 'customers', '2020-11-04 07:07:25', '2020-11-04 07:07:25'),
('b8eaed753665033e925cf5cbb22388725ea3634293cf1a961e38076dbec71f32d191e98ea7f25d44', 'customers', '2020-11-06 04:23:18', '2020-11-06 04:23:18'),
('b919ad20b70e9782d32e6b0fe323a882485a5d70df46c72eafb8dadafaa41b1f9e65599bb303dcd6', 'customers', '2020-11-27 13:24:59', '2020-11-27 13:24:59'),
('b91d75252c40db7d85dd00c894a3813e488c704ab844b9eda5d0e41446d5b051e56b516a048ac833', 'customers', '2020-11-21 05:08:29', '2020-11-21 05:08:29'),
('b923307d4adfed586a3f48c5bbb9cf725df82c7afd6cefc5286528d185268e962aad311e607b4a61', 'customers', '2020-11-04 07:10:50', '2020-11-04 07:10:50'),
('bb724e7e77e1e93a7414c7cd36752e8c9f54c5d1763ea467630fd0067eae81d6e6881d53202815bb', 'customers', '2020-11-29 14:23:08', '2020-11-29 14:23:08'),
('bc15eee7fdf85c49a258f10239b0d80bd0016690b4ab0cd6037799b22ea553871e8e7c82dd5d6778', 'customers', '2020-10-03 12:55:35', '2020-10-03 12:55:35'),
('bca0141f74cd6b6047fe81f1400c2a959bd19d98421d7ca13ea62e4354e8f8bbce504872fe94ef56', 'customers', '2020-11-12 14:21:57', '2020-11-12 14:21:57'),
('bd029cfe8e5a4b7ea4551b0369b41fe9e6c5f4fb2fb0065479092fc319468dd50d6dcd11d5fd5b01', 'customers', '2020-11-01 18:07:22', '2020-11-01 18:07:22'),
('bd06b728ba3dbba035167c3eccce0ab13f22395b0ae1d3790705264f13ccad8ef6ac2eabdbe563f9', 'customers', '2020-10-17 10:49:40', '2020-10-17 10:49:40'),
('bdbf5806a5833c0dd58a339dfb5b93ef3c904b66dd8a59ad652b9c7e5e2c03daf52b3ccbd329c70c', 'customers', '2020-11-25 12:55:22', '2020-11-25 12:55:22'),
('be3385e2873374c8c74ccc6e95c48b2fe9759a0864b3a87e9034c502b2009cba963a7d8fba3c9923', 'customers', '2020-11-17 09:55:25', '2020-11-17 09:55:25'),
('be56f714acd8ec079080b54fa891217213fa13776109d81c4e316c7e9365ee423a000adca5f69bec', 'customers', '2020-10-02 17:05:50', '2020-10-02 17:05:50'),
('be8800ccc804b9d97f2344db323748f4479155ca3f25504b87e07890f8284b0f382f3087a38a4ec9', 'customers', '2020-10-03 03:09:46', '2020-10-03 03:09:46'),
('bed390d91b1ceec8ff299aa48b7657f890abec7d838f7003f9066b1e904099ffc2f280d31d080aa0', 'customers', '2020-10-05 14:21:31', '2020-10-05 14:21:31'),
('bf06389e28d0ecc6ccc30c75d787b1c66a333d99080cf798c8e9b110ab4246fc2834eb4b4e26f0d8', 'customers', '2020-11-30 13:14:55', '2020-11-30 13:14:55'),
('bf275c4ae3050e7d962621ac04bbaab9f13ac913309793de02ad4784f437e9a60a3244d9ba930f10', 'customers', '2020-10-20 07:02:01', '2020-10-20 07:02:01'),
('bf349546147793e2158eee40e5a2e4445feb2cf52bfdd9d4c19495e96ceac90bef729fda392ff216', 'customers', '2020-10-17 10:50:33', '2020-10-17 10:50:33'),
('bf3f269113592c5f93a94039aeb809d205ffd03501fc7cbded835d4be8fb7d02aa45a5b5b52abf81', 'customers', '2020-10-30 14:36:54', '2020-10-30 14:36:54'),
('bf4106de47ef53c4d56960dbc87afa3a886027d8af88ead026ea637bbd8fc9eab01f99070935224c', 'customers', '2020-10-03 14:15:58', '2020-10-03 14:15:58'),
('bf7f8de0e826de1b76796be5f9b07806fd89d75ca34fd38a6db4972ba3e56094ce4d062903404362', 'customers', '2020-11-02 07:57:33', '2020-11-02 07:57:33'),
('bf9970c3ef35c872dd334fe6c21d581fe518e9498632d6eb6fe4e79f3506bae37b4b658662656ba3', 'customers', '2020-11-18 02:11:20', '2020-11-18 02:11:20'),
('c033afe2d03ac53beeaf69a13b694d3ce89ff58358475cf7c999290b5743380a4f984114064634c8', 'customers', '2020-11-07 10:41:06', '2020-11-07 10:41:06'),
('c103b6b66b364fd5b802a07f541ac476fafed643536ade4e3af27e14d06c29ab60d504fafec17110', 'customers', '2020-09-12 15:03:43', '2020-09-12 15:03:43'),
('c12a7499d3553ac37c499945349f7bf2b140e4e8c8f032a2caa6aa56735f71fb39927915555eb1cf', 'customers', '2020-10-30 04:21:38', '2020-10-30 04:21:38'),
('c1afc0bbf5059f933995e0d228f877555a9c7828bca00b7a67eafb63c803e6737463fae53781b240', 'customers', '2020-11-24 15:36:30', '2020-11-24 15:36:30'),
('c1f0044fc32fa507747d0ad64296e27ca15d9db0c61ce6a2e6401fc5e91e510b293cacd88facf4f7', 'customers', '2020-10-10 12:58:23', '2020-10-10 12:58:23'),
('c372a3b1f331aef4d51d75248e18842c6a7b6430db5fac359733a65a1611d533cbcd8ee410b4f8a5', 'customers', '2020-11-26 06:08:46', '2020-11-26 06:08:46'),
('c3a04d977d6b668174fa4c39a1c873937ddc419732e4474caa3a150b79202f33dd9dd63f7dabf3fe', 'customers', '2020-10-02 17:03:48', '2020-10-02 17:03:48'),
('c46d14b086a4112dab1f41cdc3b2edc431348122384370fbff357852cd883b513f7db679030614c5', 'customers', '2020-10-15 07:53:38', '2020-10-15 07:53:38'),
('c486616c6eaf9885c143505f8c6cf400e9607d9d2a1d0e3573317f388e4ec0ed950ff8503a6b3523', 'customers', '2020-11-05 05:32:35', '2020-11-05 05:32:35'),
('c539c23daf6ac537de334bdce4fb5644714778ea507544d4cb1c5292d3b65cbc897e1e232307bcda', 'customers', '2020-11-26 06:08:46', '2020-11-26 06:08:46'),
('c57a794fe9780e7dc8aa2d15e38d7a6551b35d39fc75fe4a457f818fbe73a9d30e9ebe6e1776eab7', 'customers', '2020-10-22 16:20:21', '2020-10-22 16:20:21'),
('c71b9d1b39a8ab39b386f56cb743bdc692836d2cf3e5ee4ff2f0243888c71db48555d63c1bb5a7ca', 'customers', '2020-10-12 04:24:28', '2020-10-12 04:24:28'),
('c7271228aabea9bcc4fd8d8c1a8fe6ea9ccf0e1dadbd589e4774092287807d69a0d0592ffc003daa', 'customers', '2020-11-26 11:35:27', '2020-11-26 11:35:27'),
('c7d219abc7db0b0fc7bdfceb05af8794a7f35c843755845b3f38b7c4bb5361e0a241c754a9753250', 'customers', '2020-11-13 07:54:46', '2020-11-13 07:54:46'),
('c7e3e9a7cc89840181bea00a2b90f7d501a63dbe17fa08fbc47ce85e081b5ae02a6bb0775803e229', 'customers', '2020-11-15 08:38:43', '2020-11-15 08:38:43'),
('c83c99351943dcc9cf74ce29065dcbf8aaf9ef40d7e1b60081c7090ccc1ca7bbe20501a6ce8cc788', 'customers', '2020-10-30 15:11:12', '2020-10-30 15:11:12'),
('c86743e5b5b0e4d6544530a2d35a384452ba4951d73f34de4341d3fb2cd257b276d787e1995c006a', 'customers', '2020-11-13 07:06:29', '2020-11-13 07:06:29'),
('c896bfc0c6321c94e41aa830de48d0a180b44f9312f55ff58e7fdccfe76b367481234715acebdc07', 'customers', '2020-11-20 09:51:35', '2020-11-20 09:51:35'),
('c8fe304c207dd00679febd6c1ee975d8defd2b9a3a18e14f68109a98b48896488c4c348fc9b19786', 'customers', '2020-09-12 09:14:42', '2020-09-12 09:14:42'),
('c9697ec450bb45d4f7d119ed796f5325454358c705f02d00c62ec4e81b2150db0dc434ea1f8a4ddf', 'customers', '2020-11-03 12:10:30', '2020-11-03 12:10:30'),
('ca6eb25e4ceca003dad2545ae03eca3747a2bb6cfefd1dfcf37234de7950d264b7795bee118a65f2', 'customers', '2020-10-13 05:12:52', '2020-10-13 05:12:52'),
('cbe53d35212500146a5045fcfcdb4253c687ee51bc8915c701403964421de070d9dd7929472d7b53', 'customers', '2020-10-09 14:59:13', '2020-10-09 14:59:13'),
('cc1abbd1cf3493adc5cae60f0aa8174bcd2b5884e2d60b48cb856e92b23a3df5b9308dc11dfa66b7', 'customers', '2020-11-03 09:55:42', '2020-11-03 09:55:42'),
('cc763a2fc9596e1498017a775b48cdfca8c241b411f209e4abe1916cc971fdade83029eab4619012', 'customers', '2020-10-21 15:15:07', '2020-10-21 15:15:07'),
('cd26a434d2471f2a316d8251021044e88d1904a393e76b5350d50535ea7010a2066a47bf3630d72e', 'customers', '2020-11-18 02:10:27', '2020-11-18 02:10:27'),
('cd575eaa1424672c76cd12490104cd4d9732a7f45835681221b5379adfc00c743043266c396247bb', 'customers', '2020-11-05 13:50:31', '2020-11-05 13:50:31'),
('cdceff9986ca7a1ca61cd14c3749f8b8f9bb945ce4a05b50ce5eff8dc2c7605cb3fd6531610bfe42', 'customers', '2020-11-13 07:45:28', '2020-11-13 07:45:28'),
('cea63a3311d055bcf8d9ffb5e11aa0619e13506f90e38e8e4cc71ed977fd319884ee679cbe034216', 'customers', '2020-11-11 17:57:39', '2020-11-11 17:57:39'),
('cf178c1bff688345c151dfadf14d59f872af9e54a127fc4db41488498839956c5470a20685c1726a', 'customers', '2020-11-11 11:30:17', '2020-11-11 11:30:17'),
('cfc56df09abe4545209ec7b11a03d78b244ec6a3a9e45e0d4ff4fcd1e0045528fb40801781448197', 'customers', '2020-11-22 14:41:07', '2020-11-22 14:41:07'),
('cfda971ef2274aaea3cf5859927fa46064e61f2e5e3a0467e84da8ca46e5bba8da12359c072def62', 'customers', '2020-11-04 13:18:53', '2020-11-04 13:18:53'),
('d0e3477c267dbcd0d01f3f217fd2a131dfeff1a40bd0057490579529aaf4e4f51cf4d222cfd8b95a', 'customers', '2020-10-07 10:59:28', '2020-10-07 10:59:28'),
('d191982b90d21f1201e5a76aa111fc17b209301ad20c3358fff7c63a59c64a70f53fb50c35b16ed6', 'customers', '2020-11-08 08:32:08', '2020-11-08 08:32:08'),
('d1ab1100938aa976ed8fcb8466dd8709ab85acbd01a52d20184596b09bdf4bcd1a6390ba328944e9', 'customers', '2020-10-10 06:11:34', '2020-10-10 06:11:34'),
('d1c1c72dc72c1b34c2b453dc370e8010b0ba13b646b3f2d2de56631997d2136e878426b3f13539e2', 'customers', '2020-10-13 02:18:09', '2020-10-13 02:18:09'),
('d21e15a60b6ae1eff98651255f0493e6c318571740da4dbb186579d0d4355956fb26d46bc96c9bd3', 'customers', '2020-10-04 15:51:35', '2020-10-04 15:51:35'),
('d2ca0b82b7159c25ecac781114ad19d01951829342e8fd84324bc9aa342f97620cf8b31a463d8efb', 'customers', '2020-11-01 12:05:39', '2020-11-01 12:05:39'),
('d30348d70009417629f11884b86c47e2aa06afa678c8e4d126191b1f33825c2c0af238ca0a63d93a', 'customers', '2020-11-07 10:58:54', '2020-11-07 10:58:54'),
('d378fefb0e90807c4a12fee54ad7a274cce9d3f24bd648f0b68b6e16381b9901033b98d5aa9a22ad', 'customers', '2020-11-01 14:39:24', '2020-11-01 14:39:24'),
('d38c7403956608789dc6532da28146bc7fb1904ca567ad99c23c3f92a9112efd7b0664e248ca61cd', 'customers', '2020-11-03 04:20:50', '2020-11-03 04:20:50'),
('d425a389ad0d47e5ffdc112165aaac74b2ffd4d1f68f4ffc018172560c55143d5ee40f770d78b5ee', 'customers', '2020-11-29 16:07:59', '2020-11-29 16:07:59'),
('d451c820d6ae4f20e37bc51e090100f0596fdb50217e7e93ea0596028114c427c242b18188df60bf', 'customers', '2020-11-01 14:39:26', '2020-11-01 14:39:26'),
('d4739fa83cbd76fa37a4b7820623404e2c1658eaea39eb4dc603d32b8d98bab04c81f5191ea1a834', 'customers', '2020-11-14 03:18:38', '2020-11-14 03:18:38'),
('d4741b679de2b01f9099891f28044fb0080326fdc85b71d8fa9a03bd21383472217cfdb7f36c997a', 'customers', '2020-11-07 09:54:10', '2020-11-07 09:54:10'),
('d4eae144127b00ebfb4b3a18bbfa02a5ae2af34c4e02c671757c59f4977256ff1bc0ce4b09909496', 'customers', '2020-12-02 15:00:04', '2020-12-02 15:00:04'),
('d5e092ab8c9777bede129d4f7425313a69218fd033b7c21fbaded48a0c621083c871a5a4a07fa61b', 'customers', '2020-10-13 07:30:51', '2020-10-13 07:30:51'),
('d5e3dcb1ee120edb0020cc005665eaa2f991d5b1b0b916f3370476bfabf61f1631b9fdfb0af544ca', 'customers', '2020-11-12 14:24:14', '2020-11-12 14:24:14'),
('d6846e8fd143bfb55d293830436a8aecdf79fe1ea69ed6b10eef41543a5f84aa9feb23c003327d18', 'customers', '2020-11-03 07:02:21', '2020-11-03 07:02:21'),
('d695e6d5b4dd0c57b1b39eb536d076069ff313b7a326ca9715fb200499211e756dbf1d50c76bdeaa', 'customers', '2020-09-13 06:23:02', '2020-09-13 06:23:02'),
('d6b896d17841aabb08598e9a0daf1cc60bb1c8ca3caf3d146255a995f82fb6954f8d449dad1d4930', 'customers', '2020-10-03 13:49:36', '2020-10-03 13:49:36'),
('d6c219a5d83bd4895b29dde5584853d1049bf6ca6eadfac9d002ab1634acf73054f3471784d72b5a', 'customers', '2020-11-13 11:43:29', '2020-11-13 11:43:29');
INSERT INTO `oauth_access_token_providers` (`oauth_access_token_id`, `provider`, `created_at`, `updated_at`) VALUES
('d7ed0fd5bbf3c25f58625e7cb99f2d1b6710c1125d6f9f008bd77dc75ec9fd9e38e4cc06811f190d', 'customers', '2020-10-02 15:04:59', '2020-10-02 15:04:59'),
('d7f4392db05e48b6550227994b1d048b8d37ce8c7a6c429c5222408314962dadc895b6234adce2b2', 'customers', '2020-11-20 13:05:41', '2020-11-20 13:05:41'),
('d89263bea765f704526d97d0d23d27df7112056f50dded33c870324029aa8a8e6b15432c2b2c2ce6', 'customers', '2020-10-15 07:57:19', '2020-10-15 07:57:19'),
('d9203043eafbce3cb4bb2a0783c568f41231de4507001e7187160c79bec50899544e7b88122bcd7e', 'customers', '2020-10-09 15:08:54', '2020-10-09 15:08:54'),
('d981c35b815499f6f6a70903972b6f135e757ae543448bc6aaf80799935d937a0c7eff1bf7f9e380', 'customers', '2020-11-25 12:55:53', '2020-11-25 12:55:53'),
('d9908f3a149a09e77ea8aec843b7c5103eca119527d790da2e7c4e6a8dc0143102e0aeb1901b9145', 'customers', '2020-09-13 10:40:42', '2020-09-13 10:40:42'),
('daa82811e497ed19df839abe757a0dd486081083760f4a3ee89f19a322c0e8db6a4c8dc13b2bb479', 'customers', '2020-11-12 03:19:28', '2020-11-12 03:19:28'),
('dc8c9b7c3780df0de5d9e403f30abc017cddc82fa62939cf8e2e60c0d5d64857f0c5996deda283fa', 'customers', '2020-11-22 13:55:46', '2020-11-22 13:55:46'),
('dcdb3ffe28e1ba2a3e36b03e41ad313bde484cae30f6da325f5cd0b3414679583a0e120fdfe89a03', 'customers', '2020-12-03 12:31:27', '2020-12-03 12:31:27'),
('ddd90725ef821c56d2b9e2641f0844006703bed52306d7d0336dca85522d680628c0b7fc40fcbd59', 'customers', '2020-10-12 17:27:34', '2020-10-12 17:27:34'),
('dddea4dccac6652206b06992c9f77c672a585c3ec70759343cb42839a971e92f94d742922d002c2a', 'customers', '2020-11-29 13:49:12', '2020-11-29 13:49:12'),
('de443a2156ccded366f302cd26848c2134b681dbc72b5f0936e98efa0da95d6aeea4c95cd487f038', 'customers', '2020-11-28 11:42:41', '2020-11-28 11:42:41'),
('dedea5798bab6200a1ce496eb1293b43f6d0de635e518395a306d501eebae80c1d7e8de8ae80ae7a', 'customers', '2020-12-03 12:27:44', '2020-12-03 12:27:44'),
('e00c9e301b74883a0439c5032470fdbdb2027efae97c5922d32d2288048487bf786bdfd3cf5bbf75', 'customers', '2020-10-29 14:37:49', '2020-10-29 14:37:49'),
('e0a7e187381423ed2623925decd58e02d17a23d8873709277edb32c29057be9e92ec434446938720', 'customers', '2020-11-11 17:53:43', '2020-11-11 17:53:43'),
('e11e2678339f89a0ca2e5be1063d89d9e373343a0cea0d142cb7c2a472fdb48e4519abfa60bc8431', 'customers', '2020-11-07 11:00:04', '2020-11-07 11:00:04'),
('e12027a1a9cb05389b71bf2e4aa211db026b591fd4ea951c193cecb251d94e14f9776a428b936320', 'customers', '2020-11-12 15:59:53', '2020-11-12 15:59:53'),
('e14629d54d19b3e9e225298dcc9cf00e7a2e886caf483201e557acc337f48b2cddd928f12ee06910', 'customers', '2020-11-07 13:04:21', '2020-11-07 13:04:21'),
('e15f89f9bb209d0f66c99165aa7f8d2e1a281092921cc543d472eb75465fb0be2127aca5e896dc3b', 'customers', '2020-10-27 22:39:17', '2020-10-27 22:39:17'),
('e1b0834a166071bb03b9e93c91581eecee711b863136b6f6f3bfbbdaa113f7abf346205530c08b22', 'customers', '2020-11-19 15:11:19', '2020-11-19 15:11:19'),
('e282afa5a6853f2dac3eba8efcdb3e4401e62b71147e184369f44247bf51794d4ce7af01038a3e0e', 'customers', '2020-10-21 16:05:45', '2020-10-21 16:05:45'),
('e5968ce0228cf89deb331b072d1dde3fe4e057cce647f4964f25ffa72a377d6e9c5603e0f179a040', 'customers', '2020-11-29 20:07:46', '2020-11-29 20:07:46'),
('e6ae6b9b1b92345f3b4d375eb76be29c601c2cb9feebad85042cb2b243ae8e4fee6c8c048ff1cfa9', 'customers', '2020-11-29 15:43:47', '2020-11-29 15:43:47'),
('e71718a6f772e73d66374404e0d3c8944bbef181ae001d3071113afc3c732e4219c2c07e1dbf06a7', 'customers', '2020-10-17 14:29:57', '2020-10-17 14:29:57'),
('e7ba9ee31481ef34624ddb438efc398e83bb9d834a2cd914ece13ec0aa4634a95d08b7322a723e89', 'customers', '2020-11-07 10:49:47', '2020-11-07 10:49:47'),
('e852fb8b46ba5e9c3bdce4b5bad854eba591b1f1f2e68764a04e7d5eaa78dc40cc2a1c744654bdb6', 'customers', '2020-11-08 12:39:33', '2020-11-08 12:39:33'),
('e8781172cfdf5ba9809142168059144f61f806a7464242038b3492f194927ee3ef3f41a5ab89b1e2', 'customers', '2020-10-17 14:31:48', '2020-10-17 14:31:48'),
('e8b549ce51b7d5fa5e2ef994764bd96c3178f4aeefc053ce1dc7a31e58f1312806c2fa3fbeae3e7e', 'customers', '2020-11-20 09:46:11', '2020-11-20 09:46:11'),
('e8ef2f1d0adeb1cb2b1cafed67ca5001662559871c70169a6c1317591137c3e0f877a91af4b40e84', 'customers', '2020-10-09 16:40:47', '2020-10-09 16:40:47'),
('e9244e8f34e4daf8ae9599a2953db914b37f7d2afa374fad847bd4e22d47f83584a285e2bd7abc79', 'customers', '2020-10-02 17:24:01', '2020-10-02 17:24:01'),
('eb85c695e282ed7ac41918c760f2c8037d58e227c0c521953116e42fb4614a277b76b6a1795a3a7e', 'customers', '2020-11-03 05:06:29', '2020-11-03 05:06:29'),
('eb8ea9d8868a9e6573e9be5484d1d8dc372586ac2a87ea1883c876e4f6c67ea2c0301511e36c2491', 'customers', '2020-11-18 07:35:05', '2020-11-18 07:35:05'),
('ebaae56277f08ed52ea27a17d51a6701b109dd36b332cac065183b1f3943a192045faafe623be849', 'customers', '2020-11-24 15:38:07', '2020-11-24 15:38:07'),
('ebcad0cb58970a4dcb0a3bafa3c4cb83b78c60c1143fd4c4d08292f103f302311ad8481f8894c8ad', 'customers', '2020-11-22 14:40:38', '2020-11-22 14:40:38'),
('ed35cb6a7562597a2dd608e5c8c4e1aa9de212809d0dad0f6f855fe3e75028f95fee7d850215f701', 'customers', '2020-10-10 07:43:33', '2020-10-10 07:43:33'),
('ed3efed94672cadbc57a694e20bd15ea9039157cd1259b56c56c4bb913a09ea42aa090764042a22e', 'customers', '2020-11-02 15:15:53', '2020-11-02 15:15:53'),
('eee0a69f54c4e144b191ed773284e0682097ae4bb5e8c03c631539317aa92769ed261372b58a6205', 'customers', '2020-11-14 03:23:57', '2020-11-14 03:23:57'),
('efaab3ac21e5dab6f9b7ac2da1e64d2d26c3a75bd6a2015249b87bfb74a5bf8f71a83feb68d9d909', 'customers', '2020-11-22 14:34:56', '2020-11-22 14:34:56'),
('efaca106fb2a1e5197bf564b9a0772f07ba520185ee97f939db70fa333aa7faca263eaf8accc0215', 'customers', '2020-11-11 16:56:26', '2020-11-11 16:56:26'),
('f07b2ad3613e9a5f94f00a9709139aa19f9809046c480b3012a46c0ef25f53dd2666458aa4ae50c8', 'customers', '2020-11-22 14:03:05', '2020-11-22 14:03:05'),
('f082c83e2a2d608957bf0bbbc2879204ef7cbb70ec9c33a4ab15da14cfd6349760e451e671341a50', 'customers', '2020-11-22 10:32:35', '2020-11-22 10:32:35'),
('f10b2e8f06bd885a1c490cdef49da2844f70e027b756628834e8c5d1a013942108e21dda39cf60a1', 'customers', '2020-11-29 15:39:56', '2020-11-29 15:39:56'),
('f1e3c6c27622a0d0ca1a68c7ce61b392e48cd011001224bc1044d6a4f26cb5dc2481095978ec0a91', 'customers', '2020-11-29 15:29:57', '2020-11-29 15:29:57'),
('f34294c0be5c58bc153f5c7700e3be3f98d2dac91dc2f7286e2e4d8e9dd91530705a44110e1104b3', 'customers', '2020-11-24 15:46:32', '2020-11-24 15:46:32'),
('f3adbf4d3b6261961e2dad9ee1f6d76e47610ef2aa2f417d1c52e0529c347f975cdd9e3d69ed0719', 'customers', '2020-09-13 06:17:43', '2020-09-13 06:17:43'),
('f3cf1038975737b867fc849ac5f4d3ebdd2c81ef7d8a608514c61426537ea9dd88955751160f7bd5', 'customers', '2020-10-02 17:01:09', '2020-10-02 17:01:09'),
('f432046aa51d16dbd93d5b2efbcab3ad0e0881b05f3cc1de5cbb400de9b244bc1b976eb569c0dcf4', 'customers', '2020-11-24 14:34:27', '2020-11-24 14:34:27'),
('f4866fb288dc2aac75e0a050cbf5d3f5cf04b97fe51826f53b4a35d9da6ff460ea407392a2d3828f', 'customers', '2020-11-26 06:08:46', '2020-11-26 06:08:46'),
('f5af2eb7113d28dcc7df2bfaf6b36704f257517f2e2d5677bc74e7aca5f5fcf691c36070f105460e', 'customers', '2020-10-02 15:54:57', '2020-10-02 15:54:57'),
('f69855d8f69d2f0f576388cb53da6d223395ee69fcdb0a837ef3531992e01103ed720f5af9f6b226', 'customers', '2020-11-27 06:39:45', '2020-11-27 06:39:45'),
('f6b43aeeb8f95d35c5335238ec24431f5aa9ae9e30bac86dafb55f6728964b6462f98c1f1ed0be46', 'customers', '2020-11-13 07:45:27', '2020-11-13 07:45:27'),
('f7b1dec107c53d74f4a22d1fd550be0bb62e6f24e27cfa6101880001a094b9bc8eac6199bf748161', 'customers', '2020-11-24 15:26:03', '2020-11-24 15:26:03'),
('f7d9841bc2b3ef622f01a2435afe6e81d731acfd58c60d6022073d975f220b2e13770d97ead00042', 'customers', '2020-11-05 05:22:37', '2020-11-05 05:22:37'),
('f80e3ef706ce71101502d2f4151e4771f3199b8ec021cfdedeca8ace81a95fdf9ae5990ff112a8ee', 'customers', '2020-11-12 03:10:23', '2020-11-12 03:10:23'),
('f80ef824b37221ea25e434a14180d61e0bcb54a81454052d6a1a943b3d4336d5a9ca535ef274f260', 'customers', '2020-11-13 05:53:44', '2020-11-13 05:53:44'),
('f83311702ae0dd6320b48162aad37649c213920fbdf78b4dd5375119c06bb7606fd562b7377924ab', 'customers', '2020-11-03 06:58:26', '2020-11-03 06:58:26'),
('f8e46ab783eb97d8dacf9c3e44d4a8f908b9062b7b9e13e4d9a7c4b126372f6113b9270d3d3547c5', 'customers', '2020-10-02 15:56:32', '2020-10-02 15:56:32'),
('f98aaae340ca994d07ed1b2fbcaaab84ba8cf6de38317ac9be0a3d831798a74248dbaca8ab60869f', 'customers', '2020-11-23 07:17:35', '2020-11-23 07:17:35'),
('fc181fd2eed1415ce8800ef6833b893bca9f8ac0dcd7fd139090572bb5cf5b07fa42b1ea8f02edc6', 'customers', '2020-11-11 17:59:01', '2020-11-11 17:59:01'),
('fce53afaeea975ab4a351a6b4b341f46e5414d787afb0605f18b04e6d3a208c0e94ec749a6bb5885', 'customers', '2020-11-29 03:56:23', '2020-11-29 03:56:23'),
('fdda37ea8f914ef16cc4a7aaf4e83497a62dbb6355e83f1b8a90af12214730d74272e157fb64670c', 'customers', '2020-10-22 16:21:00', '2020-10-22 16:21:00'),
('fde603281360b1aebab66315abd0eca945167f51133710d87d56b4e69419f242a072ede92688532d', 'customers', '2020-10-05 07:29:01', '2020-10-05 07:29:01'),
('fe8e24f67383192e082845ff3981f770b5b22f6d629e63a1b40763c34aaf6305bdf90592a75def68', 'customers', '2020-11-11 14:40:53', '2020-11-11 14:40:53'),
('ff084492f15757d80c3eb2413767fddd96ba3e2c634a960a3bc6e2baf8c224dfba641f587cc75721', 'customers', '2020-10-20 23:14:20', '2020-10-20 23:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Daddy\'s Kitchen Personal Access Client', 'pzwjMyFv1N5Ak3C2rJPhABKvCjkNDfJFuHrQRLPm', 'http://localhost', 1, 0, 0, '2020-09-08 13:19:39', '2020-09-08 13:19:39'),
(2, NULL, 'Daddy\'s Kitchen Password Grant Client', 'XSAcLpOWAiqHmSkgnag6qDUAv1t4iJiwzb2nHb9Q', 'http://localhost', 0, 1, 0, '2020-09-08 13:19:39', '2020-09-08 13:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-09-08 13:19:39', '2020-09-08 13:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gross_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `net_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT 3,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_no`, `bill_no`, `gross_amount`, `discount`, `net_amount`, `payment_status`, `status`, `remark`, `created_at`, `updated_at`) VALUES
(1, 1, '#DK1', NULL, '780.00', '0.00', '780.00', '0', 1, NULL, '2020-10-04 16:00:54', '2020-10-04 16:17:02'),
(2, 1, '#DK2', NULL, '840.00', '0.00', '840.00', '0', 1, NULL, '2020-10-04 16:23:26', '2020-10-04 16:23:45'),
(3, 1, '#DK3', NULL, '780.00', '0.00', '780.00', '0', 1, NULL, '2020-10-05 07:29:16', '2020-10-05 08:40:44'),
(4, 49, '#DK4', NULL, '580.00', '0.00', '580.00', '0', 3, NULL, '2020-10-09 16:17:55', '2020-10-09 16:17:56'),
(5, 49, '#DK5', NULL, '2550.00', '0.00', '2550.00', '0', 3, NULL, '2020-10-09 16:23:48', '2020-10-09 16:23:48'),
(6, 3, '#DK6', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:23:14', '2020-10-12 15:23:14'),
(7, 3, '#DK7', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:24:54', '2020-10-12 15:24:54'),
(8, 3, '#DK8', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:26:44', '2020-10-12 15:26:44'),
(9, 3, '#DK9', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:26:57', '2020-10-12 15:26:57'),
(10, 3, '#DK10', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:36:49', '2020-10-12 15:36:49'),
(11, 3, '#DK11', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:37:17', '2020-10-12 15:37:17'),
(12, 3, '#DK12', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:40:17', '2020-10-12 15:40:17'),
(13, 3, '#DK13', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:41:16', '2020-10-12 15:41:16'),
(14, 3, '#DK14', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:41:57', '2020-10-12 15:41:57'),
(15, 3, '#DK15', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:47:21', '2020-10-12 15:47:21'),
(16, 3, '#DK16', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:49:19', '2020-10-12 15:49:19'),
(17, 3, '#DK17', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:52:03', '2020-10-12 15:52:03'),
(18, 3, '#DK18', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:52:10', '2020-10-12 15:52:10'),
(19, 3, '#DK19', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:52:52', '2020-10-12 15:52:52'),
(20, 3, '#DK20', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:53:17', '2020-10-12 15:53:17'),
(21, 3, '#DK21', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:55:41', '2020-10-12 15:55:41'),
(22, 3, '#DK22', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:56:14', '2020-10-12 15:56:14'),
(23, 3, '#DK23', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:57:03', '2020-10-12 15:57:03'),
(24, 3, '#DK24', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:57:24', '2020-10-12 15:57:24'),
(25, 3, '#DK25', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:57:55', '2020-10-12 15:57:55'),
(26, 3, '#DK26', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:58:02', '2020-10-12 15:58:02'),
(27, 3, '#DK27', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 15:58:53', '2020-10-12 15:58:53'),
(28, 3, '#DK28', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 16:16:04', '2020-10-12 16:16:04'),
(29, 3, '#DK29', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 16:25:38', '2020-10-12 16:25:38'),
(30, 3, '#DK30', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 16:26:20', '2020-10-12 16:26:20'),
(31, 3, '#DK31', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 16:26:55', '2020-10-12 16:26:55'),
(32, 3, '#DK32', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 16:27:24', '2020-10-12 16:27:24'),
(33, 3, '#DK33', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 16:27:47', '2020-10-12 16:27:47'),
(34, 3, '#DK34', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 16:28:15', '2020-10-12 16:28:15'),
(35, 3, '#DK35', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 16:28:57', '2020-10-12 16:28:57'),
(36, 3, '#DK36', NULL, '3410.0', '0', '3410.0', '0', 3, NULL, '2020-10-12 16:31:08', '2020-10-12 16:31:08'),
(37, 3, '#DK37', NULL, '2160.0', '0', '2160.0', '0', 3, NULL, '2020-10-12 16:36:40', '2020-10-12 16:36:40'),
(38, 3, '#DK38', NULL, '680.0', '0', '680.0', '0', 3, NULL, '2020-10-12 16:37:28', '2020-10-12 16:37:28'),
(39, 3, '#DK39', NULL, '1160.0', '0', '1160.0', '0', 3, NULL, '2020-10-12 16:54:24', '2020-10-12 16:54:24'),
(40, 3, '#DK40', NULL, '580.0', '0', '580.0', '0', 3, NULL, '2020-10-12 17:28:16', '2020-10-12 17:28:16'),
(41, 3, '#DK41', NULL, '580.0', '0', '580.0', '0', 3, NULL, '2020-10-12 17:35:34', '2020-10-12 17:35:34'),
(42, 3, '#DK42', NULL, '580.0', '0', '580.0', '0', 3, NULL, '2020-10-12 17:36:04', '2020-10-12 17:36:04'),
(43, 3, '#DK43', NULL, '580.0', '0', '580.0', '0', 3, NULL, '2020-10-12 17:38:36', '2020-10-12 17:38:36'),
(44, 3, '#DK44', NULL, '600.0', '0', '600.0', '0', 2, NULL, '2020-10-13 00:45:30', '2020-10-13 03:58:58'),
(45, 3, '#DK45', NULL, '610.0', '0', '610.0', '0', 0, NULL, '2020-10-13 00:46:53', '2020-10-13 07:29:10'),
(46, 3, '#DK46', NULL, '1210.0', '0', '1210.0', '0', 3, NULL, '2020-10-13 00:47:18', '2020-10-13 00:47:18'),
(47, 52, '#DK47', NULL, '210.0', '0', '210.0', '0', 3, NULL, '2020-10-13 00:49:36', '2020-10-13 00:49:36'),
(48, 52, '#DK48', NULL, '900.0', '0', '900.0', '0', 0, NULL, '2020-10-13 02:21:09', '2020-10-13 03:58:49'),
(49, 52, '#DK49', NULL, '1060.0', '0', '1060.0', '0', 3, NULL, '2020-10-13 04:17:02', '2020-10-13 04:17:02'),
(50, 52, '#DK50', NULL, '1060.0', '0', '1060.0', '0', 3, NULL, '2020-10-13 04:17:14', '2020-10-13 04:17:14'),
(51, 52, '#DK51', NULL, '1290.0', '0', '1290.0', '0', 3, NULL, '2020-10-13 05:10:57', '2020-10-13 05:10:57'),
(52, 3, '#DK52', NULL, '1160.0', '0', '1160.0', '0', 3, NULL, '2020-10-13 07:33:16', '2020-10-13 07:33:16'),
(53, 49, '#DK53', NULL, '250.0', '0', '250.0', '0', 3, NULL, '2020-10-13 14:43:28', '2020-10-13 14:43:28'),
(54, 49, '#DK54', NULL, '300.0', '0', '300.0', '0', 3, NULL, '2020-10-14 07:50:24', '2020-10-14 07:50:24'),
(55, 3, '#DK55', NULL, '200.0', '0', '200.0', '0', 3, NULL, '2020-10-14 15:22:05', '2020-10-14 15:22:05'),
(56, 53, '#DK56', NULL, '300.0', '0', '300.0', '0', 3, NULL, '2020-10-15 07:43:53', '2020-10-15 07:43:53'),
(57, 54, '#DK57', NULL, '200.0', '0', '200.0', '0', 3, NULL, '2020-10-15 07:55:09', '2020-10-15 07:55:09'),
(58, 49, '#DK58', NULL, '3650.0', '0', '3650.0', '0', 3, NULL, '2020-10-15 12:55:01', '2020-10-15 12:55:01'),
(59, 53, '#DK59', NULL, '1160.0', '0', '1160.0', '0', 3, NULL, '2020-10-16 05:18:42', '2020-10-16 05:18:42'),
(60, 52, '#DK60', NULL, '600.0', '0', '600.0', '0', 3, NULL, '2020-10-17 15:13:51', '2020-10-17 15:13:51'),
(61, 58, '#DK61', NULL, '680.0', '0', '680.0', '0', 3, NULL, '2020-10-17 15:50:20', '2020-10-17 15:50:20'),
(62, 53, '#DK62', NULL, '100.0', '0', '100.0', '0', 3, NULL, '2020-10-20 06:57:09', '2020-10-20 06:57:09'),
(63, 49, '#DK63', NULL, '910.0', '0', '910.0', '0', 2, NULL, '2020-10-22 05:36:30', '2020-10-22 05:37:45'),
(74, 1, '#DK74', NULL, '790.00', '0.00', '790.00', '0', 1, NULL, '2020-10-22 08:16:16', '2020-10-22 08:19:31'),
(77, 58, '#DK77', NULL, '250.0', '0', '250.0', '0', 3, NULL, '2020-10-29 15:45:12', '2020-10-29 15:45:12'),
(78, 58, '#DK78', NULL, '150.0', '0', '150.0', '0', 3, NULL, '2020-10-29 15:52:04', '2020-10-29 15:52:04'),
(79, 58, '#DK79', NULL, '2050.0', '0', '2050.0', '0', 3, NULL, '2020-10-29 15:56:12', '2020-10-29 15:56:12'),
(81, 65, '#DK81', NULL, '740.0', '0', '740.0', '0', 3, NULL, '2020-10-30 14:52:27', '2020-10-30 14:52:27'),
(82, 77, '#DK82', NULL, '370.0', '0', '370.0', '0', 3, NULL, '2020-10-30 15:14:05', '2020-10-30 15:14:05'),
(83, 1, '#DK83', NULL, '980.00', '0.00', '980.00', '0', 1, NULL, '2020-10-30 15:28:13', '2020-10-30 15:28:13'),
(84, 77, '#DK84', NULL, '370.0', '0', '370.0', '0', 3, NULL, '2020-10-30 15:37:36', '2020-10-30 15:37:36'),
(85, 77, '#DK85', NULL, '2000.0', '0', '2000.0', '0', 3, NULL, '2020-10-30 15:38:04', '2020-10-30 15:38:04'),
(86, 49, '#DK86', NULL, '370.0', '0', '370.0', '0', 3, NULL, '2020-10-31 10:46:44', '2020-10-31 10:46:44'),
(87, 1, '#DK87', NULL, '575.00', '0.00', '575.00', '1', 1, NULL, '2020-11-01 06:41:37', '2020-11-01 06:49:10'),
(88, 49, '#DK88', NULL, '400.0', '0', '400.0', '0', 0, NULL, '2020-11-01 07:39:13', '2020-11-01 07:42:42'),
(89, 49, '#DK89', NULL, '150.0', '0', '150.0', '1', 2, NULL, '2020-11-01 07:43:17', '2020-11-01 07:51:41'),
(90, 49, '#DK90', NULL, '630.0', '0', '630.0', '0', 0, NULL, '2020-11-01 08:14:53', '2020-11-01 08:44:24'),
(91, 80, '#DK91', NULL, '170.0', '0', '170.0', '0', 3, NULL, '2020-11-01 14:42:04', '2020-11-01 14:42:04'),
(92, 49, '#DK92', NULL, '170.0', '0', '170.0', '1', 2, NULL, '2020-11-02 12:14:36', '2020-11-02 12:25:29'),
(93, 84, '#DK93', NULL, '150.0', '0', '150.0', '0', 0, NULL, '2020-11-02 12:27:37', '2020-11-02 12:35:56'),
(94, 49, '#DK94', NULL, '150.0', '0', '150.0', '0', 0, NULL, '2020-11-02 13:05:58', '2020-11-02 14:54:11'),
(95, 99, '#DK95', NULL, '740.0', '0', '740.0', '0', 3, NULL, '2020-11-03 10:00:26', '2020-11-03 10:00:26'),
(96, 105, '#DK96', NULL, '130.0', '0', '130.0', '0', 2, NULL, '2020-11-03 13:55:23', '2020-11-03 14:49:02'),
(97, 83, '#DK97', NULL, '50.0', '0', '50.0', '0', 3, NULL, '2020-11-03 14:46:17', '2020-11-03 14:46:17'),
(100, 53, '#DK100', NULL, '150.0', '0', '150.0', '0', 0, NULL, '2020-11-05 12:04:32', '2020-11-05 12:17:37'),
(101, 53, '#DK101', NULL, '250.0', '0', '250.0', '0', 0, NULL, '2020-11-05 12:07:29', '2020-11-05 12:18:24'),
(102, 49, '#DK102', NULL, '220.00', '0.00', '220.00', '1', 2, NULL, '2020-11-05 12:08:28', '2020-11-05 12:10:22'),
(103, 53, '#DK103', NULL, '150.0', '0', '150.0', '0', 0, NULL, '2020-11-05 12:14:01', '2020-11-05 12:21:03'),
(104, 53, '#DK104', NULL, '150.0', '0', '150.0', '1', 2, NULL, '2020-11-05 12:22:17', '2020-11-05 12:28:10'),
(105, 109, '#DK105', NULL, '280.0', '0', '280.0', '0', 3, NULL, '2020-11-06 03:46:19', '2020-11-06 03:46:19'),
(106, 118, '#DK106', NULL, '150.0', '0', '150.0', '0', 3, NULL, '2020-11-06 09:13:03', '2020-11-06 09:13:03'),
(107, 118, '#DK107', NULL, '220.0', '0', '220.0', '0', 3, NULL, '2020-11-07 02:57:26', '2020-11-07 02:57:26'),
(108, 121, '#DK108', NULL, '150.0', '0', '150.0', '0', 0, NULL, '2020-11-07 10:01:12', '2020-11-07 10:20:38'),
(109, 80, '#DK109', NULL, '150.0', '0', '150.0', '0', 0, NULL, '2020-11-07 13:52:54', '2020-11-07 14:01:45'),
(110, 123, '#DK110', NULL, '260.0', '0', '260.0', '0', 3, NULL, '2020-11-11 13:27:08', '2020-11-11 13:27:08'),
(111, 49, '#DK111', NULL, '220.0', '0', '220.0', '0', 0, NULL, '2020-11-12 03:11:03', '2020-11-12 03:52:57'),
(112, 53, '#DK112', NULL, '300.0', '0', '300.0', '1', 2, NULL, '2020-11-12 08:46:46', '2020-11-12 09:08:51'),
(113, 49, '#DK113', NULL, '520.0', '0', '520.0', '1', 2, NULL, '2020-11-12 08:50:34', '2020-11-12 09:09:00'),
(114, 53, '#DK114', NULL, '220.0', '0', '220.0', '0', 0, NULL, '2020-11-12 08:51:31', '2020-11-12 08:54:27'),
(115, 64, '#DK115', NULL, '370.0', '0', '370.0', '0', 3, NULL, '2020-11-12 17:44:43', '2020-11-12 17:44:43'),
(116, 93, '#DK116', NULL, '920.0', '0', '920.0', '0', 2, NULL, '2020-11-13 13:20:54', '2020-11-13 13:31:32'),
(117, 150, '#DK117', NULL, '220.0', '0', '220.0', '0', 3, NULL, '2020-11-14 03:21:20', '2020-11-14 03:21:20'),
(118, 160, '#DK118', NULL, '340.0', '0', '340.0', '0', 3, NULL, '2020-11-16 13:55:31', '2020-11-16 13:55:31'),
(119, 162, '#DK119', NULL, '360.0', '0', '360.0', '0', 2, NULL, '2020-11-17 08:58:40', '2020-11-17 09:01:26'),
(120, 174, '#DK120', NULL, '390.0', '0', '390.0', '0', 2, NULL, '2020-11-19 08:29:12', '2020-11-19 08:31:57'),
(121, 176, '#DK121', NULL, '680.0', '0', '680.0', '0', 2, NULL, '2020-11-19 11:15:55', '2020-11-19 11:19:11'),
(122, 182, '#DK122', NULL, '720.0', '0', '720.0', '1', 2, NULL, '2020-11-20 09:43:28', '2020-11-20 09:52:00'),
(123, 183, '#DK123', NULL, '130.0', '0', '130.0', '0', 0, NULL, '2020-11-20 13:10:11', '2020-11-20 13:12:25'),
(124, 183, '#DK124', NULL, '380.0', '0', '380.0', '0', 2, NULL, '2020-11-20 13:19:22', '2020-11-20 13:19:34'),
(125, 184, '#DK125', NULL, '1020.0', '0', '1020.0', '0', 2, NULL, '2020-11-21 04:09:08', '2020-11-21 06:51:29'),
(126, 185, '#DK126', NULL, '430.0', '0', '430.0', '0', 2, NULL, '2020-11-21 05:12:47', '2020-11-21 10:21:40'),
(127, 162, '#DK127', NULL, '710.0', '0', '710.0', '0', 2, NULL, '2020-11-21 10:15:21', '2020-11-21 10:25:27'),
(128, 49, '#DK128', NULL, '200.0', '0', '200.0', '1', 2, NULL, '2020-11-21 14:21:39', '2020-11-21 14:51:39'),
(129, 58, '#DK129', NULL, '660.0', '0', '660.0', '0', 0, NULL, '2020-11-22 10:33:18', '2020-11-22 10:35:39'),
(130, 189, '#DK130', NULL, '150.0', '0', '150.0', '0', 3, NULL, '2020-11-22 14:04:40', '2020-11-22 14:04:40'),
(131, 183, '#DK131', NULL, '200.0', '0', '200.0', '0', 0, NULL, '2020-11-22 14:19:13', '2020-11-22 14:25:48'),
(132, 183, '#DK132', NULL, '300.0', '0', '300.0', '0', 2, NULL, '2020-11-22 14:25:25', '2020-11-22 14:26:05'),
(133, 53, '#DK133', NULL, '150.0', '0', '150.0', '0', 0, NULL, '2020-11-22 14:35:26', '2020-11-22 14:41:04'),
(134, 190, '#DK134', NULL, '390.0', '0', '390.0', '0', 2, NULL, '2020-11-23 07:21:15', '2020-11-23 07:36:07'),
(135, 194, '#DK135', NULL, '260.0', '0', '260.0', '0', 0, NULL, '2020-11-23 10:26:13', '2020-11-23 10:36:09'),
(136, 194, '#DK136', NULL, '120.0', '0', '120.0', '0', 0, NULL, '2020-11-23 10:33:26', '2020-11-23 10:37:06'),
(137, 194, '#DK137', NULL, '380.0', '0', '380.0', '0', 2, NULL, '2020-11-23 10:38:00', '2020-11-23 10:38:45'),
(138, 185, '#DK138', NULL, '820.0', '0', '820.0', '0', 2, NULL, '2020-11-23 12:51:02', '2020-11-23 12:56:07'),
(139, 151, '#DK139', NULL, '280.0', '0', '280.0', '0', 0, NULL, '2020-11-25 10:58:04', '2020-11-25 11:25:12'),
(140, 151, '#DK140', NULL, '280.0', '0', '280.0', '0', 0, NULL, '2020-11-25 10:58:04', '2020-11-25 11:25:38'),
(141, 151, '#DK141', NULL, '280.0', '0', '280.0', '0', 0, NULL, '2020-11-25 10:58:05', '2020-11-25 11:25:18'),
(142, 193, '#DK142', NULL, '870.0', '0', '870.0', '0', 2, NULL, '2020-11-25 13:36:22', '2020-11-25 13:48:12'),
(143, 131, '#DK143', NULL, '300.0', '0', '300.0', '0', 3, NULL, '2020-11-27 07:45:38', '2020-11-27 07:45:38'),
(144, 219, '#DK144', NULL, '980.0', '0', '980.0', '0', 2, NULL, '2020-11-27 08:17:08', '2020-11-27 08:18:40'),
(145, 93, '#DK145', NULL, '540.0', '0', '540.0', '0', 2, NULL, '2020-11-27 13:22:50', '2020-11-27 13:40:37'),
(146, 229, '#DK146', NULL, '300.0', '0', '300.0', '0', 0, NULL, '2020-11-28 08:57:35', '2020-11-28 09:05:13'),
(147, 183, '#DK147', NULL, '130.0', '0', '130.0', '0', 0, NULL, '2020-11-28 12:01:33', '2020-11-28 12:13:10'),
(148, 183, '#DK148', NULL, '420.0', '0', '420.0', '0', 0, NULL, '2020-11-28 12:08:50', '2020-11-28 12:13:04'),
(149, 183, '#DK149', NULL, '420.0', '0', '420.0', '0', 2, NULL, '2020-11-28 12:25:22', '2020-11-28 12:30:33'),
(150, 162, '#DK150', NULL, '620.0', '0', '620.0', '0', 2, NULL, '2020-11-29 09:41:09', '2020-11-29 09:43:24'),
(151, 1, '#DK151', NULL, '370.0', '0', '370.0', '0', 2, NULL, '2020-11-29 15:07:05', '2020-11-29 15:14:46'),
(152, 248, '#DK152', NULL, '1000.0', '0', '1000.0', '0', 3, NULL, '2020-12-01 05:20:21', '2020-12-01 05:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `amount`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 1, 256, 1, '100', '100', 0, '2020-10-04 16:00:54', '2020-10-04 16:00:54'),
(2, 1, 257, 1, '200', '200', 0, '2020-10-04 16:00:54', '2020-10-04 16:00:54'),
(3, 1, 258, 1, '480', '480', 0, '2020-10-04 16:00:54', '2020-10-04 16:00:54'),
(4, 2, 263, 1, '220', '220', 0, '2020-10-04 16:23:26', '2020-10-04 16:23:26'),
(5, 2, 262, 1, '620', '620', 0, '2020-10-04 16:23:26', '2020-10-04 16:23:26'),
(6, 3, 256, 1, '100', '100', 0, '2020-10-05 07:29:16', '2020-10-05 07:29:16'),
(7, 3, 257, 1, '200', '200', 0, '2020-10-05 07:29:16', '2020-10-05 07:29:16'),
(8, 3, 258, 1, '480', '480', 0, '2020-10-05 07:29:16', '2020-10-05 07:29:16'),
(9, 4, 256, 1, '100', '100', 0, '2020-10-09 16:17:56', '2020-10-09 16:17:56'),
(10, 4, 258, 1, '480', '480', 0, '2020-10-09 16:17:56', '2020-10-09 16:17:56'),
(11, 5, 262, 1, '620', '620', 0, '2020-10-09 16:23:48', '2020-10-09 16:23:48'),
(12, 5, 261, 5, '250', '1250', 0, '2020-10-09 16:23:48', '2020-10-09 16:23:48'),
(13, 5, 257, 1, '200', '200', 0, '2020-10-09 16:23:48', '2020-10-09 16:23:48'),
(14, 5, 258, 1, '480', '480', 0, '2020-10-09 16:23:48', '2020-10-09 16:23:48'),
(15, 6, 1, 2, '100', '200', 0, '2020-10-12 15:23:14', '2020-10-12 15:23:14'),
(16, 7, 1, 2, '100', '200', 0, '2020-10-12 15:24:54', '2020-10-12 15:24:54'),
(17, 8, 1, 2, '100', '200', 0, '2020-10-12 15:26:44', '2020-10-12 15:26:44'),
(18, 9, 1, 2, '100', '200', 0, '2020-10-12 15:26:57', '2020-10-12 15:26:57'),
(19, 10, 1, 2, '100', '200', 0, '2020-10-12 15:36:49', '2020-10-12 15:36:49'),
(20, 11, 1, 2, '100', '200', 0, '2020-10-12 15:37:17', '2020-10-12 15:37:17'),
(21, 12, 1, 2, '100', '200', 0, '2020-10-12 15:40:17', '2020-10-12 15:40:17'),
(22, 13, 1, 2, '100', '200', 0, '2020-10-12 15:41:16', '2020-10-12 15:41:16'),
(23, 14, 256, 3, '100', '300', 0, '2020-10-12 15:41:57', '2020-10-12 15:41:57'),
(24, 14, 257, 6, '200', '1200', 0, '2020-10-12 15:41:57', '2020-10-12 15:41:57'),
(25, 14, 240, 2, '330', '660', 0, '2020-10-12 15:41:57', '2020-10-12 15:41:57'),
(26, 14, 241, 5, '250', '1250', 0, '2020-10-12 15:41:57', '2020-10-12 15:41:57'),
(27, 15, 256, 3, '100', '300', 0, '2020-10-12 15:47:21', '2020-10-12 15:47:21'),
(28, 15, 257, 6, '200', '1200', 0, '2020-10-12 15:47:21', '2020-10-12 15:47:21'),
(29, 15, 240, 2, '330', '660', 0, '2020-10-12 15:47:21', '2020-10-12 15:47:21'),
(30, 15, 241, 5, '250', '1250', 0, '2020-10-12 15:47:21', '2020-10-12 15:47:21'),
(31, 16, 256, 3, '100', '300', 0, '2020-10-12 15:49:19', '2020-10-12 15:49:19'),
(32, 16, 257, 6, '200', '1200', 0, '2020-10-12 15:49:19', '2020-10-12 15:49:19'),
(33, 16, 240, 2, '330', '660', 0, '2020-10-12 15:49:19', '2020-10-12 15:49:19'),
(34, 16, 241, 5, '250', '1250', 0, '2020-10-12 15:49:19', '2020-10-12 15:49:19'),
(35, 17, 256, 3, '100', '300', 0, '2020-10-12 15:52:03', '2020-10-12 15:52:03'),
(36, 17, 257, 6, '200', '1200', 0, '2020-10-12 15:52:03', '2020-10-12 15:52:03'),
(37, 17, 240, 2, '330', '660', 0, '2020-10-12 15:52:03', '2020-10-12 15:52:03'),
(38, 17, 241, 5, '250', '1250', 0, '2020-10-12 15:52:03', '2020-10-12 15:52:03'),
(39, 18, 256, 3, '100', '300', 0, '2020-10-12 15:52:10', '2020-10-12 15:52:10'),
(40, 18, 257, 6, '200', '1200', 0, '2020-10-12 15:52:10', '2020-10-12 15:52:10'),
(41, 18, 240, 2, '330', '660', 0, '2020-10-12 15:52:10', '2020-10-12 15:52:10'),
(42, 18, 241, 5, '250', '1250', 0, '2020-10-12 15:52:10', '2020-10-12 15:52:10'),
(43, 19, 256, 3, '100', '300', 0, '2020-10-12 15:52:52', '2020-10-12 15:52:52'),
(44, 19, 257, 6, '200', '1200', 0, '2020-10-12 15:52:52', '2020-10-12 15:52:52'),
(45, 19, 240, 2, '330', '660', 0, '2020-10-12 15:52:52', '2020-10-12 15:52:52'),
(46, 19, 241, 5, '250', '1250', 0, '2020-10-12 15:52:52', '2020-10-12 15:52:52'),
(47, 20, 256, 3, '100', '300', 0, '2020-10-12 15:53:17', '2020-10-12 15:53:17'),
(48, 20, 257, 6, '200', '1200', 0, '2020-10-12 15:53:17', '2020-10-12 15:53:17'),
(49, 20, 240, 2, '330', '660', 0, '2020-10-12 15:53:17', '2020-10-12 15:53:17'),
(50, 20, 241, 5, '250', '1250', 0, '2020-10-12 15:53:17', '2020-10-12 15:53:17'),
(51, 21, 256, 3, '100', '300', 0, '2020-10-12 15:55:41', '2020-10-12 15:55:41'),
(52, 21, 257, 6, '200', '1200', 0, '2020-10-12 15:55:41', '2020-10-12 15:55:41'),
(53, 21, 240, 2, '330', '660', 0, '2020-10-12 15:55:41', '2020-10-12 15:55:41'),
(54, 21, 241, 5, '250', '1250', 0, '2020-10-12 15:55:41', '2020-10-12 15:55:41'),
(55, 22, 256, 3, '100', '300', 0, '2020-10-12 15:56:14', '2020-10-12 15:56:14'),
(56, 22, 257, 6, '200', '1200', 0, '2020-10-12 15:56:14', '2020-10-12 15:56:14'),
(57, 22, 240, 2, '330', '660', 0, '2020-10-12 15:56:14', '2020-10-12 15:56:14'),
(58, 22, 241, 5, '250', '1250', 0, '2020-10-12 15:56:14', '2020-10-12 15:56:14'),
(59, 23, 256, 3, '100', '300', 0, '2020-10-12 15:57:03', '2020-10-12 15:57:03'),
(60, 23, 257, 6, '200', '1200', 0, '2020-10-12 15:57:03', '2020-10-12 15:57:03'),
(61, 23, 240, 2, '330', '660', 0, '2020-10-12 15:57:03', '2020-10-12 15:57:03'),
(62, 23, 241, 5, '250', '1250', 0, '2020-10-12 15:57:03', '2020-10-12 15:57:03'),
(63, 24, 256, 3, '100', '300', 0, '2020-10-12 15:57:24', '2020-10-12 15:57:24'),
(64, 24, 257, 6, '200', '1200', 0, '2020-10-12 15:57:24', '2020-10-12 15:57:24'),
(65, 24, 240, 2, '330', '660', 0, '2020-10-12 15:57:24', '2020-10-12 15:57:24'),
(66, 24, 241, 5, '250', '1250', 0, '2020-10-12 15:57:24', '2020-10-12 15:57:24'),
(67, 25, 256, 3, '100', '300', 0, '2020-10-12 15:57:55', '2020-10-12 15:57:55'),
(68, 25, 257, 6, '200', '1200', 0, '2020-10-12 15:57:55', '2020-10-12 15:57:55'),
(69, 25, 240, 2, '330', '660', 0, '2020-10-12 15:57:55', '2020-10-12 15:57:55'),
(70, 25, 241, 5, '250', '1250', 0, '2020-10-12 15:57:55', '2020-10-12 15:57:55'),
(71, 26, 256, 3, '100', '300', 0, '2020-10-12 15:58:02', '2020-10-12 15:58:02'),
(72, 26, 257, 6, '200', '1200', 0, '2020-10-12 15:58:02', '2020-10-12 15:58:02'),
(73, 26, 240, 2, '330', '660', 0, '2020-10-12 15:58:02', '2020-10-12 15:58:02'),
(74, 26, 241, 5, '250', '1250', 0, '2020-10-12 15:58:02', '2020-10-12 15:58:02'),
(75, 27, 256, 3, '100', '300', 0, '2020-10-12 15:58:53', '2020-10-12 15:58:53'),
(76, 27, 257, 6, '200', '1200', 0, '2020-10-12 15:58:53', '2020-10-12 15:58:53'),
(77, 27, 240, 2, '330', '660', 0, '2020-10-12 15:58:53', '2020-10-12 15:58:53'),
(78, 27, 241, 5, '250', '1250', 0, '2020-10-12 15:58:53', '2020-10-12 15:58:53'),
(79, 28, 256, 3, '100', '300', 0, '2020-10-12 16:16:04', '2020-10-12 16:16:04'),
(80, 28, 257, 6, '200', '1200', 0, '2020-10-12 16:16:04', '2020-10-12 16:16:04'),
(81, 28, 240, 2, '330', '660', 0, '2020-10-12 16:16:04', '2020-10-12 16:16:04'),
(82, 28, 241, 5, '250', '1250', 0, '2020-10-12 16:16:04', '2020-10-12 16:16:04'),
(83, 29, 256, 3, '100', '300', 0, '2020-10-12 16:25:38', '2020-10-12 16:25:38'),
(84, 29, 257, 6, '200', '1200', 0, '2020-10-12 16:25:38', '2020-10-12 16:25:38'),
(85, 29, 240, 2, '330', '660', 0, '2020-10-12 16:25:38', '2020-10-12 16:25:38'),
(86, 29, 241, 5, '250', '1250', 0, '2020-10-12 16:25:38', '2020-10-12 16:25:38'),
(87, 30, 256, 3, '100', '300', 0, '2020-10-12 16:26:20', '2020-10-12 16:26:20'),
(88, 30, 257, 6, '200', '1200', 0, '2020-10-12 16:26:20', '2020-10-12 16:26:20'),
(89, 30, 240, 2, '330', '660', 0, '2020-10-12 16:26:20', '2020-10-12 16:26:20'),
(90, 30, 241, 5, '250', '1250', 0, '2020-10-12 16:26:20', '2020-10-12 16:26:20'),
(91, 31, 256, 3, '100', '300', 0, '2020-10-12 16:26:55', '2020-10-12 16:26:55'),
(92, 31, 257, 6, '200', '1200', 0, '2020-10-12 16:26:55', '2020-10-12 16:26:55'),
(93, 31, 240, 2, '330', '660', 0, '2020-10-12 16:26:55', '2020-10-12 16:26:55'),
(94, 31, 241, 5, '250', '1250', 0, '2020-10-12 16:26:55', '2020-10-12 16:26:55'),
(95, 32, 256, 3, '100', '300', 0, '2020-10-12 16:27:24', '2020-10-12 16:27:24'),
(96, 32, 257, 6, '200', '1200', 0, '2020-10-12 16:27:24', '2020-10-12 16:27:24'),
(97, 32, 240, 2, '330', '660', 0, '2020-10-12 16:27:24', '2020-10-12 16:27:24'),
(98, 32, 241, 5, '250', '1250', 0, '2020-10-12 16:27:24', '2020-10-12 16:27:24'),
(99, 33, 256, 3, '100', '300', 0, '2020-10-12 16:27:47', '2020-10-12 16:27:47'),
(100, 33, 257, 6, '200', '1200', 0, '2020-10-12 16:27:47', '2020-10-12 16:27:47'),
(101, 33, 240, 2, '330', '660', 0, '2020-10-12 16:27:47', '2020-10-12 16:27:47'),
(102, 33, 241, 5, '250', '1250', 0, '2020-10-12 16:27:47', '2020-10-12 16:27:47'),
(103, 34, 256, 3, '100', '300', 0, '2020-10-12 16:28:15', '2020-10-12 16:28:15'),
(104, 34, 257, 6, '200', '1200', 0, '2020-10-12 16:28:15', '2020-10-12 16:28:15'),
(105, 34, 240, 2, '330', '660', 0, '2020-10-12 16:28:15', '2020-10-12 16:28:15'),
(106, 34, 241, 5, '250', '1250', 0, '2020-10-12 16:28:15', '2020-10-12 16:28:15'),
(107, 35, 256, 3, '100', '300', 0, '2020-10-12 16:28:57', '2020-10-12 16:28:57'),
(108, 35, 257, 6, '200', '1200', 0, '2020-10-12 16:28:57', '2020-10-12 16:28:57'),
(109, 35, 240, 2, '330', '660', 0, '2020-10-12 16:28:57', '2020-10-12 16:28:57'),
(110, 35, 241, 5, '250', '1250', 0, '2020-10-12 16:28:57', '2020-10-12 16:28:57'),
(111, 36, 256, 3, '100', '300', 0, '2020-10-12 16:31:08', '2020-10-12 16:31:08'),
(112, 36, 257, 6, '200', '1200', 0, '2020-10-12 16:31:08', '2020-10-12 16:31:08'),
(113, 36, 240, 2, '330', '660', 0, '2020-10-12 16:31:08', '2020-10-12 16:31:08'),
(114, 36, 241, 5, '250', '1250', 0, '2020-10-12 16:31:08', '2020-10-12 16:31:08'),
(115, 37, 256, 3, '100', '300', 0, '2020-10-12 16:36:40', '2020-10-12 16:36:40'),
(116, 37, 257, 6, '200', '1200', 0, '2020-10-12 16:36:40', '2020-10-12 16:36:40'),
(117, 37, 240, 2, '330', '660', 0, '2020-10-12 16:36:40', '2020-10-12 16:36:40'),
(118, 38, 257, 1, '200', '200', 0, '2020-10-12 16:37:28', '2020-10-12 16:37:28'),
(119, 38, 258, 1, '480', '480', 0, '2020-10-12 16:37:28', '2020-10-12 16:37:28'),
(120, 39, 257, 1, '200', '200', 0, '2020-10-12 16:54:24', '2020-10-12 16:54:24'),
(121, 39, 258, 2, '480', '960', 0, '2020-10-12 16:54:24', '2020-10-12 16:54:24'),
(122, 40, 240, 1, '330', '330', 0, '2020-10-12 17:28:16', '2020-10-12 17:28:16'),
(123, 40, 241, 1, '250', '250', 0, '2020-10-12 17:28:16', '2020-10-12 17:28:16'),
(124, 41, 256, 1, '100', '100', 0, '2020-10-12 17:35:34', '2020-10-12 17:35:34'),
(125, 41, 258, 1, '480', '480', 0, '2020-10-12 17:35:34', '2020-10-12 17:35:34'),
(126, 42, 240, 1, '330', '330', 0, '2020-10-12 17:36:04', '2020-10-12 17:36:04'),
(127, 42, 241, 1, '250', '250', 0, '2020-10-12 17:36:04', '2020-10-12 17:36:04'),
(128, 43, 240, 1, '330', '330', 0, '2020-10-12 17:38:36', '2020-10-12 17:38:36'),
(129, 43, 241, 1, '250', '250', 0, '2020-10-12 17:38:36', '2020-10-12 17:38:36'),
(130, 44, 256, 2, '100', '200', 0, '2020-10-13 00:45:30', '2020-10-13 00:45:30'),
(131, 44, 257, 2, '200', '400', 0, '2020-10-13 00:45:30', '2020-10-13 00:45:30'),
(132, 45, 339, 1, '60', '60', 0, '2020-10-13 00:46:53', '2020-10-13 00:46:53'),
(133, 45, 340, 1, '150', '150', 0, '2020-10-13 00:46:53', '2020-10-13 00:46:53'),
(134, 45, 222, 1, '60', '60', 0, '2020-10-13 00:46:53', '2020-10-13 00:46:53'),
(135, 45, 197, 1, '210', '210', 0, '2020-10-13 00:46:53', '2020-10-13 00:46:53'),
(136, 45, 251, 1, '130', '130', 0, '2020-10-13 00:46:53', '2020-10-13 00:46:53'),
(137, 46, 257, 2, '200', '400', 0, '2020-10-13 00:47:18', '2020-10-13 00:47:18'),
(138, 46, 258, 1, '480', '480', 0, '2020-10-13 00:47:18', '2020-10-13 00:47:18'),
(139, 46, 240, 1, '330', '330', 0, '2020-10-13 00:47:18', '2020-10-13 00:47:18'),
(140, 47, 339, 1, '60', '60', 0, '2020-10-13 00:49:36', '2020-10-13 00:49:36'),
(141, 47, 340, 1, '150', '150', 0, '2020-10-13 00:49:36', '2020-10-13 00:49:36'),
(142, 48, 257, 2, '200', '400', 0, '2020-10-13 02:21:09', '2020-10-13 02:21:09'),
(143, 48, 241, 2, '250', '500', 0, '2020-10-13 02:21:09', '2020-10-13 02:21:09'),
(144, 49, 257, 2, '200', '400', 0, '2020-10-13 04:17:02', '2020-10-13 04:17:02'),
(145, 49, 240, 2, '330', '660', 0, '2020-10-13 04:17:02', '2020-10-13 04:17:02'),
(146, 50, 257, 2, '200', '400', 0, '2020-10-13 04:17:14', '2020-10-13 04:17:14'),
(147, 50, 240, 2, '330', '660', 0, '2020-10-13 04:17:14', '2020-10-13 04:17:14'),
(148, 51, 240, 1, '330', '330', 0, '2020-10-13 05:10:57', '2020-10-13 05:10:57'),
(149, 51, 258, 2, '480', '960', 0, '2020-10-13 05:10:57', '2020-10-13 05:10:57'),
(150, 52, 240, 2, '330', '660', 0, '2020-10-13 07:33:16', '2020-10-13 07:33:16'),
(151, 52, 241, 2, '250', '500', 0, '2020-10-13 07:33:16', '2020-10-13 07:33:16'),
(152, 53, 239, 1, '250', '250', 0, '2020-10-13 14:43:28', '2020-10-13 14:43:28'),
(153, 54, 256, 1, '100', '100', 0, '2020-10-14 07:50:24', '2020-10-14 07:50:24'),
(154, 54, 257, 1, '200', '200', 0, '2020-10-14 07:50:24', '2020-10-14 07:50:24'),
(155, 55, 256, 2, '100', '200', 0, '2020-10-14 15:22:05', '2020-10-14 15:22:05'),
(156, 56, 256, 1, '100', '100', 0, '2020-10-15 07:43:53', '2020-10-15 07:43:53'),
(157, 56, 257, 1, '200', '200', 0, '2020-10-15 07:43:53', '2020-10-15 07:43:53'),
(158, 57, 257, 1, '200', '200', 0, '2020-10-15 07:55:09', '2020-10-15 07:55:09'),
(159, 58, 240, 5, '330', '1650', 0, '2020-10-15 12:55:01', '2020-10-15 12:55:01'),
(160, 58, 241, 4, '250', '1000', 0, '2020-10-15 12:55:01', '2020-10-15 12:55:01'),
(161, 58, 239, 4, '250', '1000', 0, '2020-10-15 12:55:01', '2020-10-15 12:55:01'),
(162, 59, 256, 2, '100', '200', 0, '2020-10-16 05:18:42', '2020-10-16 05:18:42'),
(163, 59, 258, 2, '480', '960', 0, '2020-10-16 05:18:42', '2020-10-16 05:18:42'),
(164, 60, 242, 3, '100', '300', 0, '2020-10-17 15:13:51', '2020-10-17 15:13:51'),
(165, 60, 243, 2, '150', '300', 0, '2020-10-17 15:13:51', '2020-10-17 15:13:51'),
(166, 61, 240, 1, '330', '330', 0, '2020-10-17 15:50:20', '2020-10-17 15:50:20'),
(167, 61, 226, 1, '350', '350', 0, '2020-10-17 15:50:20', '2020-10-17 15:50:20'),
(168, 62, 256, 1, '100', '100', 0, '2020-10-20 06:57:09', '2020-10-20 06:57:09'),
(169, 63, 256, 1, '100', '100', 0, '2020-10-22 05:36:30', '2020-10-22 05:36:30'),
(170, 63, 258, 1, '480', '480', 0, '2020-10-22 05:36:30', '2020-10-22 05:36:30'),
(171, 63, 240, 1, '330', '330', 0, '2020-10-22 05:36:30', '2020-10-22 05:36:30'),
(172, 74, 258, 1, '520', '520', 3, '2020-10-22 08:16:16', '2020-10-22 08:16:16'),
(173, 74, 332, 1, '60', '60', 2, '2020-10-22 08:16:16', '2020-10-22 08:16:16'),
(174, 74, 242, 1, '100', '100', 3, '2020-10-22 08:16:16', '2020-10-22 08:16:16'),
(175, 74, 174, 1, '110', '110', 2, '2020-10-22 08:16:16', '2020-10-22 08:16:16'),
(176, 77, 256, 1, '150', '150', 3, '2020-10-29 15:45:12', '2020-10-29 15:45:12'),
(177, 77, 242, 1, '100', '100', 3, '2020-10-29 15:45:12', '2020-10-29 15:45:12'),
(178, 78, 256, 1, '150', '150', 3, '2020-10-29 15:52:04', '2020-10-29 15:52:04'),
(179, 79, 239, 2, '250', '500', 3, '2020-10-29 15:56:12', '2020-10-29 15:56:12'),
(180, 79, 240, 3, '330', '990', 3, '2020-10-29 15:56:12', '2020-10-29 15:56:12'),
(181, 79, 241, 2, '280', '560', 3, '2020-10-29 15:56:12', '2020-10-29 15:56:12'),
(182, 81, 257, 1, '220', '220', 3, '2020-10-30 14:52:27', '2020-10-30 14:52:27'),
(183, 81, 258, 1, '520', '520', 3, '2020-10-30 14:52:27', '2020-10-30 14:52:27'),
(184, 82, 257, 1, '220', '220', 3, '2020-10-30 15:14:05', '2020-10-30 15:14:05'),
(185, 82, 256, 1, '150', '150', 3, '2020-10-30 15:14:05', '2020-10-30 15:14:05'),
(186, 83, 262, 1, '680', '680', 3, '2020-10-30 15:28:13', '2020-10-30 15:28:13'),
(187, 83, 261, 1, '300', '300', 3, '2020-10-30 15:28:13', '2020-10-30 15:28:13'),
(188, 84, 256, 1, '150', '150', 3, '2020-10-30 15:37:36', '2020-10-30 15:37:36'),
(189, 84, 257, 1, '220', '220', 3, '2020-10-30 15:37:36', '2020-10-30 15:37:36'),
(190, 85, 257, 2, '220', '440', 3, '2020-10-30 15:38:04', '2020-10-30 15:38:04'),
(191, 85, 258, 3, '520', '1560', 3, '2020-10-30 15:38:04', '2020-10-30 15:38:04'),
(192, 86, 256, 1, '150', '150', 3, '2020-10-31 10:46:44', '2020-10-31 10:46:44'),
(193, 86, 257, 1, '220', '220', 3, '2020-10-31 10:46:44', '2020-10-31 10:46:44'),
(194, 87, 256, 1, '150', '150', 3, '2020-11-01 06:41:37', '2020-11-01 06:41:37'),
(195, 87, 206, 1, '240', '240', 2, '2020-11-01 06:41:37', '2020-11-01 06:41:37'),
(196, 87, 242, 1, '100', '100', 3, '2020-11-01 06:41:37', '2020-11-01 06:41:37'),
(197, 87, 171, 1, '85', '85', 2, '2020-11-01 06:41:37', '2020-11-01 06:41:37'),
(198, 88, 239, 1, '250', '250', 3, '2020-11-01 07:39:13', '2020-11-01 07:39:13'),
(199, 88, 256, 1, '150', '150', 3, '2020-11-01 07:39:13', '2020-11-01 07:39:13'),
(200, 89, 256, 1, '150', '150', 3, '2020-11-01 07:43:17', '2020-11-01 07:43:17'),
(201, 90, 261, 1, '300', '300', 3, '2020-11-01 08:14:53', '2020-11-01 08:14:53'),
(202, 90, 273, 1, '130', '130', 3, '2020-11-01 08:14:53', '2020-11-01 08:14:53'),
(203, 90, 275, 1, '200', '200', 3, '2020-11-01 08:14:53', '2020-11-01 08:14:53'),
(204, 91, 172, 2, '85', '170', 2, '2020-11-01 14:42:04', '2020-11-01 14:42:04'),
(205, 92, 172, 2, '85', '170', 2, '2020-11-02 12:14:37', '2020-11-02 12:14:37'),
(206, 93, 256, 1, '150', '150', 3, '2020-11-02 12:27:37', '2020-11-02 12:27:37'),
(207, 94, 256, 1, '150', '150', 3, '2020-11-02 13:05:58', '2020-11-02 13:05:58'),
(208, 95, 257, 1, '220', '220', 3, '2020-11-03 10:00:26', '2020-11-03 10:00:26'),
(209, 95, 258, 1, '520', '520', 3, '2020-11-03 10:00:26', '2020-11-03 10:00:26'),
(210, 96, 273, 1, '130', '130', 3, '2020-11-03 13:55:23', '2020-11-03 13:55:23'),
(211, 97, 186, 1, '50', '50', 2, '2020-11-03 14:46:17', '2020-11-03 14:46:17'),
(217, 100, 256, 1, '150', '150', 3, '2020-11-05 12:04:32', '2020-11-05 12:04:32'),
(218, 101, 239, 1, '250', '250', 3, '2020-11-05 12:07:29', '2020-11-05 12:07:29'),
(219, 102, 257, 1, '220', '220', 3, '2020-11-05 12:08:28', '2020-11-05 12:08:28'),
(220, 103, 256, 1, '150', '150', 3, '2020-11-05 12:14:01', '2020-11-05 12:14:01'),
(221, 104, 256, 1, '150', '150', 3, '2020-11-05 12:22:17', '2020-11-05 12:22:17'),
(222, 105, 235, 1, '280', '280', 3, '2020-11-06 03:46:19', '2020-11-06 03:46:19'),
(223, 106, 256, 1, '150', '150', 3, '2020-11-06 09:13:03', '2020-11-06 09:13:03'),
(224, 107, 257, 1, '220', '220', 3, '2020-11-07 02:57:26', '2020-11-07 02:57:26'),
(225, 108, 256, 1, '150', '150', 3, '2020-11-07 10:01:12', '2020-11-07 10:01:12'),
(226, 109, 256, 1, '150', '150', 3, '2020-11-07 13:52:54', '2020-11-07 13:52:54'),
(227, 110, 273, 2, '130', '260', 3, '2020-11-11 13:27:08', '2020-11-11 13:27:08'),
(228, 111, 257, 1, '220', '220', 3, '2020-11-12 03:11:03', '2020-11-12 03:11:03'),
(229, 112, 256, 2, '150', '300', 3, '2020-11-12 08:46:46', '2020-11-12 08:46:46'),
(230, 113, 258, 1, '520', '520', 3, '2020-11-12 08:50:34', '2020-11-12 08:50:34'),
(231, 114, 257, 1, '220', '220', 3, '2020-11-12 08:51:31', '2020-11-12 08:51:31'),
(232, 115, 256, 1, '150', '150', 3, '2020-11-12 17:44:43', '2020-11-12 17:44:43'),
(233, 115, 257, 1, '220', '220', 3, '2020-11-12 17:44:43', '2020-11-12 17:44:43'),
(234, 116, 253, 1, '150', '150', 3, '2020-11-13 13:20:54', '2020-11-13 13:20:54'),
(235, 116, 273, 4, '130', '520', 3, '2020-11-13 13:20:54', '2020-11-13 13:20:54'),
(236, 116, 293, 1, '250', '250', 3, '2020-11-13 13:20:54', '2020-11-13 13:20:54'),
(237, 117, 257, 1, '220', '220', 3, '2020-11-14 03:21:20', '2020-11-14 03:21:20'),
(238, 118, 251, 1, '140', '140', 3, '2020-11-16 13:55:31', '2020-11-16 13:55:31'),
(239, 118, 254, 1, '40', '40', 3, '2020-11-16 13:55:31', '2020-11-16 13:55:31'),
(240, 118, 222, 1, '60', '60', 2, '2020-11-16 13:55:31', '2020-11-16 13:55:31'),
(241, 118, 242, 1, '100', '100', 3, '2020-11-16 13:55:31', '2020-11-16 13:55:31'),
(242, 119, 274, 2, '130', '260', 3, '2020-11-17 08:58:42', '2020-11-17 08:58:42'),
(243, 119, 242, 1, '100', '100', 3, '2020-11-17 08:58:42', '2020-11-17 08:58:42'),
(244, 120, 273, 2, '130', '260', 3, '2020-11-19 08:29:12', '2020-11-19 08:29:12'),
(245, 120, 274, 1, '130', '130', 3, '2020-11-19 08:29:12', '2020-11-19 08:29:12'),
(246, 121, 262, 1, '680', '680', 3, '2020-11-19 11:15:55', '2020-11-19 11:15:55'),
(247, 122, 242, 2, '100', '200', 3, '2020-11-20 09:43:28', '2020-11-20 09:43:28'),
(248, 122, 251, 2, '140', '280', 3, '2020-11-20 09:43:28', '2020-11-20 09:43:28'),
(249, 122, 252, 2, '120', '240', 3, '2020-11-20 09:43:28', '2020-11-20 09:43:28'),
(250, 123, 274, 1, '130', '130', 3, '2020-11-20 13:10:11', '2020-11-20 13:10:11'),
(251, 124, 286, 1, '150', '150', 3, '2020-11-20 13:19:22', '2020-11-20 13:19:22'),
(252, 124, 242, 1, '100', '100', 3, '2020-11-20 13:19:22', '2020-11-20 13:19:22'),
(253, 124, 274, 1, '130', '130', 3, '2020-11-20 13:19:22', '2020-11-20 13:19:22'),
(254, 125, 251, 3, '140', '420', 3, '2020-11-21 04:09:08', '2020-11-21 04:09:08'),
(255, 125, 261, 1, '300', '300', 3, '2020-11-21 04:09:08', '2020-11-21 04:09:08'),
(256, 125, 231, 2, '150', '300', 3, '2020-11-21 04:09:08', '2020-11-21 04:09:08'),
(257, 126, 253, 1, '150', '150', 3, '2020-11-21 05:12:47', '2020-11-21 05:12:47'),
(258, 126, 274, 1, '130', '130', 3, '2020-11-21 05:12:47', '2020-11-21 05:12:47'),
(259, 126, 243, 1, '150', '150', 3, '2020-11-21 05:12:47', '2020-11-21 05:12:47'),
(260, 127, 273, 2, '130', '260', 3, '2020-11-21 10:15:21', '2020-11-21 10:15:21'),
(261, 127, 274, 1, '130', '130', 3, '2020-11-21 10:15:21', '2020-11-21 10:15:21'),
(262, 127, 228, 1, '120', '120', 3, '2020-11-21 10:15:21', '2020-11-21 10:15:21'),
(263, 127, 242, 2, '100', '200', 3, '2020-11-21 10:15:21', '2020-11-21 10:15:21'),
(264, 128, 242, 2, '100', '200', 3, '2020-11-21 14:21:39', '2020-11-21 14:21:39'),
(265, 129, 240, 2, '330', '660', 3, '2020-11-22 10:33:18', '2020-11-22 10:33:18'),
(266, 130, 256, 1, '150', '150', 3, '2020-11-22 14:04:40', '2020-11-22 14:04:40'),
(267, 131, 277, 1, '200', '200', 3, '2020-11-22 14:19:13', '2020-11-22 14:19:13'),
(268, 132, 250, 1, '100', '100', 3, '2020-11-22 14:25:25', '2020-11-22 14:25:25'),
(269, 132, 277, 1, '200', '200', 3, '2020-11-22 14:25:25', '2020-11-22 14:25:25'),
(270, 133, 256, 1, '150', '150', 3, '2020-11-22 14:35:26', '2020-11-22 14:35:26'),
(271, 134, 274, 3, '130', '390', 3, '2020-11-23 07:21:15', '2020-11-23 07:21:15'),
(272, 135, 273, 2, '130', '260', 3, '2020-11-23 10:26:13', '2020-11-23 10:26:13'),
(273, 136, 228, 1, '120', '120', 3, '2020-11-23 10:33:26', '2020-11-23 10:33:26'),
(274, 137, 228, 1, '120', '120', 3, '2020-11-23 10:38:00', '2020-11-23 10:38:00'),
(275, 137, 273, 2, '130', '260', 3, '2020-11-23 10:38:00', '2020-11-23 10:38:00'),
(276, 138, 235, 1, '280', '280', 3, '2020-11-23 12:51:02', '2020-11-23 12:51:02'),
(277, 138, 251, 2, '140', '280', 3, '2020-11-23 12:51:02', '2020-11-23 12:51:02'),
(278, 138, 273, 2, '130', '260', 3, '2020-11-23 12:51:02', '2020-11-23 12:51:02'),
(279, 139, 235, 1, '280', '280', 3, '2020-11-25 10:58:04', '2020-11-25 10:58:04'),
(280, 140, 235, 1, '280', '280', 3, '2020-11-25 10:58:04', '2020-11-25 10:58:04'),
(281, 141, 235, 1, '280', '280', 3, '2020-11-25 10:58:05', '2020-11-25 10:58:05'),
(282, 142, 305, 1, '350', '350', 3, '2020-11-25 13:36:22', '2020-11-25 13:36:22'),
(283, 142, 258, 1, '520', '520', 3, '2020-11-25 13:36:22', '2020-11-25 13:36:22'),
(284, 143, 261, 1, '300', '300', 3, '2020-11-27 07:45:38', '2020-11-27 07:45:38'),
(285, 144, 275, 1, '200', '200', 3, '2020-11-27 08:17:08', '2020-11-27 08:17:08'),
(286, 144, 276, 1, '200', '200', 3, '2020-11-27 08:17:08', '2020-11-27 08:17:08'),
(287, 144, 273, 1, '130', '130', 3, '2020-11-27 08:17:08', '2020-11-27 08:17:08'),
(288, 144, 261, 1, '300', '300', 3, '2020-11-27 08:17:08', '2020-11-27 08:17:08'),
(289, 144, 289, 1, '150', '150', 3, '2020-11-27 08:17:08', '2020-11-27 08:17:08'),
(290, 145, 273, 3, '130', '390', 3, '2020-11-27 13:22:50', '2020-11-27 13:22:50'),
(291, 145, 286, 1, '150', '150', 3, '2020-11-27 13:22:50', '2020-11-27 13:22:50'),
(292, 146, 261, 1, '300', '300', 3, '2020-11-28 08:57:35', '2020-11-28 08:57:35'),
(293, 147, 273, 1, '130', '130', 3, '2020-11-28 12:01:33', '2020-11-28 12:01:33'),
(294, 148, 273, 1, '130', '130', 3, '2020-11-28 12:08:50', '2020-11-28 12:08:50'),
(295, 148, 251, 1, '140', '140', 3, '2020-11-28 12:08:50', '2020-11-28 12:08:50'),
(296, 148, 286, 1, '150', '150', 3, '2020-11-28 12:08:50', '2020-11-28 12:08:50'),
(297, 149, 251, 1, '140', '140', 3, '2020-11-28 12:25:22', '2020-11-28 12:25:22'),
(298, 149, 273, 1, '130', '130', 3, '2020-11-28 12:25:22', '2020-11-28 12:25:22'),
(299, 149, 286, 1, '150', '150', 3, '2020-11-28 12:25:22', '2020-11-28 12:25:22'),
(300, 150, 228, 3, '120', '360', 3, '2020-11-29 09:41:09', '2020-11-29 09:41:09'),
(301, 150, 274, 1, '130', '130', 3, '2020-11-29 09:41:10', '2020-11-29 09:41:10'),
(302, 150, 273, 1, '130', '130', 3, '2020-11-29 09:41:10', '2020-11-29 09:41:10'),
(303, 151, 256, 1, '150', '150', 3, '2020-11-29 15:07:05', '2020-11-29 15:07:05'),
(304, 151, 257, 1, '220', '220', 3, '2020-11-29 15:07:05', '2020-11-29 15:07:05'),
(305, 152, 242, 10, '100', '1000', 3, '2020-12-01 05:20:21', '2020-12-01 05:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_categories`
--

CREATE TABLE `permission_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `rating` double(4,2) NOT NULL DEFAULT 0.00,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `store_id`, `name`, `price`, `image`, `description`, `status`, `rating`, `rank`, `created_at`, `updated_at`) VALUES
(180, 1, 2, 'Cafe Latte', '150', 'images/products/5dca8c545d6b0.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:00', '2020-10-22 06:34:00'),
(181, 1, 2, 'Cafe Mocha (mochhaccino)', '180', 'images/products/5dca8ca22dc72.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:00', '2020-10-22 06:34:00'),
(182, 1, 2, 'Caramel Latte', '180', 'images/products/5dca8ccaa463d.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:00', '2020-10-22 06:34:00'),
(183, 1, 2, 'Honey Latte', '180', 'images/products/5dca8d0627de9.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:00', '2020-10-22 06:34:00'),
(192, 3, 2, 'Iced Cappuccino', '170', 'images/products/5dca8ea49f5d1.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:01', '2020-10-22 06:34:01'),
(193, 3, 2, 'Iced Americano', '140', 'images/products/5dca8ec9e466b.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:01', '2020-10-22 06:34:01'),
(194, 3, 2, 'Iced mocha', '200', 'images/products/5dca8ee20bccb.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:01', '2020-10-22 06:34:01'),
(195, 3, 2, 'Iced Caramel Latte', '170', 'images/products/5dca8f0a730ce.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:01', '2020-10-22 06:34:01'),
(196, 3, 2, 'Spcl cold coffee', '220', 'images/products/5dca8f246eb37.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:01', '2020-10-22 06:34:01'),
(197, 4, 2, 'Blended Mocha', '210', 'images/products/5dca8f47d81a0.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:01', '2020-10-22 06:34:01'),
(198, 4, 2, 'Blended Vanilla Mocha', '230', 'images/products/5dca8f72c6b89.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:01', '2020-10-22 06:34:01'),
(199, 4, 2, 'Caramel Machiato', '220', 'images/products/5dca8f9445f39.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:01', '2020-10-22 06:34:01'),
(200, 4, 2, 'Spcl Orieoccino', '220', 'images/products/5dca8fb2d6a20.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:02', '2020-10-22 06:34:02'),
(201, 5, 2, 'Icecream shake vanilla', '210', 'images/products/5dca8fcca70eb.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:02', '2020-10-22 06:34:02'),
(202, 5, 2, 'Icream shake chocolate', '210', 'images/products/5dca9022590b2.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:02', '2020-10-22 06:34:02'),
(203, 5, 2, 'Oreo shake', '230', 'images/products/5dca903b422ee.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:02', '2020-10-22 06:34:02'),
(204, 5, 2, 'Kitkat shake', '230', 'images/products/5dca905389264.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:02', '2020-10-22 06:34:02'),
(205, 5, 2, 'Mango smoothie', '220', 'images/products/5dca90ad42553.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:02', '2020-10-22 06:34:02'),
(206, 5, 2, 'Kiwi smoothie', '240', 'images/products/5dca90c5334ea.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:02', '2020-10-22 06:34:02'),
(207, 5, 2, 'Strawberry smoothie', '220', 'images/products/5dca90db5862e.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:02', '2020-10-22 06:34:02'),
(208, 5, 2, 'Banana smoothie', '180', 'images/products/5dca90f46fb50.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:02', '2020-10-22 06:34:02'),
(209, 5, 2, 'Milk shake', '160', 'images/products/5dca91097e3a6.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:02', '2020-10-22 06:34:02'),
(210, 6, 2, 'Virjin mojito', '150', 'images/products/5dca9124901da.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:02', '2020-10-22 06:34:02'),
(211, 6, 2, 'Blue ocean', '220', 'images/products/5dca914738dcc.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:02', '2020-10-22 06:34:02'),
(212, 6, 2, 'Ice lemonade', '160', 'images/products/5dcb9d6b1d654.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(213, 6, 2, 'Blended Lemonade', '180', 'images/products/5dcb9dae8121b.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(214, 6, 2, 'Lemon sprite', '80', 'images/products/5dcb9dd005d08.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(215, 6, 2, 'Fresh lime', '70', 'images/products/5dcb9deabe2c3.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(216, 6, 2, 'Peach Ice Tea', '160', 'images/products/5dca7f167e368.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(218, 7, 3, 'Chi Monchow Soup', '150', 'images/products/5dcb9e09dfb15.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(222, 8, 2, 'Cold Drink', '60', 'images/products/5dcba000505f7.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(223, 8, 2, 'Jumbo', '280', 'images/products/5dcba08b206c2.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(224, 8, 2, 'Juice Glass', '60', 'images/products/5dcba0f5bebca.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(225, 9, 3, 'American Breakfast', '250', 'images/products/5dcba12125b51.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(226, 9, 3, 'Western Breakfast', '350', 'images/products/5dcba1691c410.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(227, 9, 2, 'Muesli', '200', 'images/products/5dcba206e3b14.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(228, 10, 3, 'Leg Piece', '120', 'images/products/5dcba477a187a.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(229, 10, 3, 'Wings', '100', 'images/products/5dcba4962fb72.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(230, 10, 3, 'Lollypop 2pcs', '100', 'images/products/5dcba4b28d369.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(231, 10, 3, 'Chi Stick', '150', 'images/products/5dcba4d5e5cc7.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:03', '2020-10-22 06:34:03'),
(232, 10, 3, 'Chi Popcorn', '160', 'images/products/5dcba51a51cb4.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(233, 10, 3, 'Chi Stripes', '180', 'images/products/5dcba5445e135.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(234, 10, 3, 'Sausage', '150', 'images/products/5dcba562c1c5d.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(235, 11, 3, 'Chi Chilly', '280', 'images/products/5dcba648b2217.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(236, 11, 3, 'Mushroom Chilly', '200', 'images/products/5dcba67104b30.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(237, 11, 3, 'Drums Of Heaven', '300', 'images/products/5dcba79eed0ae.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(238, 11, 3, 'Sausage Chilli', '200', 'images/products/5dcba981c6e60.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(239, 12, 3, 'Veg khaja set', '250', 'images/products/Khajaset.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(240, 12, 3, 'Chi khaja set', '330', 'images/products/Khajaset.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(241, 12, 3, 'Chi tass', '280', 'images/products/5dcbcb90794cd.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(242, 12, 3, 'Chi samosa', '100', 'images/products/5dcbcc0177f01.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(243, 12, 3, 'Chi wrap', '150', 'images/products/wrap.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(245, 13, 3, 'Aaloo sandheko', '120', 'images/products/5dcbce2548390.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(246, 13, 3, 'French fries', '140', 'images/products/5dcbce739e26a.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(247, 13, 3, 'Chips chilly', '160', 'images/products/5dcbcedfa6352.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(248, 13, 3, 'Pepper corn chilly', '180', 'images/products/5dcbcf9ce80a6.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(249, 13, 3, 'Veg stripes', '100', 'images/products/5dcbd0d6ea312.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(250, 13, 3, 'Waiwai sandheko', '100', 'images/products/5dcbc8f5bcd57.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(251, 14, 3, 'Chi burger', '140', 'images/products/5dcbd12bb1f43.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(252, 14, 3, 'Veg burger', '120', 'images/products/5dcbd17539637.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:04', '2020-10-22 06:34:04'),
(253, 14, 3, 'Hot zinger', '150', 'images/products/5dcbd2362c941.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:05', '2020-10-22 06:34:05'),
(254, 14, 3, 'Add on cheese', '40', 'images/products/5dcbd2c6d2a1d.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:49', '2020-10-22 06:33:49'),
(255, 15, 3, 'Veg sandwich', '130', 'images/products/5dcbd35d60959.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:34:05', '2020-10-22 06:34:05'),
(256, 15, 3, 'Chi sandwich', '150', 'images/products/5dcbd3fb9f536.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:48', '2020-10-22 06:33:48'),
(257, 16, 3, 'Cheese pizza  small', '220', 'images/products/pizza.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(258, 16, 3, 'Cheese pizza large', '520', 'images/products/pizza.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(259, 16, 3, 'Veg  pizza small', '240', 'images/products/5dcbd5599f04a.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:51', '2020-10-22 06:33:51'),
(260, 16, 3, 'Veg  pizza large', '540', 'images/products/5dcbd6a5d9f40.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:51', '2020-10-22 06:33:51'),
(261, 16, 3, 'Chi pizza small', '300', 'images/products/5dcbd715989ae.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:49', '2020-10-22 06:33:49'),
(262, 16, 3, 'Chi pizza large', '680', 'images/products/5dcbd74468118.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:51', '2020-10-22 06:33:51'),
(263, 16, 3, 'Mushroom pizza small', '260', 'images/products/5dcbd7d380246.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(264, 16, 3, 'Mushroom pizza large', '580', 'images/products/5dcbd82622b6d.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:51', '2020-10-22 06:33:51'),
(265, 16, 3, 'Spcl pizza small', '360', 'images/products/5dcbd87b61cba.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:51', '2020-10-22 06:33:51'),
(266, 16, 3, 'Spcl pizza large', '750', 'images/products/5dcbd8a880466.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:51', '2020-10-22 06:33:51'),
(267, 16, 3, 'Sausage pizza small', '250', 'images/products/5dcbd8e52a7fa.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:52', '2020-10-22 06:33:52'),
(268, 16, 3, 'Sausage pizza large', '580', 'images/products/5dcbd8fdc5f6a.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:52', '2020-10-22 06:33:52'),
(273, 19, 3, 'Chi momo', '130', 'images/products/5dcbdad4ae068.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:49', '2020-10-22 06:33:49'),
(274, 19, 3, 'Chi fry momo', '130', 'images/products/5dcbdafb01485.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:52', '2020-10-22 06:33:52'),
(275, 19, 3, 'Chi chilly momo', '200', 'images/products/5dcbdb336e35c.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:49', '2020-10-22 06:33:49'),
(276, 19, 3, 'Chi sandheko momo', '200', 'images/products/5dcbdbad8da01.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:52', '2020-10-22 06:33:52'),
(277, 19, 3, 'Chi jhol momo', '200', 'images/products/5dcbdbd91b56c.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(278, 19, 3, 'Chi jhaneko momo', '300', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:52', '2020-10-22 06:33:52'),
(279, 19, 3, 'Veg momo', '110', 'images/products/5dcbdc893ec3a.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(280, 19, 3, 'Veg fry momo', '110', 'images/products/5dcbdcd3d58b8.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:53', '2020-10-22 06:33:53'),
(281, 19, 3, 'Veg chilly momo', '170', 'images/products/5dcbddcbbbb70.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:53', '2020-10-22 06:33:53'),
(282, 19, 3, 'Veg sandheko momo', '170', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:53', '2020-10-22 06:33:53'),
(283, 19, 3, 'Veg jhol momo', '170', 'images/products/5dcbde9350979.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:53', '2020-10-22 06:33:53'),
(284, 19, 3, 'Veg jhaneko momo', '250', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:53', '2020-10-22 06:33:53'),
(285, 20, 3, 'Veg noodle', '110', 'images/products/5dcbdf2ba9d4f.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:53', '2020-10-22 06:33:53'),
(286, 20, 3, 'Chi noodle', '150', 'images/products/5dcbdfb582487.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(287, 20, 3, 'Egg noodle', '130', 'images/products/5dcbdf704216d.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:53', '2020-10-22 06:33:53'),
(288, 20, 3, 'Mix noodle', '180', 'images/products/5dcbdffc9bf97.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:54', '2020-10-22 06:33:54'),
(289, 20, 3, 'Mushroom noodle', '150', 'images/products/5dcbe02eeb423.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:54', '2020-10-22 06:33:54'),
(290, 21, 3, 'Veg thukpa', '130', 'images/products/5dcbe08f23a7e.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:54', '2020-10-22 06:33:54'),
(291, 21, 3, 'Chi thukpa', '180', 'images/products/5dcbe0c4887c0.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(292, 21, 3, 'Mix thukpa', '220', 'images/products/5dcbe0f685cbe.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:54', '2020-10-22 06:33:54'),
(293, 22, 3, 'American Chi chopsey', '250', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:54', '2020-10-22 06:33:54'),
(294, 22, 3, 'Chi chopsey', '220', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:54', '2020-10-22 06:33:54'),
(295, 22, 3, 'Veg chopsey', '180', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:54', '2020-10-22 06:33:54'),
(296, 23, 3, 'Veg fried rice', '150', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:54', '2020-10-22 06:33:54'),
(297, 23, 3, 'Chi fried rice', '180', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:54', '2020-10-22 06:33:54'),
(298, 23, 3, 'Egg fried rice', '170', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:55', '2020-10-22 06:33:55'),
(299, 23, 3, 'Mix fried rice', '200', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:55', '2020-10-22 06:33:55'),
(301, 23, 3, 'Chi chilly gravy', '270', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:55', '2020-10-22 06:33:55'),
(302, 25, 3, 'Golden fried prawn', '550', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:55', '2020-10-22 06:33:55'),
(303, 25, 3, 'Chilly prawn', '600', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:55', '2020-10-22 06:33:55'),
(304, 25, 3, 'Fish nuggets', '350', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:55', '2020-10-22 06:33:55'),
(305, 26, 3, 'Dum biryani', '350', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:55', '2020-10-22 06:33:55'),
(306, 18, 3, 'Chi sizzler', '500', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(307, 27, 2, 'Vanilla scoop', '60', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:55', '2020-10-22 06:33:55'),
(308, 27, 2, 'Chocolate scoop', '60', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:55', '2020-10-22 06:33:55'),
(309, 27, 2, 'Straberry scoop', '60', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:55', '2020-10-22 06:33:55'),
(310, 27, 2, '21st love scoop', '60', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:55', '2020-10-22 06:33:55'),
(311, 27, 2, 'Sundae cup', '100', 'images/products/5dcbb5a783119.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:56', '2020-10-22 06:33:56'),
(312, 27, 2, 'Fantasy 200', '200', 'images/products/logo.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:56', '2020-10-22 06:33:56'),
(314, 27, 2, 'Brownies Sundae', '180', 'images/products/5dcbb78e5b8c5.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:56', '2020-10-22 06:33:56'),
(317, 28, 5, 'Pastry', '100', 'images/products/5dcbb897b9619.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:56', '2020-10-22 06:33:56'),
(325, 28, 2, 'Brownie', '150', 'images/products/5dcbb096cf08e.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:57', '2020-10-22 06:33:57'),
(326, 8, 2, 'Coke', '60', 'images/products/5dcbaff40723d.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:57', '2020-10-22 06:33:57'),
(327, 8, 2, 'Fanta', '60', 'images/products/5dcbafa761a99.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:57', '2020-10-22 06:33:57'),
(329, 8, 2, 'Dew', '60', 'images/products/5dcbaefc883ed.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(331, 8, 2, 'Pepsi', '60', 'images/products/5dcbae54555b8.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:58', '2020-10-22 06:33:58'),
(333, 4, 2, 'Blended caramel machiato', '220', 'images/products/5dcbad307d9c3.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:58', '2020-10-22 06:33:58'),
(334, 8, 2, 'Water', '30', 'images/products/5dcbace84f331.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:49', '2020-10-22 06:33:49'),
(335, 9, 3, 'Masala omlet', '80', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:58', '2020-10-22 06:33:58'),
(336, 9, 3, 'Toasted bread', '30', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:58', '2020-10-22 06:33:58'),
(337, 11, 3, 'Chi Sandeko', '240', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:58', '2020-10-22 06:33:58'),
(339, 1, 2, 'Candel', '60', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:58', '2020-10-22 06:33:58'),
(340, 1, 2, 'Spray', '150', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(342, 11, 3, 'Chi Chhoila', '250', 'images/products/5de508941a22d.jpg', NULL, 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(343, 2, 2, 'HOT LEMON', '60', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(344, 16, 3, 'Cheese Topping', '50', '<p>You did not select a file to upload.</p>', '<p>pizzaa topping cheese</p>', 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(345, 6, 2, 'cold drink 500ml', '100', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(347, 1, 2, 'Double shot cappuccino', '180', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:50', '2020-10-22 06:33:50'),
(348, 6, 2, 'Mint  lemonade', '200', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(349, 1, 2, 'Babyccino', '100', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(350, 1, 2, 'Coupleccino', '150', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(351, 6, 2, 'Iced lemon tea', '160', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(352, 7, 3, 'Veg soup', '110', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(353, 7, 3, 'Veg clear soup', '100', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(354, 11, 3, 'Chilly potato', '180', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(355, 11, 3, 'Honey chilly potato', '200', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(356, 16, 3, 'Veg Delight pizza small', '300', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:33:59', '2020-10-22 06:33:59'),
(357, 16, 3, 'Veg Delight Pizza Large', '680', '<p>You did not select a file to upload.</p>', NULL, 1, 0.00, '0', '2020-10-22 06:34:00', '2020-10-22 06:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `rating` double(4,2) NOT NULL,
  `rating_summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_on` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `type`, `expires_on`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Happy Dashain', 'happy.jpg', 'Type', '2020-08-11 12:00:00', 1, '2020-10-21 11:06:54', '2020-10-21 11:06:54'),
(3, 'Happy Tihar', 'logo.png', 'Type', '2020-08-11 12:00:00', 1, '2020-10-21 11:06:54', '2020-10-21 11:06:54'),
(4, 'Happy Dashain', 'happy.png', 'Type', '2020-08-11 12:00:00', 1, '2020-10-21 11:06:54', '2020-10-21 11:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_passwords`
--

CREATE TABLE `user_passwords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_mobile_no_unique` (`mobile_no`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_access_token_providers`
--
ALTER TABLE `oauth_access_token_providers`
  ADD PRIMARY KEY (`oauth_access_token_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_passwords`
--
ALTER TABLE `user_passwords`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_passwords`
--
ALTER TABLE `user_passwords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
