#!/bin/bash

ansible-playbook example.yml -i localhost, \
  --extra-vars "$1" 
