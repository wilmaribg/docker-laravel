FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR .

RUN \
  apt update && \
  apt upgrade -y && \
  apt install software-properties-common -y && \
  apt install vim -y && \
  apt install curl -y && \
  apt install wget -y && \
  add-apt-repository ppa:ondrej/php && \
  apt install php7.3 -y && \
  curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
  apt install git -y  && \
  apt install php7.3-zip -y  && \
  apt install php7.3-xml -y  && \
  apt install php7.3-mbstring -y  && \
  composer global require laravel/installer  

EXPOSE 80
EXPOSE 443
EXPOSE 8000

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

COPY ./ops /ops