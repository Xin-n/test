#!/bin/bash
#Author:萌
#Name:猜数字游戏
#猜0-15的数字,三次机会猜对后退出,机会用完也退出
#若没有输入参数为空则再次运行此脚本
#32m绿色,31m红色.... 
#RANDOM 为系统自带的系统变量,值为 0-32767 的随机数
a=$[RANDOM%15+1]
i=0
while [ $i -ne 3 ]
do
 read -p`echo -e "\033[32m请从1-15中猜一个数字:\033[0m"` b
 if [ $b -ge 0 ] &>/dev/null ;then
  if [ $b -eq $a ];then
   echo -e "\033[31m恭喜你,猜对了!\033[0m"
   let i++; echo -e "\033[32m你猜了${i}次\033[0m"
   exit
  elif [ $b -ge 16 ];then
   echo -e "\033[35m请输入1-15的数字\033[0m"
  elif [ $b -eq 0 ];then
   echo -e "\033[35m请输入1-15的数字\033[0m"
  elif [ $b -gt $a ];then
   echo -e "\033[35m呀,猜大了!\033[0m"
   let i++; echo -e "\033[32m你猜了${i}次\033[0m"
  else
   echo -e "\033[35m呦,猜小了!\033[0m"
   let i++; echo -e "\033[32m你猜了${i}次\033[0m"
  fi
 else
   echo -e "\033[35m你没有输入数字!\033[0m"
 fi
done
 echo -e "\033[34m很遗憾,你的次数已用完,没有猜对,正确数字为\033[36m$a!\033[0m"
