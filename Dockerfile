FROM node:alpine
RUN apk add docker
WORKDIR /app
COPY package.json ./
COPY ./ ./
RUN npm i
CMD ["npm", "run" ,"start"]


