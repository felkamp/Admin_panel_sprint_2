FROM python:3

ARG config=dev
ARG workdir=/opt/app

RUN mkdir -p $workdir
ADD requirements/ $workdir/requirements
WORKDIR $workdir

RUN pip3 install -r requirements/$config.txt
ADD . /opt/app

RUN useradd -ms /bin/bash app && chown -R app /opt/app
USER app

RUN mkdir $workdir/staticfiles
