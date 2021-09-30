FROM navikey/raspbian-buster

RUN apt-get -y update --fix-missing
RUN apt-get -y install openssh-server 
RUN useradd princess -m -d /home/princess
RUN echo "princess:ogrefan" | chpasswd
RUN mkdir /var/run/sshd
RUN useradd grimwald -m -d /home/grimwald
RUN echo "grimwald:verycomplex2112" | chpasswd
RUN mkdir /home/grimwald/.ssh
COPY note_from_grimwald.txt /home/grimwald/
RUN chmod 666 /home/grimwald/note_from_grimwald.txt
COPY grimwald.pub /home/grimwald/.ssh/authorized_keys
RUN chown -R grimwald:grimwald /home/grimwald/.ssh
RUN chmod 700 /home/grimwald/.ssh
RUN chmod 600 /home/grimwald/.ssh/authorized_keys
COPY sshd_config /etc/ssh/
RUN mkdir /usr/local/share/princess
RUN chmod 755 /usr/local/share/princess
RUN mkdir /tmp/f
RUN chown root:root /tmp/f
RUN chmod 600 /tmp/f

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

