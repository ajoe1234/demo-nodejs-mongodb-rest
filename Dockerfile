# environment for node 8 image
FROM node:8

# Create app directory
WORKDIR /home/ab01

COPY package*.json ./

RUN npm install

COPY . .

# set ENV variable for mongo
ENV MONGODB_ADDON_URI=mongodb://128.199.200.22:27017/test

EXPOSE 3000

CMD [ "npm", "start" ]
