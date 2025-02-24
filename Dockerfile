# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-venv \
    && apt-get clean

# Install Python dependencies
RUN apt-get update && apt-get install -y python3-pyyaml

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Run the command to start the application
CMD ["python", "your_script.py"]
