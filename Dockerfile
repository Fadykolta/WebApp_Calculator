FROM python:alpine

WORKDIR /usr/scr/app

COPY requirements.txt /usr/scr/app/

RUN pip3 install -r requirements.txt

COPY . /usr/scr/app/



CMD [ "python3", "./app.py", "format.py", "keep_alive.py", "runserver", "0.0.0.0:3000" ]
