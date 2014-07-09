#!/bin/bash


limit="--limit=$1"

ansible-playbook monitor-site-health.yml "${limit}" \
  --extra-vars "$2" 
