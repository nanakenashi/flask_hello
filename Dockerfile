FROM python:3.5.2-alpine

ARG project_dir=/web/hello/

ADD hello.py $project_dir
ADD requirements.txt $project_dir

WORKDIR $project_dir
RUN pip install -r requirements.txt

RUN apk update
RUN apk add zsh vim tmux git tig
