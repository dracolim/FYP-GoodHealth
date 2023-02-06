from flask import Flask, request, jsonify, render_template
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS
import json
import pandas as pd

app = Flask(__name__)
# # Mac user ====================================================================
# app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+mysqlconnector://root:' + \
#                                         '@localhost:3306/SingHealth'
# # =============================================================================


# # Windows user -------------------------------------------------------------------
# # app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+mysqlconnector://root:root' + \
# #                                         '@localhost:3306/SingHealth'
# # --------------------------------------------------------------------------------
# app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
# app.config['SQLALCHEMY_ENGINE_OPTIONS'] = {'pool_size': 100,
#                                         'pool_recycle': 280}

# db = SQLAlchemy(app)

# CORS(app)

app = Flask(__name__)
app.app_context().push()

if __name__ == '__main__':
    # Mac user -------------------------------------------------------------------
    app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+mysqlconnector://root:root' + \
                                            '@localhost:3306/SingHealth'
    # --------------------------------------------------------------------------------

    # # Windows user -------------------------------------------------------------------
    # app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+mysqlconnector://root:root' + \
    #                                         '@localhost:3306/SingHealth'
    # app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    # app.config['SQLALCHEMY_ENGINE_OPTIONS'] = {'pool_size': 100,
    #                                         'pool_recycle': 280}
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = "sqlite://"

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

CORS(app)

# from Didactic_Attendance import Didactic_Attendance
# from Duty_Hour_Log import Duty_Hour_Log
# from Personal_Details import Personal_Details


class Personal_Details(db.Model):
    __tablename__ = 'Personal_Details'
    Employee_id = db.Column(db.String(100), primary_key=True)
    MCR_No = db.Column(db.String(100))
    Staff_Name = db.Column(db.String(100))
    Designation = db.Column(db.String(100))

    Programme = db.Column(db.String(100))
    Year_of_Training = db.Column(db.String(100))
    Academic_Year = db.Column(db.Integer)
    Department = db.Column(db.String(100))

    Institution = db.Column(db.String(100))
    Academic_Clinical_Programme = db.Column(db.String(100))
    Employment_Status = db.Column(db.String(100))
    Nationality = db.Column(db.String(100))
    Date_of_Birth = db.Column(db.DateTime)

    Gender = db.Column(db.String(100))
    Registration_Type = db.Column(db.String(100))
    House_Blk_No = db.Column(db.String(100))
    Street = db.Column(db.String(100))
    Building_Name = db.Column(db.String(100))
    Unit_No = db.Column(db.String(100))
    Postal_Code = db.Column(db.Integer)
    Contact_No_Work = db.Column(db.Integer)
    Contact_No_Personal = db.Column(db.Integer)

    Email_Official = db.Column(db.String(100))
    Email_Personal = db.Column(db.String(100))
    BCLS_Expiry_Date = db.Column(db.DateTime)
    ACLS_Expiry_Date = db.Column(db.DateTime)
    Covid_19_Vaccination_Status = db.Column(db.String(100))
    Date_of_First_Dose = db.Column(db.DateTime)
    Date_of_Second_Dose = db.Column(db.DateTime)
    Vaccination_Remarks = db.Column(db.String(100))
    Personal_Details_deleted = db.Column(db.Boolean(), default=False, nullable=False)

    __mapper_args__ = {
        'polymorphic_identity': 'Personal_Details'
    }

    def to_dict(self):
        """
        'to_dict' converts the object into a dictionary,
        in which the keys correspond to database columns
        """
        columns = self.__mapper__.column_attrs.keys()
        print(f"columns: {columns}")
        result = {}
        for column in columns:
            result[column] = getattr(self, column)
        return result


class Duty_Hour_Log(db.Model):
    __tablename__ = 'Duty_Hour_Log'
    Employee_id = db.Column(db.String(100), primary_key=True)
    Level = db.Column(db.String(100))
    Submitted = db.Column(db.String(100))
    Submitted_Proportion = db.Column(db.String(100))
    MMYYYY = db.Column(db.String(100))
    Logged_for_month = db.Column(db.String(100))
    Duty_Hour_Log_deleted = db.Column(db.Boolean(), default=False, nullable=False)

    __mapper_args__ = {
        'polymorphic_identity': 'Posting_History'
    }

    def to_dict(self):
        """
        'to_dict' converts the object into a dictionary,
        in which the keys correspond to database columns
        """
        columns = self.__mapper__.column_attrs.keys()
        print(f"columns: {columns}")
        result = {}
        for column in columns:
            result[column] = getattr(self, column)
        return result




# class Projects(db.Model):
#     __tablename__ = 'Projects'

#     Project_ID= db.Column(db.String(100), primary_key=True)
#     Employee_id = db.Column(db.String(100),  db.ForeignKey('PersonalDetails.Employee_id'))
#     Project_Type = db.Column(db.String(100))

#     Project_Title = db.Column(db.String(100))
#     StartDate = db.Column(db.DateTime)
#     EndDate = db.Column(db.DateTime)
#     PMID = db.Column(db.String(100))
#     Projects_deleted = db.Column(db.Boolean(), default=False, nullable=False)


#     __mapper_args__ = {
#         'polymorphic_identity': 'Projects'
#     }

#     def to_dict(self):
#         """
#         'to_dict' converts the object into a dictionary,
#         in which the keys correspond to database columns
#         """
#         columns = self.__mapper__.column_attrs.keys()
#         print(f"columns: {columns}")
#         result = {}
#         for column in columns:
#             result[column] = getattr(self, column)
#         return result

# # Read Existing personaldetails (R)
# @app.route("/projects")
# def read_projects():
#     pdList = Projects.query.all()
#     # print (pdList,'oierjngosenrboaeir!!!!!!!!!!!!!!!!!!!!!!OSJNWOJN')
#     return jsonify(
#         {
#             "data": [pd.to_dict()
#                     for pd in pdList]
#         }
#     ), 200

    
#Read PersonalDetails field/column name (R)
@app.route('/', methods=['GET'])
def display():
    return render_template('homepage2.html')

class Awards(db.Model):
    __tablename__ = 'Awards'
    Award_ID = db.Column(db.String(100))
    Employee_id = db.Column(db.String(100), primary_key=True)
    Award_Category = db.Column(db.String(100))
    Name_of_Award = db.Column(db.String(100))

    FY_of_Award_Received = db.Column(db.String(100))
    Date_of_Award_Received = db.Column(db.DateTime)
    Project_ID_Ref = db.Column(db.String(100))

    __mapper_args__ = {
        'polymorphic_identity': 'Awards'
    }

    def to_dict(self):
        """
        'to_dict' converts the object into a dictionary,
        in which the keys correspond to database columns
        """
        columns = self.__mapper__.column_attrs.keys()
        print(f"columns: {columns}")
        result = {}
        for column in columns:
            result[column] = getattr(self, column)
        return result


class ExamHistory(db.Model):
    __tablename__ = 'ExamHistory'
    Exam_ID = db.Column(db.String(100))
    Employee_id = db.Column(db.String(100), primary_key=True)
    Name_of_Exam = db.Column(db.String(100))
    Date_of_Attempts = db.Column(db.String(100))
    Exam_Status = db.Column(db.String(100))

    __mapper_args__ = {
        'polymorphic_identity': 'ExamHistory'
    }

    def to_dict(self):
        """
        'to_dict' converts the object into a dictionary,
        in which the keys correspond to database columns
        """
        columns = self.__mapper__.column_attrs.keys()
        print(f"columns: {columns}")
        result = {}
        for column in columns:
            result[column] = getattr(self, column)
        return result


class Grants(db.Model):
    __tablename__ = 'Grants'
    Grant_ID = db.Column(db.String(100))
    Employee_id = db.Column(db.String(100), primary_key=True)
    Name_of_Grant = db.Column(db.String(100))
    Project_Title = db.Column(db.String(100))
    Project_ID = db.Column(db.String(100))
    Grant_End_Date = db.Column(db.DateTime)

    __mapper_args__ = {
        'polymorphic_identity': 'Grants'
    }

    def to_dict(self):
        """
        'to_dict' converts the object into a dictionary,
        in which the keys correspond to database columns
        """
        columns = self.__mapper__.column_attrs.keys()
        print(f"columns: {columns}")
        result = {}
        for column in columns:
            result[column] = getattr(self, column)
        return result


class Involvement(db.Model):
    __tablename__ = 'Involvement'
    Involvement_No = db.Column(db.Integer)
    Involvement_Type = db.Column(db.String(100))
    Employee_id = db.Column(db.String(100), primary_key=True)
    Event = db.Column(db.String(100))
    Role = db.Column(db.String(100))
    Start_Date = db.Column(db.DateTime)
    End_Date = db.Column(db.DateTime)

    __mapper_args__ = {
        'polymorphic_identity': 'Involvement'
    }

    def to_dict(self):
        """
        'to_dict' converts the object into a dictionary,
        in which the keys correspond to database columns
        """
        columns = self.__mapper__.column_attrs.keys()
        result = {}
        for column in columns:
            result[column] = getattr(self, column)
        return result

# https://fsymbols.com/generators/tarty/
# ============================
# █▀█ █▀▀ █▀█ █▀ █▀█ █▄░█ ▄▀█ █░░   █▀▄ █▀▀ ▀█▀ ▄▀█ █ █░░ █▀
# █▀▀ ██▄ █▀▄ ▄█ █▄█ █░▀█ █▀█ █▄▄   █▄▀ ██▄ ░█░ █▀█ █ █▄▄ ▄█
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================
# Read Existing personaldetails (R)
@app.route("/personaldetails")
def read_personaldetails():
    pdList = Personal_Details.query.all()
    return jsonify(
        {
            "data": [pd.to_dict()
                    for pd in pdList]
        }
    ), 200

# Read PersonalDetails field/column name (R)
@app.route('/personal_details_fields', methods=['GET'])
def get_personal_details_fields():
    fields = {}
    for column in Personal_Details.__table__.columns:
        fields[column.name] = str(column.type)
    return jsonify(fields)

# Add personaldetails
@app.route('/add_personal_detail', methods=['POST'])
def create_personal_detail():
    data = request.get_json()
    print(data)
    if not all(key in data.keys() for key in ('Employee_id', 'MCR_No', "Staff_Name" , "Designation" , "Programme",
                "Year_of_Training" , "Academic_Year" , "Department" , "Institution" , 
                "Academic_Clinical_Programme" , "Employment_Status" , "Nationality" ,"Date_of_Birth" , "Gender",
                "Registration_Type", "House_Blk_No" , "Street" , "Building_Name" , "Unit_No" , "Postal_Code" ,"Contact_No_Work",
                "Contact_No_Personal", "Email_Official" ,"Email_Personal", "BCLS_Expiry_Date","ACLS_Expiry_Date",
                "Covid_19_Vaccination_Status" , "Date_of_First_Dose" ,"Date_of_Second_Dose" ,"Vaccination_Remarks"
                )):
        return jsonify({
            "message": "Incorrect JSON object provided."
        }), 500
    personalDetails = Personal_Details(**data)
    try:
        db.session.add(personalDetails)
        db.session.commit()
        return jsonify(personalDetails.to_dict()), 201
    except Exception:
        return jsonify({
            "message": "Unable to commit to database."
        }), 500


# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █ █▄░█ █░█ █▀█ █░░ █░█ █▀▀ █▀▄▀█ █▀▀ █▄░█ ▀█▀
# █ █░▀█ ▀▄▀ █▄█ █▄▄ ▀▄▀ ██▄ █░▀░█ ██▄ █░▀█ ░█░
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================
# Read Existing involvement (R)
@app.route("/involvement")
def read_involvement():
    involvementList = Involvement.query.all()
    return jsonify(
        {
            "data": [pd.to_dict()
                     for pd in involvementList]
        }
    ), 200
# Read Involvement field/column name (R)


@app.route('/involvement_fields', methods=['GET'])
def get_involvement_fields():
    fields = {}
    for column in Involvement.__table__.columns:
        fields[column.name] = str(column.type)
    return jsonify(fields)
# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █░█ █ █▀ ▀█▀ █▀█ █▀█ █▄█ ▄▄ █▀▀ █▀▄ █░█ █▀▀ ▄▀█ ▀█▀ █ █▀█ █▄░█
# █▀█ █ ▄█ ░█░ █▄█ █▀▄ ░█░ ░░ ██▄ █▄▀ █▄█ █▄▄ █▀█ ░█░ █ █▄█ █░▀█
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================


# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █░█ █ █▀ ▀█▀ █▀█ █▀█ █▄█ ▄▄ █▀█ █▀█ █▀ ▀█▀ █ █▄░█ █▀▀
# █▀█ █ ▄█ ░█░ █▄█ █▀▄ ░█░ ░░ █▀▀ █▄█ ▄█ ░█░ █ █░▀█ █▄█
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================


# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █░█ █ █▀ ▀█▀ █▀█ █▀█ █▄█ ▄▄ █▀▀ ▀▄▀ ▄▀█ █▀▄▀█
# █▀█ █ ▄█ ░█░ █▄█ █▀▄ ░█░ ░░ ██▄ █░█ █▀█ █░▀░█
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================


# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================


# ============================
# █▀▀ ▀▄▀ ▄▀█ █▀▄▀█   █░█ █ █▀ ▀█▀ █▀█ █▀█ █▄█
# ██▄ █░█ █▀█ █░▀░█   █▀█ █ ▄█ ░█░ █▄█ █▀▄ ░█░
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================

# Read Existing ExamHistory (R)
@app.route("/examhistory")
def read_examhistory():
    examhistoryList = ExamHistory.query.all()
    return jsonify(
        {
            "data": [pd.to_dict()
                     for pd in examhistoryList]
        }
    ), 200

# Read ExamHistory field/column name (R)
@app.route('/exam_history_fields', methods=['GET'])
def get_exam_history_fields():
    fields = {}
    for column in ExamHistory.__table__.columns:
        fields[column.name] = str(column.type)
    return jsonify(fields)

# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █░█ █ █▀ ▀█▀ █▀█ █▀█ █▄█ ▄▄ ▀█▀ █▀▀ █▀█
# █▀█ █ ▄█ ░█░ █▄█ █▀▄ ░█░ ░░ ░█░ ██▄ █▀▄
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================


# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █▀▀ █▀█ ▄▀█ █▄░█ ▀█▀ █▀
# █▄█ █▀▄ █▀█ █░▀█ ░█░ ▄█
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================
# Read Existing grants (R)
@app.route("/grants")
def read_grants():
    grantsList = Grants.query.all()
    return jsonify(
        {
            "data": [pd.to_dict()
                     for pd in grantsList]
        }
    ), 200

# Read Grants field/column name (R)
@app.route('/grants_fields', methods=['GET'])
def get_grants_fields():
    fields = {}
    for column in Grants.__table__.columns:
        fields[column.name] = str(column.type)
    return jsonify(fields)

# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# ▄▀█ █░█░█ ▄▀█ █▀█ █▀▄ █▀
# █▀█ ▀▄▀▄▀ █▀█ █▀▄ █▄▀ ▄█
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================
# Read Existing awards (R)


@app.route("/awards")
def read_awards():
    awardsList = Awards.query.all()
    return jsonify(
        {
            "data": [pd.to_dict()
                     for pd in awardsList]
        }
    ), 200

# Read Awards field/column name (R)
@app.route('/awards_fields', methods=['GET'])
def get_awards_fields():
    fields = {}
    for column in Awards.__table__.columns:
        fields[column.name] = str(column.type)
    return jsonify(fields)
# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █▀▄ █ █▀▄ ▄▀█ █▀▀ ▀█▀ █ █▀▀   ▄▀█ ▀█▀ ▀█▀ █▀▀ █▄░█ █▀▄ ▄▀█ █▄░█ █▀▀ █▀▀
# █▄▀ █ █▄▀ █▀█ █▄▄ ░█░ █ █▄▄   █▀█ ░█░ ░█░ ██▄ █░▀█ █▄▀ █▀█ █░▀█ █▄▄ ██▄
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================

# # Read Awards field/column name (R)
# @app.route('/didactic_attendance', methods=['GET'])
# def get_didactic_attendance():
#     daList = Didactic_Attendance.query.all()
#     return jsonify(
#         {
#             "data": [pd.to_dict()
#                      for pd in daList]
#         }
#     ), 200


# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █▀█ █░█ █▄▄ █░░ █ █▀▀ ▄▀█ ▀█▀ █ █▀█ █▄░█ █▀
# █▀▀ █▄█ █▄█ █▄▄ █ █▄▄ █▀█ ░█░ █ █▄█ █░▀█ ▄█
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================


# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █▀█ █▀█ █▀█ ░░█ █▀▀ █▀▀ ▀█▀ █▀
# █▀▀ █▀▄ █▄█ █▄█ ██▄ █▄▄ ░█░ ▄█
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================


# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █ █░█ █
# █ █▀█ █
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================


# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █▀▄ █░█ ▀█▀ █▄█   █░█ █▀█ █░█ █▀█   █░░ █▀█ █▀▀
# █▄▀ █▄█ ░█░ ░█░   █▀█ █▄█ █▄█ █▀▄   █▄▄ █▄█ █▄█
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================


# Read Awards field/column name (R)
@app.route('/duty_hour_log', methods=['GET'])
def get_duty_hour_log():
    dutyList = Duty_Hour_Log.query.all()
    return jsonify(
        {
            "data": [pd.to_dict()
                     for pd in dutyList]
        }
    ), 200

# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █▀█ █▀█ █▀█ █▀▀ █▀▀ █▀▄ █░█ █▀█ █▀▀
# █▀▀ █▀▄ █▄█ █▄▄ ██▄ █▄▀ █▄█ █▀▄ ██▄
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================


# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █▀▀ ▄▀█ █▀ █▀▀   █░░ █▀█ █▀▀
# █▄▄ █▀█ ▄█ ██▄   █▄▄ █▄█ █▄█
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================


# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================

# ============================
# █▀▀ █░█ ▄▀█ █░░ █░█ ▄▀█ ▀█▀ █ █▀█ █▄░█
# ██▄ ▀▄▀ █▀█ █▄▄ █▄█ █▀█ ░█░ █ █▄█ █░▀█
# █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
# ▄█ ░█░ █▀█ █▀▄ ░█░
# ============================


# ============================
# █▀▀ █▄░█ █▀▄
# ██▄ █░▀█ █▄▀
# ============================
db.create_all()

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5010, debug=True)
