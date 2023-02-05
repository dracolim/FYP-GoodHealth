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
        # import Duty_Hour_Log1
        
        # from Duty_Hour_Log import Duty_Hour_Log
        from app import Duty_Hour_Log
        jr1 = Duty_Hour_Log(
            Duty_Hour_Log_deleted = False,
            Employee_id = "MOM12390",
            Level = "4",
            Logged_for_month = "Yes",
            MMYYYY = "Mar-20",
            Submitted = "3",
            Submitted_Proportion = "0.5"
            )
        self.assertEqual(jr1.to_dict(), {
            "Duty_Hour_Log_deleted": False,
            "Employee_id": "MOM12390",
            "Level": "4",
            "Logged_for_month": "Yes",
            "MMYYYY": "Mar-20",
            "Submitted": "3",
            "Submitted_Proportion": "0.5"
        }
        )
        # assert("onde", "one")

if __name__ == "__main__":
    unittest.main()