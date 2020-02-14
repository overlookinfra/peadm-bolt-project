# pecert_regen

#### Table of Contents

- [pecert_regen](#pecertregen)
      - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Setup](#setup)
    - [What pecert_regen affects](#what-pecertregen-affects)
    - [Setup Requirements](#setup-requirements)
    - [Beginning with pecert_regen](#beginning-with-pecertregen)
  - [Usage](#usage)
  - [Example](#example)
  - [Reference](#reference)
  - [Limitations](#limitations)
  - [Development](#development)
  - [Release Notes/Contributors/Etc.](#release-notescontributorsetc)

## Description

This module will regenerate client certificates when you are migrating to a new Puppet Server OR if you want to resign them on the existing Puppet Server.

## Setup

### What pecert_regen affects

The client certifcate must be resigned when migrating to a new Puppet Server

The following module will impact

* Change the puppet server name in /etc/puppetlabs/puppet/puppet.conf
* Sign the Certicate on the Puppet Server if no autosign has been configured (csr_attributes)
* Restart the puppet agent on the client

### Setup Requirements

No additional setup required after the peadm-bolt-project module has been deployed

### Beginning with pecert_regen

bolt plan run pecert_regen::switch_master nodes=<value> master=<value> [sign_csr=<value>]

PARAMETERS:
- nodes: TargetSpec
- master: String
- sign_csr: Boolean
    Default: false

## Usage

 If autosign has been setup or a csr_attributes is in place the plan can be executed without the sign_csr attribute set however if the certificate needs to be signed on the Puppet Server then sign_csr=true must be added to the command.  

 Example
 -------

 bolt plan run pecert_regen::switch_master nodes=node-1,node-2,node-3 master=puppet.master --run-as root sign_csr=true

## Reference

Please see the info.md file


## Limitations

If you are resigning the certfificate to the current Puppet Server you must manually revoke the client certificate from the master.

## Development

Development of this module should be discussed with the Project Owner

## Release Notes/Contributors/Etc.

Please see changelog
