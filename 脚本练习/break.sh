#!/bin/bash
x=0
while :
do
    read -p "请输入一个整数(0是结束)" n
    [ $n -eq 0 ] && exit
    let x+=n
    echo "总和是:$x"
done
