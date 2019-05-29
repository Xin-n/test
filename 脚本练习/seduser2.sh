#!/bin/bash
sed -n '/bash/s/:.*//p' /etc/passwd | while read var
do
  sed -rn "s/$var:([^:]+).*/$var --> \1/p" /etc/shadow 
done
