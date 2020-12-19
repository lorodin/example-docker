FROM ubuntu:20.04

RUN apt-get update -y 
RUN apt-get upgrade -y
RUN apt-get install nginx -y && apt install curl -y
COPY ./app/index.html /var/www/html/index.html
