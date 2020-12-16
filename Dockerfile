FROM ubuntu

RUN apt-get update && apt-get -y install python
RUN apt-get install -y python python-setuptools python-dev build-essential python3-pip
RUN pip3 install flask
RUN pip3 install flask-mysql

COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0

