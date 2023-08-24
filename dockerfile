# Use a base Python image
FROM python:3.9
RUN update-ca-certificates

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the required packages
RUN pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt 

COPY . .

# Expose the port on which the Flask app will run
EXPOSE 5000
ENV room_files_path = "rooms/"
# Set the environment variable for room files path
ENV ROOM_FILES_PATH /app/room_files

# Create the room_files directory
RUN mkdir room_files

# Run the Flask app
CMD ["python", "chatApp.py"]