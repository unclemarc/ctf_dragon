FROM navikey/raspbian-buster

RUN apt-get -y update --fix-missing
RUN apt-get -y install openssh-server 
RUN useradd admin -m -d /home/admin
RUN echo "admin:oraclesucks" | chpasswd
RUN mkdir /var/run/sshd
COPY sshd_config /etc/ssh/

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

