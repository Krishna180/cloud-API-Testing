# which node to use for your container
FROM node:alpine

# the directory where the appication will be copied to in your container
WORKDIR /usr/src/app

# copy the contents of the base(app) directory to the container WORKDIR
COPY . .

# commands to run to install dependencies
RUN yarn install

# port that must be exposed to the client where the application is running in the container
EXPOSE 1337

# command to start the application in the container
CMD ["yarn", "build"]