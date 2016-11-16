#!/bin/bash
set -e
source /image_build/buildconfig

run /image_build/setup_user.sh
run /image_build/pyodbc/setup_pyodbc.sh

#TODO - debug only - uncomment for prod
#run /image_build/setup_finalize.sh
