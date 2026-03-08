# Use a lightweight Node.js image as the base image
FROM node:22-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker cache
COPY package*.json ./

# Install dependencies (use ci for reproducible builds if package-lock is present)
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on (from index.js PORT = 8080)
EXPOSE 8080

# Command to run the application
CMD ["npm", "start"]
