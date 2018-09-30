@echo off
echo Docker nginx build, run and clean up script
echo Author: mikey-no
echo Created: 27 Sep 2017
echo Last modified: 30 Sep 2018 - tweeked to work with ASW EC2, exposing fixing to port 80
echo works from Powershell

set image=mynginximage
set tag=lastest
set conrun=mynginx

echo Start by cleaning up...
docker rmi -f %image%
docker stop %conrun%
docker rm %conrun%

echo Build the image...
docker build -t %image% .

echo Run the image...
docker run --name %conrun% -p 80:80 -d %image% 

echo Show the running containers...
docker ps

echo To open a terminal inside the container...
echo run this command: docker exec -it [container-id] bash
echo run this command: docker exec -it $(docker ps -a--filter name=%conrun%) bash

pause
echo Cleanup....

docker stop %conrun%
docker rm %conrun%
docker rmi -f %image%

