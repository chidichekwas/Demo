# Use a base image with Python
FROM python:3.9-slim

# Create a virtual environment
RUN python -m venv /opt/venv

# Set the environment variables
ENV PATH="/opt/venv/bin:$PATH"

# Copy requirements.txt and install dependencies
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt

# Copy the application files
COPY . .

EXPOSE 5000

# Set the command to run the application
CMD ["python", "app.py"]