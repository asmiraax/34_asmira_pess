-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2021 at 03:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrolcar_id` varchar(10) NOT NULL,
  `time_dispatched` datetime NOT NULL,
  `time_arrived` datetime DEFAULT NULL,
  `time_completed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrolcar_id`, `time_dispatched`, `time_arrived`, `time_completed`) VALUES
(49, 'QX3334E', '2021-03-03 13:29:35', NULL, '2021-03-08 15:29:37'),
(51, 'QX1111A', '2021-03-03 13:37:57', NULL, '2021-03-04 21:23:54'),
(51, 'QX223A', '2021-03-03 13:37:57', NULL, '2021-03-08 15:12:45'),
(52, 'QV1123V', '2021-03-03 13:39:39', '2021-03-03 14:42:01', '2021-03-03 14:41:58'),
(52, 'QX222B', '2021-03-03 13:39:39', NULL, '2021-03-03 14:15:25'),
(53, 'QX223A', '2021-03-03 13:44:23', NULL, '2021-03-08 15:12:45'),
(53, 'QX999E', '2021-03-03 13:44:23', '2021-03-03 23:01:46', NULL),
(54, 'QX223A', '2021-03-04 14:44:04', NULL, '2021-03-08 15:12:45'),
(54, 'QX3334E', '2021-03-04 14:44:04', NULL, '2021-03-08 15:29:37'),
(55, 'QX1111A', '2021-03-08 14:55:48', NULL, NULL),
(55, 'QX223A', '2021-03-08 14:55:48', NULL, '2021-03-08 15:12:45'),
(56, 'QX1111A', '2021-03-08 15:16:24', NULL, NULL),
(56, 'QX223A', '2021-03-08 15:16:24', NULL, NULL),
(59, 'QX3334E', '2021-03-08 15:24:23', NULL, '2021-03-08 15:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_location` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_location`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(34, 'David', '91234567', '010', 'Jurong', 'Fire at Jurong', '2', '2021-02-23 11:15:53'),
(35, 'David', '91234567', '010', 'CCK', 'Fire at CCK', '2', '2021-02-25 13:58:43'),
(36, 'David', '91234567', '010', 'CCK', 'Fire at CCK', '2', '2021-02-25 14:05:21'),
(37, 'David', '87658762', '010', 'Jurong', 'Fire at Jurong', '2', '2021-02-25 14:07:32'),
(38, 'David', '91234567', '010', 'Jurong', 'Fire at Jurong', '2', '2021-02-25 16:22:54'),
(39, 'James', '87658762', '020', 'cck', 'ttt', '2', '2021-02-25 16:27:38'),
(40, 'James', '87658762', '020', 'cck', 'ttt', '2', '2021-02-25 16:27:59'),
(41, 'James', '87658762', '020', 'cck', 'ttt', '2', '2021-02-25 16:29:26'),
(42, 'James', '87658762', '020', 'cck', 'Riot at cck', '2', '2021-02-25 16:29:44'),
(43, 'David', '87658762', '010', 'Jurong', 'Fire at Jurong', '2', '2021-03-02 11:04:58'),
(44, 'David', '87658762', '010', 'Jurong', 'Fire at Jurong', '2', '2021-03-02 11:05:16'),
(45, 'David', '87658762', '020', 'Tiong Bahru', 'Riot at Tiong Bahru', '2', '2021-03-02 16:39:51'),
(46, 'David', '87658762', '030', 'Jurong', 'Burglary at Jurong', '2', '2021-03-02 16:45:06'),
(47, 'David', '95648374', '010', 'Bishan', 'Fire at Bishan', '2', '2021-03-02 16:51:20'),
(48, 'David', '95648374', '010', 'Bishan', 'Fire at Bishan', '2', '2021-03-02 16:51:26'),
(49, 'David', '87658762', '010', 'Jurong', 'Fire at Jurong', '3', '2021-03-02 16:57:56'),
(50, 'David', '91234567', '010', 'Jurong', 'Fire at Jurong', '2', '2021-03-03 13:30:17'),
(51, 'David', '91234567', '010', 'Jurong', 'Fire at Jurong', '3', '2021-03-03 13:37:57'),
(52, 'David', '91234567', '010', 'Jurong', 'Fire at JUrong', '3', '2021-03-03 13:39:39'),
(53, 'James', '87658762', '020', 'cck', 'Riot at CCK\r\n', '2', '2021-03-03 13:44:23'),
(54, 'David', '87658762', '010', 'CCK', 'Fire at CCK', '2', '2021-03-04 14:44:04'),
(55, 'James', '87658762', '010', 'CCK', 'Fire at CCK', '2', '2021-03-08 14:55:48'),
(56, 'James', '87658762', '010', 'CCK', 'Fire at CCK', '2', '2021-03-08 15:16:24'),
(57, 'James', '87658762', '010', 'CCK', 'Fire at CCK', '2', '2021-03-08 15:23:47'),
(58, 'James ', '87658762', '010', 'CCK', 'Fire at CCK', '2', '2021-03-08 15:23:57'),
(59, 'James ', '87658762', '010', 'CCK', 'Fire at CCK', '2', '2021-03-08 15:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `incident_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `incident_status_desc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violent '),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('080', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QV1123V', '1'),
('QX1111A', '1'),
('QX222B', '1'),
('QX223A', '1'),
('QX3334E', '1'),
('QX7774', '1'),
('QX999E', '1'),
('QX5521W', '3'),
('QX555T', '3'),
('QX8885', '3');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('4', 'Arrived'),
('1', 'Dispatched'),
('3', 'Free'),
('2', 'Patrol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incident_id`,`patrolcar_id`),
  ADD KEY `patrolcar_id` (`patrolcar_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `incident_type_id` (`incident_type_id`,`incident_status_id`),
  ADD KEY `incident_type_id_2` (`incident_type_id`,`incident_status_id`),
  ADD KEY `incident_status_id` (`incident_status_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`),
  ADD KEY `patrolcar_status_id` (`patrolcar_status_id`),
  ADD KEY `patrolcar_status_id_2` (`patrolcar_status_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`),
  ADD KEY `patrolcar_status_desc` (`patrolcar_status_desc`),
  ADD KEY `patrolcar_status_desc_2` (`patrolcar_status_desc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD CONSTRAINT `dispatch_ibfk_1` FOREIGN KEY (`patrolcar_id`) REFERENCES `patrolcar` (`patrolcar_id`),
  ADD CONSTRAINT `dispatch_ibfk_2` FOREIGN KEY (`incident_id`) REFERENCES `incident` (`incident_id`);

--
-- Constraints for table `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `incident_ibfk_1` FOREIGN KEY (`incident_type_id`) REFERENCES `incident_type` (`incident_type_id`),
  ADD CONSTRAINT `incident_ibfk_2` FOREIGN KEY (`incident_status_id`) REFERENCES `incident_status` (`incident_status_id`);

--
-- Constraints for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD CONSTRAINT `patrolcar_ibfk_1` FOREIGN KEY (`patrolcar_status_id`) REFERENCES `patrolcar_status` (`patrolcar_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
