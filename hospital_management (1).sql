-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 04:48 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE `clinics` (
  `id` int(11) NOT NULL,
  `clinic_name` varchar(250) NOT NULL,
  `clinic_email` varchar(250) NOT NULL,
  `clinic_address` varchar(250) NOT NULL,
  `clinic_phone` varchar(100) NOT NULL,
  `clinic_password` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `clinic_name`, `clinic_email`, `clinic_address`, `clinic_phone`, `clinic_password`, `created_at`) VALUES
(1, 'open test open last', 'clinic@123', 'thdr', '66557858', '$2y$10$W.h0.Q8GJ5OVeWP0w8TwwuZf8cc1WxRo4sagkRv4dCVwNeU0WaoVy', '2021-08-16 16:21:30'),
(2, 'clinic name', 'test2@123', 'clinic address', '23324', '$2y$10$UrB3V0AS4hz149aqjUS5eeUWAME5WD96JV6aOzCLFIorcm7Zo6sV2', '2021-08-17 02:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `complaint_details` text NOT NULL,
  `solution` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `complaint_type`, `complaint_details`, `solution`) VALUES
(1, 'test compalint1', 'complaint details updated1', 'complaint details updated1'),
(2, 'complaint test 2', 'complaint 2', 'complaint 2 details');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `doc_name` varchar(250) NOT NULL,
  `doc_email` varchar(250) NOT NULL,
  `doc_address` varchar(250) NOT NULL,
  `doc_phone` varchar(100) NOT NULL,
  `doc_password` varchar(250) NOT NULL,
  `doc_area_speciality` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `doc_name`, `doc_email`, `doc_address`, `doc_phone`, `doc_password`, `doc_area_speciality`) VALUES
(1, 'doctoe1', '', 'karnataka', '2143564376576', '', 'dentist'),
(2, 'open test open last', 'doc@123', 'thdr', '66557858', '$2y$10$5qQQp4EjLe6FwXr2DbK8vepsK/Z/l8zE.ZbNvqBsI9nxVS.dkn8KW', 'dentist'),
(3, 'open test open last', 'doc@gmail.com', 'thdr', '66557858', '$2y$10$D.NhlItyyggYh2fqt8gTlubdbeGEoPzeuJUTpkR2S7DGJFZdmMm5u', 'physio'),
(4, 'doc test2', 'doc_test2@gmail.com', 'bangalore', '66557858', '$2y$10$Vm6cYtkEsoiYEZpygFvmZ.fP/qXY9s5WsODCqsnENWIu0fmD3qw0S', 'physio'),
(5, 'doctes3', 'doc3@gmail.com', 'kerala', '66557858', '$2y$10$ikmbohXZoZTwWwgxhPZ3duSah8E7.HQ/oTMHoqEpjtSawr1Hkebxa', 'ortho');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(250) NOT NULL,
  `patient_email` varchar(250) NOT NULL,
  `patient_password` varchar(250) NOT NULL,
  `patient_address` varchar(250) NOT NULL,
  `patient_phone` varchar(100) NOT NULL,
  `patient_diagnose` varchar(250) NOT NULL,
  `patient_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `patient_name`, `patient_email`, `patient_password`, `patient_address`, `patient_phone`, `patient_diagnose`, `patient_created_at`) VALUES
(2, 'test12', 'dhg@gmail.com', '$2y$10$R.b7izlUJ55zx1k33fpNq.D1te5pLffl.lLyBH7Io.XPVIonsm3G2', 'thdr', '665578589', 'cancer', '2021-08-16 17:33:55'),
(6, 'doll', 'doll@123', '$2y$10$7SoSMCEivf4YMyhuLgar6uw4jIkSn9JT81atCVSSOzryJw2a8qkq.', 'thdr', '66557858', 'jaundis', '2021-08-17 02:13:01'),
(7, 's1', 'd1@123', '$2y$10$6mENSKsObiHsUdVSq.gcN.5RxQsqoWOQHEaZSyZUX5YBvnsoAYvw6', 'thdr', '66557858', '', '2021-08-16 12:00:22'),
(8, 'test1', 'test2@123', '$2y$10$11Py8MBSM83RBAbpEGEZHOjw3K0wgc84LuR95U7kjZs5R7361nh5e', 'thdr', '66557858', '', '2021-08-16 12:03:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinics`
--
ALTER TABLE `clinics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
