consolidate-config-files
==============

ansible role to merge configuration files into a single file.

scenario:

suppose you have a config directory with foo.conf and bar.conf
/path/to/config
  /foo.conf
  /bar.conf

each file represents configuration for separate applications. you keep the file separate to make it easier to manage the files but ultimately you want to read all configuration in a single file, foobar.conf.

This allows you to parse a single config file.

role: consolidate-config-files

parameters:
  - path:/path/to/config
  - dest:/path/to/config - can be separate on the same
  - consolidated_to:foobar.conf 

logic:
  - verify path/dest exist
  - verify path/dest are writable
  - verify conf files exist in path (& not foobar.conf)
  - generate consolidated file
  - validate consolidated file