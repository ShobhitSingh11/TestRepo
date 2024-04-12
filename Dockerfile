# Use an official base image
# FROM alpine:latest
FROM moby/buildkit:master-rootless
USER root
# Install some packages using the apk package manager
LABEL com.example.version=4.5
RUN apk add --no-cache \
    curl \
    git \
    && \
    # Clean up cache to reduce image size
    rm -rf /var/cache/apk/*

# Set the entry point
CMD ["echo", "Docker image built successfully!"]

