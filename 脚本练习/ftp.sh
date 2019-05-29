#!/bin/bash
yum -y install vsftpd
cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.old
set 's/^#anon/anon/' /etc/vsftpd/vsftpd.conf
systemctl restart vsftpd
systemctl eanble vsftpd
systemctl status vsftpd
chmod 777 /var/ftp/pub
