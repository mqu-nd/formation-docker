FROM node

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ./package.json ./


# If you are building your code for production
# RUN npm ci --only=production
RUN npm install

# mappinf with daemon
EXPOSE 8090

COPY ./server.js .

CMD [ "node", "server.js" ]
#CMD ls -la