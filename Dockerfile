# Use an official Ubuntu as a parent image
FROM ubuntu:20.04

# Set environment variables to avoid prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install required dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-setuptools \
    python3-dev \
    build-essential \
    python3-pip \
    default-libmysqlclient-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Python Flask and Flask-MySQL dependencies
RUN pip3 install --no-cache-dir flask flask-mysql

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Define environment variable
ENV FLASK_APP=app.py

# Expose port 5000 to the outside world
EXPOSE 5000

# Command to run the application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

