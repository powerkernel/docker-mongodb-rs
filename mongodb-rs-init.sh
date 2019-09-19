#!/bin/sh
mkdir -p /data/mongodb/db
mkdir -p /root/scripts
mkdir -p /root/certs/hostname
mkdir -p /root/certs/all
curl -o /root/scripts/reload-mongodb.sh https://raw.githubusercontent.com/powerkernel/docker-mongodb-rs/master/reload-mongodb.sh
curl -o /root/scripts/reload-hostname-cert.sh https://raw.githubusercontent.com/powerkernel/docker-mongodb-rs/master/reload-hostname-cert.sh
chmod +x /root/scripts/reload-mongodb.sh
chmod +x /root/scripts/reload-hostname-cert.sh
