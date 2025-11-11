# ----------------------------------------
# 🏫 School Management System Dockerfile
# ----------------------------------------
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Prevent Python from buffering stdout and writing .pyc files
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential libpq-dev && \
    rm -rf /var/lib/apt/lists/*

# Copy only requirements first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt \
    && pip install gunicorn

# Copy the rest of the project (excluding venv)
COPY . .

# Remove local virtual environment if exists
RUN rm -rf venv

# Collect static files (safe to run now)
RUN python manage.py collectstatic --noinput

# Expose Django port
EXPOSE 8000

# Run using Gunicorn
CMD ["gunicorn", "SMS.wsgi:application", "--bind", "0.0.0.0:8000"]

