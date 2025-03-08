  # Use a lightweight Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the local directory to the container
COPY . /app
 
# Install required Python packages
RUN pip install --no-cache-dir scikit-learn joblib

# Set the default command to run the script
CMD ["python", "ml-model.py"]
