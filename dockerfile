# Use an official Node.js 18 runtime as a parent image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy the rest of the application code
COPY . .

# Install the dependencies
RUN npm install

# Make the env_generator.sh script executable


# Debug step to list the contents of /app directory to verify the script's presence
RUN ls -la

# Run the env_generator.sh script to generate environment variables

# Expose the port Strapi will run on
EXPOSE 1337

# Build the Strapi application
RUN npm run build

# Define the command to run the application in development mode
CMD ["npm", "run", "develop"]
