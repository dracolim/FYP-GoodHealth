FROM python:3.9.13
# WORKDIR /app 
WORKDIR /mkdir/backend
# COPY . ./
COPY . ./
RUN pip install -r requirements.txt
RUN chgrp -R 0 /mkdir/backend && chmod -R g=u /mkdir/backend

EXPOSE 5011 
# CMD [ "flask" , "run" , "-h" , "0.0.0.0" ]
CMD [ "python" , "app.py" ]


