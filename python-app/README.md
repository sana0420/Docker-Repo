# Build image
```
docker build --tag python-app .
```
# Run container
```
 docker run -d \
    -v python_vol:/app \
    --name= python-container \
    --publish=8002:8002 \
    python-app;
```
