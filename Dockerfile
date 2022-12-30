FROM node:14-alpine

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

# Run both start scripts
CMD [ "npm", "start" ]

WORKDIR /usr/src/app/server
CMD ["npm", "start"]

