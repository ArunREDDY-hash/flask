# Use the official Python image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the application and test files
COPY app.py .
COPY test_app.py .

# Expose port 5000 for the Flask app
EXPOSE 5000

# Run test cases and start the Flask app
CMD pytest test_app.py && python app.py
