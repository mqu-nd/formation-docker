
FROM node:12-alpine

WORKDIR /app

COPY ./package.json ./
RUN npm install --silent

ENTRYPOINT [ "npm", "run", "dev" ]