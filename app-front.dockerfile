# syntax=docker/dockerfile:1
FROM node:16.17-alpine

RUN mkdir /app

WORKDIR /app

COPY ./front .

RUN npm install

CMD ["npm", "run", "dev"]

EXPOSE 3000