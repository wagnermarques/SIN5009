#!/bin/bash

cd container-jdk8
./docker-build.sh &
cd ..

cd container_karaf
./docker-build.sh &
cd ..

cd container_postgresql
./docker-pull.sh

