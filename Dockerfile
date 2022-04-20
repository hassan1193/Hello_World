FROM jenkins/jenkins:lts
USER root
RUN curl -sSL https://get.docker.com/ | sh
USER jenkins


FROM node:alpine
WORKDIR /app
COPY package.json ./
COPY ./ ./
RUN npm i
CMD ["npm", "run" ,"start"]


