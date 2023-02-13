from __main__ import app,db
from flask import request, jsonify
from flask_sqlalchemy import SQLAlchemy

class procedure_log(db.Model):
    __tablename__ = 'procedure_log'

    MCR_No = db.Column(db.String(100), primary_key=True)
    Procedure_Name = db.Column(db.String(100))
    Date_of_Completion = db.Column(db.String(100))
    CPT = db.Column(db.String(100))
    Total = db.Column(db.String(100))
    Performed = db.Column(db.String(100))
    Observed = db.Column(db.String(100), primary_key=True)
    Verified = db.Column(db.String(100))
    Certified = db.Column(db.String(100))

    __mapper_args__ = {
        'polymorphic_identity': 'didactic_attendance'
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