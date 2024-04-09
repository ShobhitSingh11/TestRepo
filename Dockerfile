# Use an official base image
FROM alpine:latest

# Install Docker in the container (this is just a hypothetical example)
RUN apk add --no-cache docker

# Copy a Dockerfile into the container
COPY Dockerfile-to-build /tmp/Dockerfile-to-build

# Build a new Docker image using the copied Dockerfile
RUN docker build -t my-custom-image /tmp/Dockerfile-to-build

# Remove unnecessary files
RUN rm -rf /tmp/Dockerfile-to-build

# Set the entry point
CMD ["echo", "Docker image built successfully!"]

