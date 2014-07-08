#!/bin/bash

ansible-playbook generate-proxy-conf.yml -i localhost, \
  --extra-vars "$@" 
