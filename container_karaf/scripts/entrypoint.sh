#!/bin/bash
set -e
echo "/script/entrypoint.sh | >>>>>>>>>> fzl_karaf entrypoint.sh running...."
echo "/script/entrypoint.sh |"

/opt/apache-karaf-4.2.6/bin/karaf server

