FROM node:lts-alpine3.17

COPY ./src ./src
COPY .env .env
COPY package.json .
RUN npm install



CMD npm run prod