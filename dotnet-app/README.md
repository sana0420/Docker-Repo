# Build image
```
docker build --tag dotnet-app .
```
# Push image
```
docker login //if pushing for the first time you need to login else no need
docker tag dotnet-app username/dotnet-app
docker push username/dotnet-app
//use your dockerhub username in place of username
```

# Run container
```
 docker run -d -v dotnet_vol:/app \
    -v ~/.vsdbg:/remote_debugger:rw \
    --name=dotnet-container \
    --publish=5001:5001 \
    dotnet-app;
```
![image](https://github.com/user-attachments/assets/d63f8303-b895-4821-9512-f4f0904480a6)
# With docker compose
```
docker compose up -d
```
![image](https://github.com/user-attachments/assets/3e139973-e5f0-44b1-ac9b-87bd7bbd14b5)
