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
('M11367A', 'SGHGasEnt', 'July', '14', '8', '57%', '072022', 'TestInstitution', 'TestDepartment', 'No', 'false'),
('M11367A', 'SGHGasEnt', 'August', '14', '9', '64%', '082022', 'TestInstitution', 'TestDepartment', 'No', 'false'),
('M11367A', 'SGHGasEnt', 'January', '14', '14', '100%', '012022', 'TestInstitution', 'TestDepartment', 'Yes', 'false'),
('M11367A', 'SGHGasEnt', 'February', '14', '9', '64%', '022022', 'TestInstitution', 'TestDepartment', 'No', 'false'),
('M11367A', 'SGHGasEnt', 'July', '14', '14', '100%', '072023', 'TestInstitution', 'TestDepartment', 'Yes', 'false'),
('M11367A', 'SGHGasEnt', 'August', '14', '10', '71%', '082023', 'TestInstitution', 'TestDepartment', 'Yes', 'false'),
('M11367A', 'SGHGasEnt', 'January', '14', '14', '100%', '012023', 'TestInstitution', 'TestDepartment', 'Yes', 'false'),
('M11367A', 'SGHGasEnt', 'February', '14', '9', '64%', '022023', 'TestInstitution', 'TestDepartment', 'No', 'false'),
('M16782H', 'CGHGasHep', 'July', '12', '12', '100%', '072023', 'TestInstitution', 'TestDepartment', 'Yes', 'false'),
('M16782H', 'CGHGasHep', 'August', '12', '10', '83%', '082023', 'TestInstitution', 'TestDepartment', 'Yes', 'false');
----------------------------------------------------------

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
----------------------------------------------------------

--
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
----------------------------------------------------------

--
-- Table structure for table `Procedure_Log`
--

CREATE TABLE `Procedure_Log` (
  `MCR_No` varchar(50) NOT NULL,
  `Procedure_Name` varchar(50) NOT NULL,
  `Date_of_Completion` varchar(50) NOT NULL,
  `CPT` varchar(50) NOT NULL,
  `Total` varchar(50) NOT NULL,
  `Performed` varchar(50) NOT NULL,
  `Observed` varchar(50) NOT NULL,
  `Verified` varchar(50) NOT NULL,
  `Certified` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Procedure_Log` (`MCR_No`, `Procedure_Name`, `Date_of_Completion`, `CPT`, `Total`, `Performed`, `Observed`, `Verified`, `Certified`) VALUES
('M11367A', '', '', '', '', '', '', '', ''),
('M16782H', '', '', '', '', '', '', '', ''),
('M65889A', '', '', '', '', '', '', '', ''),
('M54354E', '', '', '', '', '', '', '', ''),
('M88791Z', '', '', '', '', '', '', '', ''),
('M83162D', '', '', '', '', '', '', '', '');
----------------------------------------------------------

--
-- Table structure for table `Personal_Details`
--

CREATE TABLE `Personal_Details` (
  `Employee_ID` varchar(50) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Staff_Name` varchar(50) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `Programme` varchar(50) NOT NULL,
  `Year_of_Training` varchar(50) NOT NULL,
  `Academic_Year` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Institution` varchar(50) NOT NULL,
  `Academic_Clinical_Programme` varchar(50) NOT NULL,
  `Employment_Status` varchar(50) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `Date_of_Birth` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Registration_Type` varchar(50) NOT NULL,
  `House_Blk_No` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `Building_Name` varchar(50) NOT NULL,
  `Unit_No` varchar(50) NOT NULL,
  `Postal_Code` varchar(50) NOT NULL,
  `Contact_No_Work` varchar(50) NOT NULL,
  `Contact_No_Personal` varchar(50) NOT NULL,
  `Email_Official` varchar(50) NOT NULL,
  `Email_Personal` varchar(50) NOT NULL,
  `BCLS_Expiry_Date` varchar(50) DEFAULT NULL,
  `ACLS_Expiry_Date` varchar(50) DEFAULT NULL,
  `Covid_19_Vaccination_Status` varchar(50) DEFAULT NULL,
  `Date_of_First_Dose` varchar(50) DEFAULT NULL,
  `Date_of_Second_Dose` varchar(50) DEFAULT NULL,
  `Vaccination_Remarks` varchar(50) DEFAULT NULL,
  primary key (MCR_No)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Personal_Details` (`Employee_ID`, `MCR_No`, `Staff_Name`, `Designation`, `Programme`, `Year_of_Training`, `Academic_Year`, `Department`, `Institution`, `Academic_Clinical_Programme`, `Employment_Status`, `Nationality`, `Date_of_Birth`, `Gender`, `Registration_Type`, `House_Blk_No`, `Street`, `Building_Name`, `Unit_No`, `Postal_Code`, `Contact_No_Work`, `Contact_No_Personal`, `Email_Official`, `Email_Personal`, `BCLS_Expiry_Date`, `ACLS_Expiry_Date`, `Covid_19_Vaccination_Status`, `Date_of_First_Dose`, `Date_of_Second_Dose`, `Vaccination_Remarks`) VALUES

('1', 'M11367A', '', '', 'Gastroenterology', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2', 'M16782H', '', '', 'Renal Medicine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('3', 'M65889A', '', '', 'Internal Medicine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('4', 'M54354E', '', '', 'Gastroenterology', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5', 'M88791Z', '', '', 'Renal Medicine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('6', 'M83162D', '', '', 'Internal Medicine', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
----------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
