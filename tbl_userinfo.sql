-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2016 at 10:57 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adj_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userinfo`
--

CREATE TABLE `tbl_userinfo` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `confirm_password` varchar(250) NOT NULL,
  `hashkey` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_userinfo`
--

INSERT INTO `tbl_userinfo` (`user_id`, `username`, `email`, `password`, `confirm_password`, `hashkey`) VALUES
(1, 'user1', 'u1l1996@outlook.com', '19b3446c81f9ed72bb1ea8469fc1861c', '19b3446c81f9ed72bb1ea8469fc1861c', 'user11065'),
(2, 'user2', 'u2l1996@gmail.com', '19b3446c81f9ed72bb1ea8469fc1861c', '19b3446c81f9ed72bb1ea8469fc1861c', 'user22314'),
(3, 'user3', 'user312312@gmail.com', 'user3user3', 'user3user3', 'user3'),
(4, 'havoc11', 'sujanhyoju@gmail.com', '5f97edbe5dd492096f7fb83df82ae134', '5f97edbe5dd492096f7fb83df82ae134', 'havoc112312'),
(5, '12345', 'fdgfdg@ggg.com', '827ccb0eea8a706c4c34a16891f84e7b', '827ccb0eea8a706c4c34a16891f84e7b', '123452312'),
(6, 'admin', 'asdasd@gdf.com', '2f3e9eccc22ee583cf7bad86c751d865', '2f3e9eccc22ee583cf7bad86c751d865', 'admin2312');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_userinfo`
--
ALTER TABLE `tbl_userinfo`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `hashkey` (`hashkey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_userinfo`
--
ALTER TABLE `tbl_userinfo`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
