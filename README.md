# Docker Swarm MongoDB Replica Set

Init on all members
-------------------
~~~
curl https://raw.githubusercontent.com/powerkernel/docker-mongodb-rs/master/mongodb-rs-init.sh | sh
~~~

Install the cert
----------------
~~~
acme.sh --install-cert -d hostname.example.com \
--key-file        /root/certs/hostname/key.pem \
--cert-file       /root/certs/hostname/cert.pem \
--fullchain-file  /root/certs/hostname/fullchain.pem \
--ca-file         /root/certs/hostname/ca.pem \
--reloadcmd       "cat /root/certs/hostname/key.pem /root/certs/hostname/fullchain.pem > /root/certs/hostname/mongodb.pem && cat /root/certs/hostname/key.pem /root/certs/hostname/fullchain.pem > /root/certs/all/hostname.pem && /root/scripts/reload-hostname-cert.sh"
~~~

Deploy
------
~~~
curl -o docker-compose.yml https://raw.githubusercontent.com/powerkernel/docker-mongodb-rs/master/docker-compose.yml
docker stack deploy -c docker-compose.yml mongodb
~~~
