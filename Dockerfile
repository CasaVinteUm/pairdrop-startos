FROM node:lts-alpine

WORKDIR /home/node/app

COPY ./pairdrop/package*.json ./

RUN npm ci

COPY ./pairdrop .

# environment settings
ENV NODE_ENV="production"

EXPOSE 3000

ENTRYPOINT ["npm", "start"]
