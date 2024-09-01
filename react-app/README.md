# Run container with Dockerfile
```
docker build -t react-app .
```
you will get output like this:
![image](https://github.com/user-attachments/assets/f1914f96-f98d-4411-a183-73238da422a8)

check to see if the image is successfully created with 
```
docker images
```
you'll see this
![image](https://github.com/user-attachments/assets/f82c7cc3-c55a-456a-967b-e0cd97f7dcd9)

to run the container write
```
 docker run -p 4000:4000 -d -v $(pwd):/home/react-app/data --name react-container react-app
```
we used -d so we will get an id in output.
to see if the container ir running run
```
docker ps
```
you'll see
![image](https://github.com/user-attachments/assets/ba84dc96-559a-4c75-8692-6d49168d1864)

the container is running on port 4000 of host too.
![image](https://github.com/user-attachments/assets/f7add3c2-8a7f-47c9-9199-5e31606d7fdf)
to stop container and remove
```
docker stop react-container
```
```
docker rm react-container
```
# Run container with Docker compose
```
docker compose build
```
you'll see image with
![image](https://github.com/user-attachments/assets/e6e0817c-8ef1-416e-b20c-bbe8cf39a525)

to run 
```
docker compose up -d
```
![image](https://github.com/user-attachments/assets/7eaf44ba-d7cf-4909-bd96-165031cfe279)

you can see logs to check the container
```
docker compose logs
```
it will look something like this (this picture is not the entire logs)
![image](https://github.com/user-attachments/assets/921e182d-2da9-48ed-a424-d4ff61e8a801)
and just like the docker container docker compose will be running on http://localhost:4000 too

to stop and remove docker compose container
```
docker compose down
```



