#!/bin/bash -xe

cat /deb_packages.txt | xargs apt-get install -y --no-install-recommends

find / | grep 'libjvm\.so' | xargs dirname > /etc/ld.so.conf.d/openjdk-libjvm.conf
ldconfig
