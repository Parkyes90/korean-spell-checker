FROM ubuntu:18.04

RUN apt-get update -y --fix-missing
RUN apt-get install -y python3.8 python3-pip python3.8-dev build-essential libhunspell-1.6-0 libhunspell-dev

RUN python3.8 -m pip install pip
RUN python3.8 -m pip install pipenv
COPY Pipfile* /tmp/

RUN cd /tmp && pipenv lock --requirements > requirements.txt

RUN python3.8 -m pip install -r /tmp/requirements.txt

WORKDIR '/app'

COPY . .




