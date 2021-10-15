FROM ubuntu:latest

RUN apt update
RUN apt -y install software-properties-common curl apt-transport-https ca-certificates gnupg
RUN add-apt-repository ppa:ondrej/php
RUN apt update
RUN apt -y install nginx
RUN apt -y install php7.4
RUN apt -y install php7.4-fpm
RUN apt -y install php7.4-cli php7.4-common php7.4-gd php7.4-mysql php7.4-mbstring php7.4-bcmath php7.4-xml php7.4-curl php7.4-zip curl zip unzip tar make gcc g++ python python-dev curl gnupg make gcc g++ apt-transport-https ca-certificates curl gnupg2 software-properties-common mcrypt libapache2-mod-php7.4 php7.4-xmlrpc php7.4-intl php7.4-ldap php7.4-imagick php7.4-json

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
