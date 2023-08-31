
Chat App
Welcome to the Chat App! This web application allows users to chat in real-time with others. It's built using Python Flask and containerized using Docker. Let's get started!

Prerequisites
Before running the application, make sure you have the following installed:

Python 3.x
Docker
Setup
Clone this repository to your local machine:
git clone https://github.com/your-username/chat-app.git
Navigate to the project directory:
cd chat-app
Install the required Python packages:
pip install -r requirements.txt
Running the App Locally
Start the Flask development server:
python app.py
Open your browser and visit http://localhost:5000 to access the Chat App.
Building and Running with Docker
Build the Docker image:
docker build -t chat-app .
Run the Docker container:
docker run -p 5000:5000 chat-app
Open your browser and visit http://localhost:5000 to access the Chat App running inside the Docker container.
Usage
Enter your desired username in the login screen.
Start chatting with other connected users.
Enjoy real-time messaging!
Contributing
Contributions are always welcome! If you want to contribute to this project, follow these steps:

Fork the repository.
Create your feature branch: git checkout -b feature/your-feature-name
Commit your changes: git commit -m 'Add some feature'
Push to the branch: git push origin feature/your-feature-name
Open a pull request.

Contact
If you have any questions, feel free to reach out to us at rivky.schon@grunitech.co.il
