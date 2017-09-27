rem docker run --name mynginx1my -P -d nginx

docker build -t mynginximage1 .

docker run --name mynginx3 -P -d mynginximage1

echo "Cleanup"
pause

docker stop mynginx3
docker rmi -f mynginximage1