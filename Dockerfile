# base image
FROM node:14.9

# set working directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn install

COPY . .
# ADD . .
EXPOSE 3000

CMD ["yarn", "start"]