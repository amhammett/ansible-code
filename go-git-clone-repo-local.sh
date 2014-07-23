#!/bin/bash

ansible-playbook git-clone-repo-local.yml -i localhost, \
  --extra-vars "$1" 
