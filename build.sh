#!/bin/bash
# for angular app
IMAGE1="angular-app"
IMAGE2="dotnet-app"
IMAGE3="java-app"
IMAGE4="python-app"
IMAGE5="react-app"
IMAGE6="lamp-app"
IMAGE7="node-app"
CONTAINER1="angular-container"
CONTAINER2="dotnet-container"
CONTAINER3="java-container"
CONTAINER4="python-container"
CONTAINER5="react-container"
CONTAINER6="lamp-container"
CONTAINER7="node-container"
cd angular-app
if docker images | grep -q $IMAGE1;
then
  printf "starting angular container --->\n"
  docker run -d -v angular_vol:/usr/src/app \
    -v /usr/src/app/node_modules \
    --name=$CONTAINER1 \
    --publish=5000:5000 \
    $IMAGE1;
else
  printf "creating angular image --->\n"
  docker image build --tag $IMAGE1 .;
  printf "starting angular container --->\n"
  docker run -d -v angular_vol:/usr/src/app \
  -v /usr/src/app/node_modules \
  --name=$CONTAINER1 \
  --publish=5000:5000 \
  $IMAGE1;
fi
printf "angular container started running on port 5000 --->\n"

cd ..
cd dotnet-app
if docker images | grep -q $IMAGE2;
then
  printf "starting dotnet container --->\n"
  docker run -d -v dotnet_vol:/app \
    -v ~/.vsdbg:/remote_debugger:rw \
    --name=$CONTAINER2 \
    --publish=5001:5001 \
    $IMAGE2;
else
  printf "creating dotnet image --->\n"
  docker image build --tag $IMAGE2 .;
  printf "starting dotnet container --->\n"
  docker run -d -v dotnet_vol:/app \
  -v ~/.vsdbg:/remote_debugger:rw \
  --name=$CONTAINER2 \
  --publish=5001:5001 \
  $IMAGE2;
fi
printf "dotnet container started running on port 5001 --->\n"

cd ..
cd java-app
cd my-app
if docker images | grep -q $IMAGE3;
then
  docker run -d \
    -v java_vol:/app \
    --name=$CONTAINER3 \
    --publish=8089:8080 \
    $IMAGE3;
else
  printf "creating java image --->\n"
  docker image build --tag $IMAGE3 .;
  printf "starting java container --->\n"
  docker run -d \
  -v java_vol:/app \
  --name=$CONTAINER3 \
  --publish=8089:8080 \
  $IMAGE3;
fi
printf "java container started running on port 8080 --->\n"

cd ..
cd ..
cd node-app
if docker images | grep -q $IMAGE7;
then
  printf "starting node container --->\n"
  docker run -d \
    -v node_vol:/app \
    --name=$CONTAINER7 \
    --publish=3000:3000 \
    $IMAGE7;
else
  printf "creating node image --->\n";
  docker image build --tag $IMAGE7 .;
  printf "starting node container --->\n"
  docker run -d \
  -v node_vol:/app \
  --name=$CONTAINER7 \
  --publish=3000:3000 \
  $IMAGE7;
fi
printf "node container started running on port 3000--->\n"

cd ..
cd python-app
if docker images | grep -q $IMAGE4;
then
  docker run -d \
  -v python_vol:/app \
  --name= $CONTAINER4 \
  --publish=8002:8002 \
  $IMAGE4;
else
  printf "creating python image --->\n"
  docker image build --no-cache --tag $IMAGE4 .;
  printf "starting python container --->\n"
  docker run -d \
  -v python_vol:/app \
  --name=$CONTAINER4 \
  --publish=8002:8002 \
  $IMAGE4;
fi

printf "python container started running on port 8002 --->\n"

cd ..
cd react-app
if docker images | grep -q $IMAGE5;
then
  printf "starting react container --->\n"
  docker run -d \
   -v react_vol:/app \
    --name=$CONTAINER5 \
    --publish=4000:4000 \
    $IMAGE5;
else
  printf "creating react image --->\n";
  docker image build --tag $IMAGE5 .;
  printf "starting react container --->\n"
  docker run -d \
  -v react_vol:/app \
  --name=$CONTAINER5 \
  --publish=4000:4000 \
  $IMAGE5;
fi
printf "react container started running on port 4000 --->\n"

cd ..
cd lamp-docker
docker compose up -d
printf "lamp-docker compose container started running on port 8081 --->\n"
printf "\n"

cd ..
printf "\n"

printf "build script finished\n\n"