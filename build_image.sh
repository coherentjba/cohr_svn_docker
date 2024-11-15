#!/bin/sh

docker build -t cohr_svn_docker --build-arg APACHE_GID=48 --build-arg APACHE_UID=48 .
