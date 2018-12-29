# environment for node 8 image
FROM node:8

# Create app directory
WORKDIR /home/ab01

COPY package*.json ./

RUN npm install

COPY . .

# set ENV variable for mongo
ENV MONGODB_ADDON_URI=mongodb://188.166.221.73:28001/test

EXPOSE 3000

CMD [ "npm", "start" ]
