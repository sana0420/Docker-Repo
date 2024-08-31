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
echo "Stop a particular container or all select a number \n 1. angular 2.react
3.dotnet 4.node 5.lamp 6.all: "
read a

if [[ $a -eq 1 ]]
then
  if docker stop $CONTAINER1  if docker container ls | grep -q $CONTAINER1;
  then
    printf "stopping angular container --->\n"
    docker container stop $CONTAINER1;
    printf "angular container stopped --->\n"
  else
    printf "angular container not found --->\n"
  fi
  printf "\n"
elif [[ $a -eq 2 ]]
then 
  if docker container ls | grep -q $CONTAINER5;
  then
    printf "stopping react container --->\n"
    docker container stop $CONTAINER5;
    printf "react container stopped --->\n"
  else
    printf "react container not found --->\n"
  fi
  printf "\n"
elif [[ $a -eq 3 ]]
then 
  if docker container ls | grep -q $CONTAINER2;
  then
    printf "stopping dotnet container --->\n"
    docker container stop $CONTAINER2;
    printf "dotnet container stopped --->\n"
  else
    printf "dotnet container not found --->\n"
  fi
  printf "\n"
elif [[ $a -eq 4 ]]
then 
   if docker container ls | grep -q $CONTAINER7;
  then
    printf "stopping node container --->\n"
    docker container stop $CONTAINER7;
    printf "node container stopped --->\n"
  else
    printf "node container not found --->\n"
  fi
elif [[ $a -eq 5 ]]
then
  cd lamp-docker
  if docker container ls | grep -q $CONTAINER8;
  then
    printf "stopping lamp-docker container --->\n"
    docker compose down ;
    printf "lamp-docker container stopped --->\n"
  else
    printf "lamp-docker container not found --->\n"
  fi
elif [[ $a -eq 6 ]]
then 
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
fi
printf "\n"

cd ..
printf "shutdown script finished\n\n"