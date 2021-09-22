FROM navikey/raspbian-buster

RUN apt-get -y update --fix-missing
RUN apt-get -y install openssh-server
RUN useradd princess -m -d /home/princess
RUN echo "princess:password" | chpasswd
RUN mkdir /var/run/sshd
RUN useradd grimwald -m -d /home/grimwald
RUN echo "grimwald:verycomplex2112" | chpasswd
RUN mkdir /home/grimwald/.ssh
COPY grimwald.pub /home/grimwald/.ssh/authorized_keys
RUN chown -R grimwald:grimwald /home/grimwald/.ssh
RUN chmod 700 /home/grimwald/.ssh
RUN chmod 600 /home/grimwald/.ssh/authorized_keys
COPY sshd_config /etc/ssh/
EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

