# Build image
```
docker build --tag angular-app .
```
# Push image
```
docker login //if pushing for the first time you need to login else no need
docker tag angular-app username/angular-app
docker push username/angular-app
//use your dockerhub username in place of username
```

# Run container
```
docker run -d \
    -v angular_vol:/usr/src/app \
      --name=angular-container \
      --publish=5000:5000 \
      angular-app;
```
![image](https://github.com/user-attachments/assets/6691b939-3523-43a7-8798-b3b7e777d913)

# Run with docker compose
```
docker compose up -d
```
![image](https://github.com/user-attachments/assets/68b423f5-6de0-4dd5-88a4-fc149062ec67)
#Stop & remove container
```
docker compose down
```

