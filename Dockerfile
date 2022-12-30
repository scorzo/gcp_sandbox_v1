FROM node:14-alpine

# for entrypoint script
RUN apk add bash


# Create app directory
WORKDIR /usr/src/app

# Install app dependencies from root package.json
COPY package*.json ./
RUN npm install

# Install app dependencies from server package.json
RUN mkdir /usr/src/app/server
COPY server/package*.json ./server/
RUN cd ./server && npm install

# Bundle app source
COPY . .


CMD [ "npm", "start" ]

