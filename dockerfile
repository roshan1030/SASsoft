FROM node:14

WORKDIR /app

COPY package*.json ./
RUN nom install

CMD ["node", "main.js"]