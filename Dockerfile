# Use the latest Ubuntu base image
FROM ubuntu:latest

# Update package lists and install necessary dependencies
RUN apt-get update && apt-get install -y nginx nodejs npm && npm install -g pm2

# Create a directory for the application
WORKDIR /app

# Copy the application files to the container
COPY . .

# Install app dependancies
RUN npm install

# Expose app port
EXPOSE 8080

# Start the application with pm2
CMD ["pm2-runtime", "app.js"]
