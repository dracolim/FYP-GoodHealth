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
            MCR_No = "1234o19",
            Level = "4",
            Logged_for_month = "Yes",
            MMYYYY = "Mar-20",
            Submitted = "3",
            Submitted_Proportion = "1"
            )
        self.assertEqual(jr1.to_dict(), {
            "Level": "4",
            "Logged_for_month": "Yes",
            "MCR_No": "1234o19",
            "MMYYYY": "Mar-20",
            "Submitted": "3",
            "Submitted_Proportion": "1",
            "id": None
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
            MCR_No = "1234o19",
            Posting_Department = "Posting_Department111",
            Posting_EndDate = "Posting_EndDate111",
            Posting_Institution = "Posting_Institution222",
            Posting_StartDate = "Posting_StartDate111"
            )
        self.assertEqual(jr1.to_dict(), {
            "MCR_No": "1234o19",
            "Posting_Department": "Posting_Department111",
            "Posting_EndDate": "Posting_EndDate111",
            "Posting_Institution": "Posting_Institution222",
            "Posting_StartDate": "Posting_StartDate111",
            "id": None
            }
        )



class TestCaseLogs(unittest.TestCase):
    def test_to_dict(self):
        from app import Case_Log
        jr1 = Case_Log(
            MCR_No = "1234o19",
            CPT = "",
            Case_Name = "Case_Name1",
            Certified = "",
            Date_of_Log = "",
            Observed = "",
            Performed = "",
            Subspecialty = "",
            Total = "",
            Type_of_Case_Log = "",
            Verified = ""
            )
        self.assertEqual(jr1.to_dict(), {
            "CPT": "",
            "Case_Name": "Case_Name1",
            "Certified": "",
            "Date_of_Log": "",
            "MCR_No": "1234o19",
            "Observed": "",
            "Performed": "",
            "Subspecialty": "",
            "Total": "",
            "Type_of_Case_Log": "",
            "Verified": "",
            "id": None
            }
        )

class TestExamHistory(unittest.TestCase):
    def test_to_dict(self):
        from app import Exam_History
        jr1 = Exam_History(
            MCR_No = "1234o19",
            Date_of_Attempt = "Date_of_Attempt111",
            Exam_Status = "Exam_Status111",
            Name_of_Exam = "Name_of_Exam111"
            )
        self.assertEqual(jr1.to_dict(), {
            "Date_of_Attempt": "Date_of_Attempt111",
            "Exam_Status": "Exam_Status111",
            "MCR_No": "1234o19",
            "Name_of_Exam": "Name_of_Exam111",
            "id": None
            }
        )


class TestPublications(unittest.TestCase):
    def test_to_dict(self):
        from app import Publications
        jr1 = Publications(
            MCR_No = "1234o19",
            Journal_Title = "juice box",
            PMID = "123",
            Publication_Date = "2023-01-03",
            Publication_Title = "juice",
            )
        self.assertEqual(jr1.to_dict(), {
            "Journal_Title": "juice box",
            "MCR_No": "1234o19",
            "PMID": "123",
            "Publication_Date": "2023-01-03",
            "Publication_Title": "juice",
            "id": None
            }
        )

class TestEvaluations(unittest.TestCase):
    def test_to_dict(self):
        from app import Evaluations
        jr1 = Evaluations(
            MCR_No = "1234o19",
            Answer = "",
            Evaluator = "",
            Name_of_Evaluation_Form = "",
            Question_Number = "",
            Rotation_Period = "",
            Score = "",
            Service = "",
            Year_of_Training = "",
            )
        self.assertEqual(jr1.to_dict(), {
            "Answer": "",
            "Evaluator": "",
            "MCR_No": "1234o19",
            "Name_of_Evaluation_Form": "",
            "Question_Number": "",
            "Rotation_Period": "",
            "Score": "",
            "Service": "",
            "Year_of_Training": "",
            "id": None
            }
        )

class TestTrgextremhistory(unittest.TestCase):
    def test_to_dict(self):
        from app import TrgExtRem_History
        jr1 = TrgExtRem_History(
            MCR_No = "1234o19",
            EndDate = "2023-02-03 22:50:25",
            LOAPIP = None,
            StartDate = "2023-02-03 22:50:25",
            
            )
        self.assertEqual(jr1.to_dict(), {
             "EndDate": "2023-02-03 22:50:25",
            "LOAPIP": None,
            "MCR_No": "1234o19",
            "StartDate": "2023-02-03 22:50:25",
            "id": None
            }
        )

class TestProjects(unittest.TestCase):
    def test_to_dict(self):
        from app import Projects
        jr1 = Projects(
            MCR_No = "1234o19",
            Date_of_QI_Certification = "",
            End_Date = "",
            PMID = "",
            Project_ID = "",
            Project_Title = "",
            Project_Type = "",
            Start_Date = "",
            )
        self.assertEqual(jr1.to_dict(), {
            "Date_of_QI_Certification": "",
            "End_Date": "",
            "MCR_No": "1234o19",
            "PMID": "",
            "Project_ID": "",
            "Project_Title": "",
            "Project_Type": "",
            "Start_Date": "",
            "id": None
            }
        )


if __name__ == "__main__":
    unittest.main()