#!/bin/sh

docker build -t cohr_svn_docker:3.15 --build-arg APACHE_GID=48 --build-arg APACHE_UID=48 .
docker tag cohr_svn_docker:3.15 cohr_svn_docker:latest
