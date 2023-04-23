import unittest
import flask_testing
import pytest
import json
from app import app, db, Personal_Details, Case_Log
from integration_test_PersonalDetails import TestApp

class TestApp(flask_testing.TestCase):
    app.config['SQLALCHEMY_DATABASE_URI'] = "sqlite://"
    app.config['SQLALCHEMY_ENGINE_OPTIONS'] = {}
    app.config['TESTING'] = True

    def create_app(self):
        return app

    def setUp(self):
        db.create_all()

    def tearDown(self):
        db.session.remove()
        db.drop_all()


# Read Personal_Details:
class TestCaseLog(TestApp):

    def test_create_personal_details(self):
        personal_details_data = [{
      "ACLS_Expiry_Date": "2019-08-29 00:00:00",
      "Academic_Clinical_Programme": "Medicine",
      "Academic_Year": "2022",
      "BCLS_Expiry_Date": "2019-07-20 00:00:00",
      "Building_Name": "",
      "Contact_No_Personal": "95351470",
      "Contact_No_Work": "92767980",
      "Covid_19_Vaccination_Status": "Yes",
      "Date_of_Birth": "1989-11-11 00:00:00",
      "Date_of_First_Dose": "2021-03-30 00:00:00",
      "Date_of_Second_Dose": "2021-04-20 00:00:00",
      "Department": "Residency",
      "Designation": "Junior Resident",
      "Email_Official": "noob_doc@mohh.com.sg",
      "Email_Personal": "",
      "Employee_ID": "MOM11116",
      "Employee_Image": "",
      "Employment_Status": "Active",
      "Gender": "Male",
      "House_Blk_No": "",
      "Institution": "MOHH",
      "MCR_No": "M11166J",
      "Nationality": "Singaporean",
      "Postal_Code": "243400",
      "Programme": "Internal Medicine",
      "Registration_Type": "Full",
      "Staff_Name": "Noob Doc",
      "Street": "11A Lalalala Hill",
      "Unit_No": "",
      "Vaccination_Remarks": "",
      "Year_of_Training": "R1"
    }]

        for data in personal_details_data:
            person1 = Personal_Details(**data)
            db.session.add(person1)
            db.session.commit()

        response = self.client.get("/personaldetail")
        self.assertEqual(response.status_code, 200)
        print(f"response.json: {response.json}")
        self.assertEqual(response.json,{
    "data": [
        {
      "ACLS_Expiry_Date": "2019-08-29 00:00:00",
      "Academic_Clinical_Programme": "Medicine",
      "Academic_Year": "2022",
      "BCLS_Expiry_Date": "2019-07-20 00:00:00",
      "Building_Name": "",
      "Contact_No_Personal": "95351470",
      "Contact_No_Work": "92767980",
      "Covid_19_Vaccination_Status": "Yes",
      "Date_of_Birth": "1989-11-11 00:00:00",
      "Date_of_First_Dose": "2021-03-30 00:00:00",
      "Date_of_Second_Dose": "2021-04-20 00:00:00",
      "Department": "Residency",
      "Designation": "Junior Resident",
      "Email_Official": "noob_doc@mohh.com.sg",
      "Email_Personal": "",
      "Employee_ID": "MOM11116",
      "Employee_Image": "",
      "Employment_Status": "Active",
      "Gender": "Male",
      "House_Blk_No": "",
      "Institution": "MOHH",
      "MCR_No": "M11166J",
      "Nationality": "Singaporean",
      "Postal_Code": "243400",
      "Programme": "Internal Medicine",
      "Registration_Type": "Full",
      "Staff_Name": "Noob Doc",
      "Street": "11A Lalalala Hill",
      "Unit_No": "",
      "Vaccination_Remarks": "",
      "Year_of_Training": "R1"
    }
        
    ]})

    def test_read_all_case_log(self):

        all_presentations_data = [
        {
      "CPT": "Null",
      "Case_Name": "AKI - Case Log",
      "Certified": "No",
      "Date_of_Log": "3/2/2022",
      "MCR_No": "M11367A",
      "Observed": "8",
      "Performed": "2",
      "Total": "10",
      "Type_of_Case_Log": "inpatient",
      "Verified": ""
    }
    ]
        for data in all_presentations_data:
            presentation = Case_Log(**data)
            db.session.add(presentation)
            db.session.commit()

        response = self.client.get("/case_log")
        self.assertEqual(response.status_code, 200)
        print(f"created presentation response.json: {response.json}")
        self.assertEqual(response.json,{
        "data": [
        {
      "CPT": "Null",
      "Case_Name": "AKI - Case Log",
      "Certified": "No",
      "Date_of_Log": "3/2/2022",
      "MCR_No": "M11367A",
      "Observed": "8",
      "Performed": "2",
      "Total": "10",
      "Type_of_Case_Log": "inpatient",
      "Verified": "",
      "id": 1
    }
    ]})
        



if __name__ == '__main__':
    unittest.main()