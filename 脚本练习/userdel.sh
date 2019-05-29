#!/bin/bash
a=$(cat /opt/user.txt)
for u in $a
do
   userdel -r $u
done
