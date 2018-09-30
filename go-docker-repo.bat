@echo off
echo Docker nginx build image and push to the docker repository mikeyno
echo Author: mikey-no
echo Created: 30 Sep 2018
echo works from Powershell

set image=mynginximage
set tag=lastest
set conrun=mynginx

echo Start by cleaning up...
docker rmi -f %image%
docker stop %conrun%
docker rm %conrun%

echo Set Docker username: mikeyno
set DOCKER_ID_USER="mikeyno"

echo Build the image...
docker build -t %image% .

echo Login to Docker
docker login

echo Tag the image
docker tag %image% %DOCKER_ID_USER%/%image%

echo Push the image to Docker hub - private repository
docker push %DOCKER_ID_USER%/%image%

exit 0
