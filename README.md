ansible-code
==============

todo: update this readme with details of each playbook
todo: add test cases for each playbook

A groups of tasks and roles that can be reused for purpose or for example.


# consolidate-config-files
ansible role to merge configuration files into a single file.

## scenario
suppose you have a repo containing various config files; e.g.  foo.conf and bar.conf
now suppose that you want to consolidate all these config files into a single config file that can then be pushed out for use

## why separate config?
each file represents configuration for separate applications. you keep the file separate to make it easier to manage the files but ultimately you want to read all configuration in a single file, foobar.conf.

This allows you to parse a single config file.

## what do you do after you consolidate files?
- commit to git?
- push to server?
- leave in workspace?

## files
readme.md
go-example.sh
example.yml
role/
  consolidate-config-files/
    tasks/main.yml
    vars/main.yml

## parameters:
  - git repo
  - path:/path/to/config
  - consolidated_to:foobar.conf 

## logic:
  - verify path/dest exist
  - verify path/dest are writable
  - verify conf files exist in path (& not foobar.conf)
  - generate consolidated file
  - validate consolidated file
  - ??
  - success

# find-todo
a quick way to find anything that needs to be done (comments with todo)

# firewall-rules
a simple test to verify that expected ports are open

# generate proxy-config
generating proxy config based on a template

# monitor site health
a simple test to validate health checks of a site
