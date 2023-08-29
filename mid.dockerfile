# Use a base Python image
FROM python:3.9-slim 

RUN update-ca-certificates && pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt --no-cache-dir

#VOLUME [ "/users.csv" ]

# Monitoring the status every 5s
HEALTHCHECK --interval=5s CMD ping -c 1 http://localhost:5000

# Set the working directory in the container
WORKDIR /app

# Expose the port on which the Flask app will run
EXPOSE 5000

FROM base

# Set the environment variable for room files path
ENV ROOM_FILES_PATH "rooms/"
ENV USERS_PATH "users.csv"
ENV FLASK_ENV development

# copy all the directory into the container (except of the .dockerignor files)
COPY . . 

FROM env

# Run the Flask app
CMD ["python", "./chatApp.py"]
