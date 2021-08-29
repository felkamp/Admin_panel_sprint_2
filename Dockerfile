FROM python:3
RUN mkdir -p /opt/app
ADD requirements/ /opt/app/requirements
WORKDIR /opt/app

RUN pip3 install -r requirements/dev.txt
ADD . /opt/app