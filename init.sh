# docker build -t  my-chat-app:basic_app .
# # docker run -p 5000:5000 --cpus "2.0" --memory "1g" my-chat-app

# # Prompt the user for the version
# read -p "Enter the version to build and run (e.g., v1): " VERSION

# # # Build the Docker image with the specified version
# # docker build -t my-chat-app:$VERSION .

# # Run the Docker container with the specified version
# docker run -p 5000:5000 --cpus "2.0" --memory "1g" my-chat-app:$VERSION
#!/bin/bash

echo "Enter the version to build and run:"
read version

# Ensure the version input is not empty
if [ -z "$version" ]; then
    echo "Version cannot be empty. Exiting..."
    exit 1
fi

# Your Docker build and run commands using the provided version
docker build -t myapp:$version .

docker run -d --name myapp-$version -p 8080:80 myapp:$version
