#!/bin/sh
mkdir -p /data/mongodb/db
mkdir -p /root/scripts
mkdir -p /root/ssl/hostname
mkdir -p /root/ssl/all
curl -o /root/scripts/reload-mongodb.sh https://raw.githubusercontent.com/powerkernel/docker-mongodb-rs/master/reload-mongodb.sh
chmod +x /root/scripts/reload-mongodb.sh
