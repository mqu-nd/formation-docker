FROM node:10-alpine
WORKDIR /home/node/server
RUN /bin/mkdir -p /home/server/node_module && chown -R node:node /home/node/server

COPY package.json ./

USER node

RUN npm  install
COPY --chown=node:node . .

EXPOSE 8080
CMD ["node","server.js"]