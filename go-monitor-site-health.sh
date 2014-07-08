#!/bin/bash


limit=${1}

ansible-playbook monitor-site-health.yml.yml "${limit}" \
  --extra-vars "$2" 
