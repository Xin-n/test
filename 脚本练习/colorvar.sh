#!/bin/bash:
for i in {1..66};do
c="$[RANDOM%7+1]"
  echo -en "  \033[3${c}m$1 $2 $3 $4 $5 \033[0m\r"
  sleep 0.2
done
