FROM node:12-alpine

WORKDIR /kube-test

WORKDIR /kube-test

COPY ./package.json .

COPY ./yarn.lock .

RUN yarn

COPY . .

RUN yarn build

CMD [ "node", "./build" ]
