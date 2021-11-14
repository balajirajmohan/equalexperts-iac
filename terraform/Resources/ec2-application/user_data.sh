#!/bin/bash

# Installing and starting Docker
sudo yum update -y
sudo yum install docker -y
sudo systemctl start docker
sudo yum install git -y