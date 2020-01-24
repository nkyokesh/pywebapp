FROM ubuntu:18.04
LABEL maintainer="nkyokesh@gmail.com"
ENV REFRESHED_AT 2020-24-01

RUN apt-get -qq update && apt-get -qqy install python
RUN pip install flask

RUN mkdir -p /flaskapp

EXPOSE 80
