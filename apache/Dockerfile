FROM navikey/raspbian-buster

RUN apt-get -y update 
RUN apt-get -y update --fix-missing 
RUN apt-get -y install apache2
RUN a2enmod cgi

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
