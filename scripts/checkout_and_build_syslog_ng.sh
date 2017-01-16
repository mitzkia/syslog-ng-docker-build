#!/bin/bash -xe

git clone https://github.com/balabit/syslog-ng.git
cd /syslog-ng
pip install -r requirements.txt
./autogen.sh
mkdir build
cd /syslog-ng/build
../configure --enable-debug --prefix=/install
make V=1
make install
make check