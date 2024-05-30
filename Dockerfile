# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install py-natpmp
RUN pip install py-natpmp

# Copy the script into the container at /app
COPY pfw.sh /app/pfw.sh

# Make the script executable
RUN chmod +x /app/pfw.sh

# Run the script when the container launches
CMD ["sh", "-c", "/app/pfw.sh"]
