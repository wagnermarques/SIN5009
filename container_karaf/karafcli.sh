#!/bin/bash

CONTAINER_NAME=karaf
KARAF_HOME=/opt/karaf

export karafcli="docker exec -it  $CONTAINER_NAME $KARAF_HOME/bin/client -r 7"

