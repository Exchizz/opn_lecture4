FROM ubuntu
RUN apt update && apt install  curl nginx fcgiwrap -y 
ADD nginx/nginx.conf /etc/nginx/fcgiwrap.conf
ADD nginx/default /etc/nginx/sites-enabled/default

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.03.1-ce.tgz  && tar --strip-components=1 -xvzf docker-17.03.1-ce.tgz -C /usr/local/bin
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80
CMD chmod 777 /var/run/docker.sock && service fcgiwrap start && nginx
