docker run \
  -d \
  --name dragon-ssh \
  --ip 192.168.42.243 \
  -p 192.168.42.243:22:22 \
  -v /home/pi/lab/ctf_dragon/ssh_test/volumes/princess:/usr/local/share/princess \
  -v /home/pi/lab/ctf_dragon/ssh_test/volumes/flag2:/tmp/f/vault \
  dragon-ssh

