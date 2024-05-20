FROM node:lts-alpine

RUN apk add curl

WORKDIR /web

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run tailwind

CMD [ "npm", "run", "dev"]
