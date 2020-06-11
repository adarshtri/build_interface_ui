FROM node:10
WORKDIR /opt/app-root/src
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
ENTRYPOINT [ "npm", "start" ]