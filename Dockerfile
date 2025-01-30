FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .

# Install necessary Python dependencies first
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the application port
EXPOSE 80

# Set environment variables
ENV FLASK_APP=app_faker.py
ENV FLASK_ENV=production

# Run the application
CMD ["sh", "-c", "python download.py && python app_faker.py"]
