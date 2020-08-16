### STAGE 1: Build ###
FROM node:10.15.3-alpine
WORKDIR /app
COPY package.json package-lock.json ./


RUN npm install
COPY . .
RUN npm run build

EXPOSE 8081
# start app
CMD ["npm", "start"]
