from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS
import json

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
    print("herrr")
    app.config['SQLALCHEMY_DATABASE_URI'] = "sqlite://"

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

CORS(app)

from PersonalDetails import PersonalDetails
from Duty_Hour_Log import Duty_Hour_Log
from Publications import Publications
from Presentation import Presentation

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
        print(f"columns: {columns}")
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
    pdList = PersonalDetails.query.all()
    return jsonify(
        {
            "data": [pd.to_dict()
                    for pd in pdList]
        }
    ), 200

#Read PersonalDetails field/column name (R)
@app.route('/personal_details_fields', methods=['GET'])
def get_personal_details_fields():
    fields = {}
    for column in PersonalDetails.__table__.columns:
        fields[column.name] = str(column.type)
    return jsonify(fields)

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
#Read Involvement field/column name (R)
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

#Read ExamHistory field/column name (R)
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

#Read Grants field/column name (R)
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

#Read Awards field/column name (R)
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
# FOR PRESENTATIONS AND PUBLICATION AS BOTH NEEDED TO DISPLAY SCHOLARLY ACTIVITY CHART

# PUBLICATION
# Read PUBLICATION by year
@app.route("/publication/<year>", methods=['GET'])
def get_publication_by_year(year):
    publication_List = Publications.query.all()
    publication_year_list = []
    for i in publication_List:
        if year == i.to_dict()["Publication_Date"][:4]:
            publication_year_list.append(i)
    return jsonify(
        {
            "data": [pd.to_dict()
                    for pd in publication_year_list]
        }
    ), 200

#Read PUBLICATION by MCR No. and year(R)
@app.route("/publication/<mcr>/<year>", methods=['GET'])
def get_publication_mcr_year(mcr, year):
    publication_List = Publications.query.filter_by(MCR_No=mcr).all()
    publication_year_list = []
    for i in publication_List:
        if year == i.to_dict()["Publication_Date"][:4]:
            publication_year_list.append(i)

    return jsonify(
        {
            "data": [pd.to_dict()
                    for pd in publication_year_list]
        }
    ), 200

# PRESENTATION 
# Read PRESENTATION by year
@app.route("/presentation/<year>", methods=['GET'])
def get_presentation_by_year(year):
    presentation_List = Presentation.query.all()
    presentation_year_list = []
    for i in presentation_List:
        if year == i.to_dict()["Presentation_Date"][:4]:
            presentation_year_list.append(i)
    return jsonify(
        {
            "data": [pd.to_dict()
                    for pd in presentation_year_list]
        }
    ), 200

#Read PRESENTATION by MCR No. and year(R)
@app.route("/presentation/<mcr>/<year>", methods=['GET'])
def get_presentation_mcr_year(mcr, year):
    presentation_List = Presentation.query.filter_by(MCR_No=mcr).all()
    presentation_year_list = []
    for i in presentation_List:
        if year == i.to_dict()["Presentation_Date"][:4]:
            presentation_year_list.append(i)

    return jsonify(
        {
            "data": [pd.to_dict()
                    for pd in presentation_year_list]
        }
    ), 200





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


#Read duty hour log (R)
@app.route('/duty_hour_log', methods=['GET'])
def get_duty_hour_log():
    dutyList = Duty_Hour_Log.query.all()
    return jsonify(
        {
            "data": [pd.to_dict()
                    for pd in dutyList]
        }
    ), 200

#Read duty hour log by year(R)
@app.route("/duty_hour_log/<year>", methods=['GET'])
def get_duty_log_by_year(year):
    duty_hour_log_List = Duty_Hour_Log.query.all()
    duty_hour_log_year_list = []
    for i in duty_hour_log_List:
        if year == i.to_dict()["MMYYYY"][-4:]:
            duty_hour_log_year_list.append(i)
    return jsonify(
        {
            "data": [pd.to_dict()
                    for pd in duty_hour_log_year_list]
        }
    ), 200

#Read duty hour log by MCR No. (R)
@app.route("/duty_hour_log/<mcr>", methods=['GET'])
def get_duty_log_by_employeeid(mcr):
    duty_hour_log_List = Duty_Hour_Log.query.filter_by(MCR_No=mcr).all()
    print(duty_hour_log_List)
    return jsonify(
        {
            "data": [pd.to_dict()
                    for pd in duty_hour_log_List]
        }
    ), 200

#Read duty hour log by MCR No. and year(R)
@app.route("/duty_hour_log/<mcr>/<year>", methods=['GET'])
def get_duty_log_by_employeeid_year(mcr, year):
    duty_hour_log_List = Duty_Hour_Log.query.filter_by(MCR_No=mcr).all()
    duty_hour_log_year_list = []
    for i in duty_hour_log_List:
        if year == i.to_dict()["MMYYYY"][-4:]:
            duty_hour_log_year_list.append(i)
    # print(duty_hour_log_year_list)
    # print("next")

    return jsonify(
        {
            "data": [pd.to_dict()
                    for pd in duty_hour_log_year_list]
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