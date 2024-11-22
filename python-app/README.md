# Build image
```
docker build --tag python-app .
```
# Push image
```
docker login //if pushing for the first time you need to login else no need
docker tag python-app username/python-app
docker push username/python-app
//use your dockerhub username in place of username
```

# Run container
```
 docker run -d \
    -v python_vol:/app \
    --name= python-container \
    --publish=8002:8002 \
    python-app;
```
