#!/bin/sh
mkdir -p /data/mongodb/db
mkdir -p /root/scripts
curl -o /root/scripts/reload-mongodb.sh https://raw.githubusercontent.com/powerkernel/docker-mongodb-rs/master/reload-mongodb.sh
chmod +x /root/scripts/reload-mongodb.sh
