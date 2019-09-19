#!/bin/sh
docker restart $(docker ps -f label=docker.service=mongodb -q)
