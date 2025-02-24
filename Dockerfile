# Use Python 3.9 Alpine as base image (smaller and more secure)
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Install dependencies required for building Python packages
RUN apk add --no-cache gcc musl-dev libffi-dev openssl-dev

# Copy the current directory contents into the container
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the Flask app
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the Flask app
CMD ["flask", "run"]
