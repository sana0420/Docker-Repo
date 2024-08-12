Make sure the you're in the node app directory.Then to build node-app image 
run
```
docker build --tag node-app .
```
you can check with docker images and you'll see our node-app image
![1](https://github.com/user-attachments/assets/d4f569ed-6cc5-4064-8d21-d5d8b6e0fe1a)


to run node-app-container 
```
sudo docker run --name node-app-container -p 3000:3000 -d node-app
```
the result will generate container id
![image](https://github.com/user-attachments/assets/dfae6967-1cad-4c17-aaa3-105d6ff22421)


when you check your host port 3000 you will se the container running.


![image](https://github.com/user-attachments/assets/cce7dee6-de6a-4f8d-bd0f-80412a55f92d)
