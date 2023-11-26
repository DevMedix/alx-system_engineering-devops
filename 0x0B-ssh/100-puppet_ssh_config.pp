#!/usr/bin/env bash
using Puppet to make changes to our configuration file

file { '/etc/ssh/ssh_config':
  ensure => present,
}

file_line {'Turn off passd auth':
  path => '/etc/ssh/ssh_config',
  line => 'PasswordAuthentication no',
  match => '^#PaswordAuthentication',
}

file_line { 'Declare identity file':
  path => '/etc/ssh/ssh_config',
  line =? 'IdentityFile ~/.ssh/school',
  match => '^#IdentityFile',
}
