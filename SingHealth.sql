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
  `Score` varchar(8000) NOT NULL,
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

-- Mockaroo Generated Data --
-- Mockaroo Publications--
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (18, 'M45528I', 'Upperworld', 'Drama', 30061515, '09-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (19, 'M16782H', 'The Appointments of Dennis Jennings', 'Comedy', 31926087, '15-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (20, 'M33571G', 'Thunderbirds', 'Action|Adventure|Fantasy|Sci-Fi', 34298101, '27-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (21, 'M16782H', 'Me, Myself and Mum (Les garçons et Guillaume, à table!)', 'Comedy', 36325874, '28-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (22, 'M45528I', 'Orders Signed in White', '(no genres listed)', 33513223, '13-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (23, 'M35718D', 'Lady Death', 'Action|Animation|Horror', 37605436, '07-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (24, 'M35718D', 'Already Dead', 'Action|Fantasy|Thriller', 32540987, '18-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (25, 'M33571G', 'Martian Child', 'Comedy|Drama', 35633627, '25-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (26, 'M11166J', 'Who''s Your Daddy?', 'Comedy', 35131590, '18-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (27, 'M45528I', 'Get Well Soon', 'Comedy|Drama|Romance', 39941013, '29-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (28, 'M56829J', 'Royal Tenenbaums, The', 'Comedy|Drama', 36324957, '26-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (29, 'M54354E', 'Munchies', 'Comedy|Horror', 35852266, '24-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (30, 'M83162D', 'Zookeeper', 'Comedy', 32410264, '22-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (31, 'M16782H', 'You Can''t Take It with You', 'Comedy|Romance', 32682272, '20-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (32, 'M11367A', 'Big Stan', 'Comedy', 38281970, '04-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (33, 'M88791Z', 'Affair of the Necklace, The', 'Drama', 37661286, '02-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (34, 'M54354E', 'Molly Maguires, The', 'Drama', 31404187, '20-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (35, 'M11166U', 'Firewall', 'Crime|Drama|Thriller', 33160317, '04-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (36, 'M45528I', 'Little Caesar', 'Crime|Drama', 35342327, '16-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (37, 'M45528I', 'Geri''s Game', 'Animation|Children', 30409123, '14-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (38, 'M35718D', 'My Blue Heaven', 'Comedy', 36747969, '27-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (39, 'M35589A', 'Red Tails', 'Action|Adventure|Drama|War', 37024402, '01-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (40, 'M56829J', '20 Million Miles to Earth', 'Sci-Fi', 38658828, '21-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (41, 'M65659J', 'New York Ripper, The (Squartatore di New York, Lo)', 'Crime|Horror|Mystery|Thriller', 37092033, '15-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (42, 'M66630D', 'Tale of Cinema (Geuk jang jeon)', 'Drama', 37387759, '27-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (43, 'M45528I', 'Beautiful Thing', 'Drama|Romance', 33009921, '10-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (44, 'M88791Z', 'Mág', 'Drama', 32363776, '03-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (45, 'M33571G', 'Shaft, The (a.k.a. Down)', 'Action|Horror|Mystery|Sci-Fi', 38227806, '01-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (46, 'M33571G', 'Steam of Life (Miesten vuoro)', 'Documentary', 36831710, '30-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (47, 'M11166U', 'Chasing Mavericks', 'Drama', 33872424, '28-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (48, 'M35589A', 'Miss Austen Regrets', 'Drama', 32517611, '29-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (49, 'M65889A', 'Children of the Corn III', 'Horror', 31792402, '26-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (50, 'M11166J', 'Dark Wind, The', 'Action|Mystery', 38229578, '12-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (51, 'M11166U', 'Collector, The (La collectionneuse)', 'Drama', 38506743, '08-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (52, 'M54354E', 'The Odyssey', 'Adventure|Drama|Fantasy', 32777570, '20-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (53, 'M54354E', 'Skylark', 'Comedy|Romance', 39348837, '26-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (54, 'M35718D', 'Sel8nne', 'Documentary', 39331588, '01-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (55, 'M83162D', 'Camille', 'Comedy|Drama|Romance', 39568070, '04-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (56, 'M66630D', 'Chorus Line, A', 'Comedy|Drama|Musical', 36183716, '06-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (57, 'M11166U', 'Chocolat', 'Drama', 37828722, '26-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (58, 'M83162D', 'Across the Line: The Exodus of Charlie Wright', 'Crime|Drama', 35842781, '21-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (59, 'M11166U', 'Tin Cup', 'Comedy|Drama|Romance', 34916303, '26-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (60, 'M65889A', 'On My Way (Elle s''en va)', 'Comedy|Drama', 34035292, '14-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (61, 'M35589A', 'Hunting Elephants', 'Comedy|Crime', 31088020, '29-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (62, 'M65889A', 'Getting to Know You', 'Comedy|Drama', 35387694, '11-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (63, 'M35589A', 'Whores'' Glory', 'Documentary', 30314597, '01-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (64, 'M11367A', 'Last Klezmer: Leopold Kozlowski, His Life and Music, The', 'Documentary', 39357476, '30-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (65, 'M65889A', 'Brave Little Toaster, The', 'Animation|Children', 39136803, '04-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (66, 'M66630D', 'For Pete''s Sake', 'Comedy', 38781675, '02-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (67, 'M11367A', 'My Brilliant Career', 'Drama|Romance', 37855606, '06-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (68, 'M11166U', 'Lemora: A Child''s Tale of the Supernatural', 'Horror', 31740415, '03-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (69, 'M45528I', 'Harrison Bergeron', 'Drama|Sci-Fi', 39976982, '15-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (70, 'M83162D', 'Extraterrestrial (Extraterrestre)', 'Comedy|Drama|Sci-Fi', 30531558, '28-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (71, 'M35589A', 'Madness of King George, The', 'Comedy|Drama', 32211715, '21-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (72, 'M33571G', 'Restless (Uro)', 'Action|Crime|Thriller', 30605304, '21-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (73, 'M11367A', 'Rally ''Round the Flag, Boys!', 'Comedy', 38210194, '18-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (74, 'M83162D', 'Letter Never Sent (Neotpravlennoye pismo)', 'Drama|Romance', 30312281, '26-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (75, 'M83162D', 'I Was a Male War Bride', 'Comedy|Romance', 37042888, '03-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (76, 'M83162D', 'Fifty Dead Men Walking', 'Action|Drama|Thriller', 34408755, '30-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (77, 'M65889A', 'You Will Meet a Tall Dark Stranger', 'Comedy|Romance', 38723951, '06-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (78, 'M56829J', 'Man Without a Past, The (Mies vailla menneisyyttä)', 'Comedy|Crime|Drama', 30623494, '21-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (79, 'M45528I', 'Car 54, Where Are You?', 'Comedy', 35427978, '07-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (80, 'M65659J', 'Velvet Vampire, The', 'Fantasy|Horror', 39340627, '19-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (81, 'M35718D', 'Big Bad Swim, The', 'Comedy|Drama', 37501245, '22-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (82, 'M45528I', 'Ballet Shoes', 'Children|Drama', 37036330, '26-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (83, 'M66630D', 'Django, Kill... If You Live, Shoot! (Se sei vivo spara)', 'Horror|Western', 32021743, '05-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (84, 'M83162D', 'Far North', 'Drama|Romance|Thriller', 38947568, '13-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (85, 'M11166J', 'Finding Neverland', 'Drama', 30369365, '22-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (86, 'M45528I', 'In the Name of the Law', 'Drama', 31335443, '09-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (87, 'M35589A', 'Man''s Castle', 'Drama|Romance', 30854031, '28-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (88, 'M11166U', 'Queen of the Damned', 'Fantasy|Horror', 33098510, '02-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (89, 'M65889A', 'Darkman', 'Action|Crime|Fantasy|Sci-Fi|Thriller', 30820225, '18-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (90, 'M83162D', 'Sorority Boys', 'Comedy', 32194409, '04-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (91, 'M11166U', 'Dr. Goldfoot and the Bikini Machine', 'Comedy', 30615103, '11-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (92, 'M11166J', 'Madadayo (a.k.a. Not Yet)', 'Drama', 35384951, '26-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (93, 'M11166U', 'Toolbox Murders', 'Horror|Mystery', 31428814, '08-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (94, 'M16782H', 'Miracle of Marcelino, The (Marcelino pan y vino)', 'Comedy|Drama', 36686279, '21-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (95, 'M56829J', 'It Should Happen to You', 'Comedy|Romance', 38478354, '12-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (96, 'M65889A', 'Return', 'Drama', 34970609, '09-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (97, 'M35589A', 'Radio Free Albemuth', 'Drama|Sci-Fi', 35592536, '13-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (98, 'M66630D', 'Lovers & Leavers (Kuutamolla)', 'Drama|Romance', 39316666, '29-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (99, 'M66630D', 'Party Monster', 'Comedy|Crime|Drama|Thriller', 36029594, '20-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (100, 'M45528I', 'Honeymoon', 'Horror', 39134766, '07-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (101, 'M11166U', 'Two Moon Junction', 'Drama|Romance', 32286029, '26-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (102, 'M35589A', 'Who Am I (Kein System Ist Sicher)', 'Thriller', 39652723, '19-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (103, 'M65659J', 'Impostor', 'Action|Drama|Sci-Fi|Thriller', 32251685, '27-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (104, 'M16782H', 'Our Summer in Provence', 'Comedy|Drama', 34309649, '23-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (105, 'M33571G', 'Reign of Fire', 'Action|Adventure|Fantasy', 36700366, '26-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (106, 'M56829J', 'Some Came Running', 'Drama|Romance', 35401704, '09-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (107, 'M56829J', 'Task, The', 'Horror', 33439012, '09-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (108, 'M65659J', 'Lesson Plan ', 'Documentary', 37365037, '17-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (109, 'M35589A', 'Night Catches Us', 'Drama|Romance', 31152297, '10-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (110, 'M11367A', 'Dreamlife of Angels, The (Vie rêvée des anges, La)', 'Drama', 30099077, '01-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (111, 'M33571G', 'Daddy Day Care', 'Children|Comedy', 33697227, '09-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (112, 'M65659J', 'Penny Serenade', 'Drama|Romance', 34852635, '29-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (113, 'M11166J', 'Where''s Poppa?', 'Comedy', 37472672, '07-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (114, 'M56829J', 'Luna, La', 'Drama', 34965348, '16-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (115, 'M83162D', 'Arabesque', 'Adventure|Drama|Romance|Thriller', 37396963, '12-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (116, 'M35589A', 'Wish You Were Here', 'Drama|Mystery', 34094819, '01-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (117, 'M66630D', 'Mansome', 'Documentary', 31797949, '23-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (118, 'M11166J', 'Dear Zachary: A Letter to a Son About His Father', 'Documentary', 36486927, '01-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (119, 'M35589A', 'Believers, The', 'Horror|Thriller', 30518728, '14-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (120, 'M88791Z', 'Thompsons, The', 'Drama|Horror|Thriller', 33606708, '12-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (121, 'M11166J', 'Kill! (Kiru)', 'Action|Comedy|Drama', 36480641, '28-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (122, 'M11166U', 'Kabluey', 'Comedy|Drama', 38486371, '14-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (123, 'M35718D', '15', 'Action|Drama', 34452065, '11-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (124, 'M11367A', 'Space Jam', 'Adventure|Animation|Children|Comedy|Fantasy|Sci-Fi', 39128932, '27-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (125, 'M35589A', 'Mr. Nanny', 'Action|Children|Comedy', 30616739, '04-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (126, 'M35718D', 'House of Flying Daggers (Shi mian mai fu)', 'Action|Drama|Romance', 35517837, '26-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (127, 'M56829J', 'My House in Umbria', 'Drama', 37833754, '04-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (128, 'M83162D', 'Of Freaks and Men (Pro urodov i lyudey)', 'Drama', 37717526, '05-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (129, 'M11166U', 'Bus Stop', 'Comedy', 37480410, '28-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (130, 'M35589A', 'The Sea Vultures', 'Drama', 37993172, '03-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (131, 'M11166U', 'Halo Legends', 'Action|Animation|Sci-Fi', 33978317, '26-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (132, 'M35718D', 'Five People You Meet in Heaven, The', 'Drama|Fantasy', 30265521, '04-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (133, 'M66630D', 'Bullets Over Broadway', 'Comedy', 36851495, '27-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (134, 'M65889A', 'Breaking Point, The', 'Crime|Drama|Film-Noir', 30527987, '26-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (135, 'M65889A', 'Legend of Bigfoot, The', 'Documentary', 39427975, '12-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (136, 'M16782H', 'Sense and Sensibility', 'Drama|Romance', 35240519, '18-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (137, 'M45528I', 'Revenge of the Nerds', 'Comedy', 39591832, '07-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (138, 'M16782H', 'Confessions of an Opium Eater', 'Drama', 32596820, '08-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (139, 'M56829J', 'Pearls of the Crown, The (Les perles de la couronne)', 'Comedy', 36981361, '02-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (140, 'M66630D', 'Tourist, The', 'Drama|Thriller', 30255048, '24-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (141, 'M11367A', 'Fuck', 'Comedy|Documentary', 31787221, '19-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (142, 'M65889A', 'Jude the Obscure', 'Drama', 32069882, '14-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (143, 'M56829J', 'Pussy Riot: A Punk Prayer', 'Documentary', 37496260, '01-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (144, 'M11166U', 'Finding Fela!', 'Documentary', 39552332, '20-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (145, 'M33571G', 'Lights Out', 'Horror|Thriller', 37818812, '22-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (146, 'M65659J', 'The Mule', 'Comedy|Crime|Drama', 36029654, '02-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (147, 'M66630D', 'Perfectly Normal', 'Comedy', 31090384, '04-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (148, 'M45528I', '6 Days to Air: The Making of South Park', 'Documentary', 35935419, '13-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (149, 'M66630D', 'Rated X', 'Drama', 30394216, '16-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (150, 'M16782H', 'Double Suicide (Shinjû: Ten no amijima)', 'Drama|Romance', 36791210, '13-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (151, 'M66630D', 'Daddy (Tato)', 'Drama', 34570237, '20-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (152, 'M83162D', 'The Girl from the Marsh Croft', '(no genres listed)', 38150911, '17-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (153, 'M16782H', 'Meet John Doe', 'Comedy|Drama', 36681146, '06-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (154, 'M11367A', 'My Name Is Nobody (Il Mio nome è Nessuno)', 'Comedy|Western', 36081587, '02-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (155, 'M88791Z', 'Allnighter, The', 'Comedy|Romance', 30623961, '19-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (156, 'M83162D', 'Broadway Melody of 1936', 'Musical|Romance', 32069725, '22-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (157, 'M35589A', 'Spaced Invaders', 'Adventure|Comedy|Sci-Fi', 34990314, '07-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (158, 'M65659J', 'Stalin', 'Drama', 39958630, '10-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (159, 'M35589A', 'Nom de code : Rose', '(no genres listed)', 31842086, '23-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (160, 'M83162D', 'L!fe Happens', 'Comedy', 34278759, '26-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (161, 'M45528I', '7 Days in Havana', 'Drama', 37824555, '28-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (162, 'M35718D', 'Gambit', 'Comedy|Crime', 37585511, '13-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (163, 'M35718D', 'Mr. Moto''s Gamble', 'Crime|Drama|Mystery', 30418384, '21-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (164, 'M88791Z', 'Young Detective Dee: Rise of the Sea Dragon (Di Renjie: Shen du long wang)', 'Action|Adventure|Drama|Fantasy|Mystery|IMAX', 33446723, '02-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (165, 'M54354E', 'Among Us (Onder Ons)', 'Drama', 32851726, '12-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (166, 'M16782H', 'Duets', 'Comedy|Drama', 30000726, '18-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (167, 'M16782H', 'Frozen', 'Drama|Horror|Thriller', 39604043, '23-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (168, 'M33571G', 'Henry: Portrait of a Serial Killer', 'Crime|Horror|Thriller', 39641426, '08-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (169, 'M88791Z', 'Charlie Chan in Shanghai', 'Comedy|Crime|Mystery|Thriller', 36911871, '31-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (170, 'M66630D', 'Everything Put Together', 'Drama', 33376767, '20-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (171, 'M45528I', 'Tales of Terror', 'Horror', 39110589, '06-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (172, 'M35589A', 'Champion', 'Drama|Film-Noir|Romance', 34207214, '17-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (173, 'M65659J', 'Ghosts... of the Civil Dead', 'Crime|Drama', 31204856, '11-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (174, 'M35589A', 'Tormented', 'Horror|Thriller', 31412809, '21-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (175, 'M88791Z', 'Creation', 'Drama', 34293986, '23-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (176, 'M11166J', 'Her Master''s Voice', 'Comedy|Documentary', 39445249, '16-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (177, 'M65659J', 'Sonny Boy', 'Action|Drama|Thriller', 38333767, '19-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (178, 'M56829J', 'The Underneath', 'Horror|Sci-Fi|Thriller', 37563786, '18-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (179, 'M56829J', 'Asphalt', 'Drama', 34759130, '03-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (180, 'M66630D', 'Morgan Stewart''s Coming Home', 'Comedy', 32809116, '19-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (181, 'M11166J', 'Two Drifters (Odete)', 'Drama', 33723596, '07-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (182, 'M56829J', 'Vampire in Venice (Nosferatu a Venezia) (Nosferatu in Venice)', 'Horror', 36924986, '29-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (183, 'M33571G', '40 Days and 40 Nights', 'Comedy|Romance', 37897857, '10-03-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (184, 'M45528I', 'Archie To Riverdale and Back Again', 'Comedy', 30573034, '21-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (185, 'M66630D', 'The Lazarus Effect', 'Horror|Thriller', 37614169, '15-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (186, 'M35589A', 'Sextette', 'Comedy|Musical|Romance', 39644887, '01-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (187, 'M83162D', 'Streets of Laredo', 'Drama|Western', 32547410, '02-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (188, 'M11166U', 'Cairo Station (a.k.a. Iron Gate, The) (Bab el hadid)', 'Crime|Drama', 30392752, '18-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (189, 'M11166J', 'Coup de grâce (Der Fangschuß)', 'Drama|War', 33626804, '25-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (190, 'M54354E', 'Hellsing Ultimate OVA Series', 'Action|Animation|Horror', 38929011, '04-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (191, 'M66630D', 'Keeping Up with the Steins', 'Comedy', 34846033, '04-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (192, 'M65659J', 'Waiting for Happiness (Heremakono)', 'Drama', 31623304, '29-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (193, 'M66630D', 'Victim', 'Crime|Drama', 37132698, '24-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (194, 'M66630D', 'Doctor X', 'Horror|Thriller', 38477570, '18-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (195, 'M45528I', 'Man You Had in Mind, The', 'Documentary', 38583768, '16-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (196, 'M88791Z', 'Silja - nuorena nukkunut', 'Drama|Romance', 37058287, '03-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (197, 'M11367A', 'A Summer in La Goulette', 'Comedy|Drama', 32285040, '07-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (198, 'M56829J', '30 Beats', 'Comedy|Romance', 37322479, '24-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (199, 'M33571G', 'Mackenna''s Gold', 'Western', 32268202, '09-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (200, 'M66630D', 'Lady of Chance, A', 'Comedy|Drama|Romance', 37536183, '16-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (201, 'M66630D', 'Shaft''s Big Score!', 'Action|Crime', 32082206, '10-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (202, 'M16782H', 'Attack of the Giant Leeches', 'Horror|Sci-Fi', 36433312, '29-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (203, 'M11367A', 'Thieves Like Us', 'Crime|Drama|Romance', 33067786, '21-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (204, 'M16782H', 'Time of Favor (Ha-Hesder)', 'Drama|War', 38699301, '17-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (205, 'M66630D', 'Frankie and Alice', 'Drama', 30866482, '23-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (206, 'M33571G', 'Uncovered', 'Mystery|Thriller', 39496451, '16-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (207, 'M11166U', 'Lucky Jordan', 'Comedy|Crime|Drama', 31273617, '20-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (208, 'M11166J', 'Before the Rains', 'Drama|Romance|Thriller', 35087052, '25-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (209, 'M66630D', 'Driver, The', 'Action|Crime|Film-Noir', 38258236, '11-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (210, 'M11166J', 'Omega Doom', 'Sci-Fi', 35799666, '22-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (211, 'M45528I', 'Just Write', 'Comedy', 32966839, '28-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (212, 'M33571G', 'American: The Bill Hicks Story', 'Comedy|Documentary', 30913998, '07-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (213, 'M35718D', 'New York, New York', 'Drama|Musical|Romance', 33152835, '27-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (214, 'M65889A', 'Limitless', 'Sci-Fi|Thriller', 36910856, '05-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (215, 'M35589A', 'Mistress America', 'Comedy', 36241115, '09-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (216, 'M45528I', 'Mercenary for Justice', 'Action', 37015780, '20-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (217, 'M54354E', 'Tall T, The', 'Western', 35765908, '13-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (218, 'M11367A', 'Incident at Blood Pass (Machibuse) (Ambush)', 'Action|Drama', 37473015, '17-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (219, 'M45528I', 'Giant Mechanical Man, The', 'Comedy|Drama|Romance', 30810786, '30-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (220, 'M35589A', 'Love & Human Remains', 'Comedy|Drama', 31877035, '13-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (221, 'M65889A', 'Deadbolt', 'Thriller', 30986991, '09-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (222, 'M56829J', 'Visiting Hours', 'Horror', 38781319, '13-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (223, 'M33571G', 'Dollman vs. Demonic Toys', 'Action|Fantasy|Horror', 38703707, '12-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (224, 'M33571G', 'Bedtime Stories', 'Adventure|Children|Comedy', 38885951, '21-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (225, 'M16782H', 'My Best Friend''s Wife', 'Comedy', 37077294, '14-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (226, 'M54354E', 'Witness to Murder', 'Crime|Drama|Film-Noir|Thriller', 37914091, '16-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (227, 'M65889A', 'Born Romantic', 'Comedy|Drama|Romance', 32448970, '13-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (228, 'M45528I', 'Three Burials of Melquiades Estrada, The', 'Adventure|Crime|Drama', 38424777, '21-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (229, 'M83162D', 'A Night in the Show', 'Comedy', 38143621, '27-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (230, 'M16782H', 'No Such Thing', 'Drama|Fantasy|Romance', 35830699, '01-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (231, 'M11166J', 'Never Too Young to Die', 'Action|Adventure|Drama', 31451957, '15-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (232, 'M54354E', 'Must Have Been Love', 'Drama|Romance', 39360565, '29-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (233, 'M16782H', 'Herman''s House', 'Crime|Documentary', 30927280, '02-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (234, 'M54354E', 'Ingmar Bergman on Life and Work (Ingmar Bergman: Om liv och arbete)', 'Documentary', 38715028, '24-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (235, 'M88791Z', 'Everybody''s Fine (Stanno tutti bene)', 'Comedy|Drama', 38991803, '12-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (236, 'M65889A', 'Sword of Gideon', 'Action|Drama|Thriller', 33278473, '03-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (237, 'M11367A', 'Hearts and Minds', 'Drama', 38878088, '17-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (238, 'M66630D', 'W.', 'Drama', 31990993, '28-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (239, 'M83162D', 'Otello', 'Drama', 34412444, '22-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (240, 'M35718D', 'Chappie', 'Action|Thriller', 31929965, '20-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (241, 'M66630D', 'King of the Jungle', 'Drama|Thriller', 30774319, '08-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (242, 'M33571G', 'Frankie and Johnny', 'Comedy|Romance', 35971999, '21-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (243, 'M66630D', 'Special Mission Lady Chaplin', 'Action|Adventure', 34117180, '30-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (244, 'M66630D', 'Young Sherlock Holmes', 'Action|Adventure|Children|Fantasy|Mystery|Thriller', 30433181, '12-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (245, 'M33571G', 'My Darling Clementine', 'Western', 32347508, '26-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (246, 'M33571G', 'The Perils of Pauline', '(no genres listed)', 31562002, '05-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (247, 'M56829J', 'Spring Break Shark Attack', 'Adventure|Drama|Horror', 30359424, '23-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (248, 'M65659J', 'Bosko''s Parlor Pranks', 'Animation', 38728378, '14-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (249, 'M35589A', 'Divorce, Le', 'Comedy|Drama|Romance', 30429147, '29-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (250, 'M65889A', 'Ingeborg Holm', 'Drama', 35904021, '08-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (251, 'M45528I', 'Attack of the Giant Leeches', 'Horror|Sci-Fi', 33711331, '21-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (252, 'M65659J', '200 M.P.H.', 'Action|Adventure|Drama', 31248023, '27-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (253, 'M65889A', 'Marie Krøyer', 'Drama', 33036448, '25-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (254, 'M66630D', 'Estomago: A Gastronomic Story', 'Drama', 39731949, '07-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (255, 'M66630D', 'Missing in America', 'Drama|War', 33246339, '26-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (256, 'M66630D', 'League of Gentlemen, The', 'Adventure|Comedy|Crime|Drama', 36628241, '29-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (257, 'M65889A', 'Showgirls', 'Drama', 36647308, '01-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (258, 'M54354E', 'If a Tree Falls: A Story of the Earth Liberation Front', 'Documentary', 38147903, '22-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (259, 'M56829J', 'Gayby', 'Comedy|Drama', 38796529, '03-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (260, 'M35718D', 'Zack and Miri Make a Porno', 'Comedy|Drama|Romance', 38272094, '26-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (261, 'M88791Z', 'My Name Is Bruce', 'Comedy|Horror', 36401514, '17-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (262, 'M35718D', 'One Sunday Afternoon', 'Comedy|Romance', 35754366, '09-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (263, 'M56829J', 'Spaceballs', 'Comedy|Sci-Fi', 31660149, '28-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (264, 'M11367A', 'Camille Claudel', 'Drama', 37771488, '24-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (265, 'M56829J', 'Valley Of Flowers', 'Adventure|Drama|Romance', 38993822, '21-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (266, 'M88791Z', 'Stephen Fry In America - New World', '(no genres listed)', 37113869, '14-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (267, 'M33571G', 'Johnny Suede', 'Comedy|Musical|Romance', 34699506, '06-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (268, 'M33571G', 'Rain People, The', 'Drama', 39923737, '09-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (269, 'M35718D', 'Floating Skyscrapers', 'Drama|Romance', 36186154, '14-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (270, 'M66630D', 'Cream Lemon (Kurîmu remon)', 'Comedy|Drama', 36086920, '08-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (271, 'M65659J', 'Hello I Must Be Going', 'Comedy|Drama|Romance', 31885264, '23-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (272, 'M11166J', 'Police', 'Comedy', 34010568, '11-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (273, 'M11166U', 'From Hell', 'Crime|Horror|Mystery|Thriller', 37094162, '10-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (274, 'M35589A', 'Bomb It', 'Documentary', 35011079, '23-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (275, 'M65659J', 'Adventures of Captain Marvel', 'Action|Adventure|Fantasy|Mystery|Sci-Fi', 30763137, '16-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (276, 'M88791Z', 'Concussion', 'Drama', 35503970, '15-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (277, 'M66630D', 'What''s Up, Doc?', 'Comedy', 39918029, '04-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (278, 'M35589A', 'Cradle 2 the Grave', 'Action|Crime|Drama|Thriller', 31414592, '21-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (279, 'M65659J', 'Paranormal Activity: The Marked Ones', 'Horror|Thriller', 33294578, '28-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (280, 'M56829J', 'Monkey in Winter, A (Un singe en hiver)', 'Comedy|Drama', 33135277, '19-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (281, 'M11166J', 'Miss Annie Rooney', 'Drama', 39564723, '26-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (282, 'M54354E', 'Angel Baby', 'Drama', 37448495, '29-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (283, 'M33571G', 'Love Me If You Dare (Jeux d''enfants)', 'Drama|Romance', 32453253, '25-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (284, 'M33571G', 'Far and Away', 'Adventure|Drama|Romance', 35827419, '20-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (285, 'M35718D', 'Fairly Odd Christmas, A', 'Children|Fantasy', 37573690, '13-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (286, 'M83162D', 'Man Who Captured Eichmann, The', 'Drama|War', 32385029, '26-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (287, 'M33571G', 'Bangkok Dangerous', 'Action|Crime|Thriller', 32208911, '19-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (288, 'M45528I', 'Pretty Cool', 'Action|Comedy|Thriller', 39343732, '14-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (289, 'M65889A', 'Christopher Strong', 'Drama', 34795272, '18-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (290, 'M65889A', 'Fast & Furious (Fast and the Furious 4, The)', 'Action|Crime|Drama|Thriller', 36117954, '17-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (291, 'M54354E', 'Annie', 'Children|Comedy|Drama|Musical', 33536985, '14-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (292, 'M54354E', '(Untitled)', 'Comedy|Drama', 30786773, '26-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (293, 'M65659J', 'Superman II', 'Action|Sci-Fi', 31595718, '03-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (294, 'M66630D', 'Story of the Weeping Camel, The (Geschichte vom weinenden Kamel, Die)', 'Documentary|Drama', 35773126, '18-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (295, 'M83162D', 'Man with the Golden Arm, The', 'Drama', 33228574, '31-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (296, 'M56829J', 'Along Came a Spider', 'Action|Crime|Mystery|Thriller', 39835449, '09-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (297, 'M16782H', 'Antonio Gaudí', 'Documentary', 34944848, '01-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (298, 'M11166U', 'Jaws', 'Action|Horror', 39021320, '04-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (299, 'M65889A', 'Stars', 'Drama|War', 37664791, '01-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (300, 'M66630D', 'Beslan: Three Days in September', 'Documentary', 36946470, '12-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (301, 'M11166U', 'Pauline & Paulette (Pauline en Paulette)', 'Comedy|Drama', 39388360, '29-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (302, 'M11166U', 'World Trade Center', 'Drama', 32107787, '08-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (303, 'M66630D', 'In Enemy Hands', 'War', 39375154, '21-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (304, 'M11166J', 'Open Hearts (Elsker dig for evigt)', 'Romance', 36657276, '02-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (305, 'M33571G', 'Dragon Ball Z: Fusion Reborn (Doragon bôru Z 12: Fukkatsu no fyushon!! Gokû to Bejîta)', 'Action|Adventure|Animation', 34900523, '31-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (306, 'M16782H', 'Goodbye World', 'Comedy|Drama', 35091605, '03-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (307, 'M65659J', 'Louis Theroux: Twilight of the Porn Stars', 'Documentary', 38956037, '30-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (308, 'M45528I', 'Ama lur (Tierra Madre)', 'Documentary', 33497515, '08-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (309, 'M16782H', 'Super 8', 'Mystery|Sci-Fi|Thriller|IMAX', 38071772, '08-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (310, 'M11166U', 'Brother Orchid', 'Comedy|Crime|Drama|Romance', 34900543, '06-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (311, 'M66630D', 'Avenging Angelo', 'Action|Comedy|Crime', 37627764, '26-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (312, 'M65889A', 'Best of the Badmen', 'Western', 34517728, '24-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (313, 'M65659J', 'Dancemaker', 'Documentary', 36662654, '20-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (314, 'M54354E', 'Promotion, The', 'Comedy', 31529219, '02-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (315, 'M83162D', 'Scream 3', 'Comedy|Horror|Mystery|Thriller', 30607982, '19-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (316, 'M16782H', 'Price of Glory', 'Drama', 35230911, '04-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (317, 'M65889A', 'Pine Flat', 'Drama', 38487937, '11-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (318, 'M11367A', 'Polar Bear King, The (Kvitebjørn Kong Valemon)', 'Adventure|Children|Fantasy', 34684187, '19-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (319, 'M11166J', 'Buffalo Girls', 'Action', 32631938, '25-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (320, 'M11166J', 'Split Second', 'Action|Sci-Fi|Thriller', 32526254, '23-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (321, 'M66630D', 'Decoy', 'Crime|Drama|Film-Noir', 35433181, '12-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (322, 'M11166J', 'Dear Wendy', 'Drama', 32100812, '05-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (323, 'M33571G', 'Shanghai Gesture, The', 'Drama|Film-Noir', 38429788, '26-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (324, 'M35718D', 'Final Fantasy VII: Advent Children', 'Action|Adventure|Animation|Fantasy|Sci-Fi', 33237819, '24-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (325, 'M65659J', 'Dark Angel, The', 'Drama|Romance', 30795550, '08-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (326, 'M35718D', '11.6', 'Crime|Drama', 32971594, '10-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (327, 'M33571G', 'Easy Street', 'Comedy', 37375687, '08-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (328, 'M16782H', 'Leontine', 'Comedy|Crime', 39842750, '09-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (329, 'M11166J', 'Whiplash', 'Drama', 36432445, '29-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (330, 'M11166J', 'Fly Away (Bis zum Horizont, dann links!)', 'Comedy', 38553188, '27-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (331, 'M65659J', 'Aankhen', 'Comedy|Crime|Thriller', 30463722, '07-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (332, 'M11367A', 'Highly Dangerous', 'Action|Thriller', 38048658, '17-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (333, 'M66630D', 'Dante 01', 'Sci-Fi|Thriller', 38068777, '04-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (334, 'M35718D', 'Snow White: A Tale of Terror', 'Fantasy|Horror', 36091121, '26-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (335, 'M35589A', 'Thin Blue Lie, The', 'Drama', 33645838, '10-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (336, 'M45528I', 'My Father''s Glory (La gloire de mon père)', 'Adventure|Drama', 38942917, '14-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (337, 'M54354E', 'Thrill Ride: The Science of Fun', 'Adventure|Documentary|IMAX', 36374901, '16-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (338, 'M16782H', 'Everyday People', 'Drama', 34983792, '26-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (339, 'M11166U', 'Most Beautiful, The (Ichiban utsukushiku)', 'Drama', 32067403, '05-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (340, 'M11166U', 'Wooden Man''s Bride, The (Yan shen)', 'Drama', 33262917, '15-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (341, 'M83162D', 'Spring Break', 'Comedy', 35208233, '27-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (342, 'M33571G', 'Liliom', 'Drama|Fantasy', 37045281, '29-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (343, 'M65889A', 'Bigger Than the Sky', 'Comedy|Drama|Romance', 31830618, '22-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (344, 'M88791Z', 'Good Time Girls, The (Bonnes femmes, Les)', 'Drama|Mystery|Romance', 30298649, '17-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (345, 'M66630D', 'Zatoichi on the Road (Zatôichi kenka-tabi) (Zatôichi 5)', 'Action|Drama', 31313303, '24-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (346, 'M56829J', 'Paper Birds (Pájaros de papel)', 'Comedy|Drama', 33587887, '14-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (347, 'M35718D', 'Hondo', 'Western', 30841222, '18-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (348, 'M66630D', 'Dog Year, A', 'Comedy|Drama', 37103446, '15-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (349, 'M11166J', 'Jesus Camp', 'Documentary|Drama', 32122720, '05-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (350, 'M45528I', 'Lovely Bones, The', 'Crime|Drama|Fantasy|Horror|Thriller', 37208469, '28-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (351, 'M88791Z', 'Mindwarp', 'Horror|Sci-Fi|Thriller', 39662513, '05-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (352, 'M35589A', 'Manitou, The', 'Horror', 36760833, '28-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (353, 'M83162D', 'Jonah Who Will Be 25 in the Year 2000 (Jonas qui aura 25 ans en l''an 2000)', 'Comedy', 32449516, '26-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (354, 'M56829J', 'Assassination of Richard Nixon, The', 'Crime|Drama|Thriller', 36671303, '02-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (355, 'M11166U', 'Line King: The Al Hirschfeld Story, The', 'Documentary', 35680713, '30-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (356, 'M56829J', 'Bloodtide', 'Horror', 31708071, '18-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (357, 'M56829J', 'Waltzes from Vienna', 'Comedy|Musical', 31743288, '04-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (358, 'M11166J', 'Breed, The', 'Action|Adventure|Horror', 34003893, '15-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (359, 'M16782H', 'Terms and Conditions May Apply', 'Documentary', 34365426, '01-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (360, 'M66630D', 'Judy Berlin', 'Drama', 37596842, '18-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (361, 'M11166J', 'Some Girls', 'Comedy|Drama|Romance', 33286430, '07-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (362, 'M33571G', 'American Mullet', 'Documentary', 31437423, '28-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (363, 'M11166J', 'Dernier Combat, Le (Last Battle, The)', 'Drama|Sci-Fi', 37418759, '27-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (364, 'M88791Z', 'Nobel Son', 'Comedy|Crime|Drama|Thriller', 36892350, '11-03-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (365, 'M45528I', 'Tyler Perry''s I Can Do Bad All by Myself', 'Comedy|Drama', 38026597, '12-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (366, 'M65659J', 'Bye Bye Braverman', 'Comedy|Drama', 36101523, '09-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (367, 'M11367A', 'Mad City', 'Action|Drama', 38403748, '04-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (368, 'M11166J', 'Max', 'Drama', 30007120, '18-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (369, 'M35718D', 'Billy Budd', 'Adventure', 33355551, '05-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (370, 'M11166U', 'Palmetto', 'Crime|Drama|Mystery|Romance|Thriller', 36451981, '29-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (371, 'M83162D', 'Bobby Deerfield', 'Drama|Romance', 33427281, '28-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (372, 'M88791Z', 'Little Brother, Big Trouble: A Christmas Adventure (Niko 2: Lentäjäveljekset)', 'Adventure|Animation|Children|Comedy', 33709100, '26-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (373, 'M35718D', 'Felon', 'Crime|Drama', 32783441, '07-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (374, 'M83162D', 'Blood & Donuts', 'Comedy|Horror', 31641829, '08-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (375, 'M65659J', 'Mrs. Brown (a.k.a. Her Majesty, Mrs. Brown)', 'Drama|Romance', 38949540, '03-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (376, 'M65659J', 'Cabiria', 'Adventure|Drama|War', 37856572, '09-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (377, 'M35589A', 'Pontypool', 'Horror|Thriller', 32667095, '10-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (378, 'M33571G', 'Margot at the Wedding', 'Drama', 34160382, '24-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (379, 'M88791Z', 'Endless Love', 'Drama|Romance', 31066919, '26-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (380, 'M65659J', 'Borderland', 'Crime|Horror|Thriller', 38708134, '14-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (381, 'M65889A', 'Jet Pilot', 'Drama', 36914689, '28-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (382, 'M45528I', 'The Face of Marble', 'Horror', 37468998, '16-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (383, 'M45528I', 'Counterfeiters, The (Le cave se rebiffe)', 'Comedy', 37947361, '14-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (384, 'M88791Z', 'Besieged (a.k.a. L'' Assedio)', 'Drama', 39616818, '15-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (385, 'M16782H', 'Fur: An Imaginary Portrait of Diane Arbus', 'Drama|Fantasy|Romance', 31008151, '18-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (386, 'M66630D', 'Aladdin', 'Adventure|Fantasy', 32531617, '16-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (387, 'M45528I', 'On the Beach', 'Drama', 34439935, '12-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (388, 'M35718D', 'Man of Tai Chi', 'Action|IMAX', 36553825, '07-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (389, 'M66630D', 'Into the West', 'Adventure|Children', 38205720, '18-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (390, 'M35589A', 'Four Seasons (Seasons, The) (Vremena goda)', 'Documentary', 30890511, '16-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (391, 'M35589A', 'Whatever Works', 'Comedy|Romance', 34520748, '11-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (392, 'M83162D', 'Pups', 'Crime|Drama|Thriller', 38171126, '26-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (393, 'M83162D', 'King of California', 'Comedy', 38821144, '30-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (394, 'M65889A', 'Song of the Sea', 'Animation|Children|Fantasy', 37782899, '31-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (395, 'M11166U', 'Inside Man', 'Crime|Drama|Thriller', 35995754, '16-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (396, 'M33571G', 'Storefront Hitchcock', 'Documentary|Musical', 38407587, '22-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (397, 'M35718D', 'Assassination Tango', 'Drama|Thriller', 39370279, '13-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (398, 'M35718D', 'Confession, The', 'Drama|Thriller', 35010460, '02-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (399, 'M45528I', 'Queen and I, The (Drottningen och jag)', 'Documentary', 36883757, '20-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (400, 'M11166U', 'Man Called Gannon, A', 'Western', 35744749, '30-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (401, 'M11166U', 'Sin City', 'Action|Crime|Film-Noir|Mystery|Thriller', 32680046, '19-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (402, 'M35589A', 'Horseman, The', 'Crime|Thriller', 36565215, '25-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (403, 'M16782H', 'Bill Maher... But I''m Not Wrong', 'Comedy', 33993004, '05-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (404, 'M65889A', 'Psycho II', 'Horror|Mystery|Thriller', 36680952, '17-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (405, 'M45528I', 'Tribute to a Bad Man', 'Western', 30846291, '21-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (406, 'M66630D', 'Teahouse of the August Moon, The', 'Comedy', 38752864, '05-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (407, 'M65659J', 'Who''s Harry Crumb?', 'Comedy|Mystery', 30660234, '30-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (408, 'M35718D', 'Cercle Rouge, Le (Red Circle, The)', 'Crime|Thriller', 32535290, '05-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (409, 'M33571G', 'The Gallant Hours', '(no genres listed)', 32047797, '02-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (410, 'M33571G', 'High on Crack Street: Lost Lives in Lowell', 'Documentary', 32029039, '19-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (411, 'M56829J', 'The Mysterious Island', 'Adventure|Sci-Fi', 31598613, '19-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (412, 'M35718D', 'Hawks and Sparrows (Uccellacci e Uccellini)', 'Comedy', 35299300, '01-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (413, 'M33571G', 'Damned, The (Les Maudits)', 'Drama', 37069311, '27-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (414, 'M35718D', 'Miss Congeniality', 'Comedy|Crime', 31941156, '27-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (415, 'M35718D', 'Peter''s Friends', 'Comedy|Drama', 31354239, '12-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (416, 'M16782H', 'Unreasonable Man, An', 'Documentary', 38699820, '06-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (417, 'M88791Z', 'Brother from Another Planet, The', 'Drama|Sci-Fi', 34200906, '07-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (418, 'M16782H', 'Stolen Seas', 'Adventure|Crime|Documentary', 36288775, '08-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (419, 'M35589A', 'Not Your Typical Bigfoot Movie', 'Documentary', 36631460, '01-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (420, 'M88791Z', 'Leaving (Partir)', 'Drama|Romance', 34380277, '08-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (421, 'M88791Z', 'Love Letter, The', 'Comedy|Romance', 33834510, '18-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (422, 'M35718D', 'Mad Hot Ballroom', 'Children|Documentary', 30189205, '04-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (423, 'M11367A', 'Lord of the Rings: The Fellowship of the Ring, The', 'Adventure|Fantasy', 38413935, '23-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (424, 'M66630D', 'Cat Concerto, The', 'Animation|Children|Comedy', 34344425, '18-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (425, 'M65889A', 'Carry on Spying (Agent Oooh!)', 'Comedy', 35721530, '02-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (426, 'M11367A', 'Phat Beach', 'Comedy', 33315845, '07-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (427, 'M11166U', 'Abominable Dr. Phibes, The', 'Horror|Mystery', 33201873, '10-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (428, 'M35718D', 'Lost Battalion, The', 'Action|Drama|War', 38224945, '30-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (429, 'M11166U', 'Kapò', 'Drama|War', 38116745, '04-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (430, 'M11367A', 'Gate, The', 'Horror', 38711473, '12-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (431, 'M88791Z', 'Flight of Fury', 'Action', 33530155, '13-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (432, 'M11367A', 'Requiem', 'Drama|Thriller', 31696864, '24-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (433, 'M88791Z', 'What Have They Done to Your Daughters?', 'Mystery|Romance|Thriller', 39948291, '20-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (434, 'M65889A', 'Horror Planet (a.k.a. Inseminoid)', 'Action|Drama|Horror|Sci-Fi', 36061783, '29-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (435, 'M66630D', 'Stars Fell on Henrietta, The', 'Drama', 31200227, '01-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (436, 'M54354E', 'Purpose', 'Drama', 33336552, '06-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (437, 'M65889A', 'Ladrones', 'Drama', 39799457, '27-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (438, 'M11166J', 'Munger Road', 'Horror|Mystery|Thriller', 30166411, '26-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (439, 'M11166J', 'Alex in Wonderland', 'Comedy|Drama', 30171709, '24-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (440, 'M45528I', 'Laid To Rest', 'Horror', 35989258, '02-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (441, 'M11367A', 'Henry: Portrait of a Serial Killer, Part 2', 'Crime|Horror', 39307600, '17-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (442, 'M88791Z', 'Kissed', 'Drama|Romance', 35701441, '22-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (443, 'M65659J', 'Scream', 'Comedy|Horror|Mystery|Thriller', 38494059, '07-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (444, 'M54354E', 'Thunderball', 'Action|Adventure|Thriller', 39743131, '21-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (445, 'M11166J', 'Kill Bill: Vol. 1', 'Action|Crime|Thriller', 31456413, '26-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (446, 'M11166U', 'For No Good Reason', 'Documentary', 39367385, '11-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (447, 'M88791Z', 'Art and Craft', 'Documentary', 37613581, '22-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (448, 'M35589A', 'Independence Day (a.k.a. ID4)', 'Action|Adventure|Sci-Fi|Thriller', 37797466, '12-03-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (449, 'M35589A', 'Terror Beneath the Sea, The (Kaitei daisensô)', 'Action|Sci-Fi', 37138916, '09-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (450, 'M56829J', 'Sierra, La', 'Documentary', 33872076, '24-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (451, 'M66630D', 'Monster in a Box', 'Comedy|Drama', 34051802, '26-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (452, 'M35718D', 'Stargate', 'Action|Adventure|Sci-Fi', 32900988, '09-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (453, 'M45528I', 'Winter War (Talvisota)', 'Drama|War', 31277452, '30-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (454, 'M65659J', 'Warped Ones, The (Kyonetsu no kisetsu)', 'Drama', 33781045, '26-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (455, 'M65889A', 'Man on the Train (Homme du train, L'')', 'Comedy|Drama', 34019632, '31-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (456, 'M35718D', 'Ill Gotten Gains', 'Drama', 39370766, '08-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (457, 'M65659J', 'Belles on Their Toes', 'Comedy', 33557051, '25-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (458, 'M11166J', 'Big Trouble in Little China', 'Action|Adventure|Comedy|Fantasy', 33195413, '24-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (459, 'M35718D', 'Cat and the Canary, The', 'Comedy|Horror|Mystery', 33340173, '21-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (460, 'M11166J', 'Aura, The (Aura, El)', 'Crime|Drama|Thriller', 34847264, '20-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (461, 'M88791Z', 'Billy Jack', 'Action|Drama', 39837106, '28-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (462, 'M66630D', 'D.E.B.S.', 'Action|Comedy', 34753846, '22-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (463, 'M56829J', 'In & Out', 'Comedy', 30040673, '31-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (464, 'M11166U', 'Paper, The', 'Comedy|Drama', 39432762, '28-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (465, 'M11166U', 'Watermelon Man', 'Comedy|Drama', 35549794, '18-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (466, 'M11367A', 'House Is Black, The', 'Documentary', 38521028, '05-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (467, 'M11367A', 'Scandal', 'Drama', 30520199, '07-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (468, 'M16782H', 'Story of My Death', 'Drama', 35900435, '17-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (469, 'M45528I', 'Cloak & Dagger', 'Action|Adventure|Children|Crime|Mystery|Thriller', 31328213, '14-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (470, 'M45528I', 'Battleship', 'Action|Sci-Fi|Thriller|IMAX', 33302312, '12-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (471, 'M45528I', 'Story of Film: An Odyssey, The', 'Documentary', 33931609, '19-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (472, 'M54354E', 'Beautiful Boy', 'Drama', 35041969, '27-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (473, 'M11367A', 'Le créateur ', 'Comedy', 35157891, '19-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (474, 'M33571G', 'Berlin Alexanderplatz', 'Drama', 31346839, '22-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (475, 'M11166U', 'Starship Invasions', 'Sci-Fi', 32798321, '01-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (476, 'M56829J', 'Return of Django (Son of Django) (Figlio di Django, Il)', 'Western', 30630835, '18-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (477, 'M35718D', 'Macario', 'Drama|Fantasy|Mystery', 36478256, '27-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (478, 'M16782H', 'Pajama Game, The', 'Comedy|Musical|Romance', 35094193, '20-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (479, 'M65889A', 'Les hautes solitudes', '(no genres listed)', 37070447, '09-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (480, 'M54354E', 'Varg Veum - Fallen Angels (Varg Veum - Falne Engler)', 'Crime|Drama|Thriller', 32653012, '20-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (481, 'M11166J', 'Second Jungle Book: Mowgli & Baloo, The', 'Adventure|Children', 34010867, '15-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (482, 'M65889A', 'Love in the Time of Cholera', 'Drama|Romance', 38697877, '02-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (483, 'M83162D', 'Simple Twist of Fate, A', 'Drama', 32631330, '01-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (484, 'M65889A', 'Town That Dreaded Sundown, The', 'Crime|Drama|Horror|Mystery|Thriller', 34742657, '19-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (485, 'M35718D', 'Black Beauty', 'Children|Drama', 34532591, '08-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (486, 'M16782H', 'In the Hands of the Gods', 'Documentary', 39889567, '03-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (487, 'M65889A', 'Caretakers, The', 'Drama', 32794216, '11-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (488, 'M66630D', 'Two Lovers', 'Drama|Romance', 35410742, '09-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (489, 'M11166J', 'Mág', 'Drama', 34276776, '09-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (490, 'M45528I', 'Half Moon Street', 'Drama|Thriller', 32598198, '18-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (491, 'M54354E', 'Road North (Tie pohjoiseen)', 'Comedy|Drama', 30088371, '14-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (492, 'M11367A', 'Nanny Diaries, The', 'Comedy|Drama|Romance', 36508538, '08-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (493, 'M65659J', 'Black Cadillac', 'Horror|Thriller', 39840622, '11-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (494, 'M56829J', 'Trail Beyond, The', 'Action|Adventure|Western', 39170707, '11-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (495, 'M65889A', 'Sound City', 'Documentary', 34839926, '04-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (496, 'M83162D', 'Baraka', 'Documentary', 32070875, '14-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (497, 'M45528I', 'Thrilla in Manila', 'Documentary', 34730929, '16-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (498, 'M35718D', 'Vic+Flo Saw a Bear', 'Crime|Drama|Thriller', 30853867, '31-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (499, 'M54354E', 'Little Nicky', 'Comedy', 33586429, '09-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (500, 'M65889A', 'Broken City', 'Crime|Drama|Thriller', 39094514, '27-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (501, 'M11166U', '18 Again!', 'Comedy|Fantasy', 35128098, '19-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (502, 'M66630D', 'Gory Gory Hallelujah', 'Comedy|Fantasy|Horror', 37839674, '01-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (503, 'M33571G', 'Remonstrance', '(no genres listed)', 33117902, '28-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (504, 'M65659J', 'Young Adam', 'Crime|Drama|Thriller', 36644250, '21-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (505, 'M11166J', 'Kalifornia', 'Drama|Thriller', 35672419, '03-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (506, 'M11367A', 'Kidnapped For Christ', 'Documentary', 30878302, '22-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (507, 'M11166U', 'Naked Man, The', 'Drama', 36459065, '07-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (508, 'M11367A', 'Salem''s Lot', 'Drama|Horror|Mystery|Thriller', 33790404, '06-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (509, 'M35589A', 'Sunday in Kigali, A (Un dimanche à Kigali)', 'Drama|War', 37902541, '01-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (510, 'M66630D', 'Highlander', 'Action|Adventure|Fantasy', 33428952, '14-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (511, 'M88791Z', 'Pleasure Garden, The', 'Drama', 34787096, '04-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (512, 'M65889A', 'Barefoot Executive, The', 'Children|Comedy', 33065365, '17-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (513, 'M56829J', 'Kaho Naa... Pyaar Hai', 'Action|Adventure|Comedy|Drama|Mystery|Romance|Thriller', 35387956, '18-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (514, 'M65889A', 'Christmas Tale, A (Un conte de Noël)', 'Comedy|Drama', 34482595, '18-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (515, 'M45528I', 'Pushing Tin', 'Comedy', 34093116, '13-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (516, 'M65659J', 'One Lucky Elephant', 'Documentary', 31208143, '26-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (517, 'M11166U', 'Aral, Fishing in an Invisible Sea', 'Documentary', 33308037, '03-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (518, 'M35718D', 'Day''s Pleasure, A (Ford Story, A)', 'Comedy', 37609393, '17-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (519, 'M54354E', 'My Bodyguard', 'Drama', 39303301, '29-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (520, 'M35718D', 'Once Upon a Honeymoon', 'Comedy|Mystery|Romance', 33967856, '09-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (521, 'M33571G', 'Merantau', 'Action|Drama', 30385443, '10-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (522, 'M88791Z', 'Siffleurs, Les (Viheltäjät)', 'Drama', 37745407, '09-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (523, 'M65889A', 'Strip Nude for Your Killer (Nude per l''assassino)', 'Horror|Mystery|Thriller', 34132773, '22-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (524, 'M88791Z', 'Big Bounce, The', 'Comedy|Crime|Thriller', 37108659, '03-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (525, 'M54354E', 'Battlefield Earth', 'Action|Sci-Fi', 32367333, '15-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (526, 'M45528I', 'Act of Valor', 'Action|Thriller|War', 30815507, '21-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (527, 'M11166U', 'Where Eagles Dare', 'Action|Adventure|War', 38317956, '05-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (528, 'M11367A', 'Four Days in July', 'Comedy|Drama', 36986291, '11-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (529, 'M54354E', 'Spider Forest (Geomi sup)', 'Drama|Horror|Mystery|Thriller', 38360813, '30-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (530, 'M66630D', 'Too Shy to Try (Je suis timide... mais je me soigne)', 'Comedy', 38153904, '31-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (531, 'M16782H', 'Black God, White Devil (Deus e o Diabo na Terra do Sol)', 'Adventure|Crime|Drama|Western', 30790195, '10-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (532, 'M11166U', 'The Ghosts in Our Machine', 'Documentary', 33333209, '15-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (533, 'M35718D', 'Countdown to Zero', 'Documentary', 34233207, '25-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (534, 'M16782H', 'Child of God', 'Crime|Drama|Thriller', 32663308, '12-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (535, 'M11166J', 'Major Barbara', 'Comedy', 35346003, '15-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (536, 'M11166J', 'Among Wolves (Entrelobos)', 'Drama', 35648356, '28-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (537, 'M33571G', 'Fuel', 'Documentary', 33783749, '25-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (538, 'M83162D', 'Blood Done Sign My Name', 'Drama', 34736526, '05-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (539, 'M65659J', 'Matador, The', 'Comedy|Drama|Thriller', 39262362, '03-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (540, 'M33571G', 'The Land Before Time VII: The Stone of Cold Fire', 'Adventure|Animation|Children|Fantasy', 31453263, '07-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (541, 'M65659J', 'The Madagascar Penguins in a Christmas Caper', 'Animation|Comedy', 33202087, '22-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (542, 'M65659J', 'The Elephant Man', 'Drama', 35246967, '17-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (543, 'M56829J', 'Welcome to New York', 'Drama', 39456732, '22-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (544, 'M16782H', 'House of Wax', 'Horror|Thriller', 33502919, '23-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (545, 'M35589A', 'Miracle in Cell No. 7', 'Comedy|Drama', 34388990, '24-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (546, 'M66630D', 'Sylvia', 'Drama|Romance', 35410334, '13-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (547, 'M11367A', 'Outlaw, The', 'Western', 38109523, '05-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (548, 'M66630D', 'Shaggy D.A., The', 'Children|Comedy', 38837877, '14-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (549, 'M16782H', 'Phyllis and Harold', 'Documentary', 33932066, '23-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (550, 'M45528I', 'Red Dog', 'Comedy|Drama|Romance', 39959575, '09-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (551, 'M66630D', 'Man Who Never Was, The', 'Drama|War', 34516782, '22-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (552, 'M66630D', 'Roll Bounce', 'Comedy|Drama|Romance', 36089904, '27-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (553, 'M35589A', 'Biggie and Tupac', 'Documentary', 32472880, '20-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (554, 'M45528I', 'Macao', 'Adventure', 30741196, '19-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (555, 'M45528I', 'Medicine for Melancholy', 'Drama|Romance', 38871679, '07-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (556, 'M65659J', 'Young Philadelphians, The', 'Drama', 30653529, '26-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (557, 'M56829J', 'London Boulevard', 'Crime|Romance', 31390793, '07-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (558, 'M56829J', 'London Paris New York', 'Romance', 39890709, '29-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (559, 'M11166U', 'Jude the Obscure', 'Drama', 36654669, '15-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (560, 'M11166J', 'Wild Man Blues', 'Documentary', 32890732, '21-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (561, 'M66630D', 'Son of No One, The', 'Action|Crime|Thriller', 30570944, '09-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (562, 'M35589A', 'Citizen Koch', 'Documentary', 31911615, '08-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (563, 'M16782H', 'Mademoiselle Chambon', 'Drama|Romance', 38938401, '07-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (564, 'M35718D', 'Chicken with Plums (Poulet aux prunes)', 'Drama', 31517818, '20-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (565, 'M54354E', 'Pohjanmaa', 'Drama', 30053742, '28-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (566, 'M83162D', 'Worlds Apart (To verdener)', 'Drama', 38141176, '31-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (567, 'M33571G', 'Donovan''s Echo', 'Drama|Sci-Fi|Thriller', 37037992, '10-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (568, 'M65889A', 'Gunbuster (Top wo Narae)', 'Action|Animation|Drama|Sci-Fi', 38296418, '15-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (569, 'M65889A', 'Club Dread', 'Comedy|Horror', 31797041, '11-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (570, 'M56829J', 'Strongest Man in the World, The', 'Comedy|Fantasy', 33029084, '09-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (571, 'M45528I', 'Gabriel Over the White House', 'Drama|Fantasy|Romance', 39799311, '24-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (572, 'M11367A', 'Criminal Life of Archibaldo de la Cruz, The (Ensayo de un crimen)', 'Comedy|Crime|Drama', 30688525, '03-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (573, 'M54354E', 'Dororo', 'Adventure|Fantasy', 34609412, '12-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (574, 'M11166J', 'Canyon, The', 'Thriller', 35014159, '24-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (575, 'M88791Z', 'Fallen, The', 'Action|Drama|War', 34768246, '12-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (576, 'M56829J', 'Torn', 'Drama', 36228947, '31-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (577, 'M65889A', 'Manny', 'Documentary|Drama', 37463892, '01-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (578, 'M65659J', 'Very Potter Sequel, A', 'Comedy|Musical', 38576078, '22-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (579, 'M54354E', 'Crazy Love (a.k.a. Love Is a Dog from Hell)', 'Drama', 35213016, '13-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (580, 'M11166U', 'Marva Collins Story, The', 'Documentary|Drama', 34966478, '15-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (581, 'M65659J', 'Memory Keeper''s Daughter, The', 'Drama', 32775095, '27-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (582, 'M35718D', 'Edge of Darkness', 'Drama|War', 30108152, '04-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (583, 'M45528I', 'Gemini (Sôseiji)', 'Drama|Fantasy|Horror|Mystery|Thriller', 34932535, '06-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (584, 'M35718D', 'Tokyo Trial (Tokyo saiban)', 'Documentary', 31786482, '23-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (585, 'M11166J', 'Happy Feet', 'Adventure|Animation|Children|Comedy|IMAX', 36986196, '10-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (586, 'M35589A', 'Animated Motion: Part 5', 'Animation|Documentary', 33474226, '21-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (587, 'M35589A', 'Romance & Cigarettes', 'Comedy|Drama|Musical|Romance', 32743372, '26-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (588, 'M11367A', 'Out of the Clear Blue Sky', 'Documentary', 32375904, '16-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (589, 'M66630D', 'Lights Out', 'Drama|Mystery|Thriller', 33903712, '08-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (590, 'M35589A', 'To Hell and Back', 'Action|Drama|War', 38298808, '30-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (591, 'M83162D', 'Fight Club', 'Action|Crime|Drama|Thriller', 34116782, '29-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (592, 'M65659J', 'Hey, Happy!', 'Drama|Sci-Fi', 36878712, '09-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (593, 'M35589A', 'Wichita', 'Action|Romance|Western', 30697472, '13-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (594, 'M88791Z', 'Missionary Man', 'Action|Drama|Thriller|Western', 35396809, '24-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (595, 'M11166J', 'Under the Age', 'Drama', 33485837, '11-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (596, 'M35589A', 'Pay It Forward', 'Drama', 30416703, '25-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (597, 'M11367A', 'Hilton!', 'Documentary', 38621374, '05-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (598, 'M83162D', 'Skins', 'Crime|Drama', 32055656, '05-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (599, 'M66630D', 'Gay Deceivers, The', 'Comedy', 36356723, '11-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (600, 'M83162D', 'Starlet', 'Drama', 33391140, '06-03-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (601, 'M11166J', 'Poultrygeist: Night of the Chicken Dead', 'Comedy|Horror|Musical', 33911708, '10-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (602, 'M56829J', 'Man from the Future, The (O Homem do Futuro)', 'Comedy|Fantasy|Sci-Fi', 30712803, '25-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (603, 'M35718D', 'Afterwards', 'Mystery', 38496310, '07-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (604, 'M54354E', 'Rammbock', 'Drama|Horror', 39975884, '19-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (605, 'M66630D', 'Mile... Mile & a Half', 'Documentary', 30032061, '26-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (606, 'M16782H', 'The Aggression Scale', 'Action|Crime|Thriller', 37400759, '06-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (607, 'M65889A', 'Pitch Black', 'Horror|Sci-Fi|Thriller', 31959315, '18-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (608, 'M35589A', 'In Which We Serve', 'Drama|War', 33863944, '20-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (609, 'M16782H', 'Number Two (Numéro deux)', 'Drama', 31935727, '23-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (610, 'M88791Z', 'Suburban Commando', 'Comedy|Sci-Fi', 38727020, '06-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (611, 'M66630D', 'Upperworld', 'Drama', 33936704, '10-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (612, 'M45528I', 'Four Christmases', 'Comedy', 32477026, '08-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (613, 'M54354E', 'Orders Signed in White', '(no genres listed)', 31482530, '17-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (614, 'M88791Z', 'Black God, White Devil (Deus e o Diabo na Terra do Sol)', 'Adventure|Crime|Drama|Western', 31972992, '02-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (615, 'M83162D', 'Dylan Moran: Like, Totally', 'Comedy', 32068929, '03-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (616, 'M88791Z', 'Gator', 'Action|Drama', 32368866, '27-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (617, 'M65889A', 'Children in the Wind (Kaze no naka no kodomo)', 'Drama', 38116805, '05-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (618, 'M65889A', 'Emperor''s Naked Army Marches On, The (Yuki Yukite shingun)', 'Documentary', 32109679, '09-03-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (619, 'M35589A', 'Street Thief', 'Crime|Documentary', 38305165, '30-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (620, 'M33571G', 'Ascent of Money, The', 'Documentary', 34602366, '10-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (621, 'M16782H', 'They Call Him Bulldozer (Lo chiamavano Bulldozer)', 'Action|Comedy', 33733950, '04-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (622, 'M33571G', 'Daffy Duck''s Movie: Fantastic Island', 'Animation|Children|Comedy', 33007092, '17-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (623, 'M56829J', 'Happy Family', 'Comedy', 33510977, '20-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (624, 'M33571G', 'Saludos Amigos', 'Animation|Children|Comedy', 34973698, '13-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (625, 'M35589A', 'Bullfighter, The (Matador)', 'Comedy|Crime|Drama', 31721610, '23-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (626, 'M35718D', 'Window, The', 'Drama|Film-Noir|Thriller', 32730881, '03-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (627, 'M11166J', 'City of No Limits, The (la ciudad sin límites, En)', 'Drama|Thriller', 33921097, '24-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (628, 'M88791Z', 'Thunderbolt and Lightfoot', 'Action', 37660287, '05-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (629, 'M11166J', 'Postman Always Rings Twice, The', 'Crime|Drama|Film-Noir|Thriller', 36817942, '09-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (630, 'M56829J', 'Spanish Earth, The', 'Documentary', 32481489, '04-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (631, 'M54354E', 'Murph: The Protector', 'Documentary|War', 33298071, '23-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (632, 'M45528I', 'Color Me Blood Red', 'Horror', 31564738, '01-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (633, 'M35589A', 'Darby O''Gill and the Little People', 'Adventure|Children|Fantasy', 37415197, '26-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (634, 'M65889A', 'Steak', 'Comedy', 37080028, '27-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (635, 'M11166U', 'Cosi', 'Comedy', 33033837, '24-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (636, 'M56829J', 'TT3D: Closer to the Edge', 'Documentary', 37142595, '10-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (637, 'M11367A', 'Mabel''s Married Life', 'Comedy', 34280519, '20-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (638, 'M33571G', 'Devil''s Pond', 'Drama|Thriller', 32161017, '02-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (639, 'M83162D', 'Somersault', 'Drama', 30552913, '13-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (640, 'M65889A', 'April Story', 'Romance', 35474999, '03-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (641, 'M33571G', 'Sex Tape', 'Comedy', 32923853, '21-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (642, 'M11367A', 'Touch the Sound: A Sound Journey with Evelyn Glennie', 'Documentary', 37820208, '30-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (643, 'M45528I', 'The Interview', 'Action|Comedy', 30776111, '27-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (644, 'M66630D', 'Namesake, The', 'Drama|Romance', 31335748, '16-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (645, 'M56829J', 'Strange Case of Dr. Jekyll and Miss Osbourne, The (Dr. Jekyll and His Women) (Docteur Jekyll et les femmes)', 'Horror', 36200490, '03-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (646, 'M33571G', 'Trial of Billy Jack, The', 'Action|Drama|Musical', 37150486, '29-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (647, 'M16782H', 'Wild in the Streets', 'Drama|Horror|Sci-Fi', 31031088, '21-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (648, 'M33571G', 'Bill Maher: Victory Begins at Home', 'Comedy', 30038625, '12-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (649, 'M35718D', 'Alexandria... Why? (Iskanderija... lih?)', 'Drama', 33859446, '01-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (650, 'M33571G', 'Restrepo', 'Documentary|War', 39635348, '17-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (651, 'M65889A', 'Vampire Hunter D: Bloodlust (Banpaia hantâ D)', 'Animation|Fantasy|Horror|Sci-Fi', 34299228, '01-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (652, 'M65889A', 'Damsel in Distress, A', 'Comedy|Musical|Romance', 34319780, '23-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (653, 'M66630D', 'Jonas', 'Comedy', 37540440, '10-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (654, 'M54354E', 'Flintstones, The', 'Children|Comedy|Fantasy', 31942162, '02-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (655, 'M16782H', 'Soldier''s Daughter Never Cries, A', 'Drama', 30757698, '25-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (656, 'M65659J', 'Ironclad', 'Action|Adventure', 36730144, '01-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (657, 'M66630D', 'Attack!', 'Drama|War', 36481298, '22-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (658, 'M56829J', 'Sphinx', 'Mystery|Thriller', 30118803, '11-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (659, 'M88791Z', 'Bad Country', 'Action|Crime|Drama|Thriller', 39970942, '07-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (660, 'M65659J', 'Coco Chanel', 'Romance', 35710275, '09-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (661, 'M65889A', 'Freaky Friday', 'Children|Comedy|Fantasy', 39113893, '25-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (662, 'M54354E', 'Sanshiro Sugata Part Two (Judo Saga II) (Zoku Sugata Sanshirô)', 'Action|Adventure', 36857081, '03-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (663, 'M88791Z', 'Long Way Down, A', 'Comedy|Drama', 32597033, '08-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (664, 'M11166J', 'Buried Alive II', 'Horror|Thriller', 34679709, '20-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (665, 'M83162D', 'Creator', 'Comedy|Drama|Romance', 35373806, '19-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (666, 'M11166U', 'Crush, The', 'Thriller', 36832550, '23-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (667, 'M16782H', 'How to Beat the High Cost of Living', 'Comedy', 35201389, '14-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (668, 'M45528I', 'Desert Hearts', 'Drama', 38023862, '31-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (669, 'M88791Z', 'Hero Wanted', 'Action|Crime|Drama|Thriller', 38206345, '21-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (670, 'M54354E', 'Signs of Life (Lebenszeichen)', 'Drama', 38026585, '29-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (671, 'M66630D', 'Girl in the Red Velvet Swing, The', 'Crime|Drama|Romance', 37653220, '27-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (672, 'M54354E', 'Those Who Love Me Can Take the Train (Ceux qui m''aiment prendront le train)', 'Drama', 36654514, '24-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (673, 'M56829J', 'Whipped', 'Comedy', 30169619, '04-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (674, 'M88791Z', 'A Most Violent Year', 'Action|Crime|Drama|Thriller', 38143950, '03-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (675, 'M56829J', 'Blindman', 'Western', 33411671, '12-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (676, 'M11166U', 'Charge of the Light Brigade, The', 'Action|Adventure|Romance|War', 33827731, '22-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (677, 'M83162D', 'A Man Called Magnum', 'Action|Crime', 38786670, '22-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (678, 'M11166J', 'Chairman of the Board', 'Comedy', 31765256, '03-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (679, 'M88791Z', 'Stand Up and Cheer!', 'Comedy|Musical', 38787224, '12-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (680, 'M65889A', 'Pennies from Heaven', 'Musical|Romance', 33495788, '10-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (681, 'M33571G', 'Labyrinth', 'Adventure|Fantasy|Musical', 37257598, '17-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (682, 'M11166J', 'Forever Amber', 'Drama', 36078110, '02-03-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (683, 'M16782H', 'Rigoletto', 'Drama', 37371002, '19-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (684, 'M83162D', 'Damnation (Karhozat)', 'Drama|Film-Noir', 35512142, '06-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (685, 'M35718D', 'Big Fish', 'Drama|Fantasy|Romance', 35841239, '18-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (686, 'M11166J', 'Joyless Street, The (Die freudlose Gasse)', 'Drama', 34055066, '28-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (687, 'M11166U', 'Tokyo.Sora', 'Drama', 33023501, '09-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (688, 'M66630D', 'Table No.21', 'Drama|Thriller', 37674493, '30-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (689, 'M11166J', 'Ladies Man, The', 'Comedy', 31310692, '28-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (690, 'M33571G', 'Possessed', 'Drama|Horror', 31153689, '20-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (691, 'M11166J', 'Steve Jobs: The Lost Interview', 'Documentary', 38928592, '05-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (692, 'M65659J', '41', 'Documentary', 31012265, '16-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (693, 'M88791Z', 'Screamers: The Hunting', 'Sci-Fi|Thriller', 32141960, '16-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (694, 'M54354E', 'After Hours', 'Comedy|Thriller', 38841112, '16-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (695, 'M54354E', 'Wedding Crashers', 'Comedy|Romance', 30707551, '28-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (696, 'M65659J', 'Dylan Moran: Yeah, Yeah', 'Comedy', 34839995, '11-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (697, 'M66630D', 'Empire of the Ants', 'Horror|Sci-Fi', 39962778, '26-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (698, 'M11166U', 'Jiro Dreams of Sushi', 'Documentary', 36911429, '05-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (699, 'M33571G', 'Jerry and Tom', 'Comedy|Crime|Drama', 35678971, '12-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (700, 'M54354E', 'Film Unfinished, A (Shtikat Haarchion)', 'Documentary|Drama', 30687535, '09-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (701, 'M11367A', 'Garbage Warrior', 'Documentary', 34551639, '15-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (702, 'M33571G', 'Chicago 8, The', 'Drama', 39271683, '09-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (703, 'M54354E', 'Kanak Attack', 'Drama', 32378484, '01-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (704, 'M83162D', 'Inherent Vice', 'Comedy|Crime|Drama|Mystery|Romance', 32429248, '01-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (705, 'M66630D', 'Shadowboxer', 'Crime|Drama|Thriller', 37369754, '26-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (706, 'M83162D', 'Cove, The', 'Documentary', 35698766, '07-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (707, 'M11166J', 'Thanksgiving Family Reunion (National Lampoon''s Holiday Reunion)', 'Comedy', 39803647, '10-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (708, 'M33571G', 'Citadel, The', 'Drama', 32448604, '20-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (709, 'M35589A', 'Pumping Iron II: The Women', 'Documentary', 37893473, '12-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (710, 'M45528I', 'The Last Gladiators', 'Documentary', 31448350, '29-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (711, 'M65659J', 'Puppet Master II', 'Horror|Sci-Fi|Thriller', 30585350, '22-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (712, 'M11367A', 'The Time Being', 'Mystery', 35142695, '25-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (713, 'M45528I', 'Moulin Rouge', 'Drama', 31361649, '22-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (714, 'M65659J', 'Quitting (Zuotian)', 'Drama', 32166186, '03-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (715, 'M11367A', 'Last House on the Left, The', 'Drama|Horror|Thriller', 39641311, '15-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (716, 'M83162D', 'The Sea Vultures', 'Drama', 37928522, '11-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (717, 'M11367A', 'Kremlin Letter, The', 'Drama|Thriller', 37115696, '30-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (718, 'M88791Z', 'Antonio das Mortes (O Dragão da Maldade contra o Santo Guerreiro)', 'Drama|Western', 34180880, '17-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (719, 'M65659J', 'Queen to Play (Joueuse)', 'Drama', 37085986, '27-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (720, 'M65889A', 'Friday Night (Vendredi Soir)', 'Drama', 30434120, '15-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (721, 'M66630D', 'X-Men: Days of Future Past', 'Action|Adventure|Sci-Fi', 36375485, '31-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (722, 'M11166U', 'Mysterious Island, The', '(no genres listed)', 38683718, '19-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (723, 'M65659J', 'Temp, The', 'Drama|Thriller', 38441065, '28-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (724, 'M88791Z', 'Sorcerer and the White Snake, The (Bai she chuan shuo)', 'Action|Fantasy|Romance', 32717400, '02-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (725, 'M45528I', 'Car Bonus (Autobonus)', 'Documentary', 30338532, '10-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (726, 'M33571G', 'Audition (Ôdishon)', 'Drama|Horror|Mystery|Romance|Thriller', 33282625, '22-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (727, 'M88791Z', 'Zozo', 'Drama', 37246686, '16-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (728, 'M16782H', 'You''ve Been Trumped', 'Documentary', 35148940, '02-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (729, 'M35718D', 'Babes in Arms', 'Comedy|Musical', 38973118, '05-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (730, 'M11367A', 'Pompatus of Love, The', 'Comedy|Drama', 36211860, '21-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (731, 'M56829J', 'Private Fears in Public Places (Coeurs)', 'Drama|Romance', 34561127, '19-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (732, 'M35718D', 'Tony Manero', 'Crime|Drama', 39419983, '29-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (733, 'M56829J', 'Deliver Us from Eva', 'Comedy|Romance', 38128446, '15-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (734, 'M45528I', 'Kurt Cobain About a Son', 'Documentary|Musical', 33638648, '05-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (735, 'M56829J', 'Arlington Road', 'Thriller', 34991113, '27-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (736, 'M88791Z', 'Prisoner of Zenda, The', 'Adventure|Comedy', 34224598, '03-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (737, 'M83162D', 'Slumber Party Massacre II', 'Horror', 36242635, '27-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (738, 'M35589A', 'Gone Nutty', 'Animation|Comedy', 31495165, '07-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (739, 'M33571G', 'Innocent Affair, An (Don''t Trust Your Husband) (Under Suspicion)', 'Comedy', 30940255, '24-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (740, 'M66630D', 'Madigan', 'Crime|Drama', 30774572, '06-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (741, 'M56829J', 'Lymelife', 'Comedy|Drama', 39377147, '17-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (742, 'M35589A', '13 Rue Madeleine', 'Thriller|War', 34556797, '20-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (743, 'M83162D', 'Belle Starr', 'Western', 38474930, '08-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (744, 'M66630D', 'The Gold Spinners', 'Documentary', 34209607, '15-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (745, 'M11367A', 'Burke and Hare', 'Comedy|Thriller', 37461591, '22-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (746, 'M65889A', 'Myn Bala: Warriors of the Steppe', 'Action|Adventure|Drama', 39818157, '23-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (747, 'M83162D', 'The Secret of Convict Lake', 'Western', 37499150, '11-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (748, 'M83162D', 'One 2 Ka 4', 'Action|Comedy|Drama', 38812854, '03-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (749, 'M65889A', 'First Blood (Rambo: First Blood)', 'Action|Adventure|Drama|Thriller', 36633575, '15-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (750, 'M65659J', 'Light at the Edge of the World, The', 'Adventure', 35384565, '02-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (751, 'M35589A', 'Horrible Way to Die, A ', 'Horror|Thriller', 33112249, '16-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (752, 'M11166J', 'Eye for an Eye', 'Drama|Thriller', 37505649, '19-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (753, 'M56829J', 'Wrestling for Jesus: The Tale of T-Money', 'Documentary', 38051264, '20-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (754, 'M45528I', 'Things to Do in Denver When You''re Dead', 'Crime|Drama|Romance', 32627062, '19-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (755, 'M11367A', 'Hadewijch', 'Drama', 39957055, '04-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (756, 'M54354E', 'And Then There Were None', 'Crime|Mystery', 30658294, '19-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (757, 'M11166U', 'First Man Into Space', 'Drama|Horror|Sci-Fi', 30917187, '21-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (758, 'M83162D', 'Four Days in September (O Que É Isso, Companheiro?)', 'Drama', 36577628, '25-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (759, 'M66630D', 'Cries and Whispers (Viskningar och rop)', 'Drama', 38692167, '22-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (760, 'M56829J', 'Tales of Manhattan', 'Comedy|Drama', 31703271, '15-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (761, 'M66630D', 'Hands of Orlac, The (Orlacs Hände)', 'Crime|Horror', 35151703, '03-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (762, 'M65889A', 'Mamma Roma', 'Drama', 34039089, '16-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (763, 'M65659J', 'Somersault', 'Drama', 39943437, '29-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (764, 'M66630D', 'Mail Early for Xmas', 'Animation', 38997886, '06-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (765, 'M66630D', 'George Lopez: It''s Not Me, It''s You', 'Comedy', 31425852, '06-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (766, 'M35589A', 'Edie & Pen', 'Comedy', 34545379, '10-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (767, 'M11166J', 'Sense & Sensibility', 'Drama|Romance', 36612773, '22-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (768, 'M35718D', 'Bears', 'Documentary', 36011457, '05-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (769, 'M35589A', 'Alice (Neco z Alenky)', 'Animation|Fantasy|Mystery', 37795213, '25-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (770, 'M35589A', 'Ridicule', 'Drama', 36787890, '29-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (771, 'M65659J', 'Age of Dinosaurs', 'Action|Sci-Fi', 37549673, '31-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (772, 'M66630D', 'Full House (O. Henry''s Full House)', 'Drama', 31955398, '23-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (773, 'M16782H', 'New York in the 50''s', 'Documentary', 35512240, '14-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (774, 'M11367A', 'Madagascar 3: Europe''s Most Wanted', 'Adventure|Animation|Children|Comedy|IMAX', 36840938, '17-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (775, 'M65889A', 'Twixt', 'Horror|Thriller', 39782485, '13-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (776, 'M54354E', 'Drag Me to Hell', 'Comedy|Horror', 39407704, '26-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (777, 'M33571G', 'Nazty Nuisance', 'Action|Adventure|Comedy', 31240667, '08-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (778, 'M16782H', 'Our Fathers', 'Drama', 36175579, '21-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (779, 'M56829J', 'Valiant', 'Adventure|Animation|Children|Comedy|Fantasy|War', 37675074, '05-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (780, 'M16782H', 'Days and Hours (Kod amidze Idriza)', 'Drama', 35237991, '20-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (781, 'M33571G', 'Submarine X-1', 'Drama|War', 36419495, '17-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (782, 'M35589A', 'Monkey Business', 'Comedy', 32688789, '11-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (783, 'M65659J', 'Reel Bad Arabs: How Hollywood Vilifies a People', 'Documentary', 34964783, '06-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (784, 'M33571G', 'Rain or Shine', 'Comedy|Drama|Romance', 37004226, '05-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (785, 'M88791Z', 'At Middleton', 'Comedy|Romance', 39933979, '05-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (786, 'M65659J', 'Most Beautiful, The (Ichiban utsukushiku)', 'Drama', 38790549, '11-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (787, 'M88791Z', 'Let''s Scare Jessica to Death', 'Horror|Mystery', 39400646, '19-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (788, 'M65659J', 'Brides (Nyfes)', 'Drama|Romance', 32738149, '26-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (789, 'M16782H', 'Maid to Order', 'Comedy|Fantasy', 30603348, '17-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (790, 'M11166U', 'As it is in Heaven (Så som i himmelen)', 'Drama|Musical|Romance', 39312775, '12-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (791, 'M33571G', 'Champ, The', 'Drama', 34905277, '31-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (792, 'M11166U', 'Nothing in Common', 'Comedy', 38799707, '22-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (793, 'M65659J', 'Dante''s Inferno: An Animated Epic', 'Action|Animation|Fantasy', 37482420, '14-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (794, 'M56829J', 'Sleeping Dictionary, The', 'Drama|Romance', 37380556, '27-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (795, 'M83162D', 'Freddy Got Fingered', 'Comedy', 38419881, '04-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (796, 'M88791Z', 'Viimeiset rotannahat ', 'Comedy', 30813288, '20-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (797, 'M16782H', 'Brooklyn Castle', 'Documentary', 32647827, '11-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (798, 'M83162D', 'Doctor Strange', 'Action|Animation|Children|Fantasy|Sci-Fi', 34867649, '04-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (799, 'M35589A', 'Bounty Hunters (Bail Enforcers)', 'Action', 39936673, '04-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (800, 'M16782H', 'Nine Queens (Nueve reinas)', 'Crime|Thriller', 36043591, '13-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (801, 'M65659J', 'Hired Hand, The', 'Western', 30829328, '26-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (802, 'M33571G', 'B.T.K.', 'Crime|Drama|Horror|Mystery|Thriller', 31937563, '15-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (803, 'M11166U', 'Nick Fury: Agent of S.H.I.E.L.D.', 'Action|Sci-Fi', 37601883, '15-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (804, 'M33571G', 'Mischief', 'Comedy|Romance', 33375974, '08-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (805, 'M65889A', 'Revolutionary Road', 'Drama|Romance', 38271168, '18-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (806, 'M56829J', 'Rush Hour', 'Action|Comedy|Crime|Thriller', 33854884, '07-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (807, 'M35718D', 'Bionicle 2: Legends of Metru Nui', 'Action|Adventure|Animation|Children|Fantasy', 31986875, '24-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (808, 'M16782H', 'Why Worry?', 'Adventure|Comedy|Romance', 30570241, '10-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (809, 'M35718D', 'September Issue, The', 'Documentary', 31415371, '13-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (810, 'M33571G', 'Many Rivers to Cross', 'Comedy|Romance|Western', 35677239, '23-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (811, 'M11367A', 'Stealing a Nation', 'Documentary', 33112191, '07-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (812, 'M35718D', 'Devil and Max Devlin, The', 'Comedy|Fantasy', 35197462, '31-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (813, 'M16782H', 'Pitkä kuuma kesä', 'Comedy|Drama', 35764043, '03-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (814, 'M83162D', 'Kukuli', 'Drama', 37968095, '23-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (815, 'M45528I', 'Shaggy Dog, The', 'Children|Comedy', 31963619, '03-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (816, 'M11367A', 'How the West Was Fun', 'Children|Western', 38091116, '15-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (817, 'M88791Z', 'Morning Patrol (Proini peripolos)', 'Sci-Fi', 37472866, '22-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (818, 'M16782H', 'My Soul to Take', 'Horror|Thriller', 38708132, '17-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (819, 'M45528I', 'Cat in the Hat, The', 'Animation|Children', 34737831, '29-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (820, 'M16782H', 'Standard Operating Procedure', 'Crime|Documentary|War', 36380021, '02-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (821, 'M65889A', 'Warlock', 'Romance|Western', 37535243, '18-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (822, 'M16782H', 'Star Trek V: The Final Frontier', 'Action|Sci-Fi', 32519388, '10-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (823, 'M11166J', 'Chicago 10', 'Animation|Documentary', 30866794, '11-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (824, 'M35718D', 'The Golden Voyage of Sinbad', 'Action|Adventure|Fantasy', 38286147, '13-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (825, 'M65889A', 'The Care Bears Adventure in Wonderland', 'Animation|Children|Comedy', 31430049, '26-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (826, 'M33571G', 'White Fang', 'Adventure', 30548575, '05-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (827, 'M35589A', 'Marathon Family, The (Maratonci Trce Pocasni Krug)', 'Comedy', 33486958, '27-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (828, 'M11166U', 'The Retrieval', 'Drama|Western', 38821118, '02-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (829, 'M45528I', 'The Harry Hill Movie', 'Comedy', 39406032, '11-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (830, 'M11166J', 'Man with the Golden Gun, The', 'Action|Adventure|Thriller', 30431497, '26-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (831, 'M83162D', '20th Century Boys - Chapter 1: Beginning of the End', 'Adventure|Mystery|Sci-Fi', 32470695, '24-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (832, 'M54354E', 'Diary of a Shinjuku Thief (Shinjuku dorobo nikki)', 'Comedy|Drama', 30286755, '18-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (833, 'M16782H', 'Beautiful', 'Drama|Thriller', 37314906, '04-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (834, 'M45528I', 'Mortician, The', 'Thriller', 37307363, '17-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (835, 'M16782H', 'Phantom, The', 'Action|Adventure', 34776649, '29-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (836, 'M45528I', 'Night Shift', 'Comedy', 32743765, '18-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (837, 'M65659J', 'Bar Girls', 'Comedy|Romance', 33346785, '13-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (838, 'M11166U', 'Little Mermaid 2: Return to the Sea, The', 'Animation|Children|Fantasy|Musical', 38032240, '14-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (839, 'M11166J', 'Vesna va veloce', 'Drama', 37723431, '15-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (840, 'M88791Z', 'Citizen X', 'Crime|Drama|Thriller', 35954675, '30-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (841, 'M65889A', 'Girl', 'Drama', 35287857, '03-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (842, 'M65659J', 'Birds, The', 'Horror|Thriller', 33829042, '09-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (843, 'M88791Z', 'Burglar', 'Comedy|Crime', 30820850, '02-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (844, 'M65659J', 'Will', 'Children|Drama', 35542837, '05-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (845, 'M45528I', 'Upstream', 'Comedy|Drama', 32291772, '14-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (846, 'M83162D', 'Vamps', 'Comedy|Horror|Romance', 33895774, '31-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (847, 'M54354E', 'The Bloodstained Butterfly', 'Mystery|Thriller', 38842178, '29-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (848, 'M45528I', 'Either Way (Á annan veg)', 'Comedy|Drama', 31502077, '27-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (849, 'M35718D', 'Blue Gardenia, The', 'Crime|Drama|Film-Noir|Thriller', 31722265, '11-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (850, 'M65889A', 'All the King''s Men', 'Drama', 36388677, '04-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (851, 'M65889A', '5 Days of War', 'Action|Drama|War', 38195017, '18-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (852, 'M11166U', 'Stealing Rembrandt (Rembrandt)', 'Action|Comedy|Crime', 35839942, '29-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (853, 'M33571G', 'Crimes of the Future', 'Comedy|Sci-Fi', 39910368, '15-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (854, 'M56829J', 'Suzy', 'Drama', 33605094, '15-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (855, 'M88791Z', 'Deathstalker', 'Action|Adventure|Fantasy', 36926625, '18-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (856, 'M65659J', 'Month in the Country, A', 'Drama', 31059503, '02-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (857, 'M33571G', 'Don''t Go In the Woods', 'Horror', 38435939, '29-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (858, 'M11166U', 'Unforgettable', 'Mystery|Sci-Fi|Thriller', 38213964, '26-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (859, 'M11367A', 'And Starring Pancho Villa as Himself', 'Action|Comedy|Drama|War', 32117628, '14-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (860, 'M16782H', 'Miss Meadows', 'Drama', 39629783, '23-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (861, 'M35589A', 'Happiest Days of Your Life, The', 'Comedy', 30142597, '03-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (862, 'M83162D', 'City on Fire (Lung fu fong wan)', 'Action|Crime|Drama|Thriller', 33033072, '01-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (863, 'M66630D', 'Den tatuerade änkan (Tattooed Widow, The) ', 'Comedy|Drama|Romance', 33906485, '31-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (864, 'M45528I', 'Red Doors', 'Comedy|Drama', 36897437, '08-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (865, 'M66630D', 'Red Tent, The (Krasnaya palatka)', 'Adventure|Drama|Fantasy', 37301533, '01-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (866, 'M33571G', 'Fill the Void (Lemale et ha''halal)', 'Drama', 35499578, '19-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (867, 'M56829J', 'Good Morning (Ohayô)', 'Comedy', 37443576, '19-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (868, 'M56829J', 'Convent, The', 'Horror|Sci-Fi', 32698626, '25-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (869, 'M33571G', 'Taken 3', 'Action|Crime|Thriller', 35431081, '25-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (870, 'M83162D', 'Blonde Crazy', 'Comedy|Crime|Drama|Romance', 32182731, '28-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (871, 'M88791Z', 'Shadow Boxers', 'Documentary', 34033191, '25-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (872, 'M11166U', 'The Monkey Hustle', 'Action', 36596295, '10-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (873, 'M56829J', 'SLC Punk!', 'Comedy|Drama', 30628416, '24-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (874, 'M65889A', 'Girl', 'Drama', 37225308, '03-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (875, 'M11367A', 'Under the Stars (Bajo las estrellas)', 'Drama', 39110268, '24-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (876, 'M54354E', 'In Passing', 'Drama|Fantasy|Mystery', 30925496, '22-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (877, 'M11166J', 'Berta''s Motives (Los motivos de Berta: Fantasía de Pubertad)', 'Drama', 34277029, '01-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (878, 'M11166J', 'Fate Is the Hunter', 'Drama', 36260122, '30-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (879, 'M65889A', 'Impy''s Island', 'Animation|Children|Fantasy', 30773886, '05-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (880, 'M65659J', 'Attack of the 50ft Cheerleader', 'Comedy', 36973364, '15-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (881, 'M66630D', '42 Up', 'Documentary', 36505751, '21-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (882, 'M11166U', 'Road, The', 'Adventure|Drama|Thriller', 32768392, '13-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (883, 'M66630D', 'I''ve Loved You So Long (Il y a longtemps que je t''aime)', 'Drama|Mystery', 33722077, '11-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (884, 'M45528I', 'My Louisiana Sky', 'Drama', 39804559, '14-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (885, 'M65659J', 'He Walked by Night', 'Crime|Film-Noir|Thriller', 37878799, '16-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (886, 'M11166U', 'Knockout', 'Action|Drama', 34882732, '24-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (887, 'M65889A', 'Maid of Salem', 'Drama', 38924768, '30-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (888, 'M16782H', 'American Gun', 'Drama', 35879003, '16-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (889, 'M83162D', 'Out of the Clear Blue Sky', 'Documentary', 34131243, '15-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (890, 'M66630D', 'Beer League', 'Comedy', 32486008, '14-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (891, 'M11367A', 'Cockpit', 'Comedy', 34722572, '07-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (892, 'M33571G', 'Ator, the Fighting Eagle (Ator l''invincibile)', 'Action|Adventure|Fantasy', 38389929, '21-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (893, 'M54354E', 'Tom & Viv', 'Drama', 37042091, '04-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (894, 'M11166J', 'What Women Want', 'Comedy|Romance', 35442154, '31-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (895, 'M45528I', 'Nicotina', 'Action|Comedy|Drama', 39950477, '13-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (896, 'M33571G', 'Horde, The (La Horde)', 'Action|Horror|Thriller', 36453439, '02-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (897, 'M65659J', 'Otello', 'Drama', 30947163, '18-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (898, 'M45528I', 'Quiet Duel, The (Shizukanaru ketto)', 'Drama', 37469874, '04-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (899, 'M35589A', 'Beauty in Trouble (Kráska v nesnázích)', 'Drama', 37959497, '05-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (900, 'M11367A', 'Animals are Beautiful People', 'Comedy|Documentary', 37677783, '19-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (901, 'M65659J', 'Amanece, que no es poco', 'Comedy', 37740281, '23-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (902, 'M65889A', 'Cold Steel', 'Action|Thriller', 31125446, '20-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (903, 'M33571G', 'Guy', 'Drama', 30690513, '30-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (904, 'M35718D', 'Underground: The Julian Assange Story', 'Drama', 35571722, '20-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (905, 'M88791Z', 'Revenant, The', 'Comedy|Horror', 39150193, '28-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (906, 'M16782H', 'Toy Story', 'Adventure|Animation|Children|Comedy|Fantasy', 38517780, '12-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (907, 'M65659J', 'What? (Che?)', 'Comedy', 37214864, '15-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (908, 'M11166J', 'Wicked Lady, The', 'Adventure|Drama', 34994520, '23-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (909, 'M45528I', 'Pinocchio and the Emperor of the Night', 'Animation|Children|Fantasy', 36941437, '25-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (910, 'M11166U', 'Surrender, Dorothy', 'Drama', 34443158, '05-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (911, 'M45528I', 'But Not for Me', 'Comedy|Romance', 39011065, '12-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (912, 'M33571G', 'Cleopatra', 'Drama|Romance|War', 34611365, '28-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (913, 'M33571G', 'Heavenly Forest', 'Drama|Romance', 39887578, '28-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (914, 'M11367A', 'Flesh', 'Drama', 35386658, '15-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (915, 'M45528I', 'Fatal Beauty', 'Action|Comedy|Crime|Drama', 31500308, '26-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (916, 'M35718D', 'Nurse 3D', 'Horror|Thriller', 39457795, '13-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (917, 'M11166U', 'Secret Agent, The', 'Drama', 38313987, '06-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (918, 'M65659J', 'The Real Glory', 'War', 31189880, '01-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (919, 'M11367A', 'White Man''s Burden', 'Drama', 39460368, '07-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (920, 'M45528I', 'Mama', 'Horror', 32151938, '16-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (921, 'M83162D', 'Four Shades of Brown (Fyra nyanser av brunt)', 'Comedy|Drama', 31348240, '27-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (922, 'M56829J', 'Three Men and a Little Lady', 'Comedy|Romance', 38615266, '29-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (923, 'M35718D', 'Mike Birbiglia: My Girlfriend''s Boyfriend', 'Comedy', 37439923, '24-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (924, 'M11166U', 'House of Tolerance', 'Drama', 32954310, '12-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (925, 'M11166J', 'Jim Carrey: Unnatural Act', 'Comedy|Documentary', 37377475, '21-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (926, 'M11166J', 'Legacy, The', 'Horror', 32293235, '07-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (927, 'M11367A', 'Around the World Under the Sea', 'Action|Adventure', 38012133, '25-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (928, 'M54354E', 'Traffic (Trafic)', 'Comedy', 35918392, '17-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (929, 'M45528I', 'Young and Prodigious T.S. Spivet, The (L''extravagant voyage du jeune et prodigieux T.S. Spivet)', 'Adventure|Children|Drama', 39866718, '07-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (930, 'M11166U', 'Sword in the Stone, The', 'Animation|Children|Fantasy|Musical', 37759142, '25-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (931, 'M35718D', 'Zachariah', 'Comedy|Musical|Western', 30988520, '31-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (932, 'M11166U', 'It All Starts Today (Ça commence aujourd''hui)', 'Drama', 30908516, '01-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (933, 'M56829J', 'I''m Gonna Explode (a.k.a. I''m Going to Explode) (Voy a explotar)', 'Drama', 39726466, '19-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (934, 'M83162D', 'Woman Is a Woman, A (femme est une femme, Une)', 'Comedy|Drama|Musical|Romance', 35966324, '10-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (935, 'M33571G', 'The Hire: Follow, The', 'Drama', 39860669, '12-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (936, 'M11166U', 'Running Scared', 'Action|Crime|Thriller', 32234127, '12-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (937, 'M88791Z', 'See What I''m Saying: The Deaf Entertainers Documentary', 'Documentary', 33530411, '26-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (938, 'M66630D', 'Emil i Lönneberga', 'Children|Drama', 36500540, '08-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (939, 'M33571G', 'Picnic on the Grass (Le déjeuner sur l''herbe)', 'Comedy|Romance', 37105472, '11-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (940, 'M65889A', 'Better Things', 'Drama', 31379596, '13-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (941, 'M65889A', 'Out of Time', 'Crime|Drama|Thriller', 36129974, '28-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (942, 'M16782H', 'Eclipse, The', 'Drama|Horror|Thriller', 37208266, '06-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (943, 'M54354E', 'Lady Oscar', 'Drama', 30780301, '22-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (944, 'M45528I', 'World Without End', 'Sci-Fi', 38983505, '30-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (945, 'M33571G', 'Sherlock Holmes: Dressed to Kill', 'Crime|Mystery', 37722650, '25-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (946, 'M45528I', 'Honey Moon (Honigmond)', 'Comedy', 34834311, '23-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (947, 'M65659J', 'Umbrellas of Cherbourg, The (Parapluies de Cherbourg, Les)', 'Drama|Musical|Romance', 38107872, '07-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (948, 'M35718D', '14 Blades (Jin yi wei)', 'Action|Drama', 32835857, '27-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (949, 'M65659J', 'Balls Out: Gary the Tennis Coach', 'Comedy', 39431676, '08-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (950, 'M11166U', 'Comic Book Confidential', 'Documentary', 33602451, '23-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (951, 'M33571G', 'Sharpe''s Battle', 'Action|Adventure|War', 36217146, '09-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (952, 'M65889A', 'Perrier''s Bounty', 'Action|Comedy|Crime|Drama', 30562974, '30-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (953, 'M35589A', 'Sasha (Sascha)', 'Comedy|Drama', 39465737, '02-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (954, 'M88791Z', 'Electric Shadows (Meng ying tong nian)', 'Drama', 35033035, '02-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (955, 'M56829J', 'Flakes', 'Comedy', 35329350, '26-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (956, 'M11367A', 'Frankenstein''s Army', 'Action|Horror|Sci-Fi', 33255581, '16-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (957, 'M11166U', 'Puckoon', 'Comedy', 36227846, '14-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (958, 'M35718D', 'Queen of Outer Space', 'Adventure|Fantasy|Sci-Fi', 32448570, '30-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (959, 'M65889A', 'Stargate', 'Action|Adventure|Sci-Fi', 35361092, '06-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (960, 'M11367A', 'Day and Night (Le jour et la nuit)', 'Drama', 31884977, '29-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (961, 'M35589A', 'Third Star', 'Comedy|Drama', 37490390, '23-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (962, 'M11367A', 'Life of Another, The (La vie d''une autre)', 'Comedy|Drama|Mystery', 38990960, '01-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (963, 'M65889A', 'How to Kill Your Neighbor''s Dog', 'Comedy|Drama', 30139335, '05-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (964, 'M33571G', 'What''s Up, Tiger Lily?', 'Adventure|Comedy|Crime|Thriller', 34411694, '29-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (965, 'M65889A', 'Blindness', 'Drama|Thriller', 35969213, '12-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (966, 'M33571G', 'Amadeus', 'Drama', 38104339, '05-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (967, 'M45528I', 'Once Upon a Forest', 'Adventure|Animation|Children|Fantasy', 34510206, '24-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (968, 'M16782H', 'Extreme Prejudice', 'Action', 31256380, '09-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (969, 'M16782H', 'Farewell to Arms, A', 'Romance|War', 30119664, '25-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (970, 'M35718D', 'The Coven', 'Fantasy|Horror', 34594926, '28-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (971, 'M54354E', 'Butterfly (La lengua de las mariposas)', 'Drama', 36594215, '26-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (972, 'M45528I', 'Miss Farkku-Suomi', 'Drama|Romance', 38736577, '05-03-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (973, 'M45528I', 'I Accuse', 'Drama|Horror|Sci-Fi|War', 35280628, '06-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (974, 'M56829J', 'Twisted', 'Comedy|Drama', 39424290, '16-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (975, 'M56829J', 'High Spirits', 'Comedy', 39962476, '21-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (976, 'M56829J', 'Pax Americana and the Weaponization of Space', 'Documentary', 32704880, '14-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (977, 'M33571G', 'Cry Baby Lane', 'Drama|Horror', 32145889, '12-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (978, 'M66630D', 'Ice Soldiers', 'Action|Sci-Fi', 38464268, '30-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (979, 'M11166U', 'From Beijing with Love', 'Action|Comedy', 31585582, '04-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (980, 'M11166J', 'Hamlet Goes Business (Hamlet liikemaailmassa)', 'Comedy|Drama|Romance', 32395971, '14-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (981, 'M33571G', 'Hunger', 'Horror|Thriller', 33337495, '25-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (982, 'M35718D', 'La Bandera', '(no genres listed)', 38315900, '22-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (983, 'M54354E', 'Career Opportunities', 'Comedy|Romance', 37751188, '17-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (984, 'M33571G', 'Trucker', 'Drama', 31549756, '14-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (985, 'M65889A', 'Unleashed (Danny the Dog)', 'Action|Crime|Drama|Thriller', 33302900, '19-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (986, 'M11367A', 'Cleopatra', 'Drama|Romance|War', 38029387, '26-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (987, 'M65889A', 'Trial of the Road (Check-up on the Roads) (Checkpoint) (Proverka na dorogakh)', 'Drama|War', 36816447, '04-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (988, 'M45528I', 'Seven Psychopaths', 'Comedy|Crime', 35639550, '03-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (989, 'M83162D', 'Myra Breckinridge', 'Comedy', 36313373, '29-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (990, 'M54354E', 'New Town Killers', 'Drama', 30710989, '25-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (991, 'M66630D', 'New York Doll', 'Documentary', 33357744, '27-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (992, 'M45528I', 'Face', 'Crime|Drama|Thriller', 31286251, '13-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (993, 'M65889A', 'Children of Huang Shi, The', 'Drama|War', 37565010, '20-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (994, 'M45528I', 'Jerusalem', 'Drama', 38774275, '19-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (995, 'M65889A', 'U-571', 'Action|Thriller|War', 36589233, '19-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (996, 'M11166J', 'Rabbit Test', 'Comedy', 37647821, '23-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (997, 'M56829J', 'Backlash', 'Mystery|Romance|Western', 33920495, '06-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (998, 'M65659J', 'Andy Hardy Meets Debutante', 'Comedy|Romance', 36226075, '15-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (999, 'M11367A', 'Vantage Point', 'Action|Drama|Thriller', 36878341, '18-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1000, 'M65889A', 'People on Sunday (Menschen am Sonntag)', 'Documentary|Drama|Romance', 33032574, '30-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1001, 'M56829J', 'Last Hangman, The (Pierrepoint)', 'Drama', 39546462, '02-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1002, 'M35718D', 'Crave', 'Drama|Thriller', 39941211, '13-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1003, 'M11166J', 'Memoirs of a Geisha', 'Drama|Romance', 37005051, '18-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1004, 'M45528I', 'The Hearts of Age', '(no genres listed)', 31483832, '17-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1005, 'M83162D', 'Little Mermaid: Ariel''s Beginning, The', 'Animation|Children|Fantasy', 38715426, '24-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1006, 'M65889A', 'Werckmeister Harmonies (Werckmeister harmóniák)', 'Drama', 36624943, '10-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1007, 'M35589A', 'New Country, The (Det nya landet)', 'Comedy|Drama', 39208587, '23-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1008, 'M16782H', 'City of God (Cidade de Deus)', 'Action|Adventure|Crime|Drama|Thriller', 31010245, '01-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1009, 'M16782H', 'Bad 25', 'Documentary', 30836592, '18-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1010, 'M54354E', 'Couples Retreat', 'Comedy|Romance', 36454377, '01-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1011, 'M35718D', 'Living Ghost, The', 'Comedy|Horror|Mystery|Thriller', 34690916, '08-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1012, 'M35718D', 'River Runs Through It, A', 'Drama', 31075220, '24-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1013, 'M88791Z', 'Sacro GRA', 'Documentary', 30586923, '15-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1014, 'M88791Z', 'Wall Street', 'Drama', 34452838, '16-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1015, 'M11367A', 'Lips of Blood (Lèvres de sang)', 'Horror', 39952272, '31-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1016, 'M65889A', 'Raid on Rommel', 'War', 36806096, '22-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (1017, 'M56829J', 'Disco Godfather', 'Action|Crime|Drama', 32172360, '23-04-2022');

