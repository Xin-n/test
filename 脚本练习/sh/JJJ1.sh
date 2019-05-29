#!/bin/bash
a0="\033[11G0000000000\n\033[11G00\033[19G00\n\033[11G00\033[19G00\n\033[11G00\033[19G00\n\033[11G00\033[19G00\n\033[11G00\033[19G00\n\033[11G00\033[19G00\n\033[11G00\033[19G00\n\033[11G0000000000\033[8A"
b0="\033[31G0000000000\n\033[31G00\033[39G00\n\033[31G00\033[39G00\n\033[31G00\033[39G00\n\033[31G00\033[39G00\n\033[31G00\033[39G00\n\033[31G00\033[39G00\n\033[31G00\033[39G00\n\033[31G0000000000\033[8A"
c0="\033[51G0000000000\n\033[51G00\033[59G00\n\033[51G00\033[59G00\n\033[51G00\033[59G00\n\033[51G00\033[59G00\n\033[51G00\033[59G00\n\033[51G00\033[59G00\n\033[51G00\033[59G00\n\033[51G0000000000"
a1="\033[15G111\n\033[13G11111\n\033[12G111111\n\033[16G11\n\033[16G11\n\033[16G11\n\033[16G11\n\033[16G11\n\033[11G1111111111\033[8A"
b1="\033[35G111\n\033[33G11111\n\033[32G111111\n\033[36G11\n\033[36G11\n\033[36G11\n\033[36G11\n\033[36G11\n\033[31G1111111111\033[8A"
c1="\033[55G111\n\033[53G11111\n\033[52G111111\n\033[56G11\n\033[56G11\n\033[56G11\n\033[56G11\n\033[56G11\n\033[51G1111111111"
a2="\033[11G2222222222\n\033[19G22\n\033[19G22\n\033[19G22\n\033[11G2222222222\n\033[11G22\n\033[11G22\n\033[11G22\n\033[11G2222222222\033[8A"
b2="\033[31G2222222222\n\033[39G22\n\033[39G22\n\033[39G22\n\033[31G2222222222\n\033[31G22\n\033[31G22\n\033[31G22\n\033[31G2222222222\033[8A"
c2="\033[51G2222222222\n\033[59G22\n\033[59G22\n\033[59G22\n\033[51G2222222222\n\033[51G22\n\033[51G22\n\033[51G22\n\033[51G2222222222"
a3="\033[11G3333333333\n\033[19G33\n\033[19G33\n\033[19G33\n\033[11G3333333333\n\033[19G33\n\033[19G33\n\033[19G33\n\033[11G3333333333\033[8A"
b3="\033[31G3333333333\n\033[39G33\n\033[39G33\n\033[39G33\n\033[31G3333333333\n\033[39G33\n\033[39G33\n\033[39G33\n\033[31G3333333333\033[8A"
c3="\033[51G3333333333\n\033[59G33\n\033[59G33\n\033[59G33\n\033[51G3333333333\n\033[59G33\n\033[59G33\n\033[59G33\n\033[51G3333333333\033"
a4="\033[11G44\033[19G44\n\033[11G44\033[19G44\n\033[11G44\033[19G44\n\033[11G44\033[19G44\n\033[11G4444444444\n\033[19G44\n\033[19G44\n\033[19G44\n\033[19G44\033[8A"
b4="\033[31G44\033[39G44\n\033[31G44\033[39G44\n\033[31G44\033[39G44\n\033[31G44\033[39G44\n\033[31G4444444444\n\033[39G44\n\033[39G44\n\033[39G44\n\033[39G44\033[8A"
c4="\033[51G44\033[59G44\n\033[51G44\033[59G44\n\033[51G44\033[59G44\n\033[51G44\033[59G44\n\033[51G4444444444\n\033[59G44\n\033[59G44\n\033[59G44\n\033[59G44"
a5="\033[11G5555555555\n\033[11G55\n\033[11G55\n\033[11G55\n\033[11G5555555555\n\033[19G55\n\033[19G55\n\033[19G55\n\033[11G5555555555\033[8A"
b5="\033[31G5555555555\n\033[31G55\n\033[31G55\n\033[31G55\n\033[31G5555555555\n\033[39G55\n\033[39G55\n\033[39G55\n\033[31G5555555555\033[8A"
c5="\033[51G5555555555\n\033[51G55\n\033[51G55\n\033[51G55\n\033[51G5555555555\n\033[59G55\n\033[59G55\n\033[59G55\n\033[51G5555555555"
a6="\033[11G6666666666\n\033[11G66\n\033[11G66\n\033[11G66\n\033[11G6666666666\n\033[11G66\033[19G66\n\033[11G66\033[19G66\n\033[11G66\033[19G66\n\033[11G6666666666\033[8A"
b6="\033[31G6666666666\n\033[31G66\n\033[31G66\n\033[31G66\n\033[31G6666666666\n\033[31G66\033[39G66\n\033[31G66\033[39G66\n\033[31G66\033[39G66\n\033[31G6666666666\033[8A"
c6="\033[51G6666666666\n\033[51G66\n\033[51G66\n\033[51G66\n\033[51G6666666666\n\033[51G66\033[59G66\n\033[51G66\033[59G66\n\033[51G66\033[59G66\n\033[51G6666666666"
a7="\033[11G7777777777\n\033[11G77\033[19G77\n\033[19G77\n\033[19G77\n\033[19G77\n\033[19G77\n\033[19G77\n\033[19G77\n\033[19G77\033[8A"
b7="\033[31G7777777777\n\033[31G77\033[39G77\n\033[39G77\n\033[39G77\n\033[39G77\n\033[39G77\n\033[39G77\n\033[39G77\n\033[39G77\033[8A"
c7="\033[51G7777777777\n\033[51G77\033[59G77\n\033[59G77\n\033[59G77\n\033[59G77\n\033[59G77\n\033[59G77\n\033[59G77\n\033[59G77"
a8="\033[11G8888888888\n\033[11G88\033[19G88\n\033[11G88\033[19G88\n\033[11G88\033[19G88\n\033[11G8888888888\n\033[11G88\033[19G88\n\033[11G88\033[19G88\n\033[11G88\033[19G88\n\033[11G8888888888\033[8A"
b8="\033[31G8888888888\n\033[31G88\033[39G88\n\033[31G88\033[39G88\n\033[31G88\033[39G88\n\033[31G8888888888\n\033[31G88\033[39G88\n\033[31G88\033[39G88\n\033[31G88\033[39G88\n\033[31G8888888888\033[8A"
c8="\033[51G8888888888\n\033[51G88\033[59G88\n\033[51G88\033[59G88\n\033[51G88\033[59G88\n\033[51G8888888888\n\033[51G88\033[59G88\n\033[51G88\033[59G88\n\033[51G88\033[59G88\n\033[51G8888888888"
a9="\033[11G9999999999\n\033[11G99\033[19G99\n\033[11G99\033[19G99\n\033[11G99\033[19G99\n\033[11G9999999999\n\033[19G99\n\033[19G99\n\033[19G99\n\033[11G9999999999\033[8A"
b9="\033[31G9999999999\n\033[31G99\033[39G99\n\033[31G99\033[39G99\n\033[31G99\033[39G99\n\033[31G9999999999\n\033[39G99\n\033[39G99\n\033[39G99\n\033[31G9999999999\033[8A"
c9="\033[51G9999999999\n\033[51G99\033[59G99\n\033[51G99\033[59G99\n\033[51G99\033[59G99\n\033[51G9999999999\n\033[59G99\n\033[59G99\n\033[59G99\n\033[51G9999999999"
A=($a0 $a1 $a2 $a3 $a4 $a5 $a6 $a7 $a8 $a9)
B=($b0 $b1 $b2 $b3 $b4 $b5 $b6 $b7 $b8 $b9)
C=($c0 $c1 $c2 $c3 $c4 $c5 $c6 $c7 $c8 $c9)
        for i in $(seq 999 -1 1);do
          let b=i/100;let s=i/10%10;let g=i%10
          c=$[RANDOM%6+1]
          echo -e "\033[?25l\033[3${c}m${A[b]}${B[s]}${C[g]}\033[0m"
          sleep 0.1
          echo -en "\033[K\033[1A\033[K\033[1A\033[K\033[1A\033[K\033[1A\033[K\033[1A\033[K\033[1A\033[K\033[1A\033[K\033[1A\033[K\033[1A\033[K\033[?25h"
        done
        o=$[RANDOM%6+1]
        echo -e "\033[3${o}m${A[0]}${B[0]}${C[0]}\033[0m"
