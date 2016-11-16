#!/bin/bash
set -e
source /image_build/buildconfig

header "Setting up pyODBC"

# Moved to DockerFile for temp quick build
# to fix, uncomment this line and remove similar line from Dockerfile
#run apt-get update

run apt-get install -y apt-utils unixodbc unixodbc-dev freetds-dev tdsodbc

# Debug only - once this is working fine, you can remove this
# installs tsql for testing
run apt-get install -y freetds-bin

run cat /image_build/pyodbc/odbcinst.ini.template >> /etc/odbcinst.ini 
run cat /image_build/pyodbc/odbc.ini.template >> /etc/odbc.ini 
run cp -f /image_build/pyodbc/freetds.conf.template /etc/freetds/freetds.conf

# FreeTDS library must be executable 
chmod +x /usr/lib/x86_64-linux-gnu/odbc/libtdsodbc.so

run pip install --upgrade pip
run pip install pyodbc
#run pip install django-pyodbc
