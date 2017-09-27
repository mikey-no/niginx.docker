@echo off
echo Docker nginx build, run and clean up script
echo 27 Sep 2017
echo works from Powershell
rem docker run --name mynginx1my -P -d nginx

set image=mynginximage
set tag=lastest
set conrun=mynginx3xx

docker build -t %image% .

docker run --name %conrun% -P -d %image%
docker ps

rem docker exec -it [container-id] bash

echo "Cleanup"
pause

docker stop %conrun%
docker rmi -f %image%