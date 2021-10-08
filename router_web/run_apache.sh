docker run \
  -d \
  --name router-apache \
  --ip 192.168.42.1 \
  -p 192.168.42.1:80:80 \
  -v /home/pi/lab/ctf_dragon/router_web/volumes/var-www/:/var/www/html \
  -v /home/pi/lab/ctf_dragon/router_web/volumes/log:/var/log/apache2 \
  router-apache

