#!/bin/bash
sed  -n '/bash/s/:.*//p' /etc/passwd |while read u
do
 p=$(sed -n "/^${u}/p" /etc/shadow)
 p=${p#*:}
 p=${p%%:*}
 echo "$u --> $p"
done
