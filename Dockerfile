# Use official Python image from Docker Hub
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements.txt first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose port 5000
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]