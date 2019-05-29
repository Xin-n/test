#!/bin/bash
pass1=
x=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
for i in {1..8}
do
s=$[RANDOM%62]
pass=${x:s:1}
pass1=$pass1$pass
done
echo $pass1
