#Build image
```
docker build --tag java-app .
```
#Run container
```
 docker run -d \
      -v java_vol:/app \ 
      --name=java-container \
      --publish=8089:8080 \
      java-appp;
```
#Stopping & Removing
```
docker stop java-container
```
```
docker rm java-container
```
