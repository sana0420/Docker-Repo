FROM node:alpine

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm install -g @angular/cli

RUN npm install

EXPOSE 5000

CMD ["ng", "serve","--host","0.0.0.0"]