#!/usr/bin/env bash

set -e

wget -O /tmp/scala-2.11.6.deb "http://downloads.typesafe.com/scala/2.11.6/scala-2.11.6.deb"
dpkg -i /tmp/scala-2.11.6.deb
