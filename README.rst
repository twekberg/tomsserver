
====================
Setup for TomsServer
====================

.. contents::

============
Introduction
============

This is a completely local ansible script intended to prevent from
having to load all of this stuff again. The following are done::

  installs ssh public and private keys
  installs python 3.9, current saml2aws
  installs other packages
  clones various repos
  places a vault_pass.txt for various repos
  creates venvs for various repos
  performs setup needed for the portia repo
  sets up crontab
  sets up ssh config file for oltg-aws-prod and oltg-aws-test
  creates cron jobs
  copies files in SANDBOX from the other host.
  copies AWS files from the other host.
  creates local directories for labreport.
  creates retrieve user and cron job to copy s3 files to here.

=================
Create venv - NOT
=================

No need to create a venv for this. The few packages that are installed
need to be done at the system level, so the other repos can access
them.


===============
Before Starting
===============

Run the following commands before starting the install::

  sudo apt install ansible
  ssh-copy-id db3.labmed.uw.edu
  ssh-copy-id ekberg@db3.labmed.uw.edu
  ssh-copy-id francisco.labmed.uw.edu
  ssh-copy-id ihop.labmed.uw.edu
  ssh-copy-id monitor.dlmp-dev.uw.edu
  ssh-copy-id monitor.labmed.uw.edu
  ssh-copy-id portia.labmed.uw.edu
  ssh-copy-id tracker.dlmp.uw.edu
  ssh-copy-id tracker.labmed.uw.edu
  ssh-copy-id users.labmed.uw.edu    # May not be needed anymore

There may be more ssh-copy-id commands that need to be run for other hosts.

=========
Deploying
=========

Run this command::

  deploy/install.yml -v --ask-become-pass --vault-password-file vault_pass.txt
