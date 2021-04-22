FROM node:10-alpine
RUN mkdir -p /home/node/server/node_modules && chown -R node:node /home/node/server
WORKDIR /home/node/server

COPY package*.json ./
USER node
RUN npm install
COPY --chown=node:node . .
EXPOSE 8080
CMD [ "node", "server.js" ]



# CORRECTION:

#FROM node:14
#WORKDIR /app
#COPY ./package.json ./
#RUN npm install
#COPY . .
#CMD [ "node", "server.js" ]

#=> .dockerignore
#node_modules
#npm-debug.log

# Build : docker build --no-cache -t tp3_node .
# lancement : docker run -p 8080:8080 tp3_node