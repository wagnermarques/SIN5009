#!/bin/bash

CONTAINER_NAME=karaf
CONTAINER_IP=192.168.33.161
SHARED_FOLDER="$(pwd)/../deploy_karaf"
IMG_NAME=sin5009/karaf:1.0.1

KARAF_HTTP_DEFAULT_PORT=8181
KARAF_HTTP_MAPPED_PORT=8181

KARAF_SSH_DEFAULT_PORT=8101
KARAF_SSH_MAPPED_PORT=8101


docker run \
       --name "$CONTAINER_NAME" -h "$CONTAINER_HOST_NAME" \
       --net fzl_network_bridge --ip "$CONTAINER_IP" \
       -v "$SHARED_FOLDER":/shared-folder \
       -p "$KARAF_HTTP_MAPPED_PORT":"$KARAF_HTTP_DEFAULT_PORT" \
       -p "$KARAF_SSH_MAPPED_PORT":"$KARAF_SSH_DEFAULT_PORT" \
       -d "$IMG_NAME" 
       
echo Container name: $CONTAINER_NAME
echo Container ip: $CONTAINER_IP
echo KARAF_HTTP_DEFAULT_PORT=8181
echo KARAF_HTTP_MAPPED_PORT=8181

echo KARAF_SSH_DEFAULT_PORT=8101
echo KARAF_SSH_MAPPED_PORT=8101


echo SHARED_FOLDER: $SHARED_FOLDER
echo http://localhost:$KARAF_HTTP_MAPPED_PORT
echo http://$CONTAINER_IP:$KARAF_HTTP_DEFAULT_PORT
echo ./docker-exec-karaf-client-prompt.sh
echo http://localhost:8181/system/console/bundles
echo http://localhost:8181/system/console/gogo
echo http://localhost:8181/system/console/http
echo http://localhost:8181/system/console/instance
