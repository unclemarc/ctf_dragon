
#!/bin/bash

WD="/home/pi/lab/ctf_dragon/codegen"
GATE="6"
CODEFILE="$WD/../apache/volumes/flag/f"
LOGFILE="$WD/code.log"

while true
  do 
    $WD/codes-db.py -g $GATE  > $CODEFILE
    inotifywait -e access $CODEFILE >> $LOGFILE 
done &
