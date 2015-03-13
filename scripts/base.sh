#!/usr/bin/env bash

set -e

apt-get update
apt-get -y upgrade

apt-get -y install curl ntp zip unzip

ufw allow ssh
ufw allow ntp
ufw logging on
ufw --force enable

cat <<EOF > /etc/security/limits.d/max.limits.conf
* soft nofile 32768
* hard nofile 32768
root soft nofile 32768
root hard nofile 32768
* soft memlock unlimited
* hard memlock unlimited
root soft memlock unlimited
root hard memlock unlimited
* soft as unlimited
* hard as unlimited
root soft as unlimited
root hard as unlimited
EOF

sysctl -w vm.max_map_count=131072
echo "vm.max_map_count = 131072" >> /etc/security/limits.conf
