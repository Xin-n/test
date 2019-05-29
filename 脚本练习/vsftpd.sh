#!/bin/bash
yum -y install vsftpd &> /dev/null
systemctl restart vsftpd
systemctl enable vsftpd
