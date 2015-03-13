#!/usr/bin/env bash

set -e

mkdir -p /usr/lib/kafka/
wget -O /tmp/kafka_2.11-0.8.2.1.tgz "https://archive.apache.org/dist/kafka/0.8.2.1/kafka_2.11-0.8.2.1.tgz"
tar -xvf /tmp/kafka_2.11-0.8.2.1.tgz -C /usr/lib/kafka/
