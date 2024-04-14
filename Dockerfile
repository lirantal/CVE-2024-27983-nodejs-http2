# Use Node.js version 20.12.0 as the base image
FROM node:20.12.0

# Create app directory inside the Docker image
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install Fastify
RUN npm install

# Bundle app source
COPY . .

# Your app binds to port 3000 so you'll use the EXPOSE instruction to have it mapped by the docker daemon
EXPOSE 7777

# Define the command to run your app using CMD which defines your runtime
CMD [ "node", "server.js" ]

