#!/bin/bash
expect << eof
spawn ssh 192.168.1.166
expect "password:" { send "redhat\r" }
expect "#" { send "touch /opt/haha.txt\r" }
expect "#" { send "touch /opt/xixi.txt\r" }
expect "#" { send "exit\r" }
eof
