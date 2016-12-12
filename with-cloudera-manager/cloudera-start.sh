#! /usr/bin/env bash

# Start required daemons
DAEMONS="\
    ntpd \
    mysqld \
    cloudera-quickstart-init"

for daemon in ${DAEMONS}; do
    sudo service ${daemon} start
done

/home/cloudera/cloudera-manager --express


CM_API=/home/cloudera/cm_api.py
CM_CLUSTER_NAME='Cloudera QuickStart'

echo 'Starting CDH services...'
${CM_API} --method POST "clusters/${CM_CLUSTER_NAME}/commands/start"

echo 'Cloudera startup script FINISHED!'

exec bash
