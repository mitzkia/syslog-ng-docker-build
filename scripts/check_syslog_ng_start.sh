#!/bin/bash -xe

nohup /install/sbin/syslog-ng -Fedv --no-caps --enable-core & 
sleep 3
pkill syslog-ng
nohup /install/sbin/syslog-ng -Fedv --no-caps --enable-core -f /syslog-ng-compact.conf &
sleep 3
pkill syslog-ng