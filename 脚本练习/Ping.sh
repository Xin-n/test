#!/bin/bash
n=$1;a=0;b=0
for i in {1..254}
do
  ping -c 3 -i 0.2 -W 1 172.88.${n}.${i} &> /dev/null
 if [ $? -eq 0 ];then
  echo "Host 172.88.${n}.${i} is ok."
  let a++
  echo " 172.88.${n}.${i} " >> /opt/ping.txt
 else
  echo "Host 172.88.${n}.${i} is no." &> /dev/null
  let b++
 fi
done
echo "${a}台ok,${b}台no."

