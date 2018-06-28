#!/bin/bash

sudo systemctl stop postgresql@9.5-main
sudo apt-get -y purge openjdk* postgresql-*
