# Use an official base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install curl and wget
RUN apt-get update && apt-get install -y curl wget

# Run a command
CMD ["echo", "Hello, Docker!"]

# Build the image
RUN echo "Building the image..."
