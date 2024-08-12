FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=4000
ENV WATCHPACK_POLLING=true
EXPOSE 4000

CMD [ "npm", "start" ]