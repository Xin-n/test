#!/bin/bash
n=`who | wc -l`
[ $n -ge 3 ] && echo "警报" | mail -s test root
