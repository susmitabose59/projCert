FROM  devopsedu/webapp

MAINTAINER SusmitaBose59

RUN apt-get update -y

RUN rm -rf /var/www/html/*
COPY website /var/www/html

EXPOSE 8080

CMD apachectl -D FOREGROUND
