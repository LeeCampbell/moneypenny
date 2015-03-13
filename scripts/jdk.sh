#!/usr/bin/env bash

set -e

mkdir -p /usr/lib/jvm/
wget -O /tmp/jdk-7u51-linux-x64.tar.gz --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.tar.gz"
tar -xvf /tmp/jdk-7u51-linux-x64.tar.gz -C /usr/lib/jvm/
update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.7.0_51/bin/java 1
update-alternatives --set java /usr/lib/jvm/jdk1.7.0_51/bin/java
