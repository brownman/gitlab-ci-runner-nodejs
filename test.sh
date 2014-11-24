#!/bin/bash

set -u
set -e
test -v CI_SERVER_URL
test -v REGISTRATION_TOKEN
test -v GITLAB_SERVER_FQDN

#sudo apt-get purge docker.io
curl -s https://get.docker.io/ubuntu/ | sudo sh
sudo apt-get update
sudo apt-get install lxc-docker




sudo   docker run -d \
    -e CI_SERVER_URL=$CI_SERVER_URL \
    -e REGISTRATION_TOKEN=$REGISTRATION_TOKEN \
    -e HOME=/root \
    -e GITLAB_SERVER_FQDN=$GITLAB_SERVER_FQDN \
    brownman/gitlab-ci-runner-nodejs
