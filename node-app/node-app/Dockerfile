#base image
FROM node:22-alpine

#copies package files to container
COPY package*.json .

#installs necessary dependencies
RUN npm install

#copies current dir to container
COPY . .

#once the container starts, runs the command npm start
CMD ["npm" , "start"]
