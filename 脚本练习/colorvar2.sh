#!/bin/bash
color=('\033[31m' '\033[32m' '\033[33m' '\033[34m' '\033[35m' '\033[36m')
for i in {0..99};do
  id=$((i%6)) 
  echo -en " ${color[${id}]}${i}\033[0m\r"
  sleep 0.2
done
