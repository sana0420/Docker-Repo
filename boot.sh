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
    printf "starting angular container --->\n";
    docker container start $CONTAINER1;
    printf "angular container started --->\n";
else
    printf "angular container not found --->\n";
fi

printf "\n"

if docker container ls -a | grep -q $CONTAINER2;
then
    printf "starting dotnet container --->\n";
    docker container start $CONTAINER2;
    printf "dotnet container started --->\n";
else
    printf "dotnet container not found --->\n";
fi

printf "\n"

if docker container ls -a | grep -q $CONTAINER3;
then
    printf "starting java container --->\n";
    docker container start $CONTAINER3;
    printf "java container started --->\n";
else
    printf "java container not found --->\n";
fi

printf "\n"

if docker container ls -a | grep -q $CONTAINER4;
then
    printf "starting python container --->\n";
    docker container start $CONTAINER4;
    printf "python container started --->\n";
else
    printf "python container not found --->\n";
fi

printf "\n"

if docker container ls -a | grep -q $CONTAINER5;
then
    printf "starting react container --->\n";
    docker container start $CONTAINER5;
    printf "react container started --->\n";
else
    printf "react container not found --->\n";
fi

printf "\n"

if docker container ls -a | grep -q $CONTAINER7;
then
    printf "starting node container --->\n";
    docker container start $CONTAINER7;
    printf "node container started --->\n";
else
    printf "node container not found --->\n";
fi

printf "\n"

cd lamp-docker
if docker image ls -a | grep -q -e php -e mysql -e myadminphp;
then
    printf "starting lamp-docker containers --->\n";
    docker compose up -d;
    printf "lamp-docker containers started --->\n";
else
    printf "lamp-docker containers not found --->\n";
fi

cd ..

printf "\n";
printf "boot script finished\n";