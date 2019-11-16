FROM node:12-alpine

RUN npm -g install pm2

WORKDIR /usr/src/app

COPY index.js package.json package-lock.json ./

RUN npm ci

ENV NODE_ENV production

CMD pm2-runtime start index.js -i $(nproc)