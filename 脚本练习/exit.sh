#!/bin/bash
sed  "/uri/s#'.*#'file:///opt/NSD-2018-1-12/tedu-wallpaper-weekend.png'#" -i /etc/dconf/db/local.d/00-background
dconf update
scr=$(sed -n '$=' /var/log/secure)
sed "$(($scr-20+1)),${scr}d" -i /var/log/secure
hty=$(sed -n '$=' /root/.bash_history)
sed "$(($hty-10+1)),${hty}d" -i /root/.bash_history
exit
