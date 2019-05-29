#!/bin/bash
for i in $(ls /mnt/*.$1)
do
  m=${i%.*}
  mv $i ${m}.$2
done
