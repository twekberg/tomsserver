
====================
Setup for TomsServer
====================

.. contents::

============
Intruduction
============

This is a completely local ansible script intended to prevent from
having to load all of this stuff again.

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
  ssh-copy-id ihop.labmed.uw.edu
  ssh-copy-id users.labmed.uw.edu
  ssh-copy-id db3.labmed.uw.edu
  ssh-copy-id portia.labmed.uw.edu"

=========
Deploying
=========

Run this command::

  deploy/install.yml -v --ask-become-pass --vault-password-file vault_pass.txt
