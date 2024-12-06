# Use Python 3.9 as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app/backend

# Copy requirements.txt to the working directory
COPY requirements.txt /app/backend/

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the application code to the working directory
COPY . /app/backend/

# Expose port 8000 for the Django application
EXPOSE 8000

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
