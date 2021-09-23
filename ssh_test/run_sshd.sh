docker run \
  -d \
  --name=dragon-ssh \
  -p 2022:22 \
  -v /home/pi/lab/ctf_dragon/ssh_test/volumes/princess:/usr/local/share/princess \
  -v /home/pi/lab/ctf_dragon/ssh_test/volumes/flag2:/tmp/f/vault \
  dragon-ssh

