#!/usr/bin/env bash

set -e

cat <<EOF > /usr/local/bin/sbt
SBT_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
java $SBT_OPTS -jar `dirname $0`/sbt-launch.jar "$@"
EOF

chmod +x /usr/local/bin/sbt

wget -O /usr/local/bin/sbt-launch.jar "https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/0.13.7/sbt-launch.jar"
