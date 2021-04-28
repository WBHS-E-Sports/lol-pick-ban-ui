FROM node:alpine

WORKDIR /app
COPY package.json /app/
RUN npm install
COPY . /app

EXPOSE 8999
ENTRYPOINT [ "npm", "start" ]