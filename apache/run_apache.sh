docker run \
  -d \
  --name dragon-apache \
  --ip 192.168.42.242 \
  -p 192.168.42.242:80:80 \
  -v /home/pi/lab/ctf_dragon/apache/volumes/flag/:/tmp/f \
  -v /home/pi/lab/ctf_dragon/apache/volumes/var-www/:/var/www/html \
  -v /home/pi/lab/ctf_dragon/apache/volumes/cgi-bin:/usr/lib/cgi-bin \
  -v /home/pi/lab/ctf_dragon/apache/volumes/log:/var/log/apache2 \
  dragon-apache

