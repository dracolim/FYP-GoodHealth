-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 18, 2023 at 01:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
drop database if exists SingHealth;
CREATE DATABASE IF NOT EXISTS SingHealth DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE SingHealth;
--

-- --------------------------------------------------------
--
-- Table structure for table `personal_details`
--

CREATE TABLE `personal_details` (
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
  `Vaccination_Remarks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `personal_details`
--

INSERT INTO `personal_details` (`Employee_ID`, `MCR_No`, `Staff_Name`, `Designation`, `Programme`, `Year_of_Training`, `Academic_Year`, `Department`, `Institution`, `Academic_Clinical_Programme`, `Employment_Status`, `Nationality`, `Date_of_Birth`, `Gender`, `Registration_Type`, `House_Blk_No`, `Street`, `Building_Name`, `Unit_No`, `Postal_Code`, `Contact_No_Work`, `Contact_No_Personal`, `Email_Official`, `Email_Personal`, `BCLS_Expiry_Date`, `ACLS_Expiry_Date`, `Covid_19_Vaccination_Status`, `Date_of_First_Dose`, `Date_of_Second_Dose`, `Vaccination_Remarks`) VALUES
('MOM12390', 'M11367A', 'Daniel Tyler', 'Senior Resident', 'Gastroenterology', 'SR2', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1989-11-11 00:00:00', 'Male', 'Full', '', '11A Tanglin Hill', '', '', '248000', '92343980', '91391470', 'daniel.tyler@mohh.com.sg', '', '2019-07-20 00:00:00', '2019-08-29 00:00:00', 'Yes', '2021-03-30 00:00:00', '2021-04-20 00:00:00', ''),
('MOM05233', 'M16782H', 'Betty Li', 'Senior Resident', 'Gastroenterology', 'SR2', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singapore PR', '1987-09-02 00:00:00', 'Female', 'Full', '', '44B Jalan Anggerek', '', '', '369000', '', '81838980', 'betty.li@mohh.com.sg', '', '2019-03-23 00:00:00', '2019-04-11 00:00:00', 'Yes', '2021-03-31 00:00:00', '2021-04-21 00:00:00', ''),
('MOM05601', 'M33571G', 'Koh Zheng Tang', 'Senior Resident', 'Renal Medicine', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1991-08-21 00:00:00', 'Male', 'Full', '', '111 Duchess Road', '', '', '269000', '88692800', '98290530', 'zhengtang.koh@mohh.com.sg', '', '', '2021-07-25 00:00:00', 'Yes', '2021-01-14 00:00:00', '2021-02-04 00:00:00', ''),
('MOM06313', 'M35589A', 'Koh Xiaojia Lynette', 'Senior Resident', 'Gastroenterology', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1992-07-23 00:00:00', 'Female', 'Full', '', '700 Tampines Street 71 ', '', '#16-60 ', '520000', '97980650', '', 'lynette.koh@mohh.com.sg', '', '2022-08-31 00:00:00', '2022-10-15 00:00:00', 'Yes', '2021-01-15 00:00:00', '2021-02-10 00:00:00', ''),
('MOM06600', 'M35718D', 'Malcolm Tang', 'Senior Resident', 'Renal Medicine', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Myanmar', '1983-04-25 00:00:00', 'Male', 'Conditional (L3)', '', 'Blk 264D, Compass Vale Bow', '', '#07-30', '544000', '', '96303450', 'malcolm.tang@mohh.com.sg', '', '', '2021-09-01 00:00:00', 'Yes', '2021-02-03 00:00:00', '2021-03-01 00:00:00', ''),
('MOM05928', 'M45528I', 'Brendan Lee Potter', 'Senior Resident', 'Respiratory Medicine', 'SR2', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1989-04-20 00:00:00', 'Male', 'Full', '', '72 Chu Yen Street ', '', '', '669000', '88098560', '', 'bryan.lee.potter@mohh.com.sg', '', '2021-10-08 00:00:00', '2021-11-18 00:00:00', 'Yes', '2021-01-21 00:00:00', '2021-02-16 00:00:00', ''),
('MOM05609', 'M54354E', 'Rahul Rajaratnam', 'Senior Resident', 'Gastroenterology', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1991-08-28 00:00:00', 'Male', 'Full', '', 'Block 111 Woodlands Ave 1', '', '#06-441', '730000', '90259920', '66181540', 'rahul.rajaratnam@mohh.com.sg', '', '2016-10-27 00:00:00', '2016-10-29 00:00:00', 'Yes', '2021-03-17 00:00:00', '2021-04-07 00:00:00', ''),
('MOM05579', 'M56829J', 'Ivanka Lee Xiao Wei', 'Senior Resident', 'Renal Medicine', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1991-02-20 00:00:00', 'Female', 'Full', '', 'BLK 939 Jurong West St 73', '', '#09-429', '640000', '97424710', '67917320', 'ivanka.lee@mohh.com.sg', '', '', '2021-11-18 00:00:00', 'Yes', '2021-02-03 00:00:00', '2021-02-25 00:00:00', ''),
('MOM05459', 'M65659J', 'Chen Youyi', 'Senior Resident', 'Respiratory Medicine', 'SR1', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1989-12-12 00:00:00', 'Female', 'Full', '', '900 Joo Chiat Terrace ', '', '#05-08 ', '427000', '97688160', '', 'youyi.chen@mohh.com.sg', '', '2021-04-22 00:00:00', '2021-06-09 00:00:00', 'No', '', '', ''),
('MOM07177', 'M65889A', 'Sally Pei', 'Senior Resident', 'Gastroenterology', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1993-02-13 00:00:00', 'Female', 'Full', '', '83 Hazel Park Terrace', '', '#11-04  ', '678000', '', '91148250', 'sally.pei@mohh.com.sg', '', '2020-09-10 00:00:00', '2018-10-25 00:00:00', 'Yes', '2021-01-27 00:00:00', '2021-02-17 00:00:00', ''),
('MOM05705', 'M66630D', 'Toh Jiahao Thomas', 'Senior Resident', 'Respiratory Medicine', 'SR1', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1991-02-01 00:00:00', 'Male', 'Full', '', '19A Ford Avenue ', '', '#01-07 ', '268000', '88692870', ' 96269350', 'thomas.toh@mohh.com.sg', '', '2021-08-25 00:00:00', '2021-09-02 00:00:00', 'Yes', '', '2021-02-17 00:00:00', ''),
('MOM04393', 'M83162D', 'Cindee Tan', 'Senior Resident', 'Renal Medicine', 'SR2', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Malaysian', '1988-02-29 00:00:00', 'Female', 'Conditional (L3)', '', 'Block 37D,Kreta Ayer Road', '', '#20-02', '803000', '', '96610520', 'cindee.tan@mohh.com.sg', '', '', '2021-11-14 00:00:00', 'Yes', '2021-03-11 00:00:00', '', ''),
('MOM05690', 'M88791Z', 'Kang Hyun Bin', 'Senior Resident', 'Gastroenterology', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1991-12-05 00:00:00', 'Male', 'Full', '', 'Lorong Gambir', '', '', '536000', '', '91515780', 'hyunbin.kang@mohh.com.sg', '', '', '', 'Yes', '2021-02-09 00:00:00', '2021-03-02 00:00:00', ''),
('MOM11116', 'M11166J', 'Noob Doc', 'Junior Resident', 'Internal Medicine', 'R1', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1989-11-11 00:00:00', 'Male', 'Full', '', '11A Lalalala Hill', '', '', '243400', '92767980', '95351470', 'noob_doc@mohh.com.sg', '', '2019-07-20 00:00:00', '2019-08-29 00:00:00', 'Yes', '2021-03-30 00:00:00', '2021-04-20 00:00:00', ''),
('MOM11117', 'M11166U', 'Pro Doc', 'Senior Resident', 'Renal Medicine', 'SR1', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1999-11-11 00:00:00', 'Male', 'Full', '', '11A Lolololo Hill', '', '', '244400', '92467980', '95341470', 'pro_doc@mohh.com.sg', '', '2019-07-20 00:00:00', '2019-08-29 00:00:00', 'Yes', '2021-03-30 00:00:00', '2021-04-20 00:00:00', '');
-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Award_Category` varchar(300) NOT NULL,
  `Name_of_Award` varchar(300) NOT NULL,
  `FY_of_Award_Received` varchar(300) NOT NULL,
  `Date_of_Award_Received` varchar(300) NOT NULL,
  `Project_ID` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `MCR_No`, `Award_Category`, `Name_of_Award`, `FY_of_Award_Received`, `Date_of_Award_Received`, `Project_ID`) VALUES
(1, 'M11367A', '', '', '', '', ''),
(2, 'M16782H', '', 'Antibiotic stewardship award', '', '2016', ''),
(3, 'M16782H', '', 'Medicine ACP Education Award (Team Education)', '', 'May-19', ''),
(4, 'M16782H', '', '', '', '', ''),
(5, 'M65889A', 'QI award ', 'RISE awards ', '2021', '16-Aug-21', ''),
(6, 'M54354E', '', 'RISE awards: Outstanding resident (R1)', ' ', '2016', ''),
(7, 'M54354E', '', 'NUS Junior Doctor Teaching Award', ' ', '2016', ''),
(8, 'M54354E', '', 'RISE awards: Outstanding resident (R2)', ' ', '2017', ''),
(9, 'M54354E', '', '', '', '', ''),
(10, 'M88791Z', '', '', '', '', ''),
(11, 'M56829J', '', '', '', '', ''),
(12, 'M83162D', '', '', '', '', ''),
(13, 'M33571G', '', 'RISE Award', '', '11-Aug-16', ''),
(14, 'M33571G', '', '', '', '', ''),
(15, 'M35718D', '', '', '', '', ''),
(16, 'M35589A', 'Best House Officer Award (SingHealth Residency Graduation and Best Junior Doctors Award 2017)', ' ', '', '14-Sep-17', ''),
(17, 'M35589A', '', '', '', '', ''),
(18, 'M66630D', 'QI award ', 'CGH QI Festival Silver Award', '2021', '', 'Shortening Wait Time and Implementing Faster Triage (SWIFT) - evaluating and reducing delay to diagnosis and management of lung cancer'),
(19, 'M45528I', '', 'Making A Difference Report Card – SGH RCCM', '', 'Jan-18', ''),
(20, 'M45528I', '', 'Making A Difference Report Card – SGH RCCM', '', 'Mar-18', ''),
(21, 'M45528I', '', 'Poster Award @ APSTH 2018', '', 'Jun-18', ''),
(22, 'M45528I', '', 'Outstanding Resident Award', '', 'Jun-19', ''),
(23, 'M45528I', 'Oustanding Resident', 'RISE awards ', '2019', '', ''),
(24, 'M45528I', 'Oustanding Resident', 'RISE awards ', '2020', '', ''),
(25, 'M65659J', 'QI award ', 'CGH QI Festival Silver Award', '2021', '', 'Shortening Wait Time and Implementing Faster Triage (SWIFT) - evaluating and reducing delay to diagnosis and management of lung cancer');

-- --------------------------------------------------------

--
-- Table structure for table `case_log`
--

CREATE TABLE `case_log` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Case_Name` varchar(300) NOT NULL,
  -- `Subspecialty` varchar(300) NOT NULL,
  `Type_of_Case_Log` varchar(300) NOT NULL,
  `Date_of_Log` varchar(300) NOT NULL,
  `CPT` varchar(300) NOT NULL,
  `Total` varchar(300) NOT NULL,
  `Performed` varchar(300) NOT NULL,
  `Observed` varchar(300) NOT NULL,
  `Verified` varchar(300) NOT NULL,
  `Certified` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `case_log`
--

INSERT INTO `case_log` (`id`, `MCR_No`, `Case_Name`, `Type_of_Case_Log`, `Date_of_Log`, `CPT`, `Total`, `Performed`, `Observed`, `Verified`, `Certified`) VALUES
(1, 'M11367A', 'AKI - Case Log', 'inpatient', '3/2/2022', 'Null', '10', '2', '8', '', 'No'),
(2, 'M16782H', 'CKD - Case Log', 'outpatient', '3/2/2022', 'Null', '36', '1', '4', '', 'No'),
(3, 'M65889A', 'GN - Case Log', 'blue letter', '3/2/2022', 'Null', '37', '13', '24', '', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `didactic_attendance`
--

CREATE TABLE `didactic_attendance` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Month` varchar(300) NOT NULL,
  `Total_tracked_sessions` varchar(300) NOT NULL,
  `Number_of_sessions_attended` varchar(300) NOT NULL,
  `Percentage_of_sessions_attended` varchar(300) NOT NULL,
  `MmYyyy` varchar(300) NOT NULL,
  `Compliance_or_Not` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `didactic_attendance`
--

INSERT INTO `didactic_attendance` (`id`, `MCR_No`, `Month`, `Total_tracked_sessions`, `Number_of_sessions_attended`, `Percentage_of_sessions_attended`, `MmYyyy`,`Compliance_or_Not`) VALUES
(1, 'M11367A', 'July', '14', '14', '1', '07/2022','Yes'),
(2, 'M16782H', 'July', '20', '20', '1', '07/2022','Yes'),
(3, 'M65889A', 'July', '14', '12', '0.8571428571428571', '07/2022', 'Yes'),
(4, 'M54354E', 'July', '12', '9', '0.75', '07/2023', 'Yes'),
(5, 'M88791Z', 'July', '12', '12', '1', '07/2023', 'Yes'),
(6, 'M11367A', 'August', '14', '10', '0.7142857142857143', '08/2022', 'Yes'),
(7, 'M16782H', 'August', '20', '20', '1', '08/2022', 'Yes'),
(8, 'M65889A', 'August', '14', '14', '1', '08/2022', 'Yes'),
(9, 'M54354E', 'August', '12', '10', '0.8333333333333334', '08/2023', 'Yes'),
(10, 'M88791Z', 'August', '12', '10', '0.8333333333333334', '08/2023', 'Yes'),
(11, 'M11367A', 'October', '12', '8', '0.6666666666666666', '10/2022', 'No'),
(12, 'M16782H', 'October', '19', '19', '1', '10/2022', 'Yes'),
(13, 'M65889A', 'October', '12', '12', '1', '10/2022', 'Yes'),
(14, 'M54354E', 'October', '14', '11', '0.7857142857142857', '10/2023', 'Yes'),
(15, 'M88791Z', 'October', '14', '12', '0.8571428571428571', '10/2023', 'Yes'),
(16, 'M11367A', 'November', '12', '11', '0.9166666666666666', '11/2022', 'Yes'),
(17, 'M16782H', 'November', '20', '20', '1', '11/2022', 'Yes'),
(18, 'M65889A', 'November', '12', '11', '0.9166666666666666', '11/2022', 'Yes'),
(19, 'M54354E', 'November', '14', '11', '0.7857142857142857', '11/2023', 'Yes'),
(20, 'M88791Z', 'November', '12', '10', '0.8333333333333334', '11/2023', 'Yes'),
(21, 'M11367A', 'January', '12', '10', '0.8333333333333334', '01/2023', 'Yes'),
(22, 'M16782H', 'December', '13', '13', '1', '12/2022', 'Yes'),
(23, 'M65889A', 'December', '12', '11', '0.9166666666666666', '12/2022', 'Yes'),
(24, 'M54354E', 'December', '14', '13', '0.9285714285714286', '12/2023', 'Yes'),
(25, 'M16782H', 'January', '12', '10', '0.8333333333333334', '01/2023', 'Yes'),
(26, 'M88791Z', 'December', '12', '10', '0.8333333333333334', '12/2023', 'Yes');

-- (1, 'M11367A', 'July', '14', '14', '1', '07/2022', 'Residency', 'MOHH', '','Yes'),
-- (2, 'M16782H', 'July', '20', '20', '1', '07/2022', 'Residency', 'MOHH', '','Yes'),
-- (3, 'M65889A', 'July', '14', '12', '0.8571428571428571', '07/2022','Residency', 'MOHH', '', 'Yes'),
-- (4, 'M54354E', 'July', '12', '9', '0.75', '07/2023', 'Residency', 'MOHH', '','Yes'),
-- (5, 'M88791Z', 'July', '12', '12', '1', '07/2023','Residency', 'MOHH', '','Yes'),
-- (6, 'M11367A', 'August', '14', '10', '0.7142857142857143', '08/2022', 'Residency', 'MOHH', '','Yes'),
-- (7, 'M16782H', 'August', '20', '20', '1', '08/2022','Residency', 'MOHH', '', 'Yes'),
-- (8, 'M65889A', 'August', '14', '14', '1', '08/2022','Residency', 'MOHH', '', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `duty_hour_log`
--

CREATE TABLE `duty_hour_log` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Level` varchar(300) NOT NULL,
  `Submitted` varchar(300) NOT NULL,
  `Submitted_Proportion` varchar(300) NOT NULL,
  `MMYYYY` varchar(300) NOT NULL,
  `Logged_for_month` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `duty_hour_log`
--

INSERT INTO `duty_hour_log` (`id`, `MCR_No`, `Level`, `Submitted`, `Submitted_Proportion`, `MMYYYY`, `Logged_for_month`) VALUES
(1, 'M54354E', '2', '3', '0.5', '12/2022', 'Yes'),
(2, 'M11367A', '3', '4', '0.3', '12/2022', 'No'),
(3, 'M88791Z', '4', '0', '0', '12/2022', 'Yes'),
(4, 'M65889A', '1', '3', '1', '12/2022', 'No');



-- --------------------------------------------------------

--
-- Table structure for table `education_history`
--

CREATE TABLE `education_history` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Year_of_Graduation` varchar(300) NOT NULL,
  `Date_of_Graduation` varchar(300) NOT NULL,
  `Basic_Qualification` varchar(300) NOT NULL,
  `Medical_School` varchar(300) NOT NULL,
  `Country_of_Graduation` varchar(300) NOT NULL,
  `IM_Residency_Start_Date` varchar(300) NOT NULL,
  `IM_Residency_End_Date` varchar(300) NOT NULL,
  `SR_Residency_Programme` varchar(300) NOT NULL,
  `SR_Residency_Start_Date` varchar(300) NOT NULL,
  `SR_Residency_End_Date` varchar(300) NOT NULL,
  `PG_Year` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `education_history`
--

INSERT INTO `education_history` (`id`, `MCR_No`, `Year_of_Graduation`, `Date_of_Graduation`, `Basic_Qualification`, `Medical_School`, `Country_of_Graduation`, `IM_Residency_Start_Date`, `IM_Residency_End_Date`, `SR_Residency_Programme`, `SR_Residency_Start_Date`, `SR_Residency_End_Date`, `PG_Year`) VALUES
(1, 'M11367A', '2014', 'July', 'MBBS', 'Imperial College', 'United Kingdom', '3/7/2017', '1/7/2020', 'Gastroenterology', '2-Jul-20', '6-Oct-23', '8'),
(2, 'M16782H', '2014', 'July', 'MBBS', 'Imperial College', 'United Kingdom', '3/7/2017', '1/7/2020', 'Gastroenterology', '2-Jul-20', '5-Nov-23', '8'),
(3, 'M65889A', '2017', 'April', 'MBBS', 'YLLSOM', 'Singapore', '2/5/2017', '30/6/2020', 'Gastroenterology', '2-Jul-20', '1-Jul-23', '5'),
(4, 'M54354E', '2015', 'April', 'MBBS', 'YLLSOM', 'Singapore', '4/5/2015', '1/7/2020', 'Gastroenterology', '2-Jul-20', '8-Aug-23', '7'),
(5, 'M88791Z', '2015', 'April', 'MBBS', 'National University of Singapore', 'Singapore', '', '', 'Gastroenterology', '2-Jul-20', '1-Jul-23', '7'),
(6, 'M56829J', '2015', 'April', 'MBBS', 'YLLSOM', 'Singapore', '4/5/2015', '1/7/2020', 'Renal Medicine', '02-Jul-20', '1-Jan-24', '7'),
(7, 'M83162D', '2013', 'April', 'MBBS', 'UM', 'Malaysia', '3/7/2017', '1/7/2020', 'Renal Medicine', '02-Jul-20', '9-Jan-24', '9'),
(8, 'M33571G', '2015', 'April', 'MBBS', 'YLLSOM', 'Singapore', '4/5/2015', '1/7/2020', 'Renal Medicine', '02-Jul-20', '1-Jan-24', '7'),
(9, 'M35718D', '2006', 'Mar', 'MBBS', 'Institute of Medicine (I), Yangon, \nMyanmar', 'Myanmar', '3/7/2017', '14/7/2020', 'Renal Medicine', '15-Jul-20', '14-Jan-24', '16'),
(10, 'M35589A', '2016', 'April', 'MBBS', 'YLLSOM', 'Singapore', '3/5/2016', '1/7/2019', 'Respiratory Medicine', '02-Jul-20', '1-Jul-23', '6'),
(11, 'M66630D', '2015', 'April', 'MBBS', 'YLLSOM', 'Singapore', '4/5/2015', '1/7/2020', 'Respiratory Medicine', '02-Jul-20', '1-Jul-23', '7'),
(12, 'M45528I', '2015', 'July', 'MBBS', 'UCL', 'United Kingdom', '3/7/2017', '1/7/2020', 'Respiratory Medicine', '02-Jul-20', '1-Jul-23', '7'),
(13, 'M65659J', '2015', 'June', 'MBBS', 'Uni Adelaide', 'Australia', '1/7/2016', '1/7/2019', 'Respiratory Medicine', '02-Jul-20', '13-Dec-23', '7');

-- --------------------------------------------------------

--
-- Table structure for table `evaluations`
--

CREATE TABLE `evaluations` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Rotation_Period` varchar(300) NOT NULL,
  `Name_of_Evaluation_Form` varchar(300) NOT NULL,
  `Question` varchar(300) NOT NULL,
  `Score` varchar(300) NOT NULL,
  `Evaluator` varchar(300) NOT NULL,
  `Service` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `evaluations`
--

INSERT INTO `evaluations` (`id`, `MCR_No`, `Rotation_Period`, `Name_of_Evaluation_Form`, `Question`,  `Evaluator`, `Service`, `Score`) VALUES
(1, 'M11367A', '7/1/2022-7/31/2022', 'ABC', 'PROFESSIONALISM', 'Dr. Chan, Webber Pak Wo', 'SHS-GASTRO:BASIC ENDO-SGH', '5 (5)'),
(2, 'M65889A', '11/1/2022-11/30/2022', 'DEF', 'PROFESSIONALISM', 'Dr. Chang, Jason Pik Eu', 'SHS-GRM:GERI-CGH', '7 (7)'),
(3, 'M54354E', '11/1/2022-11/30/2022', 'GHI', 'INTERPERSONAL & COMMUNICATION', 'Dr. Tan, Chee Kiat', 'SHS-IM:GEN MED-CGH', '8 (8)'),
(4, 'M88791Z', '12/1/2022-1/3/2023', 'JKL', 'MEDICAL KNOWLEDGE', 'Dr. Ooi, Chun How', 'SHS-GASTRO:GEN GASTROHEP-CGH', '7 (7)');

-- --------------------------------------------------------

--
-- Table structure for table `exam_history`
--

CREATE TABLE `exam_history` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Name_of_Exam` varchar(300) NOT NULL,
  `Date_of_Attempt` varchar(300) NOT NULL,
  `Exam_Status` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `exam_history`
--

INSERT INTO `exam_history` (`id`, `MCR_No`, `Name_of_Exam`, `Date_of_Attempt`, `Exam_Status`) VALUES
(1, 'M11367A', 'MRCP Part 1', 'Sep-16', 'Pass'),
(2, 'M11367A', 'MRCP Part 2a', 'May-17', 'Pass'),
(3, 'M11367A', 'PACES', 'Apr-18', 'Pass'),
(4, 'M16782H', 'MRCP Part 1', 'Jan-16', 'Pass'),
(5, 'M16782H', 'MRCP Part 2a', 'Jun-16', 'Pass'),
(6, 'M16782H', 'PACES', 'Feb-18', 'Pass'),
(7, 'M33571G', 'MRCP Part 1', 'May-18', 'Pass'),
(8, 'M33571G', 'MRCP Part 2a', 'Oct-18', 'Pass'),
(9, 'M33571G', 'PACES', 'Jun-19', 'Pass'),
(10, 'M35589A', 'MRCP Part 1', 'May-16', 'Pass'),
(11, 'M35589A', 'MRCP Part 2a', 'Dec-16', 'Pass'),
(12, 'M35589A', 'PACES', '24-Nov-2020', 'Fail'),
-- take note, this resident tried one more time before passing
(13, 'M35589A', 'PACES', '29-Mar-2021', 'Pass'),
(14, 'M35718D', 'MRCP Part 1', '01-May-2017', 'Pass'),
(15, 'M35718D', 'MRCP Part 2a', '01-Mar-2019', 'Pass'),
(16, 'M35718D', 'PACES', '01-Jun-2019', 'Pass'),
(17, 'M45528I', 'MRCP Part 1', 'Sep-16', 'Pass'),
(18, 'M45528I', 'MRCP Part 2a', 'May-17', 'Pass'),
(19, 'M45528I', 'PACES', 'Oct-19', 'Pass'),
(20, 'M54354E', 'MRCP Part 1', 'Jan-15', 'Pass'),
(21, 'M54354E', 'MRCP Part 2a', 'Jul-15', 'Pass'),
(22, 'M54354E', 'PACES', 'Jun-16', 'Pass'),
(23, 'M56829J', 'MRCP Part 1', 'May-16', 'Pass'),
(24, 'M56829J', 'MRCP Part 2a', 'Dec-16', 'Pass'),
(25, 'M56829J', 'PACES', 'May-20', 'Pass'),
(26, 'M65659J', 'MRCP Part 1', 'Oct-11', 'Pass'),
(27, 'M65659J', 'MRCP Part 2a', 'May-13', 'Pass'),
(28, 'M65659J', 'PACES', 'Oct-15', 'Pass'),
(29, 'M65889A', 'MRCP Part 1', 'Sep-17', 'Pass'),
(30, 'M65889A', 'MRCP Part 2a', 'Nov-17', 'Pass'),
(31, 'M65889A', 'PACES', 'Jun-18', 'Pass'),
(32, 'M66630D', 'MRCP Part 1', 'May-16', 'Pass'),
(33, 'M66630D', 'MRCP Part 2a', 'Mar-17', 'Pass'),
(34, 'M66630D', 'PACES', 'Jun-19', 'Pass'),
(35, 'M83162D', 'MRCP Part 1', 'Sep-16', 'Pass'),
(36, 'M83162D', 'MRCP Part 2a', 'May-17', 'Pass'),
(37, 'M83162D', 'PACES', 'Oct-18', 'Pass'),
(38, 'M88791Z', 'MRCP Part 1', 'May-18', 'Pass'),
(39, 'M88791Z', 'MRCP Part 2a', 'Mar-19', 'Pass'),
(40, 'M88791Z', 'PACES', 'Nov-18', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `grants`
--

CREATE TABLE `grants` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Name_of_Grant` varchar(300) NOT NULL,
  `Project_Title` varchar(300) NOT NULL,
  `Project_ID` varchar(300) NOT NULL,
  `Grant_End_Date` varchar(300) NOT NULL,
  `Grant_Start_Date` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `grants`
--

INSERT INTO `grants` (`id`, `MCR_No`, `Name_of_Grant`, `Project_Title`, `Project_ID`, `Grant_End_Date`, `Grant_Start_Date`) VALUES
(1, 'M65659J', 'grant1', 'project1', '1234', '1/1/2022', '1/2/2022'),
(2, 'M88791Z', 'grant2', 'project12', '5667', '4/5/2022', '4/6/2022');

-- --------------------------------------------------------

--
-- Table structure for table `ihi`
--

CREATE TABLE `ihi` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Completion_of_Emodules` varchar(300) NOT NULL,
  `Date` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ihi`
--

INSERT INTO `ihi` (`id`, `MCR_No`, `Completion_of_Emodules`, `Date`) VALUES
(1, 'M11367A', 'Yes', '07/07/2023'),
(2, 'M16782H', 'No', '-'),
(3, 'M54354E', 'Yes', '07/08/2023'),
(4, 'M88791Z', 'Yes', '07/09/2023'),
(5, 'M56829J', 'Yes', '07/10/2023'),
(6, 'M83162D', 'No', '-'),
(7, 'M33571G', 'No', '-'),
(8, 'M35718D', 'No', '-'),
(9, 'M35589A', 'Yes', '07/11/2023'),
(10, 'M65659J', 'Yes', '07/12/2023');

-- --------------------------------------------------------

--
-- Table structure for table `involvement`
--

CREATE TABLE `involvement` (
  `id` int(11) NOT NULL,
  `Involvement_Type` varchar(300) NOT NULL,
  `MCR_No` varchar(100) NOT NULL,
  `Event` varchar(400) NOT NULL,
  `Role` varchar(300) NOT NULL,
  `Start_Date` varchar(300) NOT NULL,
  `End_Date` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `involvement`
--

INSERT INTO `involvement` (`id`, `Involvement_Type`, `MCR_No`, `Event`, `Role`, `Start_Date`, `End_Date`) VALUES
(1, '', 'M11367A', '', '', '', ''),
(2, 'Leadership', 'M16782H', 'Cadence', 'Organizing Committee', 'Mar-18', ' Jun 2018'),
(3, 'Leadership', 'M16782H', '17th SGH PACES Prep Course', 'Organizing Committee', 'Apr-18', 'Apr-18'),
(4, 'Leadership', 'M16782H', 'IM Residency Resident Committee', 'Committee Member', 'Jul-18', 'Jun-19'),
(5, 'Leadership', 'M16782H', 'IM Residency Casa Initiative', 'Group leader', 'Jul-18', 'Jun-19'),
(6, 'Leadership', 'M16782H', 'Casa Paces Circuit ', 'Organizer', 'Apr-19', 'Apr-19'),
(7, 'Leadership', 'M16782H', 'SGH Medical Grand Round ', 'Organising Committee/Emcee ', '27-Mar-19', '2020'),
(8, 'Community', 'M16782H', 'Resident Ambassador for SingHealth Residency Open House 2017', '', '29-Jul-17', '29-Jul-17'),
(9, 'Community', 'M16782H', 'Resident Ambassador for SingHealth SMSUK-I Engagement Session', '', '18-Jul-18', '18-Jul-18'),
(10, 'Community', 'M16782H', 'Resident Ambassador for SingHealth Residency Open House 2018', '', '28-Jul-18', '28-Jul-18'),
(11, 'Community', 'M16782H', 'Resident Helper for IM Residency Engagement Session for NUS-Duke Students', '', '14-Sep-18', '14-Sep-18'),
(12, 'Community', 'M16782H', 'Resident Helper for IM Residency Program Internal Interview', '', 'Oct-18', 'Nov-18'),
(13, 'Community', 'M16782H', 'Resident Ambassador for IM Residency R1 Welcome Dinner', '', '29-Mar-19', '29-Mar-19'),
(14, 'Community', 'M16782H', 'Education IC for Casa ', '', '2019', '2019'),
(15, 'Community', 'M16782H', 'Singapore Medical Society UK Alumni Mentor', '', '2019', '2019'),
(16, 'Teaching', 'M16782H', 'YLLSoM M5 OSCE workshop ', 'Tutor', '9-Dec-17', '9-Dec-17'),
(17, 'Teaching', 'M16782H', 'SGH PACES Course', 'Tutor ', 'Mar-18', 'Mar-18'),
(18, 'Teaching', 'M16782H', 'SGH PACES Course', 'Tutor ', 'Mar-18', 'Mar-18'),
(19, 'Teaching', 'M16782H', 'Clinical Cases / MEQ', 'Tutor', 'Oct-18', 'Dec-18'),
(20, 'Teaching', 'M16782H', 'Project Inspire M5 Lecture Series', 'Lecturer', 'Dec-18', 'Dec-18'),
(21, 'Teaching', 'M16782H', 'Clinical Cases / MEQ', 'Tutor', 'Oct-18', ' Dec 2018'),
(22, 'Teaching', 'M16782H', 'Cadence', 'Tutor', 'Oct 2018 diet', 'Oct 2018 diet'),
(23, 'Teaching', 'M16782H', 'Cadence Circuit', 'Examiner', 'Jun-19', 'Jun-19'),
(24, '', 'M16782H', '', '', '', ''),
(25, 'Community', 'M65889A', 'Resident Representative for Inter-SI Games', '', '8-Dec-17', '8-Dec-17'),
(26, 'Leadership', 'M65889A', 'SR Committee', 'Education Subcommittee Chairperson', 'XXX', 'XXX'),
(27, 'Leadership', 'M54354E', 'Residency Quality Improvement Project', 'Project Leader', 'May-19', 'Jun-20'),
(28, 'Leadership', 'M54354E', 'R1, IM residency', 'Cohort Rep', 'May-15', 'May-15'),
(29, 'Leadership', 'M54354E', 'Project Inspire', 'Founding Member', 'May-15', 'Present'),
(30, 'Community', 'M54354E', 'OCIP: Yangon, w/ YLLSOM', '', 'May-18', 'May-18'),
(31, 'Community', 'M54354E', 'IM residency Outreach Talk, NUS', '', 'May-16', 'May-16'),
(32, 'Teaching', 'M54354E', 'Project Inspire', 'Founding Member', 'May-15', 'Present'),
(33, '', 'M54354E', '', '', '', ''),
(34, '', 'M88791Z', '', '', '', ''),
(35, 'Leadership', 'M56829J', 'Residency Quality Improvement Project', 'Project Leader', 'Apr-19', 'Jun-20'),
(36, 'Teaching', 'M56829J', 'Project HOPE', 'Tutor', '11-May-19', '11-May-19'),
(37, 'Teaching', 'M56829J', 'Project HOPE', 'Tutor', '13-Jul-19', '13-Jul-19'),
(38, '', 'M56829J', '', '', '', ''),
(39, 'Leadership', 'M83162D', 'IM Residency Resident Committee', 'Committee Member', 'Jul-18', 'Jun-19'),
(40, 'Leadership', 'M83162D', 'IM Residency Casa Initiative', 'Group leader', 'Jul-18', ' Jun 2019'),
(41, 'Community', 'M83162D', 'Resident Helper for IM Residency Engagement Session cum National Interview Preparation for HOMOs', ' ', '21-Sep-17', '21-Sep-17'),
(42, 'Community', 'M83162D', 'Medical Mission to Ilo-ilo by MOHH', '', '6-Jan-18', '13-Jan-18'),
(43, 'Community', 'M83162D', 'Resident Ambassador for IM Residency R1 Welcome Dinner', ' ', '29-Mar-19', '29-Mar-19'),
(44, 'Teaching', 'M83162D', 'Cadence ', 'Tutor ', 'Oct 2018 diet', 'Oct 2018 diet'),
(45, 'Teaching', 'M83162D', '17th SGH PACES Prep Course ', 'Facilitator ', 'Feb-19', 'Feb-19'),
(46, '', 'M83162D', '', '', '', ''),
(47, 'Leadership', 'M33571G', 'Casa Initiative, Casa Group 8', 'Casa Leader', 'Jul-19', 'Jun-20'),
(48, 'Leadership', 'M33571G', 'Residency Education Committee', 'Committee Member', 'Jul-19', 'Jun-20'),
(49, 'Community', 'M33571G', 'Resident Ambassador for IM Residency R1 Welcome Dinner', '', '29-Mar-19', '29-Mar-19'),
(50, 'Teaching', 'M33571G', 'Project INSPIRE – Teaching for M5s', 'Tutor/Coordinator', 'Dec-15', 'Jun-16'),
(51, 'Teaching', 'M33571G', 'SIP Bootcamp', 'Tutor', 'Jun-16', 'Jun-16'),
(52, 'Teaching', 'M33571G', 'Project HOPE workshop', 'Tutor', '11-May-19', '11-May-19'),
(53, '', 'M33571G', '', '', '', ''),
(54, 'Leadership', 'M35718D', 'NHCS Cardiology', 'MO Representative', 'Jul-17', 'Sep-17'),
(55, 'Leadership', 'M35718D', 'SGH Internal Medicine', 'Group Reps', 'Oct-17', 'Dec-17'),
(56, '', 'M35718D', 'Resident helper for SingHealth Residency Open House 2018', '', 'Jul-18', 'Jul-18'),
(57, 'Leadership', 'M35589A', 'QI Project', 'Assistant Leader', 'Jul-17', 'Jun-19'),
(58, 'Community', 'M35589A', '', '', '', ''),
(59, 'Teaching', 'M35589A', 'SIP Bootcamp 2017', 'Facilitator', '27-May-17', '27-May-17'),
(60, 'Teaching', 'M35589A', 'CADENCE peer tutor ', 'Tutor', 'Sep-18', 'Oct-18'),
(61, 'Leadership', 'M35589A', 'SR Committee', 'Co-Chair', '', ''),
(62, 'Community', 'M35589A', 'SG-ANZICS/APICS 2021: Asia-Pacific Critical Care Conference Organising Committee', 'Member', 'Jul-20', 'Jul-21'),
(63, 'Teaching', 'M35589A', 'SingHealth PGY1 Programme', 'Physician Faculty', 'Oct-20', 'Dec-23'),
(64, 'Teaching', 'M35589A', 'Preceptor for Alice Lee Centre for Nursing Studies Master of Nursing students', 'Bedside Tutor', 'Mar-21', 'Apr-21'),
(65, 'Teaching', 'M66630D', 'SingHealth Internal Medicine Residency MRCP CADENCE Programme', 'Tutor', 'Sep-20', 'Nov-20'),
(66, 'Teaching', 'M66630D', 'SingHealth PGY1 Programme', 'Physician Faculty', 'Oct-20', 'Dec-23'),
(67, 'Teaching', 'M66630D', 'Duke-NUS M4 Clerkship', 'Bedside Tutor', 'Jul-20', 'Jul-20'),
(68, 'Leadership', 'M45528I', 'MUSE: Incoming UK HOs engagement session', 'Organiser', '2017', '2019'),
(69, 'Leadership', 'M45528I', 'IM Residency Resident Committee', 'Committee Member', 'Jul-18', ' Jun 2019'),
(70, 'Leadership', 'M45528I', 'IM Residency Casa Initiative', 'Group leader', 'Jul-18', 'Jun-19'),
(71, 'Leadership', 'M45528I', 'Social/Welfare Committee', 'Chief Resident', 'Jul-19', 'Jun-20'),
(72, 'Community', 'M45528I', 'Resident Ambassador for SingHealth SMSUK-I Engagement Session', '', 'Jul-17', 'Jul-17'),
(73, 'Community', 'M45528I', 'Resident Helper for IM Residency Engagement Session for LKC Students', '', 'Nov-18', 'Nov-18'),
(74, 'Community', 'M45528I', 'Resident Representative for SingHealth Residency Games Day ', '', 'Nov-18', 'Nov-18'),
(75, 'Community', 'M45528I', 'Resident Helper for IM Residency Program Internal Interview', '', 'Oct-18', 'Nov-18'),
(76, 'Community', 'M45528I', 'Resident Ambassador for IM Residency R1 Welcome Dinner', '', 'Mar-19', 'Mar-19'),
(77, 'Community', 'M45528I', 'Resident Volunteer for SingHealth President’s Challenge 2019', '', 'Aug-19', 'Aug-19'),
(78, 'Teaching', 'M45528I', 'Project Inspire', 'Tutor', 'Jul-17', 'Dec-17'),
(79, 'Teaching', 'M45528I', 'MUSE: Incoming UK HOs engagement session', 'Tutor', 'Aug-17', 'Aug-17'),
(80, 'Teaching', 'M45528I', 'Project Inspire', 'Tutor', 'Sep-18', 'Dec-18'),
(81, 'Teaching', 'M45528I', 'MUSE: Incoming UK HOs engagement session', 'Tutor', 'Aug-18', 'Aug-18'),
(82, 'Teaching', 'M45528I', 'Clinical Cases / MEQ', 'Tutor', 'Oct-18', 'Dec-18'),
(83, 'Teaching', 'M45528I', 'MUSE: Incoming UK HOs engagement session', 'Tutor', 'Aug-18', 'Aug-18'),
(84, 'Leadership', 'M45528I', 'SR Committee', 'Administrative Sub-Committee ', 'Jul-20', 'Jun-21'),
(85, 'Teaching', 'M45528I', 'SingHealth PGY1 Programme', 'Physician Faculty', 'Oct-20', 'Dec-23'),
(86, 'Teaching', 'M45528I', 'YLL & Duke Students', 'Bedside Tutor', 'Oct-20', 'Oct-20'),
(87, 'Teaching', 'M45528I', 'Duke-NUS Y3', 'Bedside Tutor', 'Apr-21', 'Apr-21'),
(88, 'Leadership', 'M65659J', 'QI Project ', 'Leader', 'Jul-05', 'Jul-05'),
(89, 'Teaching', 'M65659J', 'Project Inspire', 'Tutor', 'Dec-18', 'Dec-18'),
(90, 'Community', 'M65659J', 'Neighbourhood health service ', '', 'Oct-17', 'Oct-17'),
(91, 'Teaching', 'M65659J', 'SingHealth PGY1 Programme', 'Physician Faculty', 'Oct-20', 'Dec-23'),
(92, 'Teaching', 'M65659J', 'CGH ICU Procedure Course for Junior Residents', 'Simulation Centre Teachings', 'Jul-20', 'Dec-20');

-- --------------------------------------------------------

--
-- Table structure for table `posting_history`
--

CREATE TABLE `posting_history` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Posting_Institution` varchar(300) NOT NULL,
  `Posting_Department` varchar(300) NOT NULL,
  `Posting_StartDate` varchar(300) NOT NULL,
  `Posting_EndDate` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `posting_history`
--

INSERT INTO `posting_history` (`id`, `MCR_No`, `Posting_Institution`, `Posting_Department`, `Posting_StartDate`, `Posting_EndDate`) VALUES
(1, 'M11367A', 'CGH', 'GasHep', '01-Apr-2022', '05-Apr-2022'),
(2, 'M11367A', 'CGH', 'GasHep', '06-May-2022', '27-May-2022'),
(3, 'M11367A', 'CGH', 'GasHep', '01-June-2022', '05-July-2022'),
(4, 'M11367A', 'CGH', 'GeriMed', '06-Aug-2022', '02-Sept-2022'),
(5, 'M11367A', 'CGH', 'GenMed', '03-Oct-2022', '28-Oct-2022'),
(6, 'M11367A', 'SKH', 'GenMed', '01-Nov-2022', '31-Nov-2022'),
(7, 'M11367A', 'SGH', 'GasHep', '01-Dec-2022', '04-Mar-2023');

-- --------------------------------------------------------

--
-- Table structure for table `presentations`
--

CREATE TABLE `presentations` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Title` varchar(300) NOT NULL,
  `Type` varchar(300) NOT NULL,
  `Project_ID` varchar(300) NOT NULL,
  `Conference_Name` varchar(300) NOT NULL,
  `Country` varchar(300) NOT NULL,
  `Presentation_Date` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `presentations`
--

INSERT INTO `presentations` (`id`, `MCR_No`, `Title`, `Type`, `Project_ID`, `Conference_Name`, `Country`, `Presentation_Date`) VALUES
(1, 'M11367A', '', '', '', '', '', ''),
(2, 'M16782H', '‘Dementia Care in UK: Patient’s Journey’.', ' ', 'Nil', 'Asian Medical Student Conference, Indonesia, 2012 ', 'Indonesia', '2021'),
(3, 'M16782H', '', '', '', '', '', ''),
(4, 'M65889A', 'The Changing Profile of Helicobacter Pylori Primary Antibiotic Resistance in Singapore over the last two decades ', ' Abstract', ' NIL', 'Digestive Diseases Week 2021 ', 'United States ', ' 23 May 2021'),
(5, 'M54354E', 'Influence of Age on long term prognoses over 9 years after ischemic stroke', ' ', 'Nil', 'European Stroke Organization Conference 2017', 'Prague', 'Jun-17'),
(6, 'M54354E', '', '', '', '', '', ''),
(7, 'M88791Z', 'Malignant Large Bowel Obstruction & Colonic Stenting as safe bridge to surgery – A clinical audit of efficacy and safety in a tertiary centre', 'Oral', ' NIL', 'Digestive Diseases Week 2021 ', 'United States ', '21-May-2021'),
(8, 'M56829J', '', '', '', '', '', ''),
(9, 'M83162D', '', '', '', '', '', ''),
(10, 'M33571G', '', '', '', '', '', ''),
(11, 'M35718D', '', '', '', '', '', ''),
(12, 'M35589A', 'Granulomatous Lung Disease with Concomitant Sarcoidosis and Tuberculosis: A Case Report', 'Poster', 'Nil', 'CHEST 2018', 'United States ', '01-Oct-2018'),
(13, 'M35589A', 'Prevalence and Predictors of Positional Obstructive Sleep Apnea in a Southeast Asian Population ', 'Poster', 'Nil', 'CHEST Congress 2019', 'Thailand', '11-Apr-2019'),
(14, 'M66630D', '', '', '', '', '', ''),
(15, 'M45528I', 'Clot Waveform Analysis in Acute VTE in Patients with/without cancers', 'Poster', 'Nil', '10th Congress of Asian-Pacific Society on Thrombosis and Hemostasis', 'Japan', '30-Jun-2018'),
(16, 'M65659J', 'Evaluation Of Concomitant Lung Parenchymal Involvement In Patients With Tuberculous Pleural Effusion In An Endemic Population', 'E-Poster', 'Nil', 'ATS 2020', '', '31-Jul-2020');

-- --------------------------------------------------------

--
-- Table structure for table `procedure_log`
--

CREATE TABLE `procedure_log` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Procedure_Name` varchar(300) NOT NULL,
  `CPT` varchar(300) NOT NULL,
  `Date_of_Completion` varchar(300) NOT NULL,
  `Total` varchar(300) NOT NULL,
  `Performed` varchar(300) NOT NULL,
  `Observed` varchar(300) NOT NULL,
  `Verified` varchar(300) NOT NULL,
  `Certified` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `procedure_log`
--

INSERT INTO `procedure_log` (`id`, `MCR_No`, `Procedure_Name`, `CPT`, `Date_of_Completion`, `Total`, `Performed`, `Observed`, `Verified`, `Certified`) VALUES
(1, 'M11367A', 'Gastroscopy (OGD)', '','01/01/2022', '-', '150', '-', '-', '-'),
(2, 'M11367A', 'Gastroscopy (OGD) with biopsy', '','01/01/2022', '-', '100', '-', '-', '-'),
(3, 'M11367A', 'Gastroscopy (OGD) with non-variceal hemostasis; not actively bleeding', '','01/01/2022', '-', '5', '-', '-', '-'),
(4, 'M11367A', 'Gastroscopy (OGD) with non-variceal hemostasis; actively bleeding', '','01/01/2022', '-', '3', '-', '-', '-'),
(5, 'M11367A', 'Colonoscopy with non-variceal hemostasis; not actively bleeding', '','01/01/2022', '-', '5', '-', '-', '-'),
(6, 'M11367A', 'Colonoscopy with non-variceal hemostasis; actively bleeding', '','01/01/2022', '-', '5', '-', '-', '-'),
(7, 'M11367A', 'Colonoscopy', '','01/01/2022', '-', '90', '-', '-', '-'),
(8, 'M11367A', 'Colonoscopy with biopsy', '','01/01/2022', '-', '90', '-', '-', '-'),
(9, 'M11367A', 'Colonoscopy with polypectomy', '','01/01/2022', '-', '20', '-', '-', '-'),
(10, 'M11367A', 'Abdominal paracentesis', '','01/01/2022', '-', '10', '-', '-', '-'),
(11, 'M11367A', 'Capsule endoscopy', '','01/01/2022', '-', '10', '-', '-', '-'),
(12, 'M11367A', 'Percutaneous Endoscopic Gastrostomy (PEG)', '','01/01/2022', '-', '5', '-', '-', '-'),
(13, 'M11367A', 'Gastroscopy with variceal hemostasis; active bleeding', '','01/01/2022', '-', '5', '-', '-', '-'),
(14, 'M11367A', 'Gastroscopy with variceal hemostasis; not actively bleeding', '','01/01/2022', '-', '10', '-', '-', '-'),
(15, 'M11367A', 'Gastroscopy with variceal ligation; elective eradication', '','01/01/2022', '-', '5', '-', '-', '-'),
(16, 'M11367A', 'Liver biopsy', '','01/01/2022', '-', '5', '-', '-', '-'),
(17, 'M11367A', 'Esophageal dilatation', '','01/01/2022', '-', '5', '-', '-', '-'),
(18, 'M11367A', 'Luminal Stenting', '','01/01/2022', '-', '5', '-', '-', '-'),
(19, 'M11367A', 'Endoscopic mucosal resection (EMR) / Endoscopic submucosal dissection (ESD)', '','01/01/2022', '-', '5', '-', '-', '-'),
(20, 'M11367A', 'Endoscopic Retrograde and Cholangiocpancreatography (ERCP)', '','01/01/2022', '-', '5', '-', '-', '-'),
(21, 'M11367A', 'Endoscopic ultrasound', '','01/01/2022', '-', '5', '-', '-', '-'),
(22, 'M11367A', 'Esophageal motility / pH studies', '','01/01/2022', '-', '5', '-', '-', '-'),
(23, 'M11166J', 'Abdominal Tap', '','01/01/2022', '-', '-', '-', '3', '-'),
(24, 'M11166J', 'Arterial Line Placement', '','01/01/2022', '-', '-', '-', '5', '-'),
(25, 'M11166J', 'Central Line Placement', '','01/01/2022', '-', '-', '-', '5', '-'),
(26, 'M11166J', 'Thoracentesis / Chest tube', '','01/01/2022', '-', '-', '-', '3', '-'),
(27, 'M11166J', 'Lumbar Puncture', '','01/01/2022', '-', '-', '-', '5', '-'),
(28, 'M11166J', 'Endotracheal Intubation', '','01/01/2022', '-', '-', '-', '5', '-'),
(29, 'M11166J', 'Ventilator Management', '','01/01/2022', '-', '-', '-', '5', '-'),
(30, 'M11166J', 'Arthrocentesis', '','01/01/2022', '-', '-', '-', '2', '-'),
(31, 'M11166J', 'Hemodialysis Catheter Insertion', '','01/01/2022', '-', '-', '-', '3', '-'),
(32, 'M11166J', 'ABG', '','01/01/2022', '-', '-', '-', '1', '-'),
(33, 'M11166J', 'Vene', '','01/01/2022', '-', '-', '-', '1', '-'),
(34, 'M11166J', 'IV Plug', '','01/01/2022', '-', '-', '-', '1', '-'),
(35, 'M11166J', 'Ecg', '','01/01/2022', '-', '-', '-', '1', '-'),
(36, 'M11166U', 'Insertion of non-tunneled haemodialysis catheter - Femoral (C)', '','01/01/2022', '-', '4', '-', '-', '-'),
(37, 'M11166U', 'Insertion of non-tunneled haemodialysis catheter - Internal Jugular (C)', '','01/01/2022', '-', '5', '-', '-', '-'),
(38, 'M11166U', 'Insertion of non-tunneled haemodialysis catheter - Femoral', '','01/01/2022', '-', '4', '-', '-', '-'),
(39, 'M11166U', 'Insertion of non-tunneled haemodialysis catheter - Internal Jugular', '','01/01/2022', '-', '5', '-', '-', '-'),
(40, 'M11166U', 'Native Kidney Biopsy (C)', '','01/01/2022', '-', '10', '-', '-', '-'),
(41, 'M11166U', 'Transplant Kidney Biopsy (C)', '','01/01/2022', '-', '3', '-', '-', '-'),
(42, 'M11166U', 'Native Kidney Biopsy', '','01/01/2022', '-', '5', '-', '-', '-'),
(43, 'M11166U', 'Transplant Kidney Biopsy', '','01/01/2022', '-', '2', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Project_Type` varchar(300) NOT NULL,
  `Project_Title` varchar(300) NOT NULL,
  `Project_ID` varchar(300) NOT NULL,
  `Start_Date` varchar(300) NOT NULL,
  `End_Date` varchar(300) NOT NULL,
  `Date_of_QI_Certification` varchar(300) DEFAULT NULL,
  `PMID` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `MCR_No`, `Project_Type`, `Project_Title`, `Project_ID`, `Start_Date`, `End_Date`, `Date_of_QI_Certification`, `PMID`) VALUES
(1 , 'M11367A', 'Qi', 'Creating an Intranet Site Showing Each Medical Departments\ Criteria for Inpatient Reviews', ' ', '2019', '2020', '', ''),
(2, 'M11367A', '', '', '', '', '', '', ''),
(3, 'M16782H', 'QI', 'Code Blue Documentation ', ' ', '2018', '2019', '', ''),
(4, 'M16782H', '', '', '', '', '', '', ''),
(5, 'M65889A', 'QI', 'Reducing the percentage of errors in discharge prescriptions in Ward 73', ' ', '2019', '2020', '', ''),
(6, 'M65889A', 'QI', 'Improving Compliance of Medical Results Acknowledgement in CGH Gastroenterology Department ', '', '', '', '', ''),
(7, 'M54354E', 'QI', 'Improving Compliance to the NBM protocol in surgical patients', '', '2019', '2020', '', ''),
(8, 'M54354E', 'QI', 'Increase virtual NHMS clinic visits from 278 to more than 600 by Dec 2022.', '1220FY2009', 'Oct-20', 'In progress', '', ''),
(9, 'M54354E', 'QI', 'To increase the proportion of gastroenterology and hepatology patients with decompensated liver cirrhosis receiving who are not nil by mouth (NBM), late night snacks on a weekly basis from 18% to 100% by 12 months in ward 46, SGH .', '1357FY2108', 'Jul-21', 'In progress', '', ''),
(10, 'M88791Z', 'QI', 'Improving Compliance of Medical Results Acknowledgement in CGH Gastroenterology Department ', '', '', '', '', ''),
(11, 'M56829J', 'QI', 'Improving the SGH Renal Medical Officer Orientation', ' ', '2019', '2020', '', ''),
(12, 'M56829J', 'QI', 'Improving confidence in Renal Medical Officers in Singapore General Hospital', '', '', '', '', ''),
(13, 'M83162D', 'QI', 'Increasing the rates of influenza vaccination amongst eligible patients admitted to the Internal Medicine Departments within DIM GT wards to 50% within 6 months', ' ', '2019', '2020', '', ''),
(14, 'M83162D', 'QI', 'Improving confidence in Renal Medical Officers in Singapore General Hospital', '', '', '', '', ''),
(15, 'M33571G', 'QI', 'Improving the SGH Renal Medical Officer Orientation', ' ', '2019', '2020', '', ''),
(16, 'M33571G', 'QI', 'Improving confidence in Renal Medical Officers in Singapore General Hospital', '', '', '', '', ''),
(17, 'M35718D', 'QI', 'Clinical Handover', '', '2019', '2020', '', ''),
(18, 'M35718D', 'QI', 'Improving confidence in Renal Medical Officers in Singapore General Hospital', '', '', '', '', ''),
(19, 'M35589A', 'QI', 'Implementing an Online Review Roster', ' ', 'Jan-18', 'Apr-19', '', ''),
(20, 'M35589A', 'QI', 'Shortening Wait Time and Implementing Faster Triage (SWIFT) - evaluating and reducing delay to diagnosis and management of lung cancer', '', 'Jun-19', 'Dec-18', '', ''),
(21, 'M35589A', 'QI', 'Implementing the Various Medical Departments’ Criteria for Review of Inpatients on Intranet ', '', 'Jul-17', 'Jun-19', '', ''),
(22, 'M35589A', '', 'Characteristics of Asian patients who would miss out on lung cancer screening', '', 'Jan-18', 'Dec-18', '', ''),
(23, 'M35589A', '', 'Interstitial Lung Disease Registry (ILD-R)', '', '', 'Ongoing', '', ''),
(24, 'M45528I', 'Qi', 'redReducing inappropriate blood transfusions', '', '', '', '', ''),
(25, 'M45528I', '', 'CGH Interstitial Lung Disease (ILD) Registry ', '', 'Sep-20', 'Ongoing', '', ''),
(26, 'M45528I', '', 'Prospective data collection of clinical, microbiological and bronchoscopic findings in immunocompromised patients with pulmonary infections', '', 'Apr-20', 'Ongoing', '', ''),
(27, 'M66630D', 'QI', 'Improving Compliance to the NBM protocol in surgical patients', '', '2019', '2020', '', ''),
(28, 'M66630D', '', '', '', '', '', '', ''),
(29, 'M65659J', 'QI', 'Working on ways to identify patients from ACC clinic lists who are potential candidates for switching to novel anticoagulants', ' ', 'Nov-17', 'Apr-19', '', ''),
(30, 'M65659J', '', 'SGH Bronchiectasis Database', '', 'Jun-18', 'Ongoing', '', ''),
(31, 'M65659J', 'QI', 'Shortening Wait Time and Implementing Faster Triage (SWIFT) - evaluating and reducing delay to diagnosis and management of lung cancer', '', 'Jun-19', 'Dec-18', '', ''),
(32, 'M65659J', '', 'Evaluation Of Concomitant Lung Parenchymal Involvement In Patients With Tuberculous Pleural Effusion In An Endemic Population', '', 'Jan-20', 'Ongoing', '', ''),
(33, 'M65659J', '', 'MDI Spacer instead of wet nebulizer during acute inpatient admissions for asthma/ COPD exacerbations', '', 'Oct-20', 'Ongoing', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `Publication_Title` varchar(300) NOT NULL,
  `Journal_Title` varchar(300) NOT NULL,
  `PMID` varchar(300) NOT NULL,
  `Publication_Date` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`id`, `MCR_No`, `Publication_Title`, `Journal_Title`, `PMID`, `Publication_Date`) VALUES
(1, 'M11367A', '', '', '', ''),
(2, 'M16782H', '', '', '', ''),
(3, 'M65889A', '', '', '', ''),
(4, 'M54354E', 'A novel heart rate variability based riskprediction model for septic patient presenting to the emergency department', ' ', '29879021', ''),
(5, 'M54354E', '', '', '', ''),
(6, 'M88791Z', '', '', '', ''),
(7, 'M56829J', '', '', '', ''),
(8, 'M83162D', '', '', '', ''),
(9, 'M33571G', '', '', '', ''),
(10, 'M35718D', '', '', '', ''),
(11, 'M35589A', 'Non-responsive breast cellulitis after hyaluronic acid filler injection', 'International Journal of Infectious Diseases', '29501834', 'Mar-18'),
(12, 'M35589A', 'Prevalence of Positional OSA among patients with OSA in a tertiary healthcare institution in Singapore', 'Singapore Medical Journal', '33619576', 'Dec-20'),
(13, 'M66630D', '', '', '', ''),
(14, 'M45528I', 'Medical and Surgical Emergencies: The ABCDE Approach – Oncological Emergencies', ' ', '', ''),
(15, 'M45528I', 'Elevated activated partial thromboplastin time-based clot waveform analysis markers have strong positive association with acute venous thromboembolism', ' ', '31223264', ''),
(16, 'M45528I', '', '', '', ''),
(17, 'M65659J', 'CHEST Pearls: A 78-Year-Old Man With Recurrent Hemoptysis and Persistent Pulmonary Nodule', 'CHEST', '32145821', 'Mar-20');

-- --------------------------------------------------------

--
-- Table structure for table `trgextrem_history`
--

CREATE TABLE `trgextrem_history` (
  `id` int(11) NOT NULL,
  `MCR_No` varchar(50) NOT NULL,
  `LOAPIP` varchar(300) DEFAULT NULL,
  `StartDate` varchar(300) DEFAULT NULL,
  `EndDate` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `trgextrem_history`
--

INSERT INTO `trgextrem_history` (`id`, `MCR_No`, `LOAPIP`, `StartDate`, `EndDate`) VALUES
(1, 'M11367A', 'LOA', '01-Oct-2020', '05-Jan-2021'),
(2, 'M11367A', 'LOA', '28-Jul-2021', '30-Nov-2021'),
(3, 'M16782H', 'LOA', '07-Nov-2020', '28-Feb-2021'),
(4, 'M16782H', 'LOA', '06-Jan-2022', '31-Jan-2022'),
(5, 'M65889A', '', '', ''),
(6, 'M54354E', 'NS', '03-Jul-2017', '28-Feb-2019'),
(7, 'M54354E', 'LOA', '01-Mar-2019', '05-May-2019'),
(8, 'M54354E', 'LOA', '22-Feb-2021', '31-Mar-2021'),
(9, 'M88791Z', '', '', ''),
(10, 'M56829J', 'NS', '01-Oct-2018', '06-Dec-2018'),
(11, 'M56829J', 'LOA', '07-Dec-2018', '03-Feb-2019'),
(12, 'M56829J', '', '', ''),
(13, 'M83162D', 'LOA', '03-May-2021', '10-May-2021'),
(14, 'M33571G', 'NS', '03-Jul-2017', '30-Nov-2018'),
(15, 'M33571G', 'LOA', '01-Jan-2019', '03-Feb-2019'),
(16, 'M33571G', '', '', ''),
(17, 'M35718D', 'HL', '13-Sep-2018', '03-Oct-2018'),
(18, 'M35718D', '', '', ''),
(19, 'M35589A', '', '', ''),
(20, 'M66630D', 'NS', '03-Mar-2017', '28-Feb-2019'),
(21, 'M66630D', 'LOA', '14-Apr-2019', '05-May-2019'),
(22, 'M66630D', '', '', ''),
(23, 'M45528I', '', '', ''),
(24, 'M65659J', 'LOA', '30-Apr-2021', '30-May-2021'),
(25, 'M65659J', 'LOA', '18-Oct-2021', '28-Feb-2022');

--
-- Indexes for dumped tables
--


-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`MCR_No`);

--
--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder1` (`MCR_No`);

--
-- Indexes for table `case_log`
--
ALTER TABLE `case_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder2` (`MCR_No`);

--
-- Indexes for table `didactic_attendance`
--
ALTER TABLE `didactic_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder3` (`MCR_No`);

--
-- Indexes for table `duty_hour_log`
--
ALTER TABLE `duty_hour_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder4` (`MCR_No`);

--
-- Indexes for table `education_history`
--
ALTER TABLE `education_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder5` (`MCR_No`);

--
-- Indexes for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder6` (`MCR_No`);

--
-- Indexes for table `exam_history`
--
ALTER TABLE `exam_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder7` (`MCR_No`);

--
-- Indexes for table `grants`
--
ALTER TABLE `grants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder8` (`MCR_No`);

--
-- Indexes for table `ihi`
--
ALTER TABLE `ihi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder9` (`MCR_No`);

--
-- Indexes for table `involvement`
--
ALTER TABLE `involvement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder10` (`MCR_No`);

--
-- Indexes for table `posting_history`
--
ALTER TABLE `posting_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder11` (`MCR_No`);

--
-- Indexes for table `presentations`
--
ALTER TABLE `presentations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder12` (`MCR_No`);

--
-- Indexes for table `procedure_log`
--
ALTER TABLE `procedure_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder13` (`MCR_No`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder14` (`MCR_No`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder15` (`MCR_No`);

--
-- Indexes for table `trgextrem_history`
--
ALTER TABLE `trgextrem_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PersonOrder16` (`MCR_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `case_log`
--
ALTER TABLE `case_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `didactic_attendance`
--
ALTER TABLE `didactic_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `duty_hour_log`
--
ALTER TABLE `duty_hour_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `education_history`
--
ALTER TABLE `education_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_history`
--
ALTER TABLE `exam_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `grants`
--
ALTER TABLE `grants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ihi`
--
ALTER TABLE `ihi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `involvement`
--
ALTER TABLE `involvement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `posting_history`
--
ALTER TABLE `posting_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `presentations`
--
ALTER TABLE `presentations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `procedure_log`
--
ALTER TABLE `procedure_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `trgextrem_history`
--
ALTER TABLE `trgextrem_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `FK_PersonOrder1` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `case_log`
--
ALTER TABLE `case_log`
  ADD CONSTRAINT `FK_PersonOrder2` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `didactic_attendance`
--
ALTER TABLE `didactic_attendance`
  ADD CONSTRAINT `FK_PersonOrder3` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `duty_hour_log`
--
ALTER TABLE `duty_hour_log`
  ADD CONSTRAINT `FK_PersonOrder4` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `education_history`
--
ALTER TABLE `education_history`
  ADD CONSTRAINT `FK_PersonOrder5` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD CONSTRAINT `FK_PersonOrder6` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `exam_history`
--
ALTER TABLE `exam_history`
  ADD CONSTRAINT `FK_PersonOrder7` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `grants`
--
ALTER TABLE `grants`
  ADD CONSTRAINT `FK_PersonOrder8` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `ihi`
--
ALTER TABLE `ihi`
  ADD CONSTRAINT `FK_PersonOrder9` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `involvement`
--
ALTER TABLE `involvement`
  ADD CONSTRAINT `FK_PersonOrder10` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `posting_history`
--
ALTER TABLE `posting_history`
  ADD CONSTRAINT `FK_PersonOrder11` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `presentations`
--
ALTER TABLE `presentations`
  ADD CONSTRAINT `FK_PersonOrder12` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `procedure_log`
--
ALTER TABLE `procedure_log`
  ADD CONSTRAINT `FK_PersonOrder13` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `FK_PersonOrder14` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `publications`
--
ALTER TABLE `publications`
  ADD CONSTRAINT `FK_PersonOrder15` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);

--
-- Constraints for table `trgextrem_history`
--
ALTER TABLE `trgextrem_history`
  ADD CONSTRAINT `FK_PersonOrder16` FOREIGN KEY (`MCR_No`) REFERENCES `personal_details` (`MCR_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
