FLASK APP ON MINIKUBE:

This project demonstrates how to deploy a simple Flask web application in a Kubernetes cluster using Minikube. The app is containerized using Docker and deployed with Kubernetes manifests.

1. Prerequisites
     Before you begin, ensure that you have the following installed on your machine:

Docker:   https://docs.docker.com/get-docker/

Minikube: https://minikube.sigs.k8s.io/docs/start/

kubectl:  https://kubernetes.io/docs/tasks/tools/install-kubectl/

Git:      https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

2. Build the Docker Image
    Build the Docker image from the Dockerfile 

             docker build -t flask-app:latest .

3. Run the Flask App Locally
    If you want to test the app locally before deploying it to Minikube, run it using Docker:


            docker run -p 5000:5000 flask-app 

4. Minikube Deployment

Start Minikube to set up a local Kubernetes cluster:


     minikube start

5. Apply Kubernetes Manifests

Deploy the Flask app to Minikube using the Kubernetes manifests (deployment.yaml and service.yaml):


      kubectl apply -f deployment.yaml
      kubectl apply -f service.yaml

6. Access the Flask App via Minikube

   Once the deployment is successful, access the app through Minikube’s exposed NodePort:


          minikube service flask-app-service

This will open the app in your default browser at the Minikube IP.
