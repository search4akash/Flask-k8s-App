# Used an official Python runtime as a parent imag
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app    

# Copy app files into the container
COPY . . 

# Install app dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8000

# Define the command to run the app
CMD ["python" ,"app.py"]

