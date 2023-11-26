# Use the official Node.js 16 base image
FROM node:16

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application code to the working directory
COPY . .

# Specify the command to run your application
CMD ["node", "app.js"]
