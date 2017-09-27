@echo off
echo Docker nginx build, run and clean up script
echo 27 Sep 2017
echo works from Powershell
rem docker run --name mynginx1my -P -d nginx

set image=mynginximage
set tag=lastest
set conrun=mynginx3

echo Start by cleaning up...
docker rmi -f %image%
docker stop %conrun%
docker rm %conrun%

echo Build the image...
docker build -t %image% .

echo Run the image...
docker run --name %conrun% -P -d %image%

echo Show the running containers...
docker ps

rem docker exec -it [container-id] bash

echo Cleanup....
pause

docker stop %conrun%
docker rm %conrun%
docker rmi -f %image%
