SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR
cd ..
docker-compose stop
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker-compose down --volumes
docker volume rm $(docker volume ls -q)
sudo rm -rf /opt/gitlab-stand