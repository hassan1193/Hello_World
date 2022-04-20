FROM jenkins/jenkins:lts
USER root
SHELL ["/bin/bash", "-c"]
RUN curl -sSL https://get.docker.com/ | sh



FROM node:alpine
WORKDIR /app
COPY package.json ./
COPY ./ ./
RUN npm i
CMD ["npm", "run" ,"start"]


