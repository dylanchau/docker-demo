FROM node:20.11.0-alpine3.19

WORKDIR /app

COPY package*.json /app/.

RUN npm install

COPY ./ /app/.

CMD ["npm", "run", "dev"]