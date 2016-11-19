#!/bin/bash
set -e
source /image_build/buildconfig

header "Setting up pyODBC - django"

#locale-gen en_US.utf8
#run dpkg-reconfigure locales
#ENV LANG en_US.UTF-8

#run pip install django-pyodbc
run pip install django-pyodbc-azure
