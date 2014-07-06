#!/bin/bash

ansible-playbook consolidate-config-files.yml -i localhost, \
  --extra-vars "$1" 
