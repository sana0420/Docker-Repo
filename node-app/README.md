Make sure the you're in the node app directory.
# build node-app image run
```
docker build --tag node-app .
```
you can check with docker images and you'll see our node-app image
![1](https://github.com/user-attachments/assets/d4f569ed-6cc5-4064-8d21-d5d8b6e0fe1a)

# Push image
```
docker login //if pushing for the first time you need to login else no need
docker tag node-app username/node-app
docker push username/node-app
//use your dockerhub username in place of username
```

# to run node-app-container 
```
$ docker run -d \
    -v node_vol:/app \
    --name=node-container \
    --publish=3000:3000 \
    node-app;
```
the result will generate container id
![image](https://github.com/user-attachments/assets/ab9a6625-92b2-4249-9d78-2afc89cc956a)


when you check your host port 3000 you will se the container running.

![image](https://github.com/user-attachments/assets/13d2c950-3585-4fab-818d-c77b9305c531)

