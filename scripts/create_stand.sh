#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR
cd ..
PROJECT_DIR=$(PWD)
echo "Prepare gitlab stand folder"
sudo mkdir /opt/gitlab-stand
sudo cp -r $PROJECT_DIR/certs /opt/gitlab-stand/
sudo mkdir -p /opt/gitlab-stand/gitlab/
cd /opt/gitlab-stand/gitlab/
sudo mkdir config logs data
cd /opt/gitlab-stand/
sudo mkdir /opt/gitlab-stand/postgresql
sudo mkdir /opt/gitlab-stand/redis
sudo mkdir /opt/gitlab-stand/portainer
echo "Prepare gitlab runner folder"
sudo mkdir -p /opt/gitlab-stand/gitlab-runner
cd /opt/gitlab-stand/gitlab-runner/
sudo mkdir config data
echo "Up gitlab stand"
cd $PROJECT_DIR
docker-compose up -d