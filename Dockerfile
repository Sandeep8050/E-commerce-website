Dockerfile
Copy code
# Base Image
FROM python:3.8-slim
# Set work directory
WORKDIR /app
# Copy requirements file
COPY requirements.txt .
# Install dependencies
RUN pip install -r requirements.txt
# Copy source code
COPY . .
# Expose the application port
EXPOSE 5000
# Run the application
CMD ["python", "app.py"]
