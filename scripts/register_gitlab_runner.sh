#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR
cd ..
docker exec -it gitlab-runner gitlab-runner register -n \
    --url https://gitlab.company.com \
    --registration-token REGISTRATION_TOKEN \
    --executor docker \
    --description "deploy-and-prepare-runner" \
    --docker-image "gitlab-runner:${GITLAB_RUNNER_VERSION}" \
    --docker-privileged \
    --docker-volumes /var/run/docker.sock:/var/run/docker.sock \
    --docker-volumes /home/$USER/.ssh/:/.ssh/ \
    --docker-volumes /opt/gitlab-runner-stand/certs/ca.crt:/etc/gitlab-runner/certs/ca.crt