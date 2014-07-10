#!/bin/bash

if [[ ! -z $1 && "blank" != "$1" ]]; then
  limit="--limit=$1"
fi
shift

if [[ ! -z $1 ]]; then
  extra="--extra-vars=$@"
fi

ansible-playbook firewall-rules-verify.yml $limit $extra
