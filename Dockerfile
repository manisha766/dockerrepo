FROM python:2.7-alpine

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

copy . .
 
LABEL maintainer "Manisha docker file "

CMD flask run --host=0.0.0.0 --port=5000


