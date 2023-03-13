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
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (18, 'M65889A', 'Best Laid Plans', 'Crime|Drama', 39458198, '09-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (19, 'M65659J', 'Godzilla 2000 (Gojira ni-sen mireniamu)', 'Action|Adventure|Sci-Fi', 47149906, '28-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (20, 'M35718D', 'Spiral Staircase, The', 'Thriller', 37939397, '20-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (21, 'M35718D', 'Thirteen, The (Trinadtsat)', 'Adventure|War', 45971822, '08-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (22, 'M11166J', 'Mickey''s Twice Upon a Christmas', 'Animation|Children|Comedy', 40835267, '07-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (23, 'M33571G', 'Intimate Strangers (Confidences trop intimes)', 'Drama', 45919963, '09-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (24, 'M35589A', 'Beginning of an Unknown Era (Nachalo nevedomogo veka)', 'Drama', 32901296, '17-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (25, 'M33571G', 'Xtro 2: The Second Encounter', 'Horror|Sci-Fi', 37979733, '14-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (26, 'M35589A', 'Goya in Bordeaux (Goya en Burdeos)', 'Drama', 40233096, '13-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (27, 'M54354E', 'Ratcatcher', 'Drama', 40009860, '08-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (28, 'M11166U', 'Scream 4', 'Comedy|Horror|Mystery|Thriller', 30704970, '05-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (29, 'M66630D', 'Winnebago Man', 'Comedy|Documentary', 46562592, '01-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (30, 'M35718D', 'Reindeerspotting - Pako joulumaasta', 'Documentary', 33502385, '03-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (31, 'M66630D', 'Rules of Engagement', 'Drama|Thriller', 39913872, '11-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (32, 'M54354E', 'Homecoming, The', 'Drama', 44796218, '01-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (33, 'M11367A', 'Class of 92, The', 'Documentary', 38385302, '18-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (34, 'M65889A', 'Emil i Lönneberga', 'Children|Drama', 35052861, '01-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (35, 'M65889A', 'Rhino Season (Fasle kargadan) ', 'Drama|Fantasy|Film-Noir|Mystery|Romance|War', 31869578, '10-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (36, 'M56829J', 'Midnight Meat Train, The', 'Horror|Mystery|Thriller', 48547976, '26-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (37, 'M45528I', 'Blood Out', 'Action', 32633328, '10-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (38, 'M35718D', 'Rosencrantz and Guildenstern Are Undead', 'Comedy|Horror', 34357863, '09-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (39, 'M88791Z', 'Crossworlds', 'Action|Comedy|Sci-Fi', 42702938, '13-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (40, 'M35589A', 'Moulin Rouge', 'Drama|Musical|Romance', 47801779, '26-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (41, 'M35589A', 'Daria: Is It Fall Yet?', 'Animation|Comedy', 47940370, '29-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (42, 'M66630D', 'Temptation (Tentação)', 'Drama|Romance', 42880121, '28-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (43, 'M88791Z', 'King of the Zombies', 'Comedy|Horror', 42876884, '12-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (44, 'M65659J', 'Strip Nude for Your Killer (Nude per l''assassino)', 'Horror|Mystery|Thriller', 46897790, '23-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (45, 'M35589A', 'Zatoichi and the Chess Expert (Zatôichi Jigoku tabi) (Zatôichi 12)', 'Action|Drama', 42000985, '23-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (46, 'M83162D', 'Tactical Force', 'Action|Comedy|Crime|Thriller', 47430195, '10-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (47, 'M33571G', 'The Uncommon Making of Petulia', 'Documentary', 38191413, '17-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (48, 'M33571G', 'Mahakaal (The Monster)', 'Horror', 33181781, '13-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (49, 'M65659J', 'Lovely Bones, The', 'Crime|Drama|Fantasy|Horror|Thriller', 30921488, '27-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (50, 'M11367A', 'Bourne Ultimatum, The', 'Action|Crime|Thriller', 33758915, '13-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (51, 'M35589A', 'I Love Trouble', 'Crime|Drama', 31765073, '25-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (52, 'M56829J', 'Fast Times at Ridgemont High', 'Comedy|Drama|Romance', 42761279, '29-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (53, 'M11166U', 'Heavy Metal 2000', 'Action|Adventure|Animation|Fantasy|Sci-Fi', 39901096, '10-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (54, 'M66630D', 'Here and Elsewhere', 'Documentary', 37985078, '05-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (55, 'M56829J', 'Deuce Bigalow: European Gigolo', 'Comedy', 39314182, '22-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (56, 'M65889A', 'There Goes My Heart', 'Comedy|Romance', 41368972, '08-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (57, 'M35718D', 'Big Deal on Madonna Street (I Soliti Ignoti)', 'Comedy|Crime', 45036566, '22-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (58, 'M35589A', 'Beauty Is Embarrassing', 'Documentary', 38066493, '08-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (59, 'M56829J', 'Smashing Time', 'Comedy', 42122432, '23-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (60, 'M88791Z', 'What Price Glory', 'Comedy|Drama|War', 36010663, '24-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (61, 'M45528I', 'Eye See You (D-Tox)', 'Horror|Thriller', 47392901, '27-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (62, 'M56829J', 'Another Happy Day', 'Drama', 32838598, '20-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (63, 'M66630D', 'Crossing Delancey', 'Comedy|Romance', 49265081, '21-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (64, 'M56829J', 'Hobbit, The', 'Animation|Children|Fantasy', 34976511, '17-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (65, 'M11166U', 'Day of the Outlaw', 'Western', 33435217, '05-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (66, 'M33571G', 'Megacities', 'Documentary', 46332342, '04-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (67, 'M35589A', 'Cockpit', 'Comedy', 38359296, '16-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (68, 'M11367A', 'Equus', 'Drama|Mystery', 31439594, '18-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (69, 'M11367A', 'Madhouse', 'Crime|Horror|Mystery', 49165918, '02-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (70, 'M54354E', 'Bertie and Elizabeth', 'Drama', 44410075, '16-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (71, 'M83162D', 'Negative Happy Chainsaw Edge (Negatibu happî chênsô ejji)', 'Comedy|Horror', 30840944, '13-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (72, 'M45528I', 'Promised Land (Ziemia Obiecana)', 'Drama', 42276118, '08-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (73, 'M11166J', 'Peace, Love & Misunderstanding', 'Drama|Romance', 34906059, '22-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (74, 'M56829J', 'Dead Birds', 'Horror|War|Western', 46159282, '27-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (75, 'M33571G', 'Airspeed', 'Action|Adventure|Drama|Thriller', 49517428, '31-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (76, 'M66630D', 'Glenn, the Flying Robot', 'Sci-Fi', 38206176, '02-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (77, 'M11367A', 'Order and Disorder', 'Documentary', 40335002, '23-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (78, 'M16782H', 'Guilty Hands', 'Crime|Drama', 33882805, '25-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (79, 'M11166J', 'Old Men in New Cars (Gamle mænd i nye biler)', 'Action|Comedy', 44538134, '17-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (80, 'M45528I', 'American Gun', 'Drama', 34403744, '12-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (81, 'M65889A', 'Sorority House Massacre II', 'Horror', 40804284, '31-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (82, 'M11166J', 'Kinbaku', 'Documentary', 49485584, '18-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (83, 'M65889A', 'Nobody Will Speak of Us When We''re Dead (Nadie hablará de nosotras cuando hayamos muerto)', 'Drama', 43394837, '25-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (84, 'M11166U', 'Murder on the Orient Express', 'Crime|Drama|Mystery', 39032605, '14-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (85, 'M16782H', 'Future Cops (Chao ji xue xiao ba wang)', 'Action', 46589660, '09-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (86, 'M88791Z', 'All Night Long', 'Comedy|Drama', 32335681, '28-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (87, 'M11166J', 'Draft Day', 'Drama', 44696629, '02-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (88, 'M83162D', 'Virgin Territory', 'Adventure|Comedy|Romance', 30854853, '04-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (89, 'M56829J', 'Lucky Star', 'Drama|Romance', 31118103, '13-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (90, 'M65659J', 'Neighbors', 'Comedy', 34898794, '01-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (91, 'M56829J', 'Gray Lady Down', 'Drama|Thriller', 40466331, '13-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (92, 'M66630D', 'Aliisa', 'Drama', 45128800, '26-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (93, 'M83162D', 'Flintstone Kids'' Just Say No Special, The', 'Animation|Children', 43334757, '13-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (94, 'M54354E', 'Maryam', 'Drama', 39040050, '31-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (95, 'M54354E', 'Islander', 'Drama', 31186165, '14-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (96, 'M45528I', 'Crisis: Behind a Presidential Commitment', 'Documentary', 33150597, '04-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (97, 'M35589A', 'Farewell, My Lovely', 'Crime|Mystery|Thriller', 36588122, '14-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (98, 'M35589A', 'Othello', 'Drama', 30625449, '24-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (99, 'M45528I', 'Sum of Us, The', 'Comedy|Drama', 47005153, '15-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (100, 'M88791Z', 'Cookie''s Fortune', 'Comedy|Drama', 30240475, '31-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (101, 'M11166U', 'Hobbit: An Unexpected Journey, The', 'Adventure|Fantasy|IMAX', 45267336, '28-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (102, 'M88791Z', 'American Revolutionary: The Evolution of Grace Lee Boggs', 'Documentary', 34784291, '08-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (103, 'M35718D', 'When We Leave (Die Fremde)', 'Drama', 47942306, '21-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (104, 'M16782H', 'Two Years at Sea', 'Documentary', 47624531, '05-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (105, 'M45528I', 'Bionicle 3: Web of Shadows', 'Action|Adventure|Animation|Children', 36696798, '27-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (106, 'M83162D', 'Ghostbusters (a.k.a. Ghost Busters)', 'Action|Comedy|Sci-Fi', 43674446, '06-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (107, 'M65659J', 'Waxworks (Das Wachsfigurenkabinett)', 'Comedy|Drama|Romance|Thriller', 43481952, '07-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (108, 'M54354E', 'At War with the Army', 'Comedy|Musical|Romance', 43369549, '03-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (109, 'M11166U', 'Blue Juice', 'Comedy|Drama', 37739044, '06-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (110, 'M65659J', 'Four Horsemen of the Apocalypse, The', 'Drama|Romance|War', 37262302, '14-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (111, 'M66630D', 'Crucified Lovers, The (Chikamatsu monogatari)', 'Drama', 38871772, '30-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (112, 'M66630D', 'Aglaya', 'Drama', 38936092, '08-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (113, 'M11166J', 'Doom Generation, The', 'Comedy|Crime|Drama', 32391670, '03-03-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (114, 'M65889A', 'Women Art Revolution', 'Documentary', 32493530, '20-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (115, 'M54354E', 'Crowd, The', 'Drama', 36922521, '23-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (116, 'M88791Z', 'Torremolinos 73', 'Comedy|Drama', 42904738, '12-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (117, 'M65889A', 'L''instant et la patience ', 'Documentary', 46203145, '21-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (118, 'M11166U', 'Read It and Weep', 'Comedy', 40232098, '10-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (119, 'M16782H', 'William S. Burroughs: A Man Within', 'Documentary', 46797377, '28-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (120, 'M65659J', 'Species', 'Horror|Sci-Fi', 48687641, '27-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (121, 'M35589A', 'Romero', 'Drama', 45130838, '22-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (122, 'M35718D', 'No Exit (Huis clos)', 'Drama', 31349514, '22-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (123, 'M66630D', 'Henry: Portrait of a Serial Killer', 'Crime|Horror|Thriller', 48857119, '20-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (124, 'M35589A', 'Wuthering Heights', 'Drama', 32684844, '12-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (125, 'M11166U', 'Alps (Alpeis)', 'Drama', 42967246, '12-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (126, 'M66630D', 'Jesus Is a Palestinian (Jezus is een Palestijn)', 'Comedy', 48654627, '16-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (127, 'M65889A', 'Lady Death', 'Action|Animation|Horror', 31925933, '16-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (128, 'M65659J', 'Invincible', 'Drama', 40714566, '03-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (129, 'M11166U', 'Beyond The Hills', 'Drama', 35092793, '13-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (130, 'M54354E', 'Min and Bill', 'Comedy|Drama', 49610146, '02-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (131, 'M56829J', 'Ski School', 'Comedy', 40342174, '16-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (132, 'M35589A', 'Convoy', 'Action|Comedy|Drama', 38022737, '17-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (133, 'M11166J', 'Evil Dead', 'Horror', 32178533, '20-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (134, 'M88791Z', 'Frozen Hell (Jäämarssi) ', 'Documentary|War', 31922963, '07-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (135, 'M54354E', 'Gazebo, The', 'Comedy|Crime', 40960417, '10-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (136, 'M65659J', 'Only Angels Have Wings', 'Adventure|Drama|Romance', 38988244, '27-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (137, 'M35718D', 'In the Time of the Butterflies', 'Crime|Drama', 36051838, '17-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (138, 'M65889A', 'Blue Steel', 'Action|Thriller', 37200901, '27-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (139, 'M88791Z', 'Milky Way, The', 'Comedy', 44164012, '28-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (140, 'M56829J', 'Chasers', 'Comedy', 31033236, '03-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (141, 'M54354E', 'Madhouse', 'Comedy', 36764311, '15-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (142, 'M16782H', 'Nocturna', 'Adventure|Animation|Children|Fantasy|Mystery', 36933910, '06-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (143, 'M11367A', 'Girl Who Talked to Dolphins, The', 'Documentary', 47780307, '30-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (144, 'M11166J', 'Quest', 'Animation', 42355679, '20-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (145, 'M11166J', 'Odette Toulemonde', 'Comedy|Drama', 41088347, '17-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (146, 'M11166J', 'Kissing a Fool', 'Comedy|Romance', 35955832, '04-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (147, 'M88791Z', 'Hometown Legend', 'Drama', 45871953, '05-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (148, 'M11166J', 'Hard Man, The', 'Western', 32446155, '20-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (149, 'M16782H', 'Against All Odds', 'Romance', 43332588, '06-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (150, 'M88791Z', 'Leningrad Cowboys Go America', 'Comedy|Musical', 47014216, '22-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (151, 'M83162D', 'Damn Yankees!', 'Comedy|Musical', 37745953, '05-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (152, 'M45528I', 'Tumbleweeds', 'Drama', 42161449, '20-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (153, 'M11166U', 'Southern Yankee, A', 'Comedy|War|Western', 45510015, '13-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (154, 'M35589A', 'Red Dog', 'Comedy|Drama|Romance', 48324430, '21-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (155, 'M65659J', 'Witness for the Prosecution', 'Drama|Mystery|Thriller', 48896370, '01-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (156, 'M54354E', 'Heartbeats (Les amours imaginaires)', 'Drama|Romance', 35062041, '02-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (157, 'M56829J', 'Arena, The (a.k.a. Naked Warriors)', 'Action|Adventure', 48547529, '15-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (158, 'M11166J', 'Clockwatchers', 'Comedy', 40073054, '09-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (159, 'M45528I', '8 Diagram Pole Fighter, The (a.k.a. Invincible Pole Fighter) (Wu Lang ba gua gun)', 'Action|Drama', 35252520, '17-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (160, 'M11166U', 'Harley Davidson and the Marlboro Man', 'Action|Crime|Drama', 37778958, '23-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (161, 'M35718D', 'Alaska: Spirit of the Wild', 'Documentary|IMAX', 38197938, '10-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (162, 'M11367A', 'Rules of Single Life (Sinkkuelämän säännöt)', 'Documentary', 34593728, '09-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (163, 'M33571G', 'Monsieur Batignole', 'Comedy|Drama', 46632243, '08-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (164, 'M45528I', 'Best of the Best 3: No Turning Back', 'Action', 45396883, '05-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (165, 'M66630D', 'Cop Out', 'Action|Comedy|Crime', 31395075, '22-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (166, 'M66630D', 'Impromptu', 'Comedy|Romance', 31093566, '20-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (167, 'M33571G', 'Suicide Club', 'Adventure|Comedy|Drama', 34821883, '19-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (168, 'M35589A', 'Avenging Angelo', 'Action|Comedy|Crime', 44333300, '28-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (169, 'M88791Z', 'Ghost in the Shell Arise - Border 1: Ghost Pain', 'Action|Animation|Sci-Fi', 39746210, '19-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (170, 'M65889A', 'Matrimonial Comedy (Komedia malzenska)', 'Comedy', 30334106, '28-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (171, 'M65889A', 'Immortal Sergeant', 'Drama|War', 35885001, '08-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (172, 'M45528I', 'Collision Earth', 'Action|Sci-Fi', 47124451, '10-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (173, 'M16782H', 'Just 4 Kicks', 'Children', 46250501, '13-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (174, 'M11367A', 'Sharktopus', 'Action|Horror|Sci-Fi', 43142899, '03-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (175, 'M66630D', 'RFK Must Die: The Assassination of Bobby Kennedy', 'Documentary', 30843704, '07-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (176, 'M54354E', 'House at the End of the Street', 'Horror|Thriller', 36604864, '28-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (177, 'M54354E', 'Gamera: The Giant Monster (Daikaijû Gamera)', 'Sci-Fi', 38395367, '26-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (178, 'M66630D', 'In Therapy (Divã)', 'Comedy|Drama|Romance', 47227186, '11-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (179, 'M35589A', 'Taxi', 'Action|Comedy', 40945304, '22-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (180, 'M66630D', 'Autumn Spring (Babí léto)', 'Comedy|Drama', 32961978, '06-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (181, 'M11166J', 'White Sound, The (Das weiße Rauschen)', 'Drama', 49124246, '11-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (182, 'M33571G', 'In the Navy', 'Comedy|Musical', 38775565, '22-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (183, 'M66630D', 'At Any Second (In jeder Sekunde)', 'Drama', 34557753, '05-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (184, 'M33571G', 'Good Fairy, The', 'Comedy|Romance', 43994687, '28-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (185, 'M33571G', 'Dying Swan, The (Umirayushchii lebed)', 'Drama', 47349328, '22-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (186, 'M56829J', 'Tripper, The', 'Horror', 38156820, '11-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (187, 'M33571G', 'Past Midnight', 'Horror|Thriller', 39597614, '07-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (188, 'M35718D', 'Jodorowsky''s Dune', 'Documentary|Sci-Fi', 45753174, '28-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (189, 'M65659J', 'Women Art Revolution', 'Documentary', 38304735, '15-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (190, 'M11367A', 'Bronies: The Extremely Unexpected Adult Fans of My Little Pony', 'Documentary', 31067620, '21-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (191, 'M11367A', 'Mike Birbiglia: My Girlfriend''s Boyfriend', 'Comedy', 33796489, '18-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (192, 'M83162D', 'Mortal Kombat', 'Action|Adventure|Fantasy', 45664900, '08-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (193, 'M16782H', 'Supercop 2 (Project S) (Chao ji ji hua)', 'Action|Comedy|Crime|Thriller', 47065502, '26-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (194, 'M66630D', 'A Fight For', '(no genres listed)', 49732385, '28-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (195, 'M66630D', 'Mr. Death: The Rise and Fall of Fred A. Leuchter, Jr.', 'Documentary', 32674310, '16-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (196, 'M65889A', 'By the Sea', 'Comedy', 32245001, '10-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (197, 'M54354E', 'Cobra Verde', 'Adventure|Drama', 46138075, '09-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (198, 'M88791Z', 'Keep, The', 'Horror|Thriller', 33689645, '21-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (199, 'M35718D', 'Somewhere Under the Broad Sky', '(no genres listed)', 32528090, '24-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (200, 'M65889A', 'Bang the Drum Slowly', 'Drama', 48832780, '21-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (201, 'M56829J', 'Toy Story That Time Forgot', 'Animation|Children', 40857107, '02-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (202, 'M45528I', 'Killing Room, The', 'Drama|Mystery|Thriller', 40535542, '17-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (203, 'M33571G', 'Silent Hill', 'Fantasy|Horror|Thriller', 42171546, '22-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (204, 'M11166J', 'Burn', 'Documentary', 49647634, '25-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (205, 'M88791Z', 'Papadopoulos & Sons', 'Comedy|Drama', 43043086, '08-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (206, 'M56829J', 'Party, The', 'Comedy', 49725967, '18-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (207, 'M33571G', 'World Before Her, The', 'Documentary', 47046363, '07-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (208, 'M65659J', 'To Sleep with Anger', 'Drama', 46981706, '06-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (209, 'M88791Z', 'Vikings, The', 'Action|Adventure', 36706991, '10-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (210, 'M11166U', 'Shanghai Calling', 'Comedy|Drama|Romance', 35179609, '06-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (211, 'M11166U', 'Kenji Mizoguchi: The Life of a Film Director (Aru eiga-kantoku no shogai)', 'Documentary', 42749463, '25-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (212, 'M11367A', 'Absolon', 'Action|Sci-Fi|Thriller', 42333142, '15-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (213, 'M56829J', 'Gloria', 'Comedy|Drama', 46937936, '08-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (214, 'M65889A', 'Bettie Page Reveals All', 'Documentary', 45211026, '19-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (215, 'M35589A', 'How Wang-Fo Was Saved (Comment Wang-Fo fut sauvé)', 'Animation|Fantasy', 44760752, '20-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (216, 'M65889A', 'loudQUIETloud: A Film About the Pixies', 'Documentary', 39638481, '09-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (217, 'M88791Z', 'Hammer, The', 'Comedy', 44564556, '23-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (218, 'M88791Z', 'Scandal', 'Drama', 33220935, '02-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (219, 'M54354E', 'Lagaan: Once Upon a Time in India', 'Comedy|Drama|Musical|Romance', 32240190, '01-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (220, 'M45528I', 'Knight Without Armor', 'Adventure|Drama|Romance|Thriller', 35294282, '15-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (221, 'M16782H', 'Henri-Georges Clouzot''s Inferno (L''enfer d''Henri-Georges Clouzot)', 'Documentary', 37282615, '17-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (222, 'M11166U', 'Curtis''s Charm', 'Comedy|Drama', 31503160, '26-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (223, 'M11166J', 'I Was A Communist for the FBI', 'Drama|Film-Noir|Thriller', 38044241, '20-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (224, 'M54354E', 'Sinbad: Legend of the Seven Seas', 'Adventure|Animation|Children|Fantasy', 34257250, '05-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (225, 'M11367A', 'Comradeship (Kameradschaft)', 'Drama', 46527473, '05-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (226, 'M56829J', 'Barry Munday', 'Comedy', 41328562, '28-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (227, 'M16782H', 'House Hunting', 'Mystery|Thriller', 32927121, '05-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (228, 'M56829J', 'Bicycle Thieves (a.k.a. The Bicycle Thief) (a.k.a. The Bicycle Thieves) (Ladri di biciclette)', 'Drama', 42018840, '01-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (229, 'M83162D', 'Death by China ', 'Documentary', 48851617, '20-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (230, 'M88791Z', 'The Last Journey', 'Crime|Drama', 38818835, '09-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (231, 'M11166U', 'Miracle on 34th Street', 'Comedy|Drama', 43299690, '19-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (232, 'M65659J', 'Auntie Mame', 'Comedy|Drama', 31540403, '22-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (233, 'M45528I', 'Massacre Canyon', 'Western', 46026043, '17-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (234, 'M54354E', 'Dear Mr. Watterson', 'Documentary', 39667284, '02-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (235, 'M35589A', 'From the Terrace', 'Drama', 33832325, '25-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (236, 'M54354E', 'Frankie and Alice', 'Drama', 48777967, '02-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (237, 'M45528I', 'Welcome Farewell-Gutmann (Bienvenido a Farewell-Gutmann)', 'Comedy|Drama', 35884743, '10-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (238, 'M56829J', 'Love in the Afternoon', 'Comedy|Romance', 44304052, '09-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (239, 'M56829J', 'Adam''s Rib', 'Comedy|Romance', 30663403, '24-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (240, 'M88791Z', 'Last Days', 'Drama', 47653977, '11-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (241, 'M35589A', 'Barrier (Bariera)', 'Comedy|Drama', 45542226, '06-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (242, 'M54354E', 'American Kickboxer (American Kickboxer 1)', 'Action', 36249560, '24-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (243, 'M35718D', 'Pornographers, The (Erogotoshi-tachi yori: Jinruigaku nyûmon)', 'Comedy|Drama', 35342834, '17-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (244, 'M35589A', 'Poison Ivy', 'Drama|Thriller', 48613329, '02-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (245, 'M11166J', 'It', 'Comedy|Romance', 32457639, '26-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (246, 'M88791Z', 'Ten Minutes Older: The Trumpet', 'Drama', 49498046, '18-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (247, 'M33571G', 'Sofia''s Last Ambulance (Poslednaka lineika na Sofia)', 'Documentary', 40475671, '18-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (248, 'M35589A', 'Badman''s Territory', 'Action|Drama|Western', 38908479, '01-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (249, 'M35718D', 'Matter of Life and Death, A (Stairway to Heaven)', 'Drama|Fantasy|Romance', 48516103, '21-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (250, 'M11166J', 'Xiu Xiu: The Sent-Down Girl (Tian yu)', 'Drama', 32289684, '02-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (251, 'M56829J', 'Dr. Giggles', 'Comedy|Horror', 38521731, '22-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (252, 'M65659J', 'Mistaken for Strangers', 'Comedy|Documentary', 41374892, '10-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (253, 'M35589A', 'Star Chamber, The', 'Action|Crime|Drama|Thriller', 44831317, '27-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (254, 'M54354E', 'Teenage Caveman', 'Horror|Sci-Fi|Thriller', 33695904, '25-12-2017');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (255, 'M11367A', 'Silver Linings Playbook', 'Comedy|Drama', 46778897, '22-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (256, 'M35718D', 'Hungry Hill', 'Drama', 44578980, '11-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (257, 'M11166J', 'Laffghanistan: Comedy Down Range', 'Comedy|Documentary|War', 45647758, '04-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (258, 'M35589A', 'Jolene', 'Drama', 40343970, '26-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (259, 'M33571G', 'Bad Country', 'Action|Crime|Drama|Thriller', 40586886, '09-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (260, 'M56829J', 'Teddy Bear (10 timer til Paradis)', 'Drama|Romance', 40574940, '26-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (261, 'M11166J', 'Ten Violent Women', 'Action|Drama', 40118867, '09-11-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (262, 'M65659J', 'Children of the Corn V: Fields of Terror', 'Horror|Thriller', 47572417, '26-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (263, 'M11166J', 'Super Fly (Superfly)', 'Action|Crime|Drama', 36197863, '25-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (264, 'M56829J', 'Perifery (Härmä)', 'Drama', 30567704, '09-07-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (265, 'M11166J', 'Red Sorghum (Hong gao liang)', 'Drama|War', 35279460, '17-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (266, 'M65659J', 'Facing Windows (Finestra di fronte, La)', 'Drama|Romance', 35981172, '18-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (267, 'M83162D', 'Bête humaine, La', 'Drama', 37577187, '15-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (268, 'M11166U', 'The Seven-Ups', 'Action|Crime|Drama|Thriller', 36190155, '13-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (269, 'M45528I', 'Swamp Women', 'Adventure|Crime|Horror', 40657959, '19-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (270, 'M56829J', 'Marksman, The', 'Action|Adventure|Thriller|War', 36515129, '06-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (271, 'M88791Z', 'More', 'Crime|Drama|Romance', 46288640, '20-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (272, 'M16782H', 'Shout, The', 'Drama|Horror', 30823484, '07-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (273, 'M35718D', 'When Harry Met Sally...', 'Comedy|Romance', 49305280, '25-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (274, 'M35718D', 'Happy Endings', 'Comedy|Drama', 48801923, '11-12-2017');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (275, 'M11166J', 'Speedy', 'Action|Comedy', 47936068, '08-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (276, 'M66630D', 'Suriyothai (a.k.a. Legend of Suriyothai, The)', 'Action|Adventure|Drama|War', 31403434, '31-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (277, 'M11166U', 'Notorious', 'Drama|Musical', 48134114, '17-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (278, 'M65659J', 'Faces of Death 3', 'Documentary|Horror', 41272856, '01-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (279, 'M11367A', 'Hangman''s House', 'Drama', 34217607, '12-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (280, 'M35589A', 'Broken Kingdom', 'Drama', 39237044, '30-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (281, 'M66630D', 'Camp Hell', 'Thriller', 44366114, '06-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (282, 'M33571G', 'Robin Williams: Weapons of Self Destruction', 'Comedy', 38318643, '17-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (283, 'M54354E', 'Stake Land', 'Horror', 43616288, '30-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (284, 'M45528I', 'Woman in the Moon (By Rocket to the Moon) (Frau im Mond)', 'Comedy|Drama|Romance|Sci-Fi', 38511841, '08-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (285, 'M54354E', 'Cruel Story of Youth (Seishun zankoku monogatari)', 'Drama', 43287308, '27-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (286, 'M11367A', 'White Bird in a Blizzard', 'Drama|Romance|Thriller', 39131445, '08-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (287, 'M35718D', 'Evil Toons', 'Comedy|Horror', 47374302, '21-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (288, 'M11166J', 'Mona Lisa Smile', 'Drama|Romance', 39426364, '23-12-2017');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (289, 'M65889A', 'Saw III', 'Crime|Horror|Thriller', 45943418, '14-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (290, 'M33571G', 'End of Days', 'Action|Fantasy|Horror|Mystery|Thriller', 46754074, '22-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (291, 'M54354E', 'Carnival in Flanders (La kermesse héroïque)', 'Comedy|Romance', 41830706, '26-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (292, 'M54354E', 'Santitos', 'Comedy', 45677055, '14-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (293, 'M66630D', 'Drive Me Crazy', 'Comedy|Romance', 41380298, '09-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (294, 'M56829J', 'As You Like It', 'Comedy', 35538292, '11-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (295, 'M65889A', 'The Thief', 'Crime|Drama|Film-Noir', 39858766, '28-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (296, 'M56829J', 'Game of Werewolves', 'Comedy|Horror', 31136520, '30-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (297, 'M65889A', 'House of Dark Shadows', 'Drama|Horror|Romance', 45815050, '12-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (298, 'M11367A', 'Devil Wears Prada, The', 'Comedy|Drama', 40630923, '18-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (299, 'M11367A', '28 Hotel Rooms', 'Drama', 46059886, '05-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (300, 'M56829J', 'Killings at Outpost Zeta, The', 'Drama|Sci-Fi', 44171816, '15-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (301, 'M56829J', 'Wild Animals (Yasaeng dongmul bohoguyeog)', 'Crime|Drama', 36772679, '29-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (302, 'M35589A', 'Fast & Furious (Fast and the Furious 4, The)', 'Action|Crime|Drama|Thriller', 38177791, '26-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (303, 'M11166J', 'Helsinki Napoli All Night Long', 'Comedy|Thriller', 43132072, '14-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (304, 'M16782H', 'Way of War, The', 'Action|Thriller', 40947918, '04-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (305, 'M66630D', 'Chinatown', 'Crime|Film-Noir|Mystery|Thriller', 45820616, '10-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (306, 'M11166J', 'Woman Obsessed', 'Drama|Romance', 48533737, '01-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (307, 'M65659J', 'Before Your Eyes (Min Dit: The Children of Diyarbakir)', 'Drama', 34840949, '10-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (308, 'M33571G', 'I Want to Look Like That Guy', 'Documentary', 30361667, '10-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (309, 'M65889A', 'Star Trek IV: The Voyage Home', 'Adventure|Comedy|Sci-Fi', 36012858, '26-09-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (310, 'M83162D', 'Choking Man', 'Drama', 37291752, '21-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (311, 'M11166U', 'Sun Wind (Aurinkotuuli)', 'Drama|Sci-Fi', 41376976, '07-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (312, 'M11367A', 'Restless Souls (Bag det stille ydre)', 'Drama|Horror|Mystery', 34354101, '14-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (313, 'M16782H', '1969', 'Drama|War', 36369809, '30-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (314, 'M45528I', 'Our Lady of the Assassins (Virgen de los sicarios, La)', 'Crime|Drama|Romance', 34569641, '27-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (315, 'M88791Z', 'New Rulers of the World, The', 'Documentary', 38044068, '20-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (316, 'M56829J', 'Aujourd''hui', 'Drama', 47748827, '02-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (317, 'M35718D', 'Primeval', 'Horror|Thriller', 43512281, '27-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (318, 'M16782H', 'Kon-Tiki', 'Adventure|Documentary', 47316275, '18-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (319, 'M35718D', 'Anotherworld', 'Drama|Romance', 30728887, '23-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (320, 'M35718D', 'Hearts of the West', 'Comedy|Western', 42867179, '24-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (321, 'M83162D', 'Bag It', 'Documentary', 41899212, '05-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (322, 'M35589A', 'Monday', 'Action|Comedy|Crime|Fantasy|Thriller', 39982065, '08-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (323, 'M35589A', 'Final Fantasy: The Spirits Within', 'Adventure|Animation|Fantasy|Sci-Fi', 46491648, '21-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (324, 'M16782H', 'In the Line of Fire', 'Action|Thriller', 32271072, '18-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (325, 'M88791Z', 'Gold Diggers: The Secret of Bear Mountain', 'Adventure|Children', 47628246, '07-04-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (326, 'M66630D', 'Inspector Clouseau', 'Comedy|Crime|Mystery', 30003000, '01-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (327, 'M35589A', 'Bang, Bang, You''re Dead', 'Drama', 33406049, '24-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (328, 'M56829J', 'Grandview, U.S.A.', 'Drama', 37767709, '06-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (329, 'M33571G', 'Black Sun (Kuroi taiyô)', 'Drama|Thriller', 37183864, '26-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (330, 'M54354E', 'Married Woman, A (Une femme mariée)', 'Drama', 41498563, '12-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (331, 'M11166J', 'Love and Lemons (Små citroner gula)', 'Romance', 46631055, '27-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (332, 'M45528I', 'Tremors', 'Comedy|Horror|Sci-Fi', 39773274, '20-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (333, 'M56829J', 'Under Siege', 'Action|Drama|Thriller', 39541869, '29-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (334, 'M66630D', 'Peas at 5:30 (Erbsen auf halb 6)', 'Comedy|Drama|Romance', 42903461, '29-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (335, 'M56829J', 'The Referees', 'Documentary', 31157888, '21-02-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (336, 'M83162D', 'Happy Feet', 'Adventure|Animation|Children|Comedy|IMAX', 36699126, '26-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (337, 'M66630D', 'Toy Story', 'Adventure|Animation|Children|Comedy|Fantasy', 48688767, '23-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (338, 'M65889A', 'Blink', 'Thriller', 49688524, '22-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (339, 'M56829J', 'Steel Magnolias', 'Drama', 43531035, '22-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (340, 'M16782H', 'Lightning Bolt: The Power of Salad', 'Documentary', 47778016, '24-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (341, 'M33571G', 'Splice', 'Horror|Sci-Fi|Thriller', 49658423, '05-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (342, 'M11367A', 'Waterworld', 'Action|Adventure|Sci-Fi', 37487804, '15-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (343, 'M33571G', 'Good Student, The (Mr. Gibb)', 'Comedy', 39207070, '13-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (344, 'M65659J', 'Samsara', 'Adventure|Drama|Romance', 46020250, '07-08-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (345, 'M66630D', 'Adonis Factor, The', 'Documentary', 43505814, '08-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (346, 'M33571G', 'Deathdream (a.k.a. Dead of Night)', 'Horror|War', 48214859, '10-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (347, 'M11367A', 'Truce, The (a.k.a. La Tregua)', 'Drama', 30874877, '13-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (348, 'M88791Z', 'In the Company of Men', 'Comedy|Drama', 36037071, '07-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (349, 'M65659J', 'Asterix and Cleopatra (Astérix et Cléopâtre)', 'Action|Adventure|Animation|Children|Comedy', 38957694, '14-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (350, 'M65889A', 'Chungking Express (Chung Hing sam lam)', 'Drama|Mystery|Romance', 46623043, '01-01-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (351, 'M83162D', 'Trust', 'Drama|Thriller', 44753622, '20-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (352, 'M45528I', 'Camp Nowhere', 'Adventure|Children|Comedy', 47370817, '19-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (353, 'M56829J', 'Other Sister, The', 'Comedy|Drama|Romance', 40492136, '22-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (354, 'M11166U', '4 for Texas', 'Comedy|Western', 43439537, '31-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (355, 'M16782H', 'Blackbeard, the Pirate', 'Adventure', 35422091, '16-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (356, 'M16782H', 'Alive', 'Action|Drama|Horror|Sci-Fi|Thriller', 37767344, '17-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (357, 'M45528I', 'Don''t Make Waves', 'Comedy', 35264579, '11-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (358, 'M16782H', 'Cold Prey (Fritt Vilt)', 'Action|Horror|Mystery|Thriller', 34209641, '11-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (359, 'M83162D', 'Missing', 'Drama|Mystery|Thriller', 32711905, '12-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (360, 'M33571G', 'Sweet November', 'Drama|Romance', 43806401, '23-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (361, 'M35718D', 'Offspring ', 'Horror', 36707917, '06-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (362, 'M83162D', 'Here Comes the Devil (Ahí va el diablo)', 'Horror|Thriller', 47317174, '04-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (363, 'M54354E', 'Coward, The (Kapurush)', 'Drama', 39912054, '05-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (364, 'M11367A', 'Cowboy Bebop', 'Action|Adventure|Animation|Crime|Sci-Fi', 31496563, '14-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (365, 'M83162D', 'Tales of Vesperia: The First Strike (Teiruzu obu vesuperia: The first strike)', 'Animation', 31887816, '09-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (366, 'M56829J', 'Zazie dans le métro', 'Comedy', 43351254, '03-03-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (367, 'M11367A', 'Requiem for a Dream', 'Drama', 45253476, '06-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (368, 'M11166J', 'Redemption of General Butt Naked, The', 'Documentary|Drama', 49907520, '11-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (369, 'M11367A', 'Trances', 'Documentary|Musical', 45970922, '25-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (370, 'M65659J', 'Meltdown (Shu dan long wei)', 'Action|Comedy|Crime', 38993586, '10-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (371, 'M83162D', 'Phase IV', 'Horror|Sci-Fi|Thriller', 30864834, '02-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (372, 'M11367A', 'Ape, The', 'Horror|Sci-Fi', 48065831, '16-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (373, 'M11166U', 'American Gothic', 'Horror', 30213749, '12-10-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (374, 'M56829J', 'Black Mirror', 'Drama|Sci-Fi', 48333563, '07-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (375, 'M65659J', 'Moonlight Serenade', 'Musical|Romance', 41402471, '16-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (376, 'M56829J', 'Two Moon Junction', 'Drama|Romance', 42401979, '29-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (377, 'M35589A', 'War Comes to America (Why We Fight, 7)', 'Documentary|War', 41827000, '13-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (378, 'M83162D', 'V/H/S/2', 'Horror|Thriller', 44660876, '31-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (379, 'M45528I', 'Jewel Robbery', 'Comedy|Crime|Romance', 30913389, '26-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (380, 'M56829J', 'Wing and the Thigh, The (L''aile ou la cuisse)', 'Comedy', 48043198, '10-09-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (381, 'M11166U', 'All I Want (Try Seventeen)', 'Comedy|Drama|Romance', 45365547, '27-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (382, 'M54354E', 'Get Carter', 'Action|Crime|Drama|Thriller', 46559072, '17-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (383, 'M88791Z', 'Doctor Zhivago', 'Drama|Romance|War', 38509762, '04-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (384, 'M54354E', 'How to Survive a Plague', 'Documentary', 34449335, '14-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (385, 'M11166U', 'Time of the Gypsies (Dom za vesanje)', 'Comedy|Crime|Drama|Fantasy', 46374984, '28-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (386, 'M45528I', 'Wallace & Gromit: A Close Shave', 'Animation|Children|Comedy', 47180923, '23-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (387, 'M66630D', 'Rocky V', 'Action|Drama', 31136432, '25-06-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (388, 'M11367A', 'Acla, The Descent into Floristella (La discesa di Aclà a Floristella)', 'Drama', 41134733, '17-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (389, 'M35718D', 'Reykjavik Whale Watching Massacre', 'Comedy|Horror', 31889659, '06-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (390, 'M56829J', 'The Gardener', '(no genres listed)', 44414660, '04-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (391, 'M11166U', 'Husbands and Wives', 'Comedy|Drama', 42015921, '22-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (392, 'M56829J', 'Prinsessa Ruusunen', 'Children|Fantasy|Romance', 49118175, '05-03-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (393, 'M11367A', 'La discrète', 'Drama|Romance', 47569199, '22-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (394, 'M11166U', 'Wheel, The (La Roue)', 'Drama', 46817317, '16-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (395, 'M45528I', 'Downhill Racer', 'Drama', 48500798, '06-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (396, 'M88791Z', 'Blood and Concrete (Blood & Concrete: A Love Story)', 'Comedy|Crime', 43502076, '17-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (397, 'M65659J', 'Unfinished Song (Song for Marion)', 'Comedy|Drama|Romance', 41744048, '04-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (398, 'M35718D', 'Adventures of Tom Sawyer, The', 'Adventure', 46618764, '24-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (399, 'M35589A', 'Love''s Kitchen', 'Comedy|Drama|Romance', 34206442, '22-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (400, 'M33571G', 'Take Shelter', 'Drama', 33115846, '04-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (401, 'M11166J', 'The Lone Wolf Spy Hunt', '(no genres listed)', 32226948, '01-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (402, 'M83162D', 'Grand Canyon', 'Crime|Drama', 43800926, '27-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (403, 'M11367A', 'Breaking and Entering', 'Comedy|Documentary', 35622988, '18-11-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (404, 'M83162D', 'Thirty Day Princess', 'Comedy|Romance', 40515288, '17-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (405, 'M16782H', 'Life of Another, The (La vie d''une autre)', 'Comedy|Drama|Mystery', 38482979, '15-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (406, 'M54354E', 'Ring, The', 'Drama', 39497734, '23-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (407, 'M83162D', 'Tangerines', 'Drama', 30409602, '22-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (408, 'M11166J', 'Lad: A Dog', '(no genres listed)', 42490903, '20-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (409, 'M54354E', 'Respiro', 'Comedy|Drama', 36796646, '13-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (410, 'M33571G', 'Seven Ways from Sundown', 'Action|Adventure|Western', 45984781, '19-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (411, 'M33571G', 'The Princess Comes Across', 'Comedy|Mystery|Romance|Thriller', 38524002, '07-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (412, 'M88791Z', 'White: The Melody of the Curse', 'Horror', 36008098, '14-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (413, 'M11166U', 'My Last Five Girlfriends', 'Comedy', 37514888, '09-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (414, 'M83162D', 'Taxi 3', 'Action|Comedy', 48855619, '24-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (415, 'M11367A', 'American Psycho', 'Crime|Horror|Mystery|Thriller', 47808068, '24-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (416, 'M35589A', 'Looking for Eric', 'Comedy|Drama|Fantasy', 49299466, '26-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (417, 'M33571G', 'In the Basement', 'Documentary', 41929094, '04-03-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (418, 'M11367A', 'Xingu ', 'Adventure|Drama', 45330784, '07-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (419, 'M66630D', 'Lewis Black: Stark Raving Black', 'Comedy', 36739307, '03-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (420, 'M33571G', 'Ator, the Fighting Eagle (Ator l''invincibile)', 'Action|Adventure|Fantasy', 45517339, '22-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (421, 'M35589A', 'Green Lantern: First Flight', 'Action|Adventure|Animation|Fantasy|Sci-Fi', 42780478, '09-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (422, 'M65889A', 'Climb, The', 'Action|Adventure|Drama', 43235987, '15-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (423, 'M54354E', 'Tears of the Black Tiger (Fah talai jone)', 'Action|Comedy|Romance|Western', 39494679, '19-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (424, 'M54354E', 'Parental Guidance', 'Comedy', 49687066, '09-05-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (425, 'M35589A', 'Sugar Curtain, The (El telón de azúcar)', 'Documentary', 48800082, '29-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (426, 'M35589A', 'Where Do We Go Now?', 'Comedy|Drama', 33052791, '14-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (427, 'M66630D', 'Elephant Boy', 'Adventure|Drama', 44038035, '16-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (428, 'M65889A', 'Get on the Bus', 'Drama', 34372111, '02-11-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (429, 'M65659J', 'All-Star Superman', 'Action|Adventure|Animation|Sci-Fi', 34240997, '12-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (430, 'M16782H', 'Don Jon', 'Comedy|Drama|Romance', 41384625, '17-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (431, 'M56829J', 'Pool Without Water, A (Mizu no nai puuru)', 'Crime|Drama', 30682684, '19-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (432, 'M33571G', 'Ali Baba Goes to Town', 'Comedy|Fantasy|Musical', 39188739, '19-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (433, 'M66630D', 'Bombay Talkie', 'Drama|Musical|Romance', 45201904, '30-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (434, 'M54354E', 'Concorde: Airport ''79, The', 'Drama', 36936654, '26-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (435, 'M11367A', 'Showtime', 'Action|Comedy', 34256165, '18-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (436, 'M65659J', 'Silk Stockings', 'Musical', 39522481, '03-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (437, 'M11166U', 'Tampopo', 'Comedy', 49029969, '18-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (438, 'M65659J', 'Tightrope', 'Thriller', 32318018, '11-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (439, 'M35718D', 'Mala Noche', 'Drama', 36357413, '17-06-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (440, 'M66630D', 'What? (Che?)', 'Comedy', 33753485, '11-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (441, 'M35589A', 'A Smoky Mountain Christmas', 'Fantasy', 31828737, '05-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (442, 'M35718D', 'Soldier''s Girl', 'Drama', 38951574, '01-06-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (443, 'M11166U', 'Battleground', 'Action|Drama|War', 40017934, '03-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (444, 'M45528I', 'Super Fly (Superfly)', 'Action|Crime|Drama', 47469355, '11-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (445, 'M83162D', 'What Men Talk About', 'Comedy', 49704699, '02-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (446, 'M66630D', 'Baby Take a Bow', 'Children|Comedy|Drama', 30650574, '04-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (447, 'M45528I', 'Seeking Justice', 'Action|Drama|Thriller', 46348543, '07-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (448, 'M83162D', 'Cast A Deadly Spell', 'Comedy|Fantasy|Horror', 48397877, '01-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (449, 'M56829J', 'Kill Switch', 'Action|Crime|Drama|Thriller', 30886185, '04-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (450, 'M33571G', 'ThanksKilling 3 ', 'Comedy|Horror', 31461801, '04-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (451, 'M33571G', 'Climax, The', 'Horror|Musical', 37533835, '07-12-2017');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (452, 'M35718D', 'Noordzee, Texas (North Sea Texas)', 'Drama', 44443449, '18-08-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (453, 'M16782H', 'Pat and Mike', 'Comedy|Romance', 41470655, '03-03-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (454, 'M11166U', 'Alvarez Kelly', 'Western', 35021753, '01-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (455, 'M54354E', 'Windmill Movie, The', 'Documentary', 31467088, '18-12-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (456, 'M65659J', 'Assassination Tango', 'Drama|Thriller', 41991827, '04-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (457, 'M66630D', 'Ju-on: The Grudge 2', 'Horror', 45104172, '17-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (458, 'M33571G', 'In China They Eat Dogs (I Kina spiser de hunde)', 'Action|Comedy', 39808777, '08-01-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (459, 'M11166U', 'Our Little Girl', 'Comedy|Drama|Romance', 47142029, '25-12-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (460, 'M88791Z', 'By the Sea', 'Comedy', 39986732, '11-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (461, 'M65659J', 'Girl of the Golden West', 'Musical|Romance|Western', 41789022, '24-04-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (462, 'M16782H', 'Frankie Starlight', 'Drama|Romance', 31394857, '07-11-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (463, 'M54354E', 'Subspecies IV: Bloodstorm', 'Horror', 39157772, '14-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (464, 'M35589A', 'The Mark of the Angels - Miserere', 'Thriller', 35713726, '17-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (465, 'M11166U', 'Jonah Hex', 'Action|Drama|Thriller|Western', 34738051, '08-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (466, 'M83162D', 'Mad Love (Juana la Loca)', 'Drama', 38598478, '05-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (467, 'M45528I', 'Love Simple', 'Comedy|Romance', 31711224, '24-10-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (468, 'M16782H', 'The Hunger Games: Mockingjay - Part 1', 'Adventure|Sci-Fi|Thriller', 39140506, '09-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (469, 'M33571G', 'Pat Garrett and Billy the Kid', 'Western', 48358286, '29-01-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (470, 'M11367A', 'Blacksmith, The', 'Comedy', 47505702, '01-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (471, 'M88791Z', 'Fiancee, The (Parineeta)', 'Drama', 42644004, '08-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (472, 'M33571G', 'Stop Train 349', 'Drama', 49200756, '06-03-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (473, 'M56829J', 'Resistance', 'Drama|Thriller|War', 32349242, '26-02-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (474, 'M88791Z', 'Beast Within, The', 'Horror', 38730117, '30-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (475, 'M35718D', 'Concorde: Airport ''79, The', 'Drama', 35816527, '12-03-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (476, 'M65659J', 'Live Nude Girls', 'Comedy', 46399901, '15-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (477, 'M66630D', 'My Name is Khan', 'Drama|Romance', 40372737, '30-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (478, 'M65659J', 'Return with Honor', 'Documentary', 33062249, '05-05-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (479, 'M66630D', 'Midnight''s Children', 'Drama', 45778136, '24-02-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (480, 'M11166J', 'Agata and the Storm (Agata e la tempesta)', 'Comedy|Drama|Romance', 34423324, '09-09-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (481, 'M11166J', 'Second in Command', 'Action|Thriller', 41671695, '18-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (482, 'M56829J', 'Kentuckian, The', 'Drama|Western', 33261451, '12-02-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (483, 'M45528I', 'Seconds Apart ', 'Horror|Thriller', 38636869, '17-02-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (484, 'M88791Z', 'Donkey Skin (Peau d''âne)', 'Children|Drama|Fantasy|Musical|Romance', 37161556, '26-02-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (485, 'M33571G', 'Juice', 'Action|Crime|Drama|Thriller', 39027748, '01-09-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (486, 'M35589A', 'Late Great Planet Earth, The', 'Documentary|Drama', 44131919, '23-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (487, 'M35589A', 'Love, etc.', 'Drama', 46655637, '31-10-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (488, 'M11166U', 'Fury', 'Drama|Film-Noir', 42515430, '08-06-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (489, 'M11166J', 'Baxter', 'Drama|Horror', 47564361, '07-08-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (490, 'M45528I', 'Man Who Copied, The (Homem Que Copiava, O)', 'Comedy|Crime|Drama|Romance', 40292633, '15-05-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (491, 'M11166J', 'Hook', 'Adventure|Comedy|Fantasy', 45735113, '08-10-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (492, 'M11166J', 'Blue Angel, The (Blaue Engel, Der)', 'Drama', 33272458, '23-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (493, 'M35718D', 'Bullet', 'Action|Crime|Drama', 45342439, '14-12-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (494, 'M66630D', 'Edie & Pen', 'Comedy', 36507609, '29-07-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (495, 'M33571G', 'Deliver Us from Evil', 'Documentary', 31441645, '10-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (496, 'M54354E', 'Fred & Vinnie', 'Comedy|Drama', 40269913, '02-05-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (497, 'M83162D', 'Racing with the Moon', 'Comedy|Drama|Romance', 44297979, '15-10-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (498, 'M35718D', 'Misérables in Concert, Les', 'Drama|Musical', 33533552, '12-12-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (499, 'M35718D', 'According to Spencer', 'Comedy|Drama|Romance', 36245743, '15-11-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (500, 'M56829J', 'Star Trek Into Darkness', 'Action|Adventure|Sci-Fi|IMAX', 39453214, '02-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (501, 'M16782H', 'Suite Française', 'Drama|Romance|War', 32495149, '19-01-2023');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (502, 'M35589A', 'Prince of Foxes', 'Adventure|Drama', 49030212, '07-04-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (503, 'M11367A', 'Life and Times of Allen Ginsberg, The', 'Documentary', 45706424, '14-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (504, 'M45528I', 'Physical Evidence', 'Crime|Thriller', 48526629, '27-04-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (505, 'M83162D', 'Paradise: Love', 'Drama', 47234188, '17-04-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (506, 'M11166J', 'Let''s Kill Ward''s Wife', 'Comedy', 34801842, '08-07-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (507, 'M65659J', 'Wind with the Gone (El viento se llevó lo qué)', 'Comedy|Drama', 49338095, '07-05-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (508, 'M11166J', 'Josh and S.A.M.', 'Adventure|Comedy|Drama', 32587323, '27-01-2018');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (509, 'M65659J', 'Port of Flowers', '(no genres listed)', 49050394, '09-08-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (510, 'M65659J', 'Haunted World of El Superbeasto, The', 'Action|Animation|Comedy|Horror|Thriller', 46092667, '03-07-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (511, 'M66630D', 'Wicked Lady, The', 'Adventure|Drama', 40553765, '02-09-2019');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (512, 'M33571G', 'Last Chance: Diary of Comedians, The (Bokutachi no koukan nikki)', 'Comedy|Drama', 31246387, '18-08-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (513, 'M83162D', 'Sometimes Happiness, Sometimes Sorrow (Kabhi Khushi Kabhie Gham)', 'Drama|Musical|Romance', 34831943, '17-12-2020');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (514, 'M11367A', 'Dancer Upstairs, The', 'Crime|Drama|Thriller', 48222927, '02-07-2022');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (515, 'M11367A', 'Poseidon', 'Action|Adventure|Thriller|IMAX', 47862987, '14-01-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (516, 'M65889A', 'Taras Bulba', 'Action|Adventure|Drama|Romance|War', 31318427, '01-06-2021');
insert into publications (id, MCR_No, Publication_Title, Journal_Title, PMID, Publication_Date) values (517, 'M66630D', 'The Lego Movie', 'Action|Adventure|Animation|Children|Comedy|Fantasy', 37405712, '17-04-2018');
