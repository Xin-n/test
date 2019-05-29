#!/bin/bash
n=0
for u in $(cat /opt/user.txt)
 do 
  useradd $u
  let n++
  p=$(head -$n /opt/passwd.txt | tail -1)
  echo $p | passwd --stdin $u
 done
