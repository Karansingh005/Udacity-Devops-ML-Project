[![CircleCI](https://circleci.com/gh/Karansingh005/Udacity-Devops-ML-Project/tree/master.svg?style=svg)](https://circleci.com/gh/Karansingh005/Udacity-Devops-ML-Project/tree/master)

## Docker Image Link
Click the link to follow the Docker image of this repository. Click the link: https://hub.docker.com/r/karansingh005/demolocal

Or, type the following commands on your terminal, with Docker installed:
`docker pull karansingh005/demolocal`

## Project Overview
We are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. We can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests one's ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Our project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy a containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that the code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

---

## Setup the Environment

* First, you've to clone this repository to your local machine, by executing follwoing commands:
`git clone https://github.com/Karansingh005/Udacity-Devops-ML-Project`
* Then, you have to specify your working directory, by typing following command:
`cd Udacity-Devops-ML-Project`
* Now, you've to create a virtual environment, inside your working directory of our local machine. Type the following commands in your Terminal window to set up the virtual environment:
```
$ python3 -m venv ~/.<name-of-direactory>
$ source ~/.<name-of-directory>/bin/activate
```
* Run `$ make install` to install the necessary dependencies
* All the instrcuctions for installing dependencies, required to run the application, has been written in [Makefile](https://github.com/Karansingh005/Udacity-Devops-ML-Project/blob/master/Makefile)
* You will also need install Docker onto your local machine, and register your ID on DockerHub. Here's a link to it: [Link to signup on DockerHub](https://hub.docker.com/signup)
* Follow this link to install Docker onto your local machine: [Download Docker](https://docs.docker.com/get-docker/). After installation, check version of your docker by using the command: 
`$ docker --version`
* Install haloint onto your local machine by using following commands:
For Mac
`$ brew install hadolint`
For Windows
`$ scoop install hadolint`
* Now run the command `$ make lint` to run lint checks on your project code. You should get follwoing response from the terminal:
```
------------------------------------
Your code has been rated at 10.00/10
```
* Now install Minikube and Virtualbox.
For Mac, execute follwing commands:
```
$ brew cask install virtualbox
$brew cask install virtualbox
```
If you encouter error in executing your Kubernetes, on Mac, after following above commands, do check the following link on Stackoverflow to troubleshoot: https://stackoverflow.com/questions/49932743/not-able-to-start-minikube-on-mac/49942163

For Windows, go to following links to install Minikube and VirtualBox:
[Download VirtualBox for Windows](https://www.virtualbox.org/wiki/Downloads)
[Download MiniKube for Windows](https://kubernetes.io/docs/tasks/tools/install-minikube/)

### Running `app.py`

1. Standalone:  
`$ python app.py`
2. Run in Docker:  
`$ ./run_docker.sh`
3. Run in Kubernetes:  
`./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
