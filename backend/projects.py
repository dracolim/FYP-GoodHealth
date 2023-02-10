from __main__ import app,db
from flask import request, jsonify
from flask_sqlalchemy import SQLAlchemy

class Project(db.Model):
    __tablename__ = 'Projects'

    MCR_No = db.Column(db.String(100), primary_key=True)
    Project_ID = db.Column(db.String(100))
    Project_Type = db.Column(db.String(100))
    Project_Title = db.Column(db.String(100))
    Start_Date = db.Column(db.String(100))
    End_Date = db.Column(db.String(100))
    Date_of_QI_Certification = db.Column(db.String(100))
    PMID = db.Column(db.String(100))

    __mapper_args__ = {
        'polymorphic_identity': 'Projects'
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