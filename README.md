# GoodHealth

# Setting Up Project

## Main Dependencies used:
Flask
Flask SQLAlchemy
Flask CORS
pandas
WAMP (Windows) / Mamp (Mac) - which can be downloaded from https://www.mamp.info/en/windows/ (for MAMP) or https://www.wampserver.com/en/ (for wamp)


## Steps to set up WAMP for windows:
Username: root
Password is empty


## Steps to set up MAMP for Mac:
Username: root
Password: root
Turn on WAMP/MAMP till you see a green light.
Load SingHealth.sql file from project folder into phpMyAdmin


## Setting up the environment

Navigate to Project directory:
```cd Project```

Install the packages by running these commands one by one:
```python3 -m venv env```

```source env/bin/activate```

```pip install -r requirements.txt```
Following this command, successful packages installed should be as shown in `img/successful_pip_installation.png`
If any package such as pandas or flask cannot be installed, screenshot and let us know. 

Run backend/app.py under flask folder with commands: 
```python backend/app.py```
Should start flask app running as shown in `img/flask_successful_running.png`

http://localhost:5010/:
similar to image homepage.png found in imgs folder.

http://127.0.0.1:5010/personaldetails:
similar to image imgs/personaldetails_result.png

and this data should be seen:
{
  "data": {
      "ACLS_Expiry_Date": null,
      "Academic_Clinical_Programme": "Medicine",
      "Academic_Year": "2022",
      "BCLS_Expiry_Date": null,
      "Building_Name": "",
      "Contact_No_Personal": "91515780",
      "Contact_No_Work": "",
      "Covid_19_Vaccination_Status": "Yes",
      "Date_of_Birth": "Thu, 05 Dec 1991 00:00:00 GMT",
      "Date_of_First_Dose": "Tue, 09 Feb 2021 00:00:00 GMT",
      "Date_of_Second_Dose": "Tue, 02 Mar 2021 00:00:00 GMT",
      "Department": "Residency",
      "Designation": "Senior Resident",
      "Email_Official": "hyunbin.kang@mohh.com.sg",
      "Email_Personal": "",
      "Employee_id": "MOM05690",
      "Employment_Status": "Active",
      "Gender": "Male",
      "House_Blk_No": "",
      "Institution": "MOHH",
      "MCR_No": "M88791Z",
      "Nationality": "Singaporean",
      "Personal_Details_deleted": false,
      "Postal_Code": "536000",
      "Programme": "Gastroenterology",
      "Registration_Type": "Full",
      "Staff_Name": "Kang Hyun Bin",
      "Street": "Lorong Gambir",
      "Unit_No": "",
      "Vaccination_Remarks": "",
      "Year_of_Training": "SR3"
    },...]}


If any issues occur, please attach screenshots of the error and let us know. Thank you. :)
## THE END
