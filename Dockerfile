FROM node:lts-alpine3.17

COPY package.json .
RUN npm install

COPY ./src . 
COPY .env .

CMD npm run prod