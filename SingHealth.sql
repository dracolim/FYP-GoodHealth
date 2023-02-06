-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 06, 2023 at 10:53 AM
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
--

-- --------------------------------------------------------

--
-- Table structure for table `Awards`
--

CREATE TABLE `Awards` (
  `Employee_ID` varchar(50) NOT NULL,
  `Award_Category` varchar(50) NOT NULL,
  `Name_of_Award` varchar(50) NOT NULL,
  `FY_of_Award_Received` varchar(50) NOT NULL,
  `Date_of_Award_Received` varchar(50) NOT NULL,
  `Project_ID` varchar(50) NOT NULL,
  `Awards_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Case_Log`
--

CREATE TABLE `Case_Log` (
  `Employee_ID` varchar(50) NOT NULL,
  `Subspecialty` varchar(50) NOT NULL,
  `Type_of_Case_Log` varchar(50) NOT NULL,
  `Date_of_Log` varchar(50) NOT NULL,
  `CPT` varchar(50) NOT NULL,
  `Total` varchar(50) NOT NULL,
  `Performed` varchar(50) NOT NULL,
  `Observed` varchar(50) NOT NULL,
  `Verified` varchar(50) NOT NULL,
  `Certified` varchar(50) NOT NULL,
  `Case_Log_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Didactic_Attendance`
--

CREATE TABLE `Didactic_Attendance` (
  `Employee_ID` varchar(50) NOT NULL,
  `BillingName` varchar(50) NOT NULL,
  `Month` varchar(50) NOT NULL,
  `Total_tracked_sessions` varchar(50) NOT NULL,
  `Number_of_sessions_attended` varchar(50) NOT NULL,
  `Percentage_of_sessions_attended` varchar(50) NOT NULL,
  `MmYyyy` varchar(50) NOT NULL,
  `Posting_Institution` varchar(50) NOT NULL,
  `Posting_Department` varchar(50) NOT NULL,
  `Scheduled_Teachings` varchar(50) NOT NULL,
  `Compliance_or_Not` varchar(50) NOT NULL,
  `Didactic_Attendance_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Didactic_Attendance`
--

INSERT INTO `Didactic_Attendance` (`Employee_ID`, `BillingName`, `Month`, `Total_tracked_sessions`, `Number_of_sessions_attended`, `Percentage_of_sessions_attended`, `MmYyyy`, `Posting_Institution`, `Posting_Department`, `Scheduled_Teachings`, `Compliance_or_Not`, `Didactic_Attendance_deleted`) VALUES
('MOM12390', 'SGHGasEnt', 'July', '14', '14', '100%', '', '', '', '', '', 0),
('MOM05233', 'SGHGasEnt', 'July', '20', '20', '100%', '', '', '', '', '', 0),
('MOM07177', 'SGHGasEnt', 'July', '14', '12', '86%', '', '', '', '', '', 0),
('MOM05609', 'CGHGasHep', 'July', '12', '9', '75%', '', '', '', '', '', 0),
('MOM05690', 'CGHGasHep', 'July', '12', '12', '100%', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Duty_Hour_Log`
--

CREATE TABLE `Duty_Hour_Log` (
  `Employee_ID` varchar(50) NOT NULL,
  `Level` varchar(50) NOT NULL,
  `Submitted` varchar(50) NOT NULL,
  `Submitted_Proportion` varchar(50) NOT NULL,
  `MMYYYY` varchar(50) NOT NULL,
  `Logged_for_month` varchar(50) NOT NULL,
  `Duty_Hour_Log_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Duty_Hour_Log`
--

INSERT INTO `Duty_Hour_Log` (`Employee_ID`, `Level`, `Submitted`, `Submitted_Proportion`, `MMYYYY`, `Logged_for_month`, `Duty_Hour_Log_deleted`) VALUES
('MOM12390', '4', '3', '0.5', 'Mar-20', 'Yes', 0),
('MOM05233', '4', '4', '0.3', 'Mar-20', 'Yes', 0),
('MOM07177', '4', '0', '0', 'Mar-20', 'Yes', 0),
('MOM05609', '4', '3', '1', 'Mar-20', 'Yes', 0),
('MOM05690', '4', '4', '1', 'Mar-20', 'Yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Education_History`
--

CREATE TABLE `Education_History` (
  `Employee_ID` varchar(50) NOT NULL,
  `Year_of_Graduation` varchar(50) NOT NULL,
  `Date_of_Graduation` varchar(50) NOT NULL,
  `Basic_Qualification` varchar(50) NOT NULL,
  `Medical_School` varchar(50) NOT NULL,
  `Country_of_Graduation` varchar(50) NOT NULL,
  `IM_Residency_Start_Date` varchar(50) NOT NULL,
  `IM_Residency_End_Date` varchar(50) NOT NULL,
  `SR_Residency_Programme` varchar(50) NOT NULL,
  `SR_Residency_Start_Date` varchar(50) NOT NULL,
  `SR_Residency_End_Date` varchar(50) NOT NULL,
  `PG_Year` varchar(50) NOT NULL,
  `Education_History_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Evaluations`
--

CREATE TABLE `Evaluations` (
  `Employee_ID` varchar(50) NOT NULL,
  `Year_of_Training` varchar(50) NOT NULL,
  `Rotation_Period` varchar(50) NOT NULL,
  `Name_of_Evaluation_Form` varchar(50) NOT NULL,
  `Question_Number` varchar(50) NOT NULL,
  `Score` varchar(50) NOT NULL,
  `Evaluator` varchar(50) NOT NULL,
  `Service` varchar(50) NOT NULL,
  `Answer` varchar(50) NOT NULL,
  `Evaluations_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Exam_History`
--

CREATE TABLE `Exam_History` (
  `Employee_ID` varchar(50) NOT NULL,
  `Name_of_Exam` varchar(50) NOT NULL,
  `Date_of_Attempt` varchar(50) NOT NULL,
  `Exam_Status` varchar(50) NOT NULL,
  `Exam_History_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Grants`
--

CREATE TABLE `Grants` (
  `Employee_ID` varchar(50) NOT NULL,
  `Name_of_Grant` varchar(50) NOT NULL,
  `Project_Title` varchar(50) NOT NULL,
  `Project_ID` varchar(50) NOT NULL,
  `Grant_End_Date` varchar(50) NOT NULL,
  `Grant_Start_Date` varchar(50) NOT NULL,
  `Grants_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Grants`
--

INSERT INTO `Grants` (`Employee_ID`, `Name_of_Grant`, `Project_Title`, `Project_ID`, `Grant_End_Date`, `Grant_Start_Date`, `Grants_deleted`) VALUES
('MOM05690', 'grant1', 'project1', '1234', '1/1/2022', '1/2/2022', 0),
('one111', 'grant2', 'project12', '5667', '4/5/2022', '4/6/2022', 0);

-- --------------------------------------------------------

--
-- Table structure for table `IHI`
--

CREATE TABLE `IHI` (
  `Employee_ID` varchar(50) NOT NULL,
  `Completion_of_Emodules` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `IHI_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Involvement`
--

CREATE TABLE `Involvement` (
  `Involvement_Type` varchar(50) NOT NULL,
  `Employee_ID` varchar(50) NOT NULL,
  `Event` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Start_Date` varchar(50) NOT NULL,
  `End_Date` varchar(50) NOT NULL,
  `Involvement_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `personaldetailscsv`
--

CREATE TABLE `personaldetailscsv` (
  `COL 1` varchar(11) DEFAULT NULL,
  `COL 2` varchar(7) DEFAULT NULL,
  `COL 3` varchar(19) DEFAULT NULL,
  `COL 4` varchar(15) DEFAULT NULL,
  `COL 5` varchar(20) DEFAULT NULL,
  `COL 6` varchar(16) DEFAULT NULL,
  `COL 7` varchar(13) DEFAULT NULL,
  `COL 8` varchar(10) DEFAULT NULL,
  `COL 9` varchar(11) DEFAULT NULL,
  `COL 10` varchar(27) DEFAULT NULL,
  `COL 11` varchar(17) DEFAULT NULL,
  `COL 12` varchar(12) DEFAULT NULL,
  `COL 13` varchar(13) DEFAULT NULL,
  `COL 14` varchar(6) DEFAULT NULL,
  `COL 15` varchar(17) DEFAULT NULL,
  `COL 16` varchar(12) DEFAULT NULL,
  `COL 17` varchar(26) DEFAULT NULL,
  `COL 18` varchar(13) DEFAULT NULL,
  `COL 19` varchar(8) DEFAULT NULL,
  `COL 20` varchar(11) DEFAULT NULL,
  `COL 21` varchar(15) DEFAULT NULL,
  `COL 22` varchar(19) DEFAULT NULL,
  `COL 23` varchar(28) DEFAULT NULL,
  `COL 24` varchar(14) DEFAULT NULL,
  `COL 25` varchar(16) DEFAULT NULL,
  `COL 26` varchar(16) DEFAULT NULL,
  `COL 27` varchar(27) DEFAULT NULL,
  `COL 28` varchar(18) DEFAULT NULL,
  `COL 29` varchar(19) DEFAULT NULL,
  `COL 30` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personaldetailscsv`
--

INSERT INTO `personaldetailscsv` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`, `COL 16`, `COL 17`, `COL 18`, `COL 19`, `COL 20`, `COL 21`, `COL 22`, `COL 23`, `COL 24`, `COL 25`, `COL 26`, `COL 27`, `COL 28`, `COL 29`, `COL 30`) VALUES
('Employee_ID', 'MCR_No', 'Staff_Name', 'Designation', 'Programme', 'Year_of_Academic', 'Academic_Year', 'Department', 'Institution', 'Academic_Clinical_Programme', 'Employment_Status', 'Nationality', 'Date_of_Birth', 'Gender', 'Registration_Type', 'House_Blk_No', 'Street', 'Building_Name', 'Unit_No', 'Postal_Code', 'Contact_No_Work', 'Contact_No_Personal', 'Email_Official', 'Email_Personal', 'BCLS_Expiry_Date', 'ACLS_Expiry_Date', 'Covid_19_Vaccination_Status', 'Date_of_First_Dose', 'Date_of_Second_Dose', 'Vaccination_Remarks'),
('MOM12390', 'M11367A', 'Daniel Tyler', 'Senior Resident', 'Gastroenterology', 'SR2', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '11-Nov-1989', 'Male', 'Full', '', '11A Tanglin Hill', '', '', '248000', '92343980', '91391470', 'daniel.tyler@mohh.com.sg', '', '20-Jul-19', '29-Aug-19', 'Yes', '30-Mar-21', '20-Apr-21', ''),
('MOM05233', 'M16782H', 'Betty Li', 'Senior Resident', 'Gastroenterology', 'SR2', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singapore PR', '02-Sept-1987', 'Female', 'Full', '', '44B Jalan Anggerek', '', '', '369000', '', '81838980', 'betty.li@mohh.com.sg', '', '23-Mar-19', '11-Apr-19', 'Yes', '31-Mar-21', '21-Apr-21', ''),
('MOM07177', 'M65889A', 'Sally Pei', 'Senior Resident', 'Gastroenterology', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '13-Feb-1993', 'Female', 'Full', '', '83 Hazel Park Terrace', '', '#11-04  ', '678000', '', '91148250', 'sally.pei@mohh.com.sg', '', '10-Sept-20', '25-Oct-18', 'Yes', '27-Jan-21', '17-Feb-21', ''),
('MOM05609', 'M54354E', 'Rahul Rajaratnam', 'Senior Resident', 'Gastroenterology', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '28-Aug-1991', 'Male', 'Full', '', 'Block 111 Woodlands Ave 1', '', '#06-441', '730000', '90259920', '66181540', 'rahul.rajaratnam@mohh.com.sg', '', '27-Oct-16', '29-Oct-16', 'Yes', '17-Mar-21', '7-Apr-21', ''),
('MOM05690', 'M88791Z', 'Kang Hyun Bin', 'Senior Resident', 'Gastroenterology', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '05-Dec-1991', 'Male', 'Full', '', 'Lorong Gambir', '', '', '536000', '', '91515780', 'hyunbin.kang@mohh.com.sg', '', '', '', 'Yes', '9-Feb-21', '2-Mar-21', ''),
('MOM05579', 'M56829J', 'Ivanka Lee Xiao Wei', 'Senior Resident', 'Renal Medicine', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '20-Feb-1991', 'Female', 'Full', '', 'BLK 939 Jurong West St 73', '', '#09-429', '640000', '97424710', '67917320', 'ivanka.lee@mohh.com.sg', '', '', '18-Nov-21', 'Yes', '3-Feb-21', '25-Feb-21', ''),
('MOM04393', 'M83162D', 'Cindee Tan', 'Senior Resident', 'Renal Medicine', 'SR2', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Malaysian', '29-Feb-1988', 'Female', 'Conditional (L3)', '', 'Block 37D,Kreta Ayer Road', '', '#20-02', '803000', '', '96610520', 'cindee.tan@mohh.com.sg', '', '', '14-Nov-21', 'Yes', '11-Mar-21', '', ''),
('MOM05601', 'M33571G', 'Koh Zheng Tang', 'Senior Resident', 'Renal Medicine', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '21-Aug-1991', 'Male', 'Full', '', '111 Duchess Road', '', '', '269000', '88692800', '98290530', 'zhengtang.koh@mohh.com.sg', '', '', '25-Jul-21', 'Yes', '14-Jan-21', '4-Feb-21', ''),
('MOM06600', 'M35718D', 'Malcolm Tang', 'Senior Resident', 'Renal Medicine', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Myanmar', '25-Apr-1983', 'Male', 'Conditional (L3)', '', 'Blk 264D, Compass Vale Bow', '', '#07-30', '544000', '', '96303450', 'malcolm.tang@mohh.com.sg', '', '', '1-Sept-21', 'Yes', '3-Feb-21', '1-Mar-21', ''),
('MOM06313', 'M35589A', 'Koh Xiaojia Lynette', 'Senior Resident', 'Respiratory Medicine', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '23-Jul-1992', 'Female', 'Full', '', '700 Tampines Street 71 ', '', '#16-60 ', '520000', '97980650', '', 'lynette.koh@mohh.com.sg', '', '31-Aug-22', '15-Oct-22', 'Yes', '15-Jan-21', '10-Feb-21', ''),
('MOM05705', 'M66630D', 'Toh Jiahao Thomas', 'Senior Resident', 'Respiratory Medicine', 'SR1', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '01-Feb-1991', 'Male', 'Full', '', '19A Ford Avenue ', '', '#01-07 ', '268000', '88692870', ' 96269350', 'thomas.toh@mohh.com.sg', '', '25-Aug-21', '2-Sep-21', 'Yes', '', '17-Feb-21', ''),
('MOM05928', 'M45528I', 'Brendan Lee Potter', 'Senior Resident', 'Respiratory Medicine', 'SR2', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '20-Apr-1989', 'Male', 'Full', '', '72 Chu Yen Street ', '', '', '669000', '88098560', '', 'bryan.lee.potter@mohh.com.sg', '', '8-Oct-21', '18-Nov-21', 'Yes', '21-Jan-21', '16-Feb-21', ''),
('MOM05459', 'M65659J', 'Chen Youyi', 'Senior Resident', 'Respiratory Medicine', 'SR1', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '12-Dec-1989', 'Female', 'Full', '', '900 Joo Chiat Terrace ', '', '#05-08 ', '427000', '97688160', '', 'youyi.chen@mohh.com.sg', '', '22-Apr-21', '9-Jun-21', 'No', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

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
  `Personal_Details_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Personal_Details`
--

INSERT INTO `Personal_Details` (`Employee_ID`, `MCR_No`, `Staff_Name`, `Designation`, `Programme`, `Year_of_Training`, `Academic_Year`, `Department`, `Institution`, `Academic_Clinical_Programme`, `Employment_Status`, `Nationality`, `Date_of_Birth`, `Gender`, `Registration_Type`, `House_Blk_No`, `Street`, `Building_Name`, `Unit_No`, `Postal_Code`, `Contact_No_Work`, `Contact_No_Personal`, `Email_Official`, `Email_Personal`, `BCLS_Expiry_Date`, `ACLS_Expiry_Date`, `Covid_19_Vaccination_Status`, `Date_of_First_Dose`, `Date_of_Second_Dose`, `Vaccination_Remarks`, `Personal_Details_deleted`) VALUES
('MOM05690', 'M88791Z', 'Kang Hyun Bin', 'Senior Resident', 'Gastroenterology', 'SR3', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1991-12-05', 'Male', 'Full', '', 'Lorong Gambir', '', '', '536000', '', '91515780', 'hyunbin.kang@mohh.com.sg', '', NULL, NULL, 'Yes', '2021-02-09', '2021-03-02', '', 0),
('MOM12390', 'M11367A', 'Daniel Tyler', 'Senior Resident', 'Gastroenterology', 'SR2', '2022', 'Residency', 'MOHH', 'Medicine', 'Active', 'Singaporean', '1989-11-11', 'Male', 'Full', '', '11A Tanglin Hill', '', '', '248000', '92343980', '91391470', 'daniel.tyler@mohh.com.sg', '', '1919-07-20', '1919-04-29', 'Yes', '2021-03-30', '2021-04-20', '', 0),
('one111', '1A', 'lim', 'doctor', 'cardiology', '2010', '2010', 'cardiology', 'institution', 'academic clinical programme', 'employementstatus', 'nationality', '2008-11-11', 'Female', 'Registration_Type1', 'House_Blk_No', 'Street1', 'Building_Name1', 'Unit_No1', 'Postal_Code', 'Contact_No_Work1', 'Contact_No_Personal1', 'Email_Official1', 'Email_Personal1', '2008-11-11', '2008-11-11', 'Covid_19_Vaccination_Status1', '2008-11-11', '2008-11-11', 'Vaccination_Remarks', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Posting_History`
--

CREATE TABLE `Posting_History` (
  `Employee_ID` varchar(50) NOT NULL,
  `Posting_Institution` varchar(50) NOT NULL,
  `Posting_Department` varchar(50) NOT NULL,
  `Posting_StartDate` varchar(50) NOT NULL,
  `Posting_EndDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Presentations`
--

CREATE TABLE `Presentations` (
  `Employee_ID` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Project_ID` varchar(50) NOT NULL,
  `Conference_Name` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Presentation_Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Procedure_Log`
--

CREATE TABLE `Procedure_Log` (
  `Employee_ID` varchar(50) NOT NULL,
  `Procedure_Name` varchar(50) NOT NULL,
  `Date_of_Completion` varchar(50) NOT NULL,
  `CPT` varchar(50) NOT NULL,
  `Total` varchar(50) NOT NULL,
  `Performed` varchar(50) NOT NULL,
  `Observed` varchar(50) NOT NULL,
  `Verified` varchar(50) NOT NULL,
  `Certified` varchar(50) NOT NULL,
  `Procedure_Log_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Projects`
--

CREATE TABLE `Projects` (
  `Employee_ID` varchar(50) NOT NULL,
  `Project_Type` varchar(50) NOT NULL,
  `Project_Title` varchar(100) NOT NULL,
  `Project_ID` varchar(50) NOT NULL,
  `Start_Date` varchar(50) NOT NULL,
  `End_Date` varchar(50) NOT NULL,
  `Date_of_QI_Certification` varchar(50) DEFAULT NULL,
  `PMID` varchar(50) DEFAULT NULL,
  `Grants_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Projects`
--

INSERT INTO `Projects` (`Employee_ID`, `Project_Type`, `Project_Title`, `Project_ID`, `Start_Date`, `End_Date`, `Date_of_QI_Certification`, `PMID`, `Grants_deleted`) VALUES
('MOM12390', 'Qi', 'Creating an Intranet Site Showing Each Medical Departments Criteria for Inpatient Reviews', ' ', '2019', '2020', '', '', 0),
('MOM12390', '', '', '', '', '', '', '', 0),
('MOM05233', 'QI', 'Code Blue Documentation ', ' ', '2018', '2019', '', '', 0),
('MOM05233', '', '', '', '', '', '', '', 0),
('MOM07177', 'QI', 'Reducing the percentage of errors in discharge prescriptions in Ward 73', ' ', '2019', '2020', '', '', 0),
('MOM07177', 'QI', 'Improving Compliance of Medical Results Acknowledgement in CGH Gastroenterology Department ', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Publications`
--

CREATE TABLE `Publications` (
  `Employee_ID` varchar(50) NOT NULL,
  `Publication_Title` varchar(50) NOT NULL,
  `Journal_Title` varchar(50) NOT NULL,
  `PMID` varchar(50) NOT NULL,
  `Publication_Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Publications`
--

INSERT INTO `Publications` (`Employee_ID`, `Publication_Title`, `Journal_Title`, `PMID`, `Publication_Date`) VALUES
('one111', 'juice', 'juice box', '123', '2023-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `TrgExtRemHistory`
--

CREATE TABLE `TrgExtRemHistory` (
  `Employee_ID` varchar(100) DEFAULT ' ',
  `LOAPIP` varchar(100) DEFAULT NULL,
  `StartDate` varchar(50) DEFAULT NULL,
  `EndDate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TrgExtRemHistory`
--

INSERT INTO `TrgExtRemHistory` (`Employee_ID`, `LOAPIP`, `StartDate`, `EndDate`) VALUES
('one111', NULL, '2023-02-03 22:39:30', '2023-02-03 22:39:30'),
('one111', NULL, '2023-02-03 22:50:25', '2023-02-03 22:50:25'),
('one111', NULL, '2023-02-03 22:50:25', '2023-02-03 22:50:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Awards`
--
ALTER TABLE `Awards`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `Case_Log`
--
ALTER TABLE `Case_Log`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `Didactic_Attendance`
--
ALTER TABLE `Didactic_Attendance`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `Duty_Hour_Log`
--
ALTER TABLE `Duty_Hour_Log`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `Education_History`
--
ALTER TABLE `Education_History`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `Evaluations`
--
ALTER TABLE `Evaluations`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `Exam_History`
--
ALTER TABLE `Exam_History`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `Grants`
--
ALTER TABLE `Grants`
  ADD PRIMARY KEY (`Name_of_Grant`),
  ADD KEY `Employee_ID` (`Employee_ID`),
  ADD KEY `Project ID` (`Project_ID`);

--
-- Indexes for table `IHI`
--
ALTER TABLE `IHI`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `Involvement`
--
ALTER TABLE `Involvement`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `Personal_Details`
--
ALTER TABLE `Personal_Details`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `Posting_History`
--
ALTER TABLE `Posting_History`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `Presentations`
--
ALTER TABLE `Presentations`
  ADD KEY `Employee_ID` (`Employee_ID`),
  ADD KEY `Project ID` (`Project_ID`);

--
-- Indexes for table `Procedure_Log`
--
ALTER TABLE `Procedure_Log`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `Projects`
--
ALTER TABLE `Projects`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `Publications`
--
ALTER TABLE `Publications`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `TrgExtRemHistory`
--
ALTER TABLE `TrgExtRemHistory`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Awards`
--
ALTER TABLE `Awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `Personal_Details` (`Employee_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Exam_History`
--
ALTER TABLE `Exam_History`
  ADD CONSTRAINT `exam_history_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `Personal_Details` (`Employee_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Grants`
--
ALTER TABLE `Grants`
  ADD CONSTRAINT `grants_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `Personal_Details` (`Employee_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
