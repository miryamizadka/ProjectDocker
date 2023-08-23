# Use a base Python image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the required packages
RUN pip install -r requirements.txt

# Copy the chatApp.py file to the container
COPY chatApp.py .

# Expose the port on which the Flask app will run
EXPOSE 5000

# Set the environment variable for room files path
ENV ROOM_FILES_PATH /app/room_files

# Create the room_files directory
RUN mkdir room_files

# Run the Flask app
CMD ["python", "chatApp.py"]