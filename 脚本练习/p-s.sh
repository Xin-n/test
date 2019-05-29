#!/bin/bash
n=$1;a=0;b=0;c=0;d=0;e=0;f=0
for i in {1..254}
do
  ping -c 3 -i 0.2 -W 2 172.88.${n}.${i} &> /dev/null
  if [ $? -eq 0 ];then
    echo "Host 172.88.${n}.${i} is ok."
    let a++
    echo " 172.88.{n}.${i} " >> /opt/Ping8.txt
    sshpass -p 'teacher.com' scp -o StrictHostKeyChecking=no /opt/exit.sh root@172.88.${n}.${i}:/opt/ &> /dev/null
    if [ $? = 0 ]
    then
         echo 172.88.${n}.${i} scp success 
         let c++
         echo "172.88.${n}.${i}" >> /opt/SSHsuccess8.txt
         sshpass -p 'teacher.com' ssh -o StrictHostKeyChecking=no root@172.88.${n}.${i} bash /opt/exit.sh &> /dev/null
         if [ $? = 0 ]
         then
           echo 172.88.${n}.${i} ssh success
           let e++
         else
           echo 172.88.${n}.${i} ssh failed 
           let f++
          fi
    else
         echo 172.88.${n}.${i} scp failed 
         let d++
    fi
  else
    echo "Host 172.88.${n}.${i} is no."
    let b++
  fi
done
echo -e "${a}台ping ok.\t${b}台ping no.\n${c}台scp success.\t${d}台scp failed.\n${e}台ssh success.\t${f}台ssh failed."
