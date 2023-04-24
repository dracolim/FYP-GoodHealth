import unittest
import flask_testing
import pytest
import json
from app import app, db, Personal_Details, Posting_History
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
class TestPostingHistory(TestApp):

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

    # def test_read_all_posting_history(self):

    #     all_presentations_data = [
    #     {
    #         "MCR_No": "M11166J",
    #         "Posting_Department": "Cardio",
    #         "Posting_EndDate": "Sep-17",
    #         "Posting_Institution": "NHC",
    #         "Posting_StartDate": "Jul-17",
    #         "id": 1
    #         }
    # ]
    #     for data in all_presentations_data:
    #         presentation = Posting_History(**data)
    #         db.session.add(presentation)
    #         db.session.commit()

    #     response = self.client.get("/history_posting")
    #     self.assertEqual(response.status_code, 200)
    #     print(f"created presentation response.json: {response.json}")
    #     self.assertEqual(response.json,{
    #     "data": [
    #     {
    #         "Conference_Name": "Conference_Name111",
    #         "Country": "Country111",
    #         "MCR_No": "M11166J",
    #         "Presentation_Date": "Presentation_Date111",
    #         "Project_ID": "Project_ID111",
    #         "Title": "Title111",
    #         "Type": "Type111",
    #         "id": 1
    #     }
    # ]})
        

#     def test_add_presentation_to_valid_mcr_no(self):

#         personal_details_data = [{
#       "ACLS_Expiry_Date": "2019-08-29 00:00:00",
#       "Academic_Clinical_Programme": "Medicine",
#       "Academic_Year": "2022",
#       "BCLS_Expiry_Date": "2019-07-20 00:00:00",
#       "Building_Name": "",
#       "Contact_No_Personal": "95351470",
#       "Contact_No_Work": "92767980",
#       "Covid_19_Vaccination_Status": "Yes",
#       "Date_of_Birth": "1989-11-11 00:00:00",
#       "Date_of_First_Dose": "2021-03-30 00:00:00",
#       "Date_of_Second_Dose": "2021-04-20 00:00:00",
#       "Department": "Residency",
#       "Designation": "Junior Resident",
#       "Email_Official": "noob_doc@mohh.com.sg",
#       "Email_Personal": "",
#       "Employee_ID": "MOM11116",
#       "Employee_Image": "",
#       "Employment_Status": "Active",
#       "Gender": "Male",
#       "House_Blk_No": "",
#       "Institution": "MOHH",
#       "MCR_No": "M11166J",
#       "Nationality": "Singaporean",
#       "Postal_Code": "243400",
#       "Programme": "Internal Medicine",
#       "Registration_Type": "Full",
#       "Staff_Name": "Noob Doc",
#       "Street": "11A Lalalala Hill",
#       "Unit_No": "",
#       "Vaccination_Remarks": "",
#       "Year_of_Training": "R1"
#     }]

#         for data in personal_details_data:
#             person1 = Personal_Details(**data)
#             db.session.add(person1)
#             db.session.commit()

#         all_presentations_data = [
#         {
#             "Conference_Name": "Conference_Name111",
#             "Country": "Country111",
#             "MCR_No": "M11166J",
#             "Presentation_Date": "Presentation_Date111",
#             "Project_ID": "Project_ID111",
#             "Title": "Title111",
#             "Type": "Type111"
#         }
#     ]

#         response = self.client.post("/add_presentation",
#                                     data=json.dumps(all_presentations_data[0]),
#                                     content_type='application/json')
#         print(response.json)
#         self.assertEqual(response.status_code, 201)
#         self.assertEqual(response.json, 
#               {'Conference_Name': 
#                'Conference_Name111', 
#                'Country': 'Country111', 
#                'MCR_No': 'M11166J', 
#                'Presentation_Date': 
#                'Presentation_Date111', 
#                'Project_ID': 'Project_ID111', 
#                'Title': 'Title111', 
#                'Type': 'Type111', 
#                'id': 1})

        
#     def test_add_presentation_to_invalid_mcr_no(self):

#         all_presentations_data = [
#         {
#             "Conference_Name": "Conference_Name111",
#             "Country": "Country111",
#             "MCR_No": "M11166K",
#             "Presentation_Date": "Presentation_Date111",
#             "Project_ID": "Project_ID111",
#             "Title": "Title111",
#             "Type": "Type111"
#         }
#     ]

#         response = self.client.post("/add_presentation",
#                                     data=json.dumps(all_presentations_data[0]),
#                                     content_type='application/json')
#         self.assertEqual(response.status_code, 404)



if __name__ == '__main__':
    unittest.main()