# Use a lightweight Python Alpine base image
FROM python:3.9-alpine

# Set the working directory
WORKDIR /app

# Copy necessary files
COPY app.py requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for Flask
EXPOSE 5000

# Set environment variables to ensure Flask runs continuously
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the Flask app continuously
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
