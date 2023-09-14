# docker build -t  my-chat-app .
# docker run -p 5000:5000 --cpus "2.0" --memory "1g" my-chat-app

# Prompt the user for the version
read -p "Enter the version to build and run (e.g., v1): " VERSION

# # Build the Docker image with the specified version
# docker build -t my-chat-app:$VERSION .

# Run the Docker container with the specified version
docker run -p 5000:5000 --cpus "2.0" --memory "1g" my-chat-app:$VERSION
