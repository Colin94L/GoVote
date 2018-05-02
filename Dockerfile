FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json package-lock.json ./

RUN npm install

# Bundle app source
COPY . .

# Express server
EXPOSE 3001
# React port
EXPOSE 3000

VOLUME /usr/src/app

# Prevents browser from launching inside of the container
ENV BROWSER=none

CMD ["npm", "start"]
