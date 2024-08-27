-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2024 at 12:36 PM
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
-- Database: `users_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `students_reg_data`
--

CREATE TABLE `students_reg_data` (
  `id` int(11) NOT NULL DEFAULT 0,
  `eiin` int(6) NOT NULL,
  `class` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `class_roll` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `section` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `shift` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `year` int(4) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fname` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mname` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dob` date NOT NULL,
  `religion` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `zilla` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thana` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_office` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sub1` int(3) NOT NULL,
  `sub2` int(3) NOT NULL,
  `sub3` int(3) NOT NULL,
  `sub4` int(3) NOT NULL,
  `sub5` int(3) NOT NULL,
  `sub6` int(3) NOT NULL,
  `sub7` int(3) NOT NULL,
  `sub8` int(3) NOT NULL,
  `sub9` int(3) NOT NULL,
  `sub10` int(3) NOT NULL,
  `sub11` int(3) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_reg_data`
--

INSERT INTO `students_reg_data` (`id`, `eiin`, `class`, `class_roll`, `section`, `shift`, `year`, `name`, `fname`, `mname`, `photo`, `dob`, `religion`, `gender`, `zilla`, `thana`, `post_office`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`, `sub8`, `sub9`, `sub10`, `sub11`, `PostingDate`) VALUES
(1, 115974, 'Eight', '', '', '', 0, '', '', '', '', '0000-00-00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-11 11:05:03'),
(2, 115974, 'Eight', '100', 'A', 'Morning', 0, 'MD.ARIFUL ', 'Md. Mizanur Rahman', 'mname', '', '2021-03-11', 'Islam', '1', 'JASHORE', 'JASHORE SA', 'GPO', 101, 102, 107, 108, 109, 111, 127, 150, 154, 134, 148, '2021-03-11 11:06:06'),
(3, 115974, 'Eight', '100', 'A', 'Morning', 0, 'Kazi Refat', 'Md. Mizanur Rahman', 'Jesmin Rahaman', '', '2021-03-12', 'Islam', '1', 'JASHORE', 'JASHORE SA', 'GPO', 101, 102, 107, 108, 109, 111, 127, 150, 154, 134, 148, '2021-03-11 11:10:14'),
(7, 115974, '', '', '', '', 0, '', '', '', '', '0000-00-00', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-03-11 11:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eiin` int(6) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `eiin`, `password`, `email`, `mobile`, `city`) VALUES
(1, 'JohnDoe', 0, '', 'john.doe@example.com', '1234567890', 'New York'),
(2, 'JaneDoe', 0, '', 'jane.doe@example.com', '0987654321', 'Los Angeles'),
(3, 'Alice', 0, '', 'alice@example.com', '1112223333', 'Chicago'),
(4, 'Bob', 0, '', 'bob@example.com', '4445556666', 'Houston'),
(5, 'Charlie', 0, '', 'charlie@example.com', '7778889999', 'San Francisco'),
(6, 'Eve', 0, '', 'eve@example.com', '6667778888', 'Seattle'),
(7, 'Peter', 0, '', 'peter@example.com', '9998887777', 'Boston'),
(8, 'Mary', 0, '', 'mary@example.com', '3332221111', 'Miami'),
(9, 'David', 0, '', 'david@example.com', '5554443333', 'Dallas'),
(10, 'Sophia', 0, '', 'sophia@example.com', '2223334444', 'Denver'),
(11, 'Michael', 0, '', 'michael@example.com', '8889990000', 'Phoenix'),
(12, 'Olivia', 0, '', 'olivia@example.com', '7776665555', 'Philadelphia'),
(13, 'William', 0, '', 'william@example.com', '6665554444', 'Detroit'),
(14, 'Emma', 0, '', 'emma@example.com', '4443332222', 'Portland'),
(15, 'Benjamin', 0, '', 'benjamin@example.com', '1110009999', 'San Diego'),
(16, 'Ava', 0, '', 'ava@example.com', '2221110000', 'Las Vegas'),
(17, 'James', 0, '', 'james@example.com', '9990001111', 'Austin'),
(18, 'Mia', 0, '', 'mia@example.com', '3334445555', 'San Antonio'),
(19, 'Alexander', 0, '', 'alexander@example.com', '5554443333', 'Minneapolis'),
(20, 'Charlotte', 0, '', 'charlotte@example.com', '7778889999', 'Atlanta'),
(21, 'Daniel', 0, '', 'daniel@example.com', '8887776666', 'New Orleans'),
(22, 'Emily', 0, '', 'emily@example.com', '6667778888', 'Orlando'),
(23, 'Jack', 0, '', 'jack@example.com', '1112223333', 'Nashville'),
(24, 'Madison', 0, '', 'madison@example.com', '4445556666', 'Seattle'),
(25, 'Noah', 0, '', 'noah@example.com', '7778889999', 'Chicago'),
(26, 'Grace', 0, '', 'grace@example.com', '6667778888', 'Los Angeles'),
(27, 'Logan', 0, '', 'logan@example.com', '9998887777', 'Dallas'),
(28, 'Sofia', 0, '', 'sofia@example.com', '3332221111', 'Houston'),
(29, 'Ethan', 0, '', 'ethan@example.com', '5554443333', 'Miami'),
(30, 'Liam', 0, '', 'liam@example.com', '01920940627', 'San Francisco'),
(31, 'mozammel', 0, '', 'mozammel79@gmail.com', '01920940626', 'jashore'),
(36, 'mozammel', 115351, '', 'mozammel79@gmail.com', '01920940626', 'jashore'),
(37, 'hasina', 133834, '$2y$10$0sNp4IhOg9I5Vbrlx3OJ1umwLNnn9ruLJSvRKTpvvWr0M36NVco8.', 'mozammel79@gmail.com', '01920940626', 'jashore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
