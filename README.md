FLASK APP ON MINIKUBE:

This project demonstrates how to deploy a simple Flask web application in a Kubernetes cluster using Minikube. The app is containerized using Docker and deployed with Kubernetes manifests.

Prerequisites
Before you begin, ensure that you have the following installed on your machine:

Docker: Install Docker

Minikube: Install Minikube

kubectl: Install kubectl

Git: Install Git

 Build the Docker Image
Build the Docker image from the Dockerfile:

bash
Copy
Edit
docker build -t flask-app:latest .

Run the Flask App Locally
If you want to test the app locally before deploying it to Minikube, run it using Docker:

bash
Copy
Edit

docker run -p 5000:5000 flask-app 

Minikube Deployment

Start Minikube
Start Minikube to set up a local Kubernetes cluster:

bash
Copy
Edit
minikube start

Apply Kubernetes Manifests
Deploy the Flask app to Minikube using the Kubernetes manifests (deployment.yaml and service.yaml):

bash
Copy
Edit
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

Access the Flask App via Minikube
Once the deployment is successful, access the app through Minikube’s exposed NodePort:

bash
Copy
Edit
minikube service flask-app-service
This will open the app in your default browser at the Minikube IP.
