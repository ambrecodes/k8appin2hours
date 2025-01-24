# Step 1: Use the official Node.js image from Docker Hub
FROM node:16
# This line sets the base image for the container. It uses the official Node.js image with version 16 from Docker Hub.
# This provides the Node.js runtime, which is required to run your app in the container.

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app
# This line sets the working directory for any subsequent commands in the Dockerfile.
# In this case, it creates (or uses an existing) directory `/usr/src/app` inside the container and makes it the current working directory.
# All following operations (like copying files or installing dependencies) will happen inside this directory.

# Step 3: Copy the package.json and install dependencies
COPY package*.json ./
# This line copies the `package.json` and `package-lock.json` (if it exists) from your local machine to the current working directory in the container (`/usr/src/app`).
# This is done to ensure that the container can install the necessary dependencies for the application.

RUN npm install
# This line runs `npm install` inside the container to install the Node.js dependencies defined in the `package.json`.
# It installs all the required packages that your app needs to function properly.

# Step 4: Copy the app code into the container
COPY . .
# This line copies the rest of the application files (everything in the current directory) from your local machine into the container’s working directory (`/usr/src/app`).
# This includes your app’s source code, assets, or other files necessary to run the application.

# Step 5: Expose port 3000 (the port our app runs on)
EXPOSE 3000
# This line tells Docker that the container will listen on port 3000.
# It doesn't actually publish the port to the host machine, but it acts as a signal that the app inside the container will be using port 3000.
# This is important for when you run the container and want to map the container’s port to a port on the host machine.

# Step 6: Start the app when the container starts
CMD ["npm", "start"]
# This line sets the default command to run when the container starts.
# It runs `npm start`, which typically starts the application (usually defined in `package.json`).
# The `CMD` instruction ensures that once the container is running, it will launch the Node.js app inside it.
