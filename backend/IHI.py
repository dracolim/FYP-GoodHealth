from __main__ import app,db
from flask import request, jsonify
from flask_sqlalchemy import SQLAlchemy

class ihi(db.Model):
    __tablename__ = 'IHI'

    MCR_No = db.Column(db.String(100), primary_key=True)
    Staff_Name = db.Column(db.String(100))
    Designation = db.Column(db.String(100))
    Department = db.Column(db.String(100))
    Institution = db.Column(db.String(100))
    Completion_of_Emodules = db.Column(db.String(100))
    Date = db.Column(db.String(100), primary_key=True)

    __mapper_args__ = {
        'polymorphic_identity': 'IHI'
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