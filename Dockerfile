FROM node:13-alpine

ENV FOO = BAR

RUN mkdir /home/app

WORKDIR /home/app

COPY . .

RUN npm install

CMD [ "node", "index.js"]

EXPOSE 3000/tcp
