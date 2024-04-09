# Use an official base image
FROM alpine:latest

# Install some packages using the apk package manager
RUN apk add --no-cache \
    curl \
    git \
    && \
    # Clean up cache to reduce image size
    rm -rf /var/cache/apk/*

# Set the entry point
CMD ["echo", "Docker image built successfully!"]

RUN docker build --label com.datarobot.repo-name=build-service -t your_image_name:0.0.1 .
