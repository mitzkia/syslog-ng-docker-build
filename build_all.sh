#!/bin/bash -x

docker build -t syslog_ng_centos -f Centos_latest.Dockerfile .
docker build -t syslog_ng_oraclelinux -f OracleLinux_latest.Dockerfile .
docker build -t syslog_ng_debian -f Debian_latest.Dockerfile .
docker build -t syslog_ng_ubuntu -f Ubuntu_latest.Dockerfile .
