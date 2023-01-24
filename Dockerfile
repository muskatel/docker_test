# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the application files
COPY . .

# Expose port 3000 on the container
EXPOSE 3000

# Start the server
CMD ["node", "server.js"]