### STAGE 1: Build ###
FROM node:10.22-alpine
WORKDIR /app
COPY package.json package-lock.json ./


RUN npm install
RUN npm audit fix
RUN npm audit
COPY . .
RUN npm run build

EXPOSE 8081
# start app
CMD ["npm", "start"]
