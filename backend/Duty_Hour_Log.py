
# from __main__ import app,db
# from flask import request, jsonify
# from flask_sqlalchemy import SQLAlchemy

# class Duty_Hour_Log(db.Model):
#     __tablename__ = 'c'
#     Employee_id = db.Column(db.String(100), primary_key=True)
#     Level = db.Column(db.String(100))
#     Submitted = db.Column(db.String(100))
#     Submitted_Proportion = db.Column(db.String(100))
#     MMYYYY = db.Column(db.String(100))
#     Logged_for_month = db.Column(db.String(100))
#     Duty_Hour_Log_deleted = db.Column(db.Boolean(), default=False, nullable=False)

#     __mapper_args__ = {
#         'polymorphic_identity': 'Posting_History'
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