#!/bin/bash

IMG_NAME=wagnermarques/karaf4:0.0.1

docker run \
       --name karaf -h karaf \
       -d "$IMG_NAME" 
   
echo .
echo .
echo http://localhost:8181/system/console/bundles
echo http://localhost:8181/system/console/gogo
echo http://localhost:8181/system/console/http
echo http://localhost:8181/system/console/instance
