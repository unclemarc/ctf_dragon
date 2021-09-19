docker run \
  -d \
  --name=dragon-apache \
  -p 80:80 \
  -v /home/pi/lab/ctf_dragon/apache/volumes/flag/:/tmp/f \
  -v /home/pi/lab/ctf_dragon/apache/volumes/var-www/:/var/www \
  -v /home/pi/lab/ctf_dragon/apache/volumes/etc-apache2/:/etc/apache2 \
  -v /home/pi/lab/ctf_dragon/apache/volumes/cgi-bin:/usr/lib/cgi-bin \
  -v /home/pi/lab/ctf_dragon/apache/volumes/log:/var/log \
  dragon-apache

