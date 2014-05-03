# Computrace Puppet Module for Boxen

[![Build Status](https://travis-ci.org/xcompass/puppet-computrace?branch=master)](https://travis-ci.org/xcompass/puppet-computrace)

## Usage

```puppet
include computrace
class { ‘computrace’:
  username => ‘username_for_repo’,
  password => ‘password_for_repo’,
}
```
If no username/password provided, boxen will skip installing Computrace

## Required Puppet Modules

* boxen

