from __main__ import app,db
from flask import request, jsonify
from flask_sqlalchemy import SQLAlchemy

class Procedure_Log(db.Model):
    __tablename__ = 'Procedure_Log'
    id = db.Column(db.INTEGER, primary_key=True, autoincrement=True)
    MCR_No = db.Column(db.String(100),  db.ForeignKey(
        'Personal_Details.MCR_No'))
    Procedure_Name = db.Column(db.String(100))
    Date_of_Completion = db.Column(db.String(100))
    Total = db.Column(db.String(100))
    Performed = db.Column(db.String(100))
    Observed = db.Column(db.String(100))
    Verified = db.Column(db.String(100))
    Certified = db.Column(db.String(100))

    __mapper_args__ = {
        'polymorphic_identity': 'Procedure_Log'
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