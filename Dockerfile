# Use an official base image
# Use a temporary builder image for building the application
FROM golang:1.17 AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Build the Go application
RUN go build -o myapp .

# Use a lightweight base image for the final image
FROM alpine:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the binary from the builder stage into the final image
COPY --from=builder /app/myapp .

# Command to run the application
CMD ["./myapp"]
