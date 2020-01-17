Introduction

This project is to create working development, testing and production environments and build a pipeline to move the code through them using Jenkins.

The console is JSON application and works with python3.

This repository is a home for the application and configuration codes including a cookbook.

Layout

The repository called agonzalezlopez1/python_chef_production is broken up into two directories and five files currently:

* cookbook- for the cookbook provisioning
* app - contains the application
* vagrantfile - to run vagrant and create the enviroments
* Berksfile - which connects the app with the cookbook
* python-packer - which creates and image of the enviroment and stores it in AWS

The project:

For this project we created:
- A development environment using Vagrant and provisioning with a Chef Cookbook, which run the application successfully.
- An AMI using packer and the cookbook that is capable of running the application and configure a Jenkins that is used as a slave in order to test the code.
- A Jenkins job that listens for Webhooks from the forked repository and starts testing jobs. (This is not currently working as Jenkins is down).
- A job that builds you AMI when all the test have passed using packer. (This part of the project is not currently working because Jenkins is down, we do not have an app pipeline working)
- A development pipeline for the cookbook (Not currently working because Jenkins is down).
- A pipeline that will merge the changes to the configuration to the master branch.

NOTE:
Only the app folder and the cookbook are in the repository. The pipelines are created but not currently running because Jenkins is down.

Jenkins pipelines:
- ariadna-gonzalez-eng47-pythonTest
- ariadna-gonzalez-eng47-python-upstream

Deliverables:

1. Python cookbook stored in a github repository called agonzalezlopez1/python_chef_production
2. A forked ItJobsWatch application repository with a Vagrantfile, Berkfile, python_packer.json and ability to simply Vagrant up and run in development.
3. Jenkins pipelines as describe above, that runs test suite on pushes to master branch of forked application repositories.
4. Separate Jenkins job that builds an application AMI using python_packer.json when test pass successfully.
