-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2021 at 07:29 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `description` varchar(300) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(50) NOT NULL,
  `category` int(11) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `author`, `post_img`, `category`, `post_date`) VALUES
(1, 'Good Morning', 'dhfsm hjgdkbv,  knfsfnsn sjfdjsdf ', 1, '1614836781-pic3.jpg', 2, '2021-03-04 05:55:42'),
(2, 'sdvgdfg', 'gfsdgsdfgdf', 1, '1614836909-bg.jpg', 1, '2021-03-04 05:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_status` varchar(10) NOT NULL DEFAULT 'Active',
  `category_nme` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_status`, `category_nme`) VALUES
(1, 'ACTIVE', 'Politics'),
(2, 'INACTIVE', 'Education');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`role_id`, `role`) VALUES
(1, 'ADMIN'),
(2, 'NORMAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) NOT NULL,
  `fnme` varchar(20) NOT NULL,
  `lnme` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` int(11) NOT NULL,
  `status` varchar(35) DEFAULT 'ACTIVE',
  `feed_dte` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `fnme`, `lnme`, `username`, `password`, `role`, `status`, `feed_dte`) VALUES
(1, 'Moeed', 'Nawaz', 'moeednawaz', '', 2, 'INACTIVE', '2021-02-20 05:28:08'),
(2, 'Arslan', 'Munir123', 'munirahmad123', '840a3f5a789edc2a3a395d13f789c7eb', 2, 'INACTIVE', '2021-02-20 05:30:32'),
(3, 'Arslan', 'Munir', 'arslanmunir', 'arslan123', 1, 'INACTIVE', '2021-02-20 05:34:08'),
(4, 'Haider ', 'Ali', 'haderali123', '', 2, 'INACTIVE', '2021-02-20 06:02:42'),
(5, 'fsdf', 'gda', 'ggdfgdf', 'dggg', 2, 'INACTIVE', '2021-02-20 06:13:06'),
(6, 'gf', 'Nawaz', 'sdf', '5282b57c6cc7b2caf2ba5f13d9122ca3', 2, 'INACTIVE', '2021-02-20 06:17:12'),
(7, 'Moeed', 'Munir', 'fahadlatif', 'd8e28c1f7a637f0c1f83efb94c3a79e1', 1, 'ACTIVE', '2021-02-23 06:22:51'),
(8, 'Moeed', 'Nawaz2', 'moeednawaz', '827ccb0eea8a706c4c34a16891f84e7b', 2, 'INACTIVE', '2021-02-23 06:26:01'),
(9, 'Moeed', 'Munir', 'moeednawaz5', '12345', 1, 'INACTIVE', '2021-02-24 05:14:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `tbl_role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
