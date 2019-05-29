#!/bin/bash
case $1 in
start)
        /usr/local/nginx/sbin/nginx;;
stop)
        /usr/local/nginx/sbin/nginx -s stop;;
restart)
        /usr/local/nginx/sbin/nginx -s stop
        /usr/local/nignx/sbin/nginx;;
status)
        netstat -ntulp |grep -q nginx
        if [ $? -eq 0 ];then
         echo 服务已启动
        else
         echo 服务未启动
        fi;;
*)
        echo "start|stop|restart|status";;
esac
