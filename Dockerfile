# Use an official Python image as a base image
FROM python:3.10-slim

# Set environment variables to prevent Python from writing .pyc files and buffering stdout/stderr
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Jupyter Notebook
RUN pip install --no-cache-dir notebook
#DIR data/
#COPY ./wind.csv /data/
# Create a directory for Jupyter Notebook files
WORKDIR /home/jupyter

# Expose the Jupyter Notebook default port
EXPOSE 8888

# Set up a default command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
