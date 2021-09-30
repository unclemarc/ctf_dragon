
#!/bin/bash

WD="/home/pi/lab/ctf_dragon/codegen"
GATE="8"
CODEFILE="$WD/../ssh_test/volumes/flag2/flag"
LOGFILE="$WD/code.log"

while true
  do 
    $WD/codes-db.py -g $GATE  > $CODEFILE
    inotifywait -q -e access $CODEFILE >> $LOGFILE 
done &
