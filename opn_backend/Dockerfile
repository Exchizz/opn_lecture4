FROM ubuntu
RUN apt update && apt install apache2 curl jq -y 
ADD cgi/* /usr/lib/cgi-bin/
RUN chmod +x /usr/lib/cgi-bin/*

RUN a2enmod cgi
EXPOSE 80
CMD apachectl -D FOREGROUND
