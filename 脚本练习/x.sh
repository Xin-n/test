#!/bin/bash
astr="-->"
for i in {1..80};do
  echo -ne "\033[80G${i}%"
  echo -en "\033[${i}G${astr}"
  sleep 0.1
done
echo ""
