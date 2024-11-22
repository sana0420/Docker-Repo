# Build image
```
docker build --tag java-app .
```
# Push image
```
docker login //if pushing for the first time you need to login else no need
docker tag java-app username/java-app
docker push username/java-app
//use your dockerhub username in place of username
```

# Run container
```
 docker run -d \
      -v java_vol:/app \ 
      --name=java-container \
      --publish=8089:8080 \
      java-appp;
```
# Stopping & Removing
```
docker stop java-container
```
```
docker rm java-container
```
