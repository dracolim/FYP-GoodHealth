from __main__ import app,db
from flask import request, jsonify
from flask_sqlalchemy import SQLAlchemy

class didactic_attendance(db.Model):
    __tablename__ = 'didactic_attendance'

    MCR_No = db.Column(db.String(100), primary_key=True)
    Billing_Name = db.Column(db.String(100))
    Month = db.Column(db.String(100))
    Total_Tracked_Sessions = db.Column(db.String(100))
    Number_Sessions_Attended = db.Column(db.String(100))
    Percentage_Sessions_Attended = db.Column(db.String(100))
    MMYYYY = db.Column(db.String(100), primary_key=True)
    Posting_Institution = db.Column(db.String(100))
    Posting_Department = db.Column(db.String(100))
    Compliance_or_Not = db.Column(db.String(100))
    Didactic_Attendance_Deleted = db.Column(db.Boolean)

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