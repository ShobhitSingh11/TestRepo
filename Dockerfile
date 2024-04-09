# Use an official base image
FROM alpine:latest

USER myuser
# Install some packages using the apk package manager
RUN apk add --no-cache \
    curl \
    git \
    && \
    # Clean up cache to reduce image size
    rm -rf /var/cache/apk/*

# Set the entry point
CMD ["echo", "Docker image built successfully!"]

