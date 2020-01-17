#!/bin/bash

cd ./container_karaf
source docker-run.sh &
cd ..

cd ./container_postgresql
source docker-run.sh &
