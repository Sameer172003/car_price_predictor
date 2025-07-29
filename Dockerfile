# Use official Python 3.10 image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Start the app using gunicorn
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:10000"]
