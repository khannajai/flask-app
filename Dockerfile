FROM tiangolo/uwsgi-nginx:python3.6-alpine3.7

LABEL maintainer="Jai Khanna jai41khanna@gmail.com"

COPY requirements.txt /tmp/
RUN pip install -U pip
RUN pip install -r /tmp/requirements.txt

COPY ./app /app