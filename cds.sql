-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 08:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cds`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('mehedi85', 'Md Mehedi hasan', 'mehedi85@gmail.com', '01400100630', 'Mirpur', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`F_ID`, `name`, `description`, `R_ID`, `images_path`, `options`) VALUES
(1, 'Clothes', 'Donate gently used clothing items to help those in need stay warm and clothed. Your contributions provide essential attire for people facing various challenges.', 1, 'images/don/clothing.png', 'ENABLE'),
(2, 'Footwear', 'Give the gift of comfort and protection by donating shoes and footwear.', 2, 'images/don/sneakers.png', 'ENABLE'),
(3, 'Gadgets', 'Extend a helping hand by donating electronic gadgets and devices. These contributions can enhance access to education, communication, and job opportunities for underserved communities.', 3, 'images/don/gadgets.png', 'ENABLE'),
(4, 'Stationary', ' Provide the tools for learning and creativity by donating stationary supplies. Your contributions empower students and artists to express themselves and excel in their pursuits.', 1, 'images/don/book.png', 'ENABLE'),
(5, 'Food', 'Share nourishment and combat hunger by donating non-perishable food items. Your generosity ensures that individuals and families have access to essential sustenance during difficult times.', 2, 'images/don/shopping-bag.png', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `category_m`
--

CREATE TABLE `category_m` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category_m`
--

INSERT INTO `category_m` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(22, 'Donate money', 500, 'Stay with underprivileged people.', 1, 'images/1.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `donator`
--

CREATE TABLE `donator` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `donator`
--

INSERT INTO `donator` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('birju', 'BIRJU KUMAR', 'bkm123r@gmail.com', '8903079750', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Birju123@'),
('ckumar', 'CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123@'),
('nidha', 'nidha', 'nidha@gmail.com', '998696572', 'Maharashtra', 'suhail'),
('babu1', 'Md mehedi Hasan', 'mehedi193002106@gmail.com', '12', 'dhatka bangladesh', '1122');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('mehedi12', 'Aditi Naik', 'abc@gmail.com', '8654751259', 'mirpur 11', '123456'),
('manager2', 'Mizanur Rahman', 'mizanurrahman9357s@gmail.com', '12', 'dhatka bangladesh', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 5, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 5, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 0, 1, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 0, 1, '2023-09-02', 'birju', 0),
(0, 58, 'Clothes', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 61, 'Stationary', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 58, 'Clothes', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 58, 'Clothes', 0, 1, '2023-09-02', 'birju', 0),
(0, 59, 'Footware', 0, 1, '2023-09-02', 'birju', 0),
(0, 58, 'Clothes', 0, 1, '2023-09-02', 'birju', 0),
(0, 1, 'Clothes', 0, 500, '2023-09-03', 'birju', 0),
(0, 2, 'Footwear', 0, 5, '2023-09-03', 'birju', 0),
(0, 5, 'Food', 0, 4, '2023-09-03', 'birju', 0),
(0, 3, 'Gadgets', 0, 4, '2023-09-03', 'babu1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_c`
--

CREATE TABLE `order_c` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_c`
--

INSERT INTO `order_c` (`order_ID`, `F_ID`, `foodname`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 59, 'Footware', 7, '2023-08-20', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 4, '2023-08-20', 'birju', 0),
(0, 62, 'Food', 3, '2023-08-23', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-23', 'birju', 0),
(0, 62, 'Food', 3, '2023-08-23', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-23', 'birju', 0),
(0, 62, 'Food', 3, '2023-08-23', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-23', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-25', 'birju', 0),
(0, 59, 'Footware', 4, '2023-08-25', 'birju', 0),
(0, 58, 'Clothes', 5, '2023-08-25', 'birju', 0),
(0, 59, 'Footware', 4, '2023-08-25', 'birju', 0),
(0, 58, 'Clothes', 3, '2023-09-01', 'birju', 0),
(0, 59, 'Footware', 4, '2023-09-01', 'birju', 0),
(0, 58, 'Clothes', 3, '2023-09-01', 'birju', 0),
(0, 59, 'Footware', 4, '2023-09-01', 'birju', 0),
(0, 58, 'Clothes', 3, '2023-09-01', 'birju', 0),
(0, 59, 'Footware', 4, '2023-09-01', 'birju', 0),
(0, 59, 'Footware', 4, '2023-09-01', 'birju', 0),
(0, 59, 'Footware', 1, '2023-09-01', 'birju', 0),
(0, 58, 'Clothes', 1, '2023-09-01', 'birju', 0),
(0, 60, 'Gadgets', 2, '2023-09-01', 'birju', 0),
(0, 60, 'Gadgets', 2, '2023-09-01', 'birju', 0),
(0, 60, 'Gadgets', 2, '2023-09-01', 'birju', 0),
(0, 60, 'Gadgets', 2, '2023-09-01', 'birju', 0),
(0, 60, 'Gadgets', 2, '2023-09-01', 'birju', 0),
(0, 59, 'Footware', 1, '2023-09-02', 'birju', 0),
(0, 60, 'Gadgets', 1, '2023-09-02', 'birju', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
