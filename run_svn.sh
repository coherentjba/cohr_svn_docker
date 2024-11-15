#!/bin/sh

CONT_NAME=sny-icdev-svn
IMAGE_ROOT=/usr/eda/svn_server/${CONT_NAME}
IMAGE_NAME=cohr_svn_docker
#IMAGE_NAME=elleflorio/svn-server


docker run -d --name ${CONT_NAME} -p 80:80 -p 3690:3690 \
	-v ${IMAGE_ROOT}/svn_root:/home/svn \
	-v ${IMAGE_ROOT}/svn_config:/etc/subversion \
	-v ${IMAGE_ROOT}/svnadmin_config:/opt/svnadmin/data \
	${IMAGE_NAME}

#docker run -d --name svn-server -p 80:80 -p 3690:3690 -v ${IMAGE_ROOT}/repos:/home/svn -v ${IMAGE_ROOT}/svn_config:/etc/subversion elleflorio/svn-server
#docker run -d --name svn-server -p 80:80 -p 3690:3690 -v repos:/blah -v svn_config:/etc/subversion -v svnadmin_config:/opt/svnadmin/data elleflorio/svn-server
