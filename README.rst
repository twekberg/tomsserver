
====================
Setup for TomsServer
====================

.. contents::

============
Intruduction
============

This is a completely local ansible script intended to prevent from
having to load all of this stuff again.

===========
Create venv
===========

Do not create a venv. The installs here should be to the system


===============
Before Starting
===============

Before getting started it may be useful to install some packages manually:

    sudo apt  install emacs-nox
    sudo apt install ansible

=========
Deploying
=========

Run this command:

    deploy/install.yml -v --ask-become-pass --vault-password-file vault_pass.txt
