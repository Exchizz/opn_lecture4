FROM ubuntu
RUN apt update && apt install apache2 curl -y 
ADD cgi/* /usr/lib/cgi-bin/
RUN chmod +x /usr/lib/cgi-bin/*

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.03.1-ce.tgz  && tar --strip-components=1 -xvzf docker-17.03.1-ce.tgz -C /usr/local/bin
RUN a2enmod cgi
EXPOSE 80
CMD chmod 777 /var/run/docker.sock && apachectl -D FOREGROUND
