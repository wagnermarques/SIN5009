#!/bin/bash
#ls -l

cd ./container_karaf
source docker stop karaf
cd ..
cd ./container_postgresql
source docker stop pgsql
