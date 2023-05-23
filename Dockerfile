FROM node:lts-alpine3.17

COPY package.json .
RUN npm install

COPY ./src ./src
COPY .env .env

CMD npm run prod