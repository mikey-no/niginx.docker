# niginx.docker
Very basic nginx webserver in docker container

# Introduction 

Basic nginx webserver in a docker container.

# Getting started 

In powershell run go.bat
```
.\go.bat
```
This was tested with windows with docker and powershell.

This batch script does:
* clean up of any existing images and containers (handy when you run the script many times)
* create the nginx image with a Dockerfile
* run the image
* shows the running containers
* > you can the open a web browser to look at the web page
```
firefox.exe localhost:<port number>
```
* pauses (oportnity to Ctrl-C) to end the batch file (if you want it to continue to run)
* does a clean up stomming and removing the container

## port number
This may be found in the output from the docker ps command:
0.0.0.0:**32778**->80/tcp   mynginx3

A random port number is asigned from range by docker. This maps the port 80 from inside the container to this external one.

# Background

* Wanted to learn how to do this
* Couldn't find any exmaples that showed this level detail 
* Hope that someone else will find this useful

# Issues

* Does not use my nginx.conf file (commented out)
* Not ready for production (no loggings, ssh access via another container etc)

# Copyright

Author: mikey-no 2017 (no comerical use)

