#!/bin/bash
for i in {1..66}
do
  n=$[i%6]
  [ $n -ne 0 ] && continue
  echo $i
  echo $[i*i]
done
