-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 11, 2023 at 11:11 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsm`
--
CREATE DATABASE IF NOT EXISTS `tsm` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tsm`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `address`, `district`, `city`, `province`, `zip_code`, `country`) VALUES
(1, '2/2 หมู่20', 'ขามเรียง', 'กันทรวิชัย', 'มหาสารคาม', '44150', 'ประเทศไทย'),
(2, '14/1 หมู่1', 'ท่าขอนยาง', 'กันทรวิชัย', 'มหาสารคาม', '44150', 'ประเทศไทย');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` int(11) NOT NULL DEFAULT 0,
  `color_type` enum('white','yellow','blue','red','green','black','brown','azure','ivory','teal','silver','purple','navy blue','pea green','gray','orange','maroon','charcoal','aquamarine','coral','fuchsia','wheat','lime','crimson','khaki','hot pink','magenta','olden','plum','olive','cyan') DEFAULT NULL,
  `paint_type` enum('doraemon','ultraman','suksanman') DEFAULT NULL,
  `style_type` enum('color','paint') NOT NULL DEFAULT 'color',
  `size` enum('S','M','L') NOT NULL DEFAULT 'S',
  `price` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_brand` (`brand`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`brand`, `color_type`, `paint_type`, `style_type`, `size`, `price`) VALUES
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'white', NULL, 'color', 'S', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'white', NULL, 'color', 'M', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'black', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),
(1, 'white', NULL, 'color', 'L', 595000),

(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'white', NULL, 'color', 'S', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'white', NULL, 'color', 'M', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'black', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),
(2, 'white', NULL, 'color', 'L', 595000),

(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'doramon', 'paint', 'L', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'doramon', 'paint', 'M', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'ultraman', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),
(1, NULL, 'doramon', 'paint', 'S', 595000),


(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'doramon', 'paint', 'L', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'doramon', 'paint', 'M', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'ultraman', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000),
(2, NULL, 'doramon', 'paint', 'S', 595000);



-- --------------------------------------------------------

--
-- Table structure for table `cars_brand`
--

CREATE TABLE IF NOT EXISTS `cars_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars_brand`
--

INSERT INTO `cars_brand` (`id`, `name`) VALUES
(1, 'ISU'),
(2, 'SCA');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `firstname`, `lastname`, `phone`) VALUES
(1, 'Imjai', 'Tanee', '0987654321'),
(2, 'Imjung', 'Tana', '0981234567');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE IF NOT EXISTS `purchases` (
  `trans_id` varchar(20) NOT NULL DEFAULT 'SS-20230211-1200-001',
  `status` enum('pre-purchase','paid','arriving','arrived') NOT NULL DEFAULT 'pre-purchase',
  `address` int(11) NOT NULL,
  `cars` int(11) DEFAULT NULL,
  `total_price` double NOT NULL DEFAULT 0,
  `date` datetime DEFAULT current_timestamp(),
  `customer` int(11) NOT NULL,
  PRIMARY KEY (`trans_id`),
  KEY `fk_car` (`cars`),
  KEY `fk_customer` (`customer`),
  KEY `fk_address` (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`trans_id`, `status`, `address`, `cars`, `total_price`, `date`, `customer`) VALUES
('SS-20230211-1200-001', 'paid', 1, 18, 595000, '2023-02-11 16:10:12', 1),
('SS-20230211-1200-002', 'arriving', 2, 16, 595000, '2023-02-11 16:10:12', 2),
('SS-20230211-1200-003', 'arriving', 1, 14, 590000, '2023-02-11 17:35:25', 1),
('SS-20230211-1200-004', 'arriving', 1, 14, 590000, '2023-02-11 17:39:56', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `fk_brand` FOREIGN KEY (`brand`) REFERENCES `cars_brand` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `fk_car` FOREIGN KEY (`cars`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`address`) REFERENCES `address` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
