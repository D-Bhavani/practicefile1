# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /home/bhavani/practicefile1


# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Build the React application
RUN npm run build

# Install serve to serve the static files
RUN npm install -g serve

# Expose port 3000 to allow access to the React application
EXPOSE 3008

# Command to serve the built React application
CMD ["serve", "-s", "build"]
