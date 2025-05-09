FROM node:22.15.0-alpine3.20 AS builder

WORKDIR /usr/app

COPY package.json .

RUN npm i 

COPY . .

RUN npm run build

FROM nginx:1.27.5-alpine

COPY --from=builder /usr/app/dist /usr/share/nginx/html
