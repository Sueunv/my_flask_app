# Flask Docker App

This is a simple Flask web application packaged in a Docker container. The app demonstrates Docker usage, including port and volume mapping, as well as pushing an image to Docker Hub for easy access.

## Prerequisites:
- **Flask**: Python web framework.
- **Python 3.x**: Ensure Python is installed locally.
- **Docker**: Ensure Docker is installed and running.

## Steps to Set Up and Run

### 1. Clone the Repository
If you have your code hosted on GitHub, clone it:
```  
git clone https://github.com/username/my_flask_app.git
cd my_flask_app


2. Requirements and Dependencies
Dependencies are listed in the requirements.txt file:

  
  
Flask==2.0.1
If running without Docker, install them with:
pip install -r requirements.txt
pip install -r requirements.txt
pip install -r requirements.txt

3. Build the Docker Image
To create a Docker image for the Flask app:

  
  
docker build -t my_flask_app .
4. Run the Docker Container
To run the app inside a Docker container and expose it on port 5000:

  
  
docker run -d -p 5000:5000 my_flask_app
Access the app by visiting:

arduino
  
http://localhost:5000
5. Push the Image to Docker Hub
Tag the image:
  
  
docker tag my_flask_app sueunv/my_flask_app:latest
Push the image to Docker Hub:
  
  
docker push sueunv/my_flask_app:latest
6. Pull and Run from Docker Hub
To pull the Docker image from Docker Hub and run it:

  
  
docker pull sueunv/my_flask_app:latest
docker run -d -p 5000:5000 sueunv/my_flask_app:latest
7. Optional: Volume Mapping
To map a local directory to the container, use:

  
  
docker run -d -p 5000:5000 -v /path/on/host:/path/in/container my_flask_app
8. Stop Docker Containers
To stop any running containers:

  
  
docker stop <container_id>
9. Remove All Containers and Images (Clean Up)


To remove all stopped containers:

  
  
To remove all Docker images:
docker rmi $(docker images -q)

Files Included:
app.py: The main Flask application file.
Dockerfile: Instructions for building the Docker image.
requirements.txt: Python dependencies.
README.md: Instructions and documentation.

