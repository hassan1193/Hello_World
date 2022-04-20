FROM jenkins/jenkins:latest
USER root
RUN curl -sSL https://get.docker.com/ | sh
USER jenkins
FROM node:alpine
RUN apk add docker
WORKDIR /app
COPY package.json ./
COPY ./ ./
RUN npm i
CMD ["npm", "run" ,"start"]


