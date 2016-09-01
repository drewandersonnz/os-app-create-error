#!/bin/bash

git pull;

docker cp cron-send-create-app oso-rhel7-host-monitoring:/root/cron-send-create-app;

docker exec -it oso-rhel7-host-monitoring bash -c 'export ZAGG_CLIENT_HOSTNAME=preview-master-afbb8-dranders; /root/cron-send-create-app --name https://github.com/openshift/nodejs-ex -v'
