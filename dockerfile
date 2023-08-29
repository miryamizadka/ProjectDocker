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
ENV USERS_PATH "users.csv"
ENV FLASK_ENV development

FROM install AS final
# Run the Flask app
CMD ["python", "./chatApp.py"]