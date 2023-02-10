-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 03, 2023 at 10:52 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SingHealth`
drop database if exists `SingHealth`;
CREATE DATABASE IF NOT EXISTS `SingHealth` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `SingHealth`;
--
-- Table structure for table `Didactic_Attendance`
--

CREATE TABLE `Didactic_Attendance` (
  `MCR_No` varchar(50) NOT NULL,
  `Billing_Name` varchar(50) NOT NULL,
  `Month` varchar(50) NOT NULL,
  `Total_Tracked_Sessions` varchar(50) NOT NULL,
  `Number_Sessions_Attended` varchar(50) NOT NULL,
  `Percentage_Sessions_Attended` varchar(50) NOT NULL,
  `MMYYYY` varchar(50) NOT NULL,
  `Posting_Institution` varchar(50) NOT NULL,
  `Posting_Department` varchar(50) NOT NULL,
  `Compliance_or_Not` varchar(50) NOT NULL,
  `Didactic_Attendance_Deleted` boolean DEFAULT false
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Didactic_Attendance` (`MCR_No`, `Billing_Name`, `Month`, 
`Total_Tracked_Sessions`, `Number_Sessions_Attended`, `Percentage_Sessions_Attended`, `MMYYYY`, `Posting_Institution`, `Posting_Department`, `Compliance_or_Not`, `Didactic_Attendance_Deleted`) VALUES
('M11367A', 'SGHGasEnt', 'July', '14', '14', '100%', '072023', 'TestInstitution', 'TestDepartment', 'Yes', 'false'),
('M11367A', 'SGHGasEnt', 'August', '14', '10', '71%', '082023', 'TestInstitution', 'TestDepartment', 'Yes', 'false'),
('M11367A', 'SGHGasEnt', 'January', '14', '14', '100%', '012023', 'TestInstitution', 'TestDepartment', 'Yes', 'false'),
('M11367A', 'SGHGasEnt', 'February', '14', '10', '60%', '022023', 'TestInstitution', 'TestDepartment', 'No', 'false'),
('M16782H', 'CGHGasHep', 'July', '12', '12', '100%', '072023', 'TestInstitution', 'TestDepartment', 'Yes', 'false'),
('M16782H', 'CGHGasHep', 'August', '12', '10', '83%', '082023', 'TestInstitution', 'TestDepartment', 'Yes', 'false');

--
-- Table structure for table `IHI`
--

CREATE TABLE `IHI` (
  `MCR_No` varchar(50) NOT NULL,
  `Staff_Name` varchar(50) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Institution` varchar(50) NOT NULL,
  `Completion_of_Emodules` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `IHI` (`MCR_No`, `Staff_Name`, `Designation`, 
`Department`, `Institution`, `Completion_of_Emodules`, `Date`) VALUES
('M11367A', 'Betty Li', 'TestDesignation', 'TestDepartment', 'TestInstitution', 'Yes', '07072023'),
('M16782H', 'Thomas Tan', 'TestDesignation', 'TestDepartment', 'TestInstitution', 'No', '-'),
('M54354E', 'Meow Tian', 'TestDesignation', 'TestDepartment', 'TestInstitution', 'Yes', '07082023'),
('M88791Z', 'Woof Tian', 'TestDesignation', 'TestDepartment', 'TestInstitution', 'Yes', '07092023'),
('M56829J', 'Porridge Tian', 'TestDesignation', 'TestDepartment', 'TestInstitution', 'Yes', '07102023'),
('M83162D', 'Chicken Tian', 'TestDesignation', 'TestDepartment', 'TestInstitution', 'No', '-'),
('M33571G', 'Bird Tian', 'TestDesignation', 'TestDepartment', 'TestInstitution', 'No', '-'),
('M35718D', 'Cat Tian', 'TestDesignation', 'TestDepartment', 'TestInstitution', 'No', '-'),
('M35589A', 'Keyboard Tian', 'TestDesignation', 'TestDepartment', 'TestInstitution', 'Yes', '07112023'),
('M65659J', 'Fat Tian', 'TestDesignation', 'TestDepartment', 'TestInstitution', 'Yes', '07122023');
-- --------------------------------------------------------

-- Table structure for table `Projects`
--
CREATE TABLE `Projects` (
  `MCR_No` varchar(50) NOT NULL,
  `Project_ID` varchar(50) NOT NULL,
  `Project_Type` varchar(50) NOT NULL,
  `Project_Title` varchar(50) NOT NULL,
  `Start_Date` varchar(50) NOT NULL,
  `End_Date` varchar(50) NOT NULL,
  `Date_of_QI_Certification` varchar(50) NOT NULL,
  `PMID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Projects` (`MCR_No`, `Project_ID`, `Project_Type`, `Project_Title`, `Start_Date`, `End_Date`, `Date_of_QI_Certification`, `PMID`) VALUES
('M11367A', '0001', 'QI', 'Testing Title 1', '02022022', '02022023', '02022023', '1'),
('M16782H', '0002', 'QI', 'Testing Title 2', '02022022', '02022023', '02022023', '2'),
('M65889A', '0003', 'QI', 'Testing Title 3', '02022022', '02022023', '02022023', '3'),
('M54354E', '0004', 'QI', 'Testing Title 4', '02022022', 'Ongoing', '-', '4'),
('M88791Z', '0005', 'QI', 'Testing Title 5', '02022022', 'Ongoing', '-', '5'),
('M83162D', '0006', 'QI', 'Testing Title 6', '02022022', 'Ongoing', '-', '6');

-- --------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
