# Use an official lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the required files into the container
COPY requirements.txt .
COPY people_counting.py .
COPY models/yolov8n.pt models/yolov8n.pt
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run  script when the container starts
CMD ["python", "main.py"]
