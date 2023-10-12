# BASE
FROM python:3.12-slim as base
# install gcc
RUN apt-get update \
	&& apt-get -y install gcc \
	&& rm -rf /var/lib/apt/lists/* 
