FROM node:20-slim as base

WORKDIR /usr/src/app

COPY package.json package-lock.json* ./
RUN npm install --production

COPY . ./

EXPOSE 3000
CMD ["npm", "start"]
