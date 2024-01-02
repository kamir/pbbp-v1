#!/bin/bash

#ps  -xa | grep python
#ps  -xa | grep node

# Path to the file with the PIDs
PID_FILE="my_processes.pid"

cat $PID_FILE

# Kill each process
while read pid; do
    if [ -n "$pid" ]; then
        kill $pid
        echo "kill $pid"
    fi
done < $PID_FILE

# Optionally, remove the PID file
rm $PID_FILE

ps  -xa | grep python
ps  -xa | grep node




