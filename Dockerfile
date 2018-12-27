# environment for node 8 image
FROM node:8

# Create app directory
WORKDIR /Users/Jo/Desktop/eko

COPY package*.json ./

RUN npm install

COPY . .

# set ENV variable for mongo
ENV MONGODB_ADDON_URI=mongodb://192.168.1.130:27017/test

EXPOSE 3000

CMD [ "npm", "start" ]
