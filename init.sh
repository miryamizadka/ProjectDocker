docker build -t  my-chat-app:v0.0.0 -t my-chat-app:latest . 
docker run -p 5000:5000 --cpus "2.0" --memory "1g" my-chat-app:v0.0.0
#-f mid.dockerignor
#-f thin.dockerignor
