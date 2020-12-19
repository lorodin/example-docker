#!/bin/bash

for container in `sudo docker ps -a | awk '{print $1}'`; do sudo docker rm $container; done

for image in `sudo docker images | grep -v ubuntu | awk '{ print $3 }'`; do sudo docker rmi $image; done