# Use a base Python image
FROM python:3.9-slim
RUN update-ca-certificates && \
    pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt --no-cache-dir

#VOLUME [ "/users.csv" ]
HEALTHCHECK --interval=5s CMD ping -c 1 http://localhost:5000

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .
#FROM my_alpine AS install
# Install the required packages

COPY . .

# Expose the port on which the Flask app will run
EXPOSE 5000

ENV ROOM_FILES_PATH "rooms/"

ENV FLASK_ENV development

# Set the environment variable for room files path
#ENV ROOM_FILES_PATH /app/room_files

# Create the room_files directory

# Run the Flask app
CMD ["python", "./chatApp.py"]








# Use a base Python image
FROM python:3.9-slim AS base

#RUN update-ca-certificates 
HEALTHCHECK --interval=5s CMD ping -c 1 http://localhost:5000

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .
FROM base AS install
# Install the required packages

COPY . .

# Expose the port on which the Flask app will run
EXPOSE 5000
RUN update-ca-certificates && pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt --no-cache-dir

ENV ROOM_FILES_PATH "rooms/"

ENV FLASK_ENV development

# Set the environment variable for room files path
#ENV ROOM_FILES_PATH /app/room_files

# Create the room_files directory
FROM install AS final
# Run the Flask app
CMD ["python", "./chatApp.py"]