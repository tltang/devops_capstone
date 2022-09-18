[![CircleCI](https://dl.circleci.com/status-badge/img/gh/tltang/devops_capstone/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/tltang/devops_capstone/tree/master)

## Project Overview

In this project you will apply the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program.
You will use cloud9 to develop the project, use circleci to build pipeline, and create docker and kubernetes clusters via circleci pipeline

## Tools used
* AWS CLI
* github
* circleCI
* docker
* kubernetes cli
* AWS EKS and cloudformation

## Set up the Environment

* Clone this repo into your local workspace
In cloud9, git clone git@github.com:tltang/devops_capstone.git
* Create python virtualenv & source it:
make setup 
* Install the necessary dependencies
make install
* Lint Dockerfile and app.py
make lint

## Set up circleCI

* make sure you have the config.yml in .circleci folder
* connect this git repository with circleCI
* add environment variables 
  * AWS_ACCESS_KEY_ID
  * AWS_SECRET_ACCESS_KEY
  * AWS_DEFAULT_REGION
  * 

* after you connect the repository with circleCI, every checkin will trigger a pipeline run
* Below is the screenshot of a successful make lint run
  ![Alt text](https://github.com/tltang/devops_capstone/blob/master/successful-lint.jpg)
    

---


## Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Push image to Docker Hub: `./upload_docker.sh`
4. Create initial AWS EKS cluster using eksctl and config file:  `eksctl create cluster -f cluster.yaml`.
5. Create initial AWS EKS deployment `./run_kubernete.sh`. 
6. Rolling deployment to AWS EKS after update to app.py:  `./deploy_kubernete.sh`.


---
## Brief file description
* `app.py` - Python flask app
* `Dockerfile` - commands to assemble the docker image
* `run_docker.sh` - build and run docker image locally
* `upload_docker.sh` - upload docker image to docker hub
* `cluster.yml` - simple k8s cluster config
* `run_k8s.sh` - initial k8s deployment
* `deploy_k8s.sh` - rolling k8s deployment
---
