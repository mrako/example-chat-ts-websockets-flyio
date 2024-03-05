FROM node:current-alpine

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm ci

COPY . .

ENV PORT=8000

CMD [ "npm", "start" ]
