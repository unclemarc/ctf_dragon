
#!/bin/bash

WD="/home/pi/lab/ctf_dragon/codegen"
GATE="7"
CODEFILE="$WD/../ssh_test/volumes/princess/flag.txt"
LOGFILE="$WD/code.log"

while true
  do 
    $WD/codes-db.py -g $GATE  > $CODEFILE
    inotifywait -q -e access $CODEFILE >> $LOGFILE 
done &
