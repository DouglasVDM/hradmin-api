# Use this node image
FROM node:alpine

# Create this directory. All commands after this will use this directory
WORKDIR /hradmin-api

# Set up an environment variable names PORT and assign 5001 to it
ENV PORT 5001

# Copy the contents of package.json file into created directory package.json file
COPY package.json /hradmin-api/package.json

# Docker will run this command to install all the dependencies
RUN npm i

# Copy everything that is in the current/local directory and put it inside the created directory 
COPY . /hradmin-api/

# Indicates what PORT the application is listening on for connections`
EXPOSE 5001

# Default command for Docker engine to run when the container the container starts up
CMD [ "node", "index.js" ]
