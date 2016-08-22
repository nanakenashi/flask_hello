FROM python:3.5.2-alpine

ARG project_dir=/web/hello/

ADD hello.py $project_dir
ADD requirements.txt $project_dir

WORKDIR $project_dir
RUN pip install -r requirements.txt

ENV FLASK_APP hello.py
CMD flask run -h 0.0.0.0 -p $PORT
