#!/bin/bash
echo "Install ansible on ubuntu 16"
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y 