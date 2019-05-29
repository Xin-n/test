#!/bin/bash
r='\033[31m';g='\033[32m';b='\033[0m'
echo -en '本地IP地址为:\t'
echo -e ${r}$(ifconfig eth0 | awk '/\<inet\>/{print $2}')${b}
echo -en 'CPU负载为:\t'
echo -e ${r}$(uptime | awk '{print $(NF-2)}' | sed 's/,//')${b}
echo -en '入站网卡流量为:\t'
echo -e ${r}$(ifconfig eth0 | awk '/RX p/{print $5}')${b}
echo -en '出站网卡流量为:\t'
echo -e ${r}$(ifconfig eth0 | awk '/TX p/{print $(NF-2)}')${b}
echo -en '根分区剩余空间为:\t'
echo -e ${r}$(df | awk '/\/$/{print $4}')${b}
echo -en '本地账户数量为:\t'
echo -e ${r}$(awk 'END{print NR}' /etc/passwd)${b}
echo -en '当前登录账户数量为:\t'
echo -e ${r}$(who |awk 'END{print NR}')${b}
echo -en '当前进程数量为:\t'
echo -e ${r}$(ps aux |awk 'END{print NR}')${b}
echo -en '已安装软件包数量为:\t'
echo -e ${r}$(rpm -qa |awk 'END{print NR}')${b}
