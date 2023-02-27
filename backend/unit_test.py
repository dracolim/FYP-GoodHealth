import unittest
import pytest
# from app import db, app
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS
from flask import Flask
# , Duty_Hour_Log
# from __main__ import app,db

class TestDutyHourLogRole(unittest.TestCase):
    def test_to_dict(self):
        from app import Duty_Hour_Log
        jr1 = Duty_Hour_Log(
            Level= "2",
            Logged_for_month= "Yes",
            MCR_No= "M54354E",
            MMYYYY= "12/2022",
            Submitted= "3",
            Submitted_Proportion= "0.5",
            id= 1
            )
        self.assertEqual(jr1.to_dict(), {
            "Level": "2",
            "Logged_for_month": "Yes",
            "MCR_No": "M54354E",
            "MMYYYY": "12/2022",
            "Submitted": "3",
            "Submitted_Proportion": "0.5",
            "id": 1
        }
        )


class TestPresentations(unittest.TestCase):
    def test_to_dict(self):
        from app import Presentations
        jr1 = Presentations(
            MCR_No = "1234o19",
            Conference_Name = "Conference_Name111",
            Country = "Country111",
            Presentation_Date = "Presentation_Date111",
            Project_ID = "Project_ID444",
            Title = "Title111",
            Type = "Type111",
            )
        self.assertEqual(jr1.to_dict(), {
            "MCR_No":"1234o19",
            "Title":"Title111",
            "Conference_Name":"Conference_Name111",
            "Type":"Type111",
            "Project_ID":"Project_ID444",
            "Country":"Country111",
            "Presentation_Date":"Presentation_Date111",
            "id": None
            }
        )




class TestPostingHistory(unittest.TestCase):
    def test_to_dict(self):
        from app import Posting_History
        jr1 = Posting_History(
            MCR_No= "M11367A",
            Posting_Department= "Cardio",
            Posting_EndDate= "Sep-17",
            Posting_Institution= "NHC",
            Posting_StartDate= "Jul-17",
            id= 1
            )
        self.assertEqual(jr1.to_dict(), {
            "MCR_No": "M11367A",
            "Posting_Department": "Cardio",
            "Posting_EndDate": "Sep-17",
            "Posting_Institution": "NHC",
            "Posting_StartDate": "Jul-17",
            "id": 1
            }
        )



class TestCaseLogs(unittest.TestCase):
    def test_to_dict(self):
        from app import Case_Log
        jr1 = Case_Log(
            CPT= "Null",
            Case_Name= "AKI - Case Log",
            Certified= "No",
            Date_of_Log= "3/2/2022",
            MCR_No= "M11367A",
            Observed= "8",
            Performed= "2",
            Subspecialty= "gastro",
            Total= "10",
            Type_of_Case_Log= "inpatient",
            Verified= "",
            id= 1
            )
        self.assertEqual(jr1.to_dict(), {
            "CPT": "Null",
            "Case_Name": "AKI - Case Log",
            "Certified": "No",
            "Date_of_Log": "3/2/2022",
            "MCR_No": "M11367A",
            "Observed": "8",
            "Performed": "2",
            "Subspecialty": "gastro",
            "Total": "10",
            "Type_of_Case_Log": "inpatient",
            "Verified": "",
            "id": 1
            }
        )

class TestExamHistory(unittest.TestCase):
    def test_to_dict(self):
        from app import Exam_History
        jr1 = Exam_History(
            Date_of_Attempt= "Sep-16",
            Exam_Status= "Pass",
            MCR_No= "M11367A",
            Name_of_Exam= "MRCP Part 1",
            id= 1
            )
        self.assertEqual(jr1.to_dict(), {
            "Date_of_Attempt": "Sep-16",
            "Exam_Status": "Pass",
            "MCR_No": "M11367A",
            "Name_of_Exam": "MRCP Part 1",
            "id": 1
            }
        )


class TestPublications(unittest.TestCase):
    def test_to_dict(self):
        from app import Publications
        jr1 = Publications(
            Journal_Title= "",
            MCR_No= "M11367A",
            PMID= "",
            Publication_Date= "",
            Publication_Title= "",
            id= 1
            )
        self.assertEqual(jr1.to_dict(), {
            "Journal_Title": "",
            "MCR_No": "M11367A",
            "PMID": "",
            "Publication_Date": "",
            "Publication_Title": "",
            "id": 1
            }
        )

class TestEvaluations(unittest.TestCase):
    def test_to_dict(self):
        from app import Evaluations
        jr1 = Evaluations(
            Answer= "5 (5)",
            Evaluator= "Dr. Chan, Webber Pak Wo",
            MCR_No= "M11367A",
            Name_of_Evaluation_Form= "ABC",
            Question_Number= "2",
            Rotation_Period= "7/1/2022-7/31/2022",
            Score= "4",
            Service= "SHS-GASTRO:BASIC ENDO-SGH",
            Year_of_Training= "2022",
            id= 1
            )
        self.assertEqual(jr1.to_dict(), {
            "Answer": "5 (5)",
            "Evaluator": "Dr. Chan, Webber Pak Wo",
            "MCR_No": "M11367A",
            "Name_of_Evaluation_Form": "ABC",
            "Question_Number": "2",
            "Rotation_Period": "7/1/2022-7/31/2022",
            "Score": "4",
            "Service": "SHS-GASTRO:BASIC ENDO-SGH",
            "Year_of_Training": "2022",
            "id": 1
            }
        )

class TestTrgextremhistory(unittest.TestCase):
    def test_to_dict(self):
        from app import TrgExtRem_History
        jr1 = TrgExtRem_History(
            EndDate= "05-Jan-2021",
            LOAPIP= "LOA",
            MCR_No= "M11367A",
            StartDate= "01-Oct-2020",
            id= 1
            
            )
        self.assertEqual(jr1.to_dict(), {
            "EndDate": "05-Jan-2021",
            "LOAPIP": "LOA",
            "MCR_No": "M11367A",
            "StartDate": "01-Oct-2020",
            "id": 1
            }
        )

class TestProjects(unittest.TestCase):
    def test_to_dict(self):
        from app import Projects
        jr1 = Projects(
            Date_of_QI_Certification= "",
            End_Date= "2020",
            MCR_No= "M11367A",
            PMID= "",
            Project_ID= " ",
            Project_Title= "Creating an Intranet Site Showing Each Medical Departments Criteria for Inpatient Reviews",
            Project_Type= "Qi",
            Start_Date= "2019",
            id= 1
            )
        self.assertEqual(jr1.to_dict(), {
            "Date_of_QI_Certification": "",
            "End_Date": "2020",
            "MCR_No": "M11367A",
            "PMID": "",
            "Project_ID": " ",
            "Project_Title": "Creating an Intranet Site Showing Each Medical Departments Criteria for Inpatient Reviews",
            "Project_Type": "Qi",
            "Start_Date": "2019",
            "id": 1
            }
        )
        
class TestAwards(unittest.TestCase):
    def test_to_dict(self):
        from app import Awards
        jr1 = Awards(
            Award_Category= "",
            Date_of_Award_Received= "2016",
            FY_of_Award_Received= "",
            MCR_No= "M16782H",
            Name_of_Award= "Antibiotic stewardship award",
            Project_ID= "",
            id= 2
            )
        self.assertEqual(jr1.to_dict(), {
            "Award_Category": "",
            "Date_of_Award_Received": "2016",
            "FY_of_Award_Received": "",
            "MCR_No": "M16782H",
            "Name_of_Award": "Antibiotic stewardship award",
            "Project_ID": "",
            "id": 2
            }
        )
        
class TestDidacticAttendace(unittest.TestCase):
    def test_to_dict(self):
        from app import Didactic_Attendance
        jr1 = Didactic_Attendance(
            Compliance_or_Not= "Yes",
            MCR_No= "M11367A",
            MmYyyy= "07/2022",
            Month= "July",
            Number_of_sessions_attended= "14",
            Percentage_of_sessions_attended= "1",
            Total_tracked_sessions= "14",
            id= 1
            )
        self.assertEqual(jr1.to_dict(), {
            "Compliance_or_Not": "Yes",
            "MCR_No": "M11367A",
            "MmYyyy": "07/2022",
            "Month": "July",
            "Number_of_sessions_attended": "14",
            "Percentage_of_sessions_attended": "1",
            "Total_tracked_sessions": "14",
            "id": 1
            }
        )
        
class TestEducationHistory(unittest.TestCase):
    def test_to_dict(self):
        from app import Education_History
        jr1 = Education_History(
            Basic_Qualification= "MBBS",
            Country_of_Graduation= "United Kingdom",
            Date_of_Graduation= "July",
            IM_Residency_End_Date= "1/7/2020",
            IM_Residency_Start_Date= "3/7/2017",
            MCR_No= "M11367A",
            Medical_School= "Imperial College",
            PG_Year= "8",
            SR_Residency_End_Date= "6-Oct-23",
            SR_Residency_Programme= "Gastroenterology",
            SR_Residency_Start_Date= "2-Jul-20",
            Year_of_Graduation= "2014",
            id= 1
            )
        self.assertEqual(jr1.to_dict(), {
            "Basic_Qualification": "MBBS",
            "Country_of_Graduation": "United Kingdom",
            "Date_of_Graduation": "July",
            "IM_Residency_End_Date": "1/7/2020",
            "IM_Residency_Start_Date": "3/7/2017",
            "MCR_No": "M11367A",
            "Medical_School": "Imperial College",
            "PG_Year": "8",
            "SR_Residency_End_Date": "6-Oct-23",
            "SR_Residency_Programme": "Gastroenterology",
            "SR_Residency_Start_Date": "2-Jul-20",
            "Year_of_Graduation": "2014",
            "id": 1
            }
        )
        
class TestGrants(unittest.TestCase):
    def test_to_dict(self):
        from app import Grants
        jr1 = Grants(
            Grant_End_Date= "1/1/2022",
            Grant_Start_Date= "1/2/2022",
            MCR_No= "M65659J",
            Name_of_Grant= "grant1",
            Project_ID= "1234",
            Project_Title= "project1",
            id= 1
            )
        self.assertEqual(jr1.to_dict(), {
            "Grant_End_Date": "1/1/2022",
            "Grant_Start_Date": "1/2/2022",
            "MCR_No": "M65659J",
            "Name_of_Grant": "grant1",
            "Project_ID": "1234",
            "Project_Title": "project1",
            "id": 1
            }
        )
        
class TestIHI(unittest.TestCase):
    def test_to_dict(self):
        from app import IHI
        jr1 = IHI(
            Completion_of_Emodules= "Yes",
            Date= "07/07/2023",
            MCR_No= "M11367A",
            id= 1
            )
        self.assertEqual(jr1.to_dict(), {
            "Completion_of_Emodules": "Yes",
            "Date": "07/07/2023",
            "MCR_No": "M11367A",
            "id": 1
            }
        )
        
class TestProcedureLogs(unittest.TestCase):
    def test_to_dict(self):
        from app import Procedure_Log
        jr1 = Procedure_Log(
            Certified= "-",
            Date_of_Completion= "01/01/2022",
            MCR_No= "M11367A",
            Observed= "-",
            Performed= "150",
            Procedure_Name= "Gastroscopy (OGD)",
            Programme= "Gastroenterology",
            Total= "-",
            Verified= "-",
            Year_of_Training= "SR2",
            id= 1
            )
        self.assertEqual(jr1.to_dict(), {
            "Certified": "-",
            "Date_of_Completion": "01/01/2022",
            "MCR_No": "M11367A",
            "Observed": "-",
            "Performed": "150",
            "Procedure_Name": "Gastroscopy (OGD)",
            "Programme": "Gastroenterology",
            "Total": "-",
            "Verified": "-",
            "Year_of_Training": "SR2",
            "id": 1
            }
        )
        



if __name__ == "__main__":
    unittest.main()