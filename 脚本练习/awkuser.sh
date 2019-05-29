#!/bin/bash
awk -F: '/bash$/{print $1}' /etc/passwd | while read var
do
grep "^$var" /etc/shadow | awk -F: '{print $1,"-->",$2}' | column -t
done
