#!/bin/sh
mkdir -p /data/mongodb/db
openssl rand -base64 756 > /data/mongodb/keyfile
chmod 400 /data/mongodb/keyfile
chown 999 /data/mongodb/keyfile
curl -o /data/mongodb/mongod.conf https://raw.githubusercontent.com/powerkernel/docker-mongodb-rs/master/mongod.conf
mkdir -p /root/scripts
mkdir -p /root/certs/hostname
mkdir -p /root/certs/all
curl -o /root/scripts/reload-mongodb.sh https://raw.githubusercontent.com/powerkernel/docker-mongodb-rs/master/reload-mongodb.sh
curl -o /root/scripts/reload-hostname-cert.sh https://raw.githubusercontent.com/powerkernel/docker-mongodb-rs/master/reload-hostname-cert.sh
chmod +x /root/scripts/reload-mongodb.sh
chmod +x /root/scripts/reload-hostname-cert.sh
