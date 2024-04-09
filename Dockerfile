
# Use an official base image
# # FROM alpine
# FROM ubuntu:latest

# LABEL com.datarobot.repo-sha=abccdef
# Set the working directory
# WORKDIR /app

# Copy the current directory contents into the container at /app
# COPY . /app

# # Run a command
# CMD ["echo", "Hello, Docker!"]

# Use the 'moby/buildkit:master-rootless' base image
FROM moby/buildkit:master-rootless


# Set the working directory to /home/gradle/src
WORKDIR /home/gradle/src

# Copy the current directory contents into the container at /home/gradle/src
COPY . /home/gradle/src/

# Run the command to install OpenJDK 17 using apk
RUN apk --no-cache add openjdk17 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

RUN docker image inspect moby/buildkit:master-rootless
