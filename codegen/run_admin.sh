docker run \
  -d \
  --name codeadmin \
  --ip 192.168.42.2 \
  -p 192.168.42.2:22:22 \
  -v /home/pi/lab/ctf_dragon/codegen:/home/admin/codegen \
  codeadmin

