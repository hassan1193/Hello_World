FROM node:alpine
WORKDIR /app
COPY package.json ./
COPY ./ ./
RUN npm i
CMD ["node", "server.js"]


FROM jenkins/jenkins:latest
USER root
RUN curl -sSL https://get.docker.com/  | sh
USER jenkins
