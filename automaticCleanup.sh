#!/bin/bash
# Stop and remove the chat-app container
docker stop chat-appdocker rm chat-app
# Remove the chat-app imag
docker rmi chat-app
echo "Cleanup complete!"