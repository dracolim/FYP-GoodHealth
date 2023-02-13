
from __main__ import app,db
from flask import request, jsonify
from flask_sqlalchemy import SQLAlchemy

class Personal_Details(db.Model):
    __tablename__ = 'Personal_Details'
    Employee_ID = db.Column(db.String(50), primary_key=True)
    MCR_No = db.Column(db.String(50))
    Staff_Name = db.Column(db.String(50))
    Designation = db.Column(db.String(50))

    Programme = db.Column(db.String(50))
    Year_of_Training = db.Column(db.String(50))
    Academic_Year = db.Column(db.String(50))
    Department = db.Column(db.String(50))

    Institution = db.Column(db.String(50))
    Academic_Clinical_Programme = db.Column(db.String(50))
    Employment_Status = db.Column(db.String(50))
    Nationality = db.Column(db.String(50))
    Date_of_Birth = db.Column(db.String(50))

    Gender = db.Column(db.String(50))
    Registration_Type = db.Column(db.String(50))
    House_Blk_No = db.Column(db.String(50))
    Street = db.Column(db.String(50))
    Building_Name = db.Column(db.String(50))
    Unit_No = db.Column(db.String(50))
    Postal_Code = db.Column(db.String(50))
    Contact_No_Work = db.Column(db.String(50))
    Contact_No_Personal = db.Column(db.String(50))

    Email_Official = db.Column(db.String(50))
    Email_Personal = db.Column(db.String(50))
    BCLS_Expiry_Date = db.Column(db.String(50))
    ACLS_Expiry_Date = db.Column(db.String(50))
    Covid_19_Vaccination_Status = db.Column(db.String(50))
    Date_of_First_Dose = db.Column(db.String(50))
    Date_of_Second_Dose = db.Column(db.String(50))
    Vaccination_Remarks = db.Column(db.String(50))

    presentations = db.relationship('Presentations', backref='Personal_Details')
    posting_histories = db.relationship('Posting_History', backref='Personal_Details')
    duty_hour_logs = db.relationship('Duty_Hour_Log', backref='Personal_Details')
    case_logs = db.relationship('Case_Log', backref='Personal_Details')
    procedure_logs = db.relationship('Procedure_Log', backref='Personal_Details')
    exam_histories = db.relationship('Exam_History', backref='Personal_Details')
    publications = db.relationship('Publications', backref='Personal_Details')
    evaluations = db.relationship('Evaluations', backref='Personal_Details')
    trgExtRem_Histories = db.relationship('TrgExtRem_History', backref='Personal_Details')
    projects = db.relationship('Projects', backref='Personal_Details')
    awards = db.relationship('Awards', backref='Personal_Details')
    grants = db.relationship('Grants', backref='Personal_Details')
    ihis = db.relationship('IHI', backref='Personal_Details')
    involvements = db.relationship('Involvement', backref='Personal_Details')


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

    
