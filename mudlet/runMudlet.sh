#!/bin/sh
xhost +
sudo docker-compose up -d
sleep 2
xhost -
