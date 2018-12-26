FROM node:8

# Create app directory
WORKDIR /Users/Jo/Desktop/eko

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

ENV MONGODB_ADDON_URI=mongodb://localhost:27017/test

EXPOSE 3000
CMD [ "npm", "start" ]
