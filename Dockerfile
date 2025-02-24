# Use a lightweight Python Alpine base image
FROM python:3.9-alpine

# Set the working directory
WORKDIR /app

# Copy only necessary files
COPY app.py requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for Flask
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
