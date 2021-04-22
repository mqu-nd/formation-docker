FROM ubuntu
RUN apt-get update -y
RUN apt-get install -y nodejs
RUN apt-get install -y npm
WORKDIR /home/app
COPY ./server.js .
COPY ./package.json .
RUN chmod +x server.js
RUN npm install
CMD echo "Start node server"; node server.js
