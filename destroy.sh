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
if docker container ls -a | grep -q $CONTAINER1;
then
  printf "removing angular container --->\n"
  docker container  rm $CONTAINER1;
  printf "angular container removed --->\n"
else
  printf "angular container not found --->\n"
fi

printf "\n"

if docker container ls -a | grep -q $CONTAINER2;
then
  printf "removing dotnet container --->\n"
  docker container rm $CONTAINER2;
  printf "dotnet container removed --->\n"
else
  printf "dotnet container not found --->\n"
fi

printf "\n"

if docker container ls -a | grep -q $CONTAINER3;
then
  printf "removing java container --->\n"
  docker container rm $CONTAINER3;
  printf "java container removed --->\n"
else
  printf "java container not found --->\n"
fi

printf "\n"

if docker container ls -a | grep -q $CONTAINER4;
then
  printf "removing python container --->\n"
  docker container rm $CONTAINER4;
  printf "python container removed --->\n"
else
  printf "python container not found --->\n"
fi

printf "\n"

if docker container ls -a | grep -q $CONTAINER5;
then
  printf "removing react container --->\n"
  docker container rm $CONTAINER5;
  printf "react container removed --->\n"
else
  printf "react container not found --->\n"
fi

printf "\n"

if docker container ls -a | grep -q $CONTAINER7;
then
  printf "removing node container --->\n"
  docker container rm $CONTAINER7;
  printf "node container removed --->\n"
else
  printf "node container not found --->\n"
fi

printf "\n"

cd lamp-docker
if docker container ls -a | grep -q $CONTAINER9;
then
  printf "removing $CONTAINER9 container --->\n"
  docker container rm $CONTAINER9;
else
  printf "container not found --->\n"
if docker container ls -a | grep -q $CONTAINER9;
then
  printf "removing $CONTAINER0 container --->\n"
  docker container rm $CONTAINER0;
else
  printf "container not found --->\n"
if docker container ls -a | grep -q $CONTAINER9;
then
  printf "removing $CONTAINER8 container --->\n"
  docker container rm $CONTAINER8;
  printf "$CONTAINER9 , $CONTAINER0 , $CONTAINER8 containers removed --->\n"
else
  printf "container not found --->\n"
fi

cd ..

printf "\n"
printf "shutdown script finished \n"