#!/bin/bash

CONTAINER1="angular-container"
CONTAINER2="dotnet-container"
CONTAINER3="java-container"
CONTAINER4="python-container"
CONTAINER5="react-container"
CONTAINER8="lamp-docker-web-1"
CONTAINER9="lamp-docker-phpmyadmin-1"
CONTAINER0="lamp-docker-db-1"
CONTAINER7="node-container"
if docker container ls | grep -q $CONTAINER1;
then
  printf "stopping angular container --->\n"
  docker container stop $CONTAINER1;
  printf "angular container stopped --->\n"
else
  printf "angular container not found --->\n"
fi

printf "\n"

if docker container ls | grep -q $CONTAINER2;
then
  printf "stopping dotnet container --->\n"
  docker container stop $CONTAINER2;
  printf "dotnet container stopped --->\n"
else
  printf "dotnet container not found --->\n"
fi

printf "\n"

if docker container ls | grep -q $CONTAINER3;
then
  printf "stopping java container --->\n"
  docker container stop $CONTAINER3;
  printf "java container stopped --->\n"
else
  printf "java container not found --->\n"
fi

printf "\n"

if docker container ls | grep -q $CONTAINER4;
then
  printf "stopping python container --->\n"
  docker container stop $CONTAINER4;
  printf "python container stopped --->\n"
else
  printf "python container not found --->\n"
fi

printf "\n"

if docker container ls | grep -q $CONTAINER5;
then
  printf "stopping react container --->\n"
  docker container stop $CONTAINER5;
  printf "react container stopped --->\n"
else
  printf "react container not found --->\n"
fi

printf "\n"

if docker container ls | grep -q $CONTAINER7;
then
  printf "stopping node container --->\n"
  docker container stop $CONTAINER7;
  printf "node container stopped --->\n"
else
  printf "node container not found --->\n"
fi

printf "\n"

cd lamp-docker
if docker container ls | grep -q $CONTAINER8;
then
  printf "stopping lamp-docker container --->\n"
  docker compose down ;
  printf "lamp-docker container stopped --->\n"
else
  printf "lamp-docker container not found --->\n"
fi

printf "\n"

cd ..
printf "shutdown script finished\n\n"