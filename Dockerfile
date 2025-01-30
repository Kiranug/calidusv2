# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY src/app/package.json .

RUN npm install

# Copy the rest of the application code
COPY src/app .

# Expose the port
EXPOSE 80

# Define the command to run the app
CMD ["npm", "start"]
