#!/bin/bash
read -p "请输入用户名:" u
if [ -z $u ];then
   echo -e '\033[31m\n未输入用户名!\033[0m'
   exit
fi
grep "^$u" /etc/passwd &> /dev/null
if [ $? -ne 0 ]
then
    useradd $u
    echo '用户创建成功!'
else
  echo -e '\033[31m\n用户已存在!\033[0m'
  exit
fi
stty cbreak -echo
read -p "请输入密码:" p
while [ -z $p ]
 do
   echo -e '\033[31m\n未输入密码!\033[0m'
   read -p "请重新输入密码:" p
 done
echo $p | passwd --stdin $u &> /dev/null
echo -e '\n密码创建成功!'
stty -cbreak echo
