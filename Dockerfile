FROM ubuntu
MAINTAINER nono
RUN apt update 
RUN apt install nginx git -y 
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git  /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
